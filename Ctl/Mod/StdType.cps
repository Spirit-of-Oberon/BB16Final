MODULE CtlStdType;
(**
    project    = "BlackBox"
    organization    = "www.oberon.ch"
    contributors    = "Oberon microsystems"
    version    = "System/Rsrc/About"
    copyright    = "System/Rsrc/About"
    license    = "Docu/BB-License"
    changes    = ""
    issues    = ""

**)

    (* Standard OLE Types, help: , id: 0 *)
    (* guid: {BEF6E001-A874-101A-8BBA-00AA00300CAB}, lcid: 0, syskind: win32, version: 2.0 *)

    IMPORT CtlT, CtlC;

    CONST
        (* OLE_TRISTATE *)
            Unchecked* = 0;
            Checked* = 1;
            Gray* = 2;


    TYPE
        OLE_COLOR* = INTEGER;
        OLE_XPOS_PIXELS* = INTEGER;
        OLE_YPOS_PIXELS* = INTEGER;
        OLE_XSIZE_PIXELS* = INTEGER;
        OLE_YSIZE_PIXELS* = INTEGER;
        OLE_XPOS_HIMETRIC* = INTEGER;
        OLE_YPOS_HIMETRIC* = INTEGER;
        OLE_XSIZE_HIMETRIC* = INTEGER;
        OLE_YSIZE_HIMETRIC* = INTEGER;
        OLE_XPOS_CONTAINER* = SHORTREAL;
        OLE_YPOS_CONTAINER* = SHORTREAL;
        OLE_XSIZE_CONTAINER* = SHORTREAL;
        OLE_YSIZE_CONTAINER* = SHORTREAL;
        OLE_HANDLE* = INTEGER;
        OLE_OPTEXCLUSIVE* = BOOLEAN;
        OLE_CANCELBOOL* = BOOLEAN;
        OLE_ENABLEDEFAULTBOOL* = BOOLEAN;
        OLE_TRISTATE* = INTEGER;
        FONTNAME* = CtlT.Strg;
        FONTSIZE* = CtlT.OleCy;
        FONTBOLD* = BOOLEAN;
        FONTITALIC* = BOOLEAN;
        FONTUNDERSCORE* = BOOLEAN;
        FONTSTRIKETHROUGH* = BOOLEAN;
        Font* = POINTER TO RECORD (CtlT.Object) END;
        IFontDisp* = Font;
        StdFont* = Font;
        Picture* = POINTER TO RECORD (CtlT.Object) END;
        IPictureDisp* = Picture;
        StdPicture* = Picture;


    PROCEDURE ThisFont* (v: CtlT.Any): Font;
        VAR new: Font;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{BEF6E003-A874-101A-8BBA-00AA00300CAB}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFont;

    PROCEDURE IsFont* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{BEF6E003-A874-101A-8BBA-00AA00300CAB}")
    END IsFont;

    PROCEDURE ThisPicture* (v: CtlT.Any): Picture;
        VAR new: Picture;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{7BF80981-BF32-101A-8BBB-00AA00300CAB}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPicture;

    PROCEDURE IsPicture* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{7BF80981-BF32-101A-8BBB-00AA00300CAB}")
    END IsPicture;



    (* ---------- Font ---------- *)

    PROCEDURE (this: Font) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: Font) PUTName* (val: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, val)
    END PUTName;

    PROCEDURE (this: Font) Size* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END Size;

    PROCEDURE (this: Font) PUTSize* (val: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, val)
    END PUTSize;

    PROCEDURE (this: Font) Bold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END Bold;

    PROCEDURE (this: Font) PUTBold* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, val)
    END PUTBold;

    PROCEDURE (this: Font) Italic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END Italic;

    PROCEDURE (this: Font) PUTItalic* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, val)
    END PUTItalic;

    PROCEDURE (this: Font) Underline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END Underline;

    PROCEDURE (this: Font) PUTUnderline* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, val)
    END PUTUnderline;

    PROCEDURE (this: Font) Strikethrough* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END Strikethrough;

    PROCEDURE (this: Font) PUTStrikethrough* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, val)
    END PUTStrikethrough;

    PROCEDURE (this: Font) Weight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END Weight;

    PROCEDURE (this: Font) PUTWeight* (val: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, val)
    END PUTWeight;

    PROCEDURE (this: Font) Charset* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 8)
    END Charset;

    PROCEDURE (this: Font) PUTCharset* (val: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 8, val)
    END PUTCharset;


    (* ---------- Picture ---------- *)

    PROCEDURE (this: Picture) Handle* (): OLE_HANDLE, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END Handle;

    PROCEDURE (this: Picture) hPal* (): OLE_HANDLE, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END hPal;

    PROCEDURE (this: Picture) PUThPal* (val: OLE_HANDLE), NEW;
    BEGIN
        CtlC.PutInt(this, 2, val)
    END PUThPal;

    PROCEDURE (this: Picture) Type* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 3)
    END Type;

    PROCEDURE (this: Picture) Width* (): OLE_XSIZE_HIMETRIC, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4)
    END Width;

    PROCEDURE (this: Picture) Height* (): OLE_YSIZE_HIMETRIC, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 5)
    END Height;

    PROCEDURE (this: Picture) Render* (hdc: INTEGER; x: INTEGER; y: INTEGER; cx: INTEGER; cy: INTEGER; xSrc: OLE_XPOS_HIMETRIC; ySrc: OLE_YPOS_HIMETRIC; cxSrc: OLE_XSIZE_HIMETRIC; cySrc: OLE_YSIZE_HIMETRIC; lprcWBounds: CtlT.PtrVoid), NEW;
        VAR arg: ARRAY 10 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(hdc, arg[9]);
        CtlC.IntVar(x, arg[8]);
        CtlC.IntVar(y, arg[7]);
        CtlC.IntVar(cx, arg[6]);
        CtlC.IntVar(cy, arg[5]);
        CtlC.IntVar(xSrc, arg[4]);
        CtlC.IntVar(ySrc, arg[3]);
        CtlC.IntVar(cxSrc, arg[2]);
        CtlC.IntVar(cySrc, arg[1]);
        CtlC.IntVar(lprcWBounds, arg[0]);
        CtlC.CallParMethod(this, 6, arg, NIL);
    END Render;


    PROCEDURE NewStdFont* (): Font;
    BEGIN
        RETURN ThisFont(CtlC.NewObj("{0BE35203-8F91-11CE-9DE3-00AA004BB851}"))
    END NewStdFont;

    PROCEDURE NewStdPicture* (): Picture;
    BEGIN
        RETURN ThisPicture(CtlC.NewObj("{0BE35204-8F91-11CE-9DE3-00AA004BB851}"))
    END NewStdPicture;

END CtlStdType.
