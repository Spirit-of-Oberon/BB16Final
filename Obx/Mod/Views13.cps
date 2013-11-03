﻿MODULE ObxViews13;
(**
    project    = "BlackBox"
    organization    = "www.oberon.ch"
    contributors    = "Oberon microsystems"
    version    = "System/Rsrc/About"
    copyright    = "System/Rsrc/About"
    license    = "Docu/BB-License"
    purpose    = "Same as ObxViews12, but generate undoable operations for character insertion"
    changes    = ""
    issues    = ""

**)

    IMPORT Fonts, Ports, Stores, Models, Views, Controllers, Properties;

    CONST d = 20 * Ports.point;

    TYPE
        Model = POINTER TO RECORD (Models.Model)
            i: INTEGER;            (* position of next free slot in string *)
            s: ARRAY 256 OF CHAR    (* string *)
        END;

        View = POINTER TO RECORD (Views.View)
            model: Model
        END;

        PasteCharOp = POINTER TO RECORD (Stores.Operation)
            model: Model;
            char: CHAR;
            do: BOOLEAN
        END;


    (* PasteCharOp *)

    PROCEDURE (op: PasteCharOp) Do;
        VAR m: Model; msg: Models.UpdateMsg;
    BEGIN
        m := op.model;
        IF op.do THEN            (* do operation's transformation *)
            m.s[m.i] := op.char; INC(m.i)    (* insert character into string *)
        ELSE                        (* undo operation's transformation *)
            DEC(m.i)                (* remove character from string *)
        END;
        m.s[m.i] := 0X;
        op.do := ~op.do;        (* toggle between "do" and "undo" *)
        Models.Broadcast(m, msg)    (* update all views on this model *)
    END Do;

    PROCEDURE NewPasteCharOp (m: Model; char: CHAR): PasteCharOp;
        VAR op: PasteCharOp;
    BEGIN
        NEW(op); op.model := m; op.char := char; op.do := TRUE;
        RETURN op
    END NewPasteCharOp;


    (* Model *)

    PROCEDURE (m: Model) Internalize (VAR rd: Stores.Reader);
        VAR version: INTEGER;
    BEGIN
        rd.ReadVersion(0, 0, version);
        IF ~rd.cancelled THEN
            rd.ReadInt(m.i); rd.ReadString(m.s)
        END
    END Internalize;

    PROCEDURE (m: Model) Externalize (VAR wr: Stores.Writer);
    BEGIN
        wr.WriteVersion(0);
        wr.WriteInt(m.i); wr.WriteString(m.s)
    END Externalize;

    PROCEDURE (m: Model) CopyFrom (source: Stores.Store);
    BEGIN
        WITH source: Model DO
            m.i := source.i; m.s := source.s
        END
    END CopyFrom;


    (* View *)

    PROCEDURE (v: View) Internalize (VAR rd: Stores.Reader);
        VAR version: INTEGER; st: Stores.Store;
    BEGIN
        rd.ReadVersion(0, 0, version);
        IF ~rd.cancelled THEN
            rd.ReadStore(st);
            v.model := st(Model)
        END
    END Internalize;

    PROCEDURE (v: View) Externalize (VAR wr: Stores.Writer);
    BEGIN
        wr.WriteVersion(0);
        wr.WriteStore(v.model)
    END Externalize;

    PROCEDURE (v: View) CopyFromModelView (source: Views.View; model: Models.Model);
    BEGIN
        v.model := model(Model)
    END CopyFromModelView;

    PROCEDURE (v: View) Restore (f: Views.Frame; l, t, r, b: INTEGER);
    BEGIN
        f.DrawString(d, d, Ports.black, v.model.s, Fonts.dir.Default())
    END Restore;

    PROCEDURE (v: View) ThisModel (): Models.Model;
    BEGIN
        RETURN v.model
    END ThisModel;

    PROCEDURE (v: View) HandleModelMsg (VAR msg: Models.Message);
    BEGIN
        Views.Update(v, Views.keepFrames)  (* restore v in any frame that displays it *)
    END HandleModelMsg;

    PROCEDURE (v: View) HandleCtrlMsg (f: Views.Frame;
                                        VAR msg: Controllers.Message;
                                        VAR focus: Views.View);
        VAR op: Stores.Operation;
    BEGIN
        WITH msg: Controllers.EditMsg DO
            IF msg.op = Controllers.pasteChar THEN
                op := NewPasteCharOp(v.model, msg.char);    (* generate operation *)
                Models.Do(v.model, "Typing", op)    (* execute operation *)
            END
        ELSE                        (* ignore other messages *)
        END
    END HandleCtrlMsg;

    PROCEDURE (v:View) HandlePropMsg (VAR msg: Properties.Message);
    BEGIN
        WITH msg: Properties.SizePref DO
            IF (msg.w = Views.undefined) OR (msg.h = Views.undefined) THEN
                msg.w := 10 * d; msg.h := 2 * d
            END
        | msg: Properties.FocusPref DO
            msg.setFocus := TRUE
        ELSE
        END
    END HandlePropMsg;

    PROCEDURE Deposit*;
        VAR v: View; m: Model;
    BEGIN
        NEW(m); m.i := 0; m.s := "";
        NEW(v); v.model := m; Stores.Join(v, m);
        Views.Deposit(v)
    END Deposit;

END ObxViews13.
