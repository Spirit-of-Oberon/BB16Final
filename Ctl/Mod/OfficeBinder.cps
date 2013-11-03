MODULE CtlOfficeBinder;
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

    (* Microsoft Binder 9.0 Object Library, help: C:\Program Files\Microsoft Office\Office\vbabdr8.hlp, id: 30001 *)
    (* guid: {D0237635-6A9A-101B-B5A0-00AA004A2F7E}, lcid: 0, syskind: win32, version: 9.0 *)

    IMPORT CtlT, CtlC;

    CONST
        (* BindPrintWhat *)
            bindPrintActiveSection* = 1;
            bindPrintVisibleSections* = 2;
            bindPrintSelectedSections* = 3;
            bindPrintSectionSubset* = 4;
        (* BindPageSetupPrintWhat *)
            bindPageSetupVisibleSections* = 2;
            bindPageSetupSelectedSections* = 3;
        (* BindPrintNumbering *)
            bindConsecutivePages* = 1;
            bindRestartEachSection* = 2;
        (* BindSaveOption *)
            bindFailIfFileExists* = 1;
            bindOverwriteExisting* = 2;
            bindDisplayDialog* = 3;


    TYPE
        BindPrintWhat* = INTEGER;
        BindPageSetupPrintWhat* = INTEGER;
        BindPrintNumbering* = INTEGER;
        BindSaveOption* = INTEGER;
        _Binder* = POINTER TO RECORD (CtlT.Object) END;
        Section* = POINTER TO RECORD (CtlT.Object) END;
        Sections* = POINTER TO RECORD (CtlT.Object) END;
        PageSetup* = POINTER TO RECORD (CtlT.Object) END;
        Binder* = _Binder;


    PROCEDURE This_Binder* (v: CtlT.Any): _Binder;
        VAR new: _Binder;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{D02375D0-6A9A-101B-B5A0-00AA004A2F7E}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Binder;

    PROCEDURE Is_Binder* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{D02375D0-6A9A-101B-B5A0-00AA004A2F7E}")
    END Is_Binder;

    PROCEDURE ThisSection* (v: CtlT.Any): Section;
        VAR new: Section;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{4E3B07C8-7F20-101B-B5BC-00AA004A2F7E}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSection;

    PROCEDURE IsSection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{4E3B07C8-7F20-101B-B5BC-00AA004A2F7E}")
    END IsSection;

    PROCEDURE ThisSections* (v: CtlT.Any): Sections;
        VAR new: Sections;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{E842DBF0-849F-101B-B5CB-00AA004A2F7E}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSections;

    PROCEDURE IsSections* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{E842DBF0-849F-101B-B5CB-00AA004A2F7E}")
    END IsSections;

    PROCEDURE ThisPageSetup* (v: CtlT.Any): PageSetup;
        VAR new: PageSetup;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9F136940-E95C-11CE-9733-00AA00B8CD01}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPageSetup;

    PROCEDURE IsPageSetup* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9F136940-E95C-11CE-9733-00AA00B8CD01}")
    END IsPageSetup;



    (* ---------- _Binder, dual ---------- *)

    PROCEDURE (this: _Binder) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: _Binder) Path* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743809)
    END Path;

    PROCEDURE (this: _Binder) ActiveSection* (): Section, NEW;
    BEGIN
        RETURN ThisSection(CtlC.GetAny(this, 1610743810))
    END ActiveSection;

    PROCEDURE (this: _Binder) Sections* (): Sections, NEW;
    BEGIN
        RETURN ThisSections(CtlC.GetAny(this, 1610743811))
    END Sections;

    PROCEDURE (this: _Binder) Open* (FileName: ARRAY OF CHAR; (* optional *) OpenAsTemplate: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[1]);
        CtlC.AnyVar(OpenAsTemplate, arg[0]);
        CtlC.CallParMethod(this, 1610743812, arg, NIL);
    END Open;

    PROCEDURE (this: _Binder) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743813, NIL);
    END Save;

    PROCEDURE (this: _Binder) SaveAs* (FileName: CtlT.Any; SaveOption: BindSaveOption): BOOLEAN, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FileName, arg[1]);
        CtlC.IntVar(SaveOption, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, ret);
        RETURN CtlC.VarBool(ret)
    END SaveAs;

    PROCEDURE (this: _Binder) PrintOut* (What: BindPrintWhat; Numbering: BindPrintNumbering; (* optional *) FirstPage: CtlT.Any; Sections: CtlT.Any; FileName: CtlT.Any; PrinterName: CtlT.Any; DriverName: CtlT.Any; NoPrinting: CtlT.Any), NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(What, arg[7]);
        CtlC.IntVar(Numbering, arg[6]);
        CtlC.AnyVar(FirstPage, arg[5]);
        CtlC.AnyVar(Sections, arg[4]);
        CtlC.AnyVar(FileName, arg[3]);
        CtlC.AnyVar(PrinterName, arg[2]);
        CtlC.AnyVar(DriverName, arg[1]);
        CtlC.AnyVar(NoPrinting, arg[0]);
        CtlC.CallParMethod(this, 1610743815, arg, NIL);
    END PrintOut;

    PROCEDURE (this: _Binder) SelectedSectionNames* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610743816)
    END SelectedSectionNames;

    PROCEDURE (this: _Binder) PUTSelectedSectionNames* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610743816, p1)
    END PUTSelectedSectionNames;

    PROCEDURE (this: _Binder) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743818)
    END Visible;

    PROCEDURE (this: _Binder) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743818, p1)
    END PUTVisible;

    PROCEDURE (this: _Binder) LeftPane* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743820)
    END LeftPane;

    PROCEDURE (this: _Binder) PUTLeftPane* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743820, p1)
    END PUTLeftPane;

    PROCEDURE (this: _Binder) BuiltinDocumentProperties* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743822)
    END BuiltinDocumentProperties;

    PROCEDURE (this: _Binder) CustomDocumentProperties* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743823)
    END CustomDocumentProperties;

    PROCEDURE (this: _Binder) PageSetup* (): PageSetup, NEW;
    BEGIN
        RETURN ThisPageSetup(CtlC.GetAny(this, 1610743824))
    END PageSetup;

    PROCEDURE (this: _Binder) DisplayStatusBar* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743825)
    END DisplayStatusBar;

    PROCEDURE (this: _Binder) PUTDisplayStatusBar* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743825, p1)
    END PUTDisplayStatusBar;

    PROCEDURE (this: _Binder) DisplayAlerts* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743827)
    END DisplayAlerts;

    PROCEDURE (this: _Binder) PUTDisplayAlerts* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743827, p1)
    END PUTDisplayAlerts;

    PROCEDURE (this: _Binder) DisplayLeftPaneAndButton* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743829)
    END DisplayLeftPaneAndButton;

    PROCEDURE (this: _Binder) PUTDisplayLeftPaneAndButton* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743829, p1)
    END PUTDisplayLeftPaneAndButton;

    PROCEDURE (this: _Binder) DefaultFilePath* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743831)
    END DefaultFilePath;

    PROCEDURE (this: _Binder) PUTDefaultFilePath* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743831, p1)
    END PUTDefaultFilePath;

    PROCEDURE (this: _Binder) SinglePrintJob* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743833)
    END SinglePrintJob;

    PROCEDURE (this: _Binder) PUTSinglePrintJob* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743833, p1)
    END PUTSinglePrintJob;

    PROCEDURE (this: _Binder) Close* ((* optional *) SaveChanges: CtlT.Any; FileName: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(SaveChanges, arg[1]);
        CtlC.AnyVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610743835, arg, NIL);
    END Close;

    PROCEDURE (this: _Binder) ViewOpenMode* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743836, NIL);
    END ViewOpenMode;

    PROCEDURE (this: _Binder) ExitOpenMode* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743837, NIL);
    END ExitOpenMode;


    (* ---------- Section, dual ---------- *)

    PROCEDURE (this: Section) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743808, NIL);
    END PrintOut;

    PROCEDURE (this: Section) Parent* (): _Binder, NEW;
    BEGIN
        RETURN This_Binder(CtlC.GetAny(this, 1610743809))
    END Parent;

    PROCEDURE (this: Section) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Delete;

    PROCEDURE (this: Section) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Index;

    PROCEDURE (this: Section) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743812)
    END Visible;

    PROCEDURE (this: Section) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743812, p1)
    END PUTVisible;

    PROCEDURE (this: Section) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: Section) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTName;

    PROCEDURE (this: Section) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743816)
    END Object;

    PROCEDURE (this: Section) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743817, NIL);
    END Activate;

    PROCEDURE (this: Section) Move* ((* optional *) Before: CtlT.Any; After: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Before, arg[1]);
        CtlC.AnyVar(After, arg[0]);
        CtlC.CallParMethod(this, 1610743818, arg, NIL);
    END Move;

    PROCEDURE (this: Section) Copy* ((* optional *) Before: CtlT.Any; After: CtlT.Any): Section, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Before, arg[1]);
        CtlC.AnyVar(After, arg[0]);
        CtlC.CallParMethod(this, 1610743819, arg, ret);
        RETURN ThisSection(CtlC.VarAny(ret))
    END Copy;

    PROCEDURE (this: Section) SaveAs* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610743820, arg, NIL);
    END SaveAs;

    PROCEDURE (this: Section) Type* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743821)
    END Type;

    PROCEDURE (this: Section) Update* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743822, NIL);
    END Update;

    PROCEDURE (this: Section) HasBinderHeaderFooter* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743823)
    END HasBinderHeaderFooter;

    PROCEDURE (this: Section) PUTHasBinderHeaderFooter* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743823, p1)
    END PUTHasBinderHeaderFooter;

    PROCEDURE (this: Section) SupportsBinderHeaderFooter* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743825)
    END SupportsBinderHeaderFooter;


    (* ---------- Sections, dual ---------- *)

    PROCEDURE (this: Sections) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Sections) Parent* (): _Binder, NEW;
    BEGIN
        RETURN This_Binder(CtlC.GetAny(this, 1610743809))
    END Parent;

    PROCEDURE (this: Sections) Item* (Index: CtlT.Any): Section, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisSection(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Sections) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Sections) Add* ((* optional *) Type: CtlT.Any; FileName: CtlT.Any; Before: CtlT.Any; After: CtlT.Any): Section, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[3]);
        CtlC.AnyVar(FileName, arg[2]);
        CtlC.AnyVar(Before, arg[1]);
        CtlC.AnyVar(After, arg[0]);
        CtlC.CallParMethod(this, 1610743812, arg, ret);
        RETURN ThisSection(CtlC.VarAny(ret))
    END Add;


    (* ---------- PageSetup, dual ---------- *)

    PROCEDURE (this: PageSetup) Parent* (): _Binder, NEW;
    BEGIN
        RETURN This_Binder(CtlC.GetAny(this, 1610743808))
    END Parent;

    PROCEDURE (this: PageSetup) PrintWhat* (): BindPageSetupPrintWhat, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END PrintWhat;

    PROCEDURE (this: PageSetup) PUTPrintWhat* (p1: BindPageSetupPrintWhat), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743809, p1)
    END PUTPrintWhat;

    PROCEDURE (this: PageSetup) Numbering* (): BindPrintNumbering, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Numbering;

    PROCEDURE (this: PageSetup) PUTNumbering* (p1: BindPrintNumbering), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743811, p1)
    END PUTNumbering;

    PROCEDURE (this: PageSetup) FirstPage* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743813)
    END FirstPage;

    PROCEDURE (this: PageSetup) PUTFirstPage* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743813, p1)
    END PUTFirstPage;

    PROCEDURE (this: PageSetup) LeftHeader* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743815)
    END LeftHeader;

    PROCEDURE (this: PageSetup) PUTLeftHeader* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743815, p1)
    END PUTLeftHeader;

    PROCEDURE (this: PageSetup) CenterHeader* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743817)
    END CenterHeader;

    PROCEDURE (this: PageSetup) PUTCenterHeader* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743817, p1)
    END PUTCenterHeader;

    PROCEDURE (this: PageSetup) RightHeader* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743819)
    END RightHeader;

    PROCEDURE (this: PageSetup) PUTRightHeader* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743819, p1)
    END PUTRightHeader;

    PROCEDURE (this: PageSetup) LeftFooter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743821)
    END LeftFooter;

    PROCEDURE (this: PageSetup) PUTLeftFooter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743821, p1)
    END PUTLeftFooter;

    PROCEDURE (this: PageSetup) CenterFooter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743823)
    END CenterFooter;

    PROCEDURE (this: PageSetup) PUTCenterFooter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743823, p1)
    END PUTCenterFooter;

    PROCEDURE (this: PageSetup) RightFooter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743825)
    END RightFooter;

    PROCEDURE (this: PageSetup) PUTRightFooter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743825, p1)
    END PUTRightFooter;


    PROCEDURE NewBinder* (): _Binder;
    BEGIN
        RETURN This_Binder(CtlC.NewObj("{59850400-6664-101B-B21C-00AA004BA90B}"))
    END NewBinder;

END CtlOfficeBinder.
