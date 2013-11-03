MODULE CtlVBIDE;
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

    (* Microsoft Visual Basic for Applications Extensibility, help: C:\PROGRAM FILES\COMMON FILES\MICROSOFT SHARED\VBA\VEENOB3.HLP, id: 100000 *)
    (* guid: {0002E157-0000-0000-C000-000000000046}, lcid: 0, syskind: win32, version: 5.0 *)

    IMPORT CtlT, CtlC, CtlOffice;

    CONST
        (* vbextFileTypes, hidden *)
            vbextFileTypeForm* = 0;
            vbextFileTypeModule* = 1;
            vbextFileTypeClass* = 2;
            vbextFileTypeProject* = 3;
            vbextFileTypeExe* = 4;
            vbextFileTypeFrx* = 5;
            vbextFileTypeRes* = 6;
            vbextFileTypeUserControl* = 7;
            vbextFileTypePropertyPage* = 8;
            vbextFileTypeDocObject* = 9;
            vbextFileTypeBinary* = 10;
            vbextFileTypeGroupProject* = 11;
            vbextFileTypeDesigners* = 12;
        (* vbext_WindowType *)
            vbext_wt_CodeWindow* = 0;
            vbext_wt_Designer* = 1;
            vbext_wt_Browser* = 2;
            vbext_wt_Watch* = 3;
            vbext_wt_Locals* = 4;
            vbext_wt_Immediate* = 5;
            vbext_wt_ProjectWindow* = 6;
            vbext_wt_PropertyWindow* = 7;
            vbext_wt_Find* = 8;
            vbext_wt_FindReplace* = 9;
            vbext_wt_LinkedWindowFrame* = 11;
            vbext_wt_MainWindow* = 12;
            vbext_wt_ToolWindow* = 15;
        (* vbext_WindowState *)
            vbext_ws_Normal* = 0;
            vbext_ws_Minimize* = 1;
            vbext_ws_Maximize* = 2;
        (* vbext_ProjectProtection *)
            vbext_pp_none* = 0;
            vbext_pp_locked* = 1;
        (* vbext_VBAMode *)
            vbext_vm_Run* = 0;
            vbext_vm_Break* = 1;
            vbext_vm_Design* = 2;
        (* vbext_ComponentType *)
            vbext_ct_StdModule* = 1;
            vbext_ct_ClassModule* = 2;
            vbext_ct_MSForm* = 3;
            vbext_ct_Document* = 100;
        (* vbext_ProcKind *)
            vbext_pk_Proc* = 0;
            vbext_pk_Let* = 1;
            vbext_pk_Set* = 2;
            vbext_pk_Get* = 3;
        (* vbext_CodePaneview *)
            vbext_cv_ProcedureView* = 0;
            vbext_cv_FullModuleView* = 1;
        (* vbext_RefKind *)
            vbext_rk_TypeLib* = 0;
            vbext_rk_Project* = 1;


    TYPE
        Application* = POINTER TO RECORD (CtlT.Object) END;
        vbextFileTypes* = INTEGER;
        VBE* = POINTER TO RECORD (CtlT.Object) END;
        vbext_WindowType* = INTEGER;
        vbext_WindowState* = INTEGER;
        Window* = POINTER TO RECORD (CtlT.Object) END;
        _Windows* = POINTER TO RECORD (CtlT.Object) END;
        Windows* = _Windows;
        _LinkedWindows* = POINTER TO RECORD (CtlT.Object) END;
        LinkedWindows* = _LinkedWindows;
        Events* = POINTER TO RECORD (CtlT.Object) END;
        _dispVBProjectsEvents* = POINTER TO RECORD (CtlT.Object) END;
        _dispVBComponentsEvents* = POINTER TO RECORD (CtlT.Object) END;
        _dispReferencesEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _dispCommandBarControlEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _ProjectTemplate* = POINTER TO RECORD (CtlT.Object) END;
        ProjectTemplate* = _ProjectTemplate;
        vbext_ProjectProtection* = INTEGER;
        vbext_VBAMode* = INTEGER;
        _VBProject* = POINTER TO RECORD (CtlT.Object) END;
        VBProject* = _VBProject;
        _VBProjects* = POINTER TO RECORD (CtlT.Object) END;
        VBProjects* = _VBProjects;
        SelectedComponents* = POINTER TO RECORD (CtlT.Object) END;
        vbext_ComponentType* = INTEGER;
        _Components* = POINTER TO RECORD (CtlT.Object) END;
        Components* = _Components;
        _VBComponents* = POINTER TO RECORD (CtlT.Object) END;
        VBComponents* = _VBComponents;
        _Component* = POINTER TO RECORD (CtlT.Object) END;
        Component* = _Component;
        _VBComponent* = POINTER TO RECORD (CtlT.Object) END;
        VBComponent* = _VBComponent;
        Property* = POINTER TO RECORD (CtlT.Object) END;
        _Properties* = POINTER TO RECORD (CtlT.Object) END;
        Properties* = _Properties;
        vbext_ProcKind* = INTEGER;
        _CodeModule* = POINTER TO RECORD (CtlT.Object) END;
        CodeModule* = _CodeModule;
        _CodePanes* = POINTER TO RECORD (CtlT.Object) END;
        CodePanes* = _CodePanes;
        vbext_CodePaneview* = INTEGER;
        _CodePane* = POINTER TO RECORD (CtlT.Object) END;
        CodePane* = _CodePane;
        _References* = POINTER TO RECORD (CtlT.Object) END;
        vbext_RefKind* = INTEGER;
        Reference* = POINTER TO RECORD (CtlT.Object) END;
        _dispReferences_Events* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        References* = _References;


    PROCEDURE ThisApplication* (v: CtlT.Any): Application;
        VAR new: Application;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E158-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisApplication;

    PROCEDURE IsApplication* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E158-0000-0000-C000-000000000046}")
    END IsApplication;

    PROCEDURE ThisVBE* (v: CtlT.Any): VBE;
        VAR new: VBE;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E166-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisVBE;

    PROCEDURE IsVBE* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E166-0000-0000-C000-000000000046}")
    END IsVBE;

    PROCEDURE ThisWindow* (v: CtlT.Any): Window;
        VAR new: Window;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E16B-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisWindow;

    PROCEDURE IsWindow* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E16B-0000-0000-C000-000000000046}")
    END IsWindow;

    PROCEDURE This_Windows* (v: CtlT.Any): _Windows;
        VAR new: _Windows;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E16A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Windows;

    PROCEDURE Is_Windows* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E16A-0000-0000-C000-000000000046}")
    END Is_Windows;

    PROCEDURE This_LinkedWindows* (v: CtlT.Any): _LinkedWindows;
        VAR new: _LinkedWindows;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E16C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_LinkedWindows;

    PROCEDURE Is_LinkedWindows* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E16C-0000-0000-C000-000000000046}")
    END Is_LinkedWindows;

    PROCEDURE ThisEvents* (v: CtlT.Any): Events;
        VAR new: Events;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E167-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisEvents;

    PROCEDURE IsEvents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E167-0000-0000-C000-000000000046}")
    END IsEvents;

    PROCEDURE This_dispVBProjectsEvents* (v: CtlT.Any): _dispVBProjectsEvents;
        VAR new: _dispVBProjectsEvents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E103-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_dispVBProjectsEvents;

    PROCEDURE Is_dispVBProjectsEvents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E103-0000-0000-C000-000000000046}")
    END Is_dispVBProjectsEvents;

    PROCEDURE This_dispVBComponentsEvents* (v: CtlT.Any): _dispVBComponentsEvents;
        VAR new: _dispVBComponentsEvents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E116-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_dispVBComponentsEvents;

    PROCEDURE Is_dispVBComponentsEvents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E116-0000-0000-C000-000000000046}")
    END Is_dispVBComponentsEvents;

    PROCEDURE This_ProjectTemplate* (v: CtlT.Any): _ProjectTemplate;
        VAR new: _ProjectTemplate;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E159-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ProjectTemplate;

    PROCEDURE Is_ProjectTemplate* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E159-0000-0000-C000-000000000046}")
    END Is_ProjectTemplate;

    PROCEDURE This_VBProject* (v: CtlT.Any): _VBProject;
        VAR new: _VBProject;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E160-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_VBProject;

    PROCEDURE Is_VBProject* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E160-0000-0000-C000-000000000046}")
    END Is_VBProject;

    PROCEDURE This_VBProjects* (v: CtlT.Any): _VBProjects;
        VAR new: _VBProjects;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E165-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_VBProjects;

    PROCEDURE Is_VBProjects* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E165-0000-0000-C000-000000000046}")
    END Is_VBProjects;

    PROCEDURE ThisSelectedComponents* (v: CtlT.Any): SelectedComponents;
        VAR new: SelectedComponents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{BE39F3D4-1B13-11D0-887F-00A0C90F2744}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSelectedComponents;

    PROCEDURE IsSelectedComponents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{BE39F3D4-1B13-11D0-887F-00A0C90F2744}")
    END IsSelectedComponents;

    PROCEDURE This_Components* (v: CtlT.Any): _Components;
        VAR new: _Components;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E161-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Components;

    PROCEDURE Is_Components* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E161-0000-0000-C000-000000000046}")
    END Is_Components;

    PROCEDURE This_VBComponents* (v: CtlT.Any): _VBComponents;
        VAR new: _VBComponents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E162-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_VBComponents;

    PROCEDURE Is_VBComponents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E162-0000-0000-C000-000000000046}")
    END Is_VBComponents;

    PROCEDURE This_Component* (v: CtlT.Any): _Component;
        VAR new: _Component;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E163-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Component;

    PROCEDURE Is_Component* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E163-0000-0000-C000-000000000046}")
    END Is_Component;

    PROCEDURE This_VBComponent* (v: CtlT.Any): _VBComponent;
        VAR new: _VBComponent;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E164-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_VBComponent;

    PROCEDURE Is_VBComponent* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E164-0000-0000-C000-000000000046}")
    END Is_VBComponent;

    PROCEDURE ThisProperty* (v: CtlT.Any): Property;
        VAR new: Property;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E18C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisProperty;

    PROCEDURE IsProperty* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E18C-0000-0000-C000-000000000046}")
    END IsProperty;

    PROCEDURE This_Properties* (v: CtlT.Any): _Properties;
        VAR new: _Properties;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E188-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Properties;

    PROCEDURE Is_Properties* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E188-0000-0000-C000-000000000046}")
    END Is_Properties;

    PROCEDURE This_CodeModule* (v: CtlT.Any): _CodeModule;
        VAR new: _CodeModule;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E16E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CodeModule;

    PROCEDURE Is_CodeModule* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E16E-0000-0000-C000-000000000046}")
    END Is_CodeModule;

    PROCEDURE This_CodePanes* (v: CtlT.Any): _CodePanes;
        VAR new: _CodePanes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E172-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CodePanes;

    PROCEDURE Is_CodePanes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E172-0000-0000-C000-000000000046}")
    END Is_CodePanes;

    PROCEDURE This_CodePane* (v: CtlT.Any): _CodePane;
        VAR new: _CodePane;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E176-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CodePane;

    PROCEDURE Is_CodePane* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E176-0000-0000-C000-000000000046}")
    END Is_CodePane;

    PROCEDURE This_References* (v: CtlT.Any): _References;
        VAR new: _References;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E17A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_References;

    PROCEDURE Is_References* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E17A-0000-0000-C000-000000000046}")
    END Is_References;

    PROCEDURE ThisReference* (v: CtlT.Any): Reference;
        VAR new: Reference;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E17E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisReference;

    PROCEDURE IsReference* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E17E-0000-0000-C000-000000000046}")
    END IsReference;



    (* ---------- Application, hidden, dual ---------- *)

    PROCEDURE (this: Application) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 100)
    END Version;


    (* ---------- VBE, dual ---------- *)

    PROCEDURE (this: VBE) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 100)
    END Version;

    PROCEDURE (this: VBE) VBProjects* (): VBProjects, NEW;
    BEGIN
        RETURN This_VBProjects(CtlC.GetAny(this, 107))
    END VBProjects;

    PROCEDURE (this: VBE) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.This_CommandBars(CtlC.GetAny(this, 108))
    END CommandBars;

    PROCEDURE (this: VBE) CodePanes* (): CodePanes, NEW;
    BEGIN
        RETURN This_CodePanes(CtlC.GetAny(this, 109))
    END CodePanes;

    PROCEDURE (this: VBE) Windows* (): Windows, NEW;
    BEGIN
        RETURN This_Windows(CtlC.GetAny(this, 110))
    END Windows;

    PROCEDURE (this: VBE) Events* (): Events, NEW;
    BEGIN
        RETURN ThisEvents(CtlC.GetAny(this, 111))
    END Events;

    PROCEDURE (this: VBE) ActiveVBProject* (): VBProject, NEW;
    BEGIN
        RETURN This_VBProject(CtlC.GetAny(this, 201))
    END ActiveVBProject;

    PROCEDURE (this: VBE) PUTREFActiveVBProject* (p1: VBProject), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 201, arg, NIL);
    END PUTREFActiveVBProject;

    PROCEDURE (this: VBE) SelectedVBComponent* (): VBComponent, NEW;
    BEGIN
        RETURN This_VBComponent(CtlC.GetAny(this, 202))
    END SelectedVBComponent;

    PROCEDURE (this: VBE) MainWindow* (): Window, NEW;
    BEGIN
        RETURN ThisWindow(CtlC.GetAny(this, 204))
    END MainWindow;

    PROCEDURE (this: VBE) ActiveWindow* (): Window, NEW;
    BEGIN
        RETURN ThisWindow(CtlC.GetAny(this, 205))
    END ActiveWindow;

    PROCEDURE (this: VBE) ActiveCodePane* (): CodePane, NEW;
    BEGIN
        RETURN This_CodePane(CtlC.GetAny(this, 206))
    END ActiveCodePane;

    PROCEDURE (this: VBE) PUTREFActiveCodePane* (p1: CodePane), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 206, arg, NIL);
    END PUTREFActiveCodePane;


    (* ---------- Window, dual ---------- *)

    PROCEDURE (this: Window) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1))
    END VBE;

    PROCEDURE (this: Window) Collection* (): Windows, NEW;
    BEGIN
        RETURN This_Windows(CtlC.GetAny(this, 2))
    END Collection;

    PROCEDURE (this: Window) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 99, NIL);
    END Close;

    PROCEDURE (this: Window) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 100)
    END Caption;

    PROCEDURE (this: Window) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 106)
    END Visible;

    PROCEDURE (this: Window) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 106, p1)
    END PUTVisible;

    PROCEDURE (this: Window) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Left;

    PROCEDURE (this: Window) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTLeft;

    PROCEDURE (this: Window) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END Top;

    PROCEDURE (this: Window) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 103, p1)
    END PUTTop;

    PROCEDURE (this: Window) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END Width;

    PROCEDURE (this: Window) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTWidth;

    PROCEDURE (this: Window) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END Height;

    PROCEDURE (this: Window) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTHeight;

    PROCEDURE (this: Window) WindowState* (): vbext_WindowState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END WindowState;

    PROCEDURE (this: Window) PUTWindowState* (p1: vbext_WindowState), NEW;
    BEGIN
        CtlC.PutInt(this, 109, p1)
    END PUTWindowState;

    PROCEDURE (this: Window) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 111, NIL);
    END SetFocus;

    PROCEDURE (this: Window) Type* (): vbext_WindowType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 112)
    END Type;

    PROCEDURE (this: Window) LinkedWindows* (): LinkedWindows, NEW;
    BEGIN
        RETURN This_LinkedWindows(CtlC.GetAny(this, 116))
    END LinkedWindows;

    PROCEDURE (this: Window) LinkedWindowFrame* (): Window, NEW;
    BEGIN
        RETURN ThisWindow(CtlC.GetAny(this, 117))
    END LinkedWindowFrame;

    PROCEDURE (this: Window) HWnd* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 120)
    END HWnd;


    (* ---------- _Windows, dual ---------- *)

    PROCEDURE (this: _Windows) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1))
    END VBE;

    PROCEDURE (this: _Windows) Parent* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: _Windows) Item* (index: CtlT.Any): Window, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisWindow(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _Windows) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 201)
    END Count;

    PROCEDURE (this: _Windows) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _LinkedWindows, dual ---------- *)

    PROCEDURE (this: _LinkedWindows) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1))
    END VBE;

    PROCEDURE (this: _LinkedWindows) Parent* (): Window, NEW;
    BEGIN
        RETURN ThisWindow(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: _LinkedWindows) Item* (index: CtlT.Any): Window, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisWindow(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _LinkedWindows) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 201)
    END Count;

    PROCEDURE (this: _LinkedWindows) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _LinkedWindows) Remove* (window: Window), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(window, arg[0]);
        CtlC.CallParMethod(this, 202, arg, NIL);
    END Remove;

    PROCEDURE (this: _LinkedWindows) Add* (window: Window), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(window, arg[0]);
        CtlC.CallParMethod(this, 203, arg, NIL);
    END Add;


    (* ---------- Events, dual ---------- *)

    PROCEDURE (this: Events) ReferencesEvents* (vBProject: VBProject): CtlT.IUnknown, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBProject, arg[0]);
        CtlC.CallGetMethod(this, 202, arg, ret);
        RETURN CtlC.VarIntfce(ret)
    END ReferencesEvents;

    PROCEDURE (this: Events) CommandBarEvents* (CommandBarControl: CtlT.Object): CtlT.IUnknown, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(CommandBarControl, arg[0]);
        CtlC.CallGetMethod(this, 205, arg, ret);
        RETURN CtlC.VarIntfce(ret)
    END CommandBarEvents;


    (* ---------- _dispVBProjectsEvents ---------- *)

    PROCEDURE (this: _dispVBProjectsEvents) ItemAdded* (vBProject: VBProject), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBProject, arg[0]);
        CtlC.CallParMethod(this, 1, arg, NIL);
    END ItemAdded;

    PROCEDURE (this: _dispVBProjectsEvents) ItemRemoved* (vBProject: VBProject), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBProject, arg[0]);
        CtlC.CallParMethod(this, 2, arg, NIL);
    END ItemRemoved;

    PROCEDURE (this: _dispVBProjectsEvents) ItemRenamed* (vBProject: VBProject; OldName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBProject, arg[1]);
        CtlC.StrVar(OldName, arg[0]);
        CtlC.CallParMethod(this, 3, arg, NIL);
    END ItemRenamed;

    PROCEDURE (this: _dispVBProjectsEvents) ItemActivated* (vBProject: VBProject), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBProject, arg[0]);
        CtlC.CallParMethod(this, 4, arg, NIL);
    END ItemActivated;


    (* ---------- _dispVBComponentsEvents ---------- *)

    PROCEDURE (this: _dispVBComponentsEvents) ItemAdded* (vBComponent: VBComponent), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBComponent, arg[0]);
        CtlC.CallParMethod(this, 1, arg, NIL);
    END ItemAdded;

    PROCEDURE (this: _dispVBComponentsEvents) ItemRemoved* (vBComponent: VBComponent), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBComponent, arg[0]);
        CtlC.CallParMethod(this, 2, arg, NIL);
    END ItemRemoved;

    PROCEDURE (this: _dispVBComponentsEvents) ItemRenamed* (vBComponent: VBComponent; OldName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBComponent, arg[1]);
        CtlC.StrVar(OldName, arg[0]);
        CtlC.CallParMethod(this, 3, arg, NIL);
    END ItemRenamed;

    PROCEDURE (this: _dispVBComponentsEvents) ItemSelected* (vBComponent: VBComponent), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBComponent, arg[0]);
        CtlC.CallParMethod(this, 4, arg, NIL);
    END ItemSelected;

    PROCEDURE (this: _dispVBComponentsEvents) ItemActivated* (vBComponent: VBComponent), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBComponent, arg[0]);
        CtlC.CallParMethod(this, 5, arg, NIL);
    END ItemActivated;

    PROCEDURE (this: _dispVBComponentsEvents) ItemReloaded* (vBComponent: VBComponent), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBComponent, arg[0]);
        CtlC.CallParMethod(this, 6, arg, NIL);
    END ItemReloaded;


    (* ---------- _dispReferencesEvents ---------- *)

    PROCEDURE (this: _dispReferencesEvents) ItemAdded* (reference: Reference), NEW, ABSTRACT;

    PROCEDURE (this: _dispReferencesEvents) ItemRemoved* (reference: Reference), NEW, ABSTRACT;

    PROCEDURE (this: _dispReferencesEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 1: ASSERT(n = 1, 11); this.ItemAdded(ThisReference(CtlC.VarAny(par[0])))
        | 2: ASSERT(n = 1, 11); this.ItemRemoved(ThisReference(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: _dispReferencesEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0002E118-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- _dispCommandBarControlEvents ---------- *)

    PROCEDURE (this: _dispCommandBarControlEvents) Click* (CommandBarControl: CtlT.Object; VAR handled: BOOLEAN; VAR CancelDefault: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: _dispCommandBarControlEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 1: ASSERT(n = 3, 11); this.Click(CtlC.VarObj(par[2]), CtlC.VarRefBool(par[1])[0], CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[1]); CtlC.RetBool(par[0])
        END
    END Invoke;

    PROCEDURE (this: _dispCommandBarControlEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0002E131-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- _ProjectTemplate, hidden, dual ---------- *)

    PROCEDURE (this: _ProjectTemplate) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 1))
    END Application;

    PROCEDURE (this: _ProjectTemplate) Parent* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 2))
    END Parent;


    (* ---------- _VBProject, hidden, dual ---------- *)

    PROCEDURE (this: _VBProject) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 1))
    END Application;

    PROCEDURE (this: _VBProject) Parent* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: _VBProject) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 116)
    END HelpFile;

    PROCEDURE (this: _VBProject) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 116, p1)
    END PUTHelpFile;

    PROCEDURE (this: _VBProject) HelpContextID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 117)
    END HelpContextID;

    PROCEDURE (this: _VBProject) PUTHelpContextID* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 117, p1)
    END PUTHelpContextID;

    PROCEDURE (this: _VBProject) Description* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 118)
    END Description;

    PROCEDURE (this: _VBProject) PUTDescription* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 118, p1)
    END PUTDescription;

    PROCEDURE (this: _VBProject) Mode* (): vbext_VBAMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 119)
    END Mode;

    PROCEDURE (this: _VBProject) References* (): References, NEW;
    BEGIN
        RETURN This_References(CtlC.GetAny(this, 120))
    END References;

    PROCEDURE (this: _VBProject) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 121)
    END Name;

    PROCEDURE (this: _VBProject) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 121, p1)
    END PUTName;

    PROCEDURE (this: _VBProject) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 122))
    END VBE;

    PROCEDURE (this: _VBProject) Collection* (): VBProjects, NEW;
    BEGIN
        RETURN This_VBProjects(CtlC.GetAny(this, 123))
    END Collection;

    PROCEDURE (this: _VBProject) Protection* (): vbext_ProjectProtection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 131)
    END Protection;

    PROCEDURE (this: _VBProject) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 133)
    END Saved;

    PROCEDURE (this: _VBProject) VBComponents* (): VBComponents, NEW;
    BEGIN
        RETURN This_VBComponents(CtlC.GetAny(this, 135))
    END VBComponents;


    (* ---------- _VBProjects, dual ---------- *)

    PROCEDURE (this: _VBProjects) Item* (index: CtlT.Any): VBProject, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_VBProject(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _VBProjects) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 20))
    END VBE;

    PROCEDURE (this: _VBProjects) Parent* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: _VBProjects) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 10)
    END Count;

    PROCEDURE (this: _VBProjects) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- SelectedComponents, hidden, dual ---------- *)

    PROCEDURE (this: SelectedComponents) Item* (index: INTEGER): Component, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_Component(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: SelectedComponents) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 1))
    END Application;

    PROCEDURE (this: SelectedComponents) Parent* (): VBProject, NEW;
    BEGIN
        RETURN This_VBProject(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: SelectedComponents) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 10)
    END Count;

    PROCEDURE (this: SelectedComponents) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _Components, hidden, dual ---------- *)

    PROCEDURE (this: _Components) Item* (index: CtlT.Any): Component, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_Component(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _Components) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 1))
    END Application;

    PROCEDURE (this: _Components) Parent* (): VBProject, NEW;
    BEGIN
        RETURN This_VBProject(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: _Components) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 10)
    END Count;

    PROCEDURE (this: _Components) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _Components) Remove* (component: Component), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(component, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END Remove;

    PROCEDURE (this: _Components) Add* (ComponentType: vbext_ComponentType): Component, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ComponentType, arg[0]);
        CtlC.CallParMethod(this, 12, arg, ret);
        RETURN This_Component(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: _Components) Import* (FileName: ARRAY OF CHAR): Component, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 13, arg, ret);
        RETURN This_Component(CtlC.VarAny(ret))
    END Import;

    PROCEDURE (this: _Components) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 20))
    END VBE;


    (* ---------- _VBComponents, dual ---------- *)

    PROCEDURE (this: _VBComponents) Item* (index: CtlT.Any): VBComponent, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_VBComponent(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _VBComponents) Parent* (): VBProject, NEW;
    BEGIN
        RETURN This_VBProject(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: _VBComponents) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 10)
    END Count;

    PROCEDURE (this: _VBComponents) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _VBComponents) Remove* (vBComponent: VBComponent), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(vBComponent, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END Remove;

    PROCEDURE (this: _VBComponents) Add* (ComponentType: vbext_ComponentType): VBComponent, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ComponentType, arg[0]);
        CtlC.CallParMethod(this, 12, arg, ret);
        RETURN This_VBComponent(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: _VBComponents) Import* (FileName: ARRAY OF CHAR): VBComponent, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 13, arg, ret);
        RETURN This_VBComponent(CtlC.VarAny(ret))
    END Import;

    PROCEDURE (this: _VBComponents) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 20))
    END VBE;


    (* ---------- _Component, hidden, dual ---------- *)

    PROCEDURE (this: _Component) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 1))
    END Application;

    PROCEDURE (this: _Component) Parent* (): Components, NEW;
    BEGIN
        RETURN This_Components(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: _Component) IsDirty* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END IsDirty;

    PROCEDURE (this: _Component) PUTIsDirty* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTIsDirty;

    PROCEDURE (this: _Component) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 48)
    END Name;

    PROCEDURE (this: _Component) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 48, p1)
    END PUTName;


    (* ---------- _VBComponent, dual ---------- *)

    PROCEDURE (this: _VBComponent) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Saved;

    PROCEDURE (this: _VBComponent) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 48)
    END Name;

    PROCEDURE (this: _VBComponent) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 48, p1)
    END PUTName;

    PROCEDURE (this: _VBComponent) Designer* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 49)
    END Designer;

    PROCEDURE (this: _VBComponent) CodeModule* (): CodeModule, NEW;
    BEGIN
        RETURN This_CodeModule(CtlC.GetAny(this, 50))
    END CodeModule;

    PROCEDURE (this: _VBComponent) Type* (): vbext_ComponentType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 51)
    END Type;

    PROCEDURE (this: _VBComponent) Export* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 52, arg, NIL);
    END Export;

    PROCEDURE (this: _VBComponent) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 53))
    END VBE;

    PROCEDURE (this: _VBComponent) Collection* (): VBComponents, NEW;
    BEGIN
        RETURN This_VBComponents(CtlC.GetAny(this, 54))
    END Collection;

    PROCEDURE (this: _VBComponent) HasOpenDesigner* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 55)
    END HasOpenDesigner;

    PROCEDURE (this: _VBComponent) Properties* (): Properties, NEW;
    BEGIN
        RETURN This_Properties(CtlC.GetAny(this, 56))
    END Properties;

    PROCEDURE (this: _VBComponent) DesignerWindow* (): Window, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 57, ret);
        RETURN ThisWindow(CtlC.VarAny(ret))
    END DesignerWindow;

    PROCEDURE (this: _VBComponent) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 60, NIL);
    END Activate;


    (* ---------- Property, dual ---------- *)

    PROCEDURE (this: Property) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: Property) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: Property) IndexedValue* (Index1: CtlT.Any; (* optional *) Index2: CtlT.Any; Index3: CtlT.Any; Index4: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index1, arg[3]);
        CtlC.AnyVar(Index2, arg[2]);
        CtlC.AnyVar(Index3, arg[1]);
        CtlC.AnyVar(Index4, arg[0]);
        CtlC.CallGetMethod(this, 3, arg, ret);
        RETURN CtlC.VarAny(ret)
    END IndexedValue;

    PROCEDURE (this: Property) PUTIndexedValue* (Index1: CtlT.Any; Index2: CtlT.Any; (* optional *) Index3: CtlT.Any; Index4: CtlT.Any; p5: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index1, arg[4]);
        CtlC.AnyVar(Index2, arg[3]);
        CtlC.AnyVar(Index3, arg[2]);
        CtlC.AnyVar(Index4, arg[1]);
        CtlC.AnyVar(p5, arg[0]);
        CtlC.CallPutMethod(this, 3, arg, NIL);
    END PUTIndexedValue;

    PROCEDURE (this: Property) NumIndices* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 4)
    END NumIndices;

    PROCEDURE (this: Property) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 1))
    END Application;

    PROCEDURE (this: Property) Parent* (): Properties, NEW;
    BEGIN
        RETURN This_Properties(CtlC.GetAny(this, 2))
    END Parent;

    PROCEDURE (this: Property) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 40)
    END Name;

    PROCEDURE (this: Property) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 41))
    END VBE;

    PROCEDURE (this: Property) Collection* (): Properties, NEW;
    BEGIN
        RETURN This_Properties(CtlC.GetAny(this, 42))
    END Collection;

    PROCEDURE (this: Property) Object* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 45)
    END Object;

    PROCEDURE (this: Property) PUTREFObject* (p1: CtlT.IUnknown), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntfceVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 45, arg, NIL);
    END PUTREFObject;


    (* ---------- _Properties, dual ---------- *)

    PROCEDURE (this: _Properties) Item* (index: CtlT.Any): Property, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _Properties) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 1))
    END Application;

    PROCEDURE (this: _Properties) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2)
    END Parent;

    PROCEDURE (this: _Properties) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 40)
    END Count;

    PROCEDURE (this: _Properties) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _Properties) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 10))
    END VBE;


    (* ---------- _CodeModule, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _CodeModule) Parent* (): VBComponent, NEW;
    BEGIN
        RETURN This_VBComponent(CtlC.GetAny(this, 1610743808))
    END Parent;

    PROCEDURE (this: _CodeModule) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1610743809))
    END VBE;

    PROCEDURE (this: _CodeModule) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: _CodeModule) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTName;

    PROCEDURE (this: _CodeModule) AddFromString* (String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743812, arg, NIL);
    END AddFromString;

    PROCEDURE (this: _CodeModule) AddFromFile* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610743813, arg, NIL);
    END AddFromFile;

    PROCEDURE (this: _CodeModule) Lines* (StartLine: INTEGER; Count: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(StartLine, arg[1]);
        CtlC.IntVar(Count, arg[0]);
        CtlC.CallGetMethod(this, 1610743814, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Lines;

    PROCEDURE (this: _CodeModule) CountOfLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743815)
    END CountOfLines;

    PROCEDURE (this: _CodeModule) InsertLines* (Line: INTEGER; String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743816, arg, NIL);
    END InsertLines;

    PROCEDURE (this: _CodeModule) DeleteLines* (StartLine: INTEGER; Count: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(StartLine, arg[1]);
        CtlC.IntVar(Count, arg[0]);
        CtlC.CallParMethod(this, 1610743817, arg, NIL);
    END DeleteLines;

    PROCEDURE (this: _CodeModule) ReplaceLine* (Line: INTEGER; String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743818, arg, NIL);
    END ReplaceLine;

    PROCEDURE (this: _CodeModule) ProcStartLine* (ProcName: ARRAY OF CHAR; ProcKind: vbext_ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743819, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcStartLine;

    PROCEDURE (this: _CodeModule) ProcCountLines* (ProcName: ARRAY OF CHAR; ProcKind: vbext_ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743820, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcCountLines;

    PROCEDURE (this: _CodeModule) ProcBodyLine* (ProcName: ARRAY OF CHAR; ProcKind: vbext_ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743821, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcBodyLine;

    PROCEDURE (this: _CodeModule) ProcOfLine* (Line: INTEGER; OUT ProcKind: vbext_ProcKind): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.RefIntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743822, arg, ret);
        RETURN CtlC.VarStr(ret)
    END ProcOfLine;

    PROCEDURE (this: _CodeModule) CountOfDeclarationLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743823)
    END CountOfDeclarationLines;

    PROCEDURE (this: _CodeModule) CreateEventProc* (EventName: ARRAY OF CHAR; ObjectName: ARRAY OF CHAR): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EventName, arg[1]);
        CtlC.StrVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 1610743824, arg, ret);
        RETURN CtlC.VarInt(ret)
    END CreateEventProc;

    PROCEDURE (this: _CodeModule) Find* (Target: ARRAY OF CHAR; VAR StartLine: INTEGER; VAR StartColumn: INTEGER; VAR EndLine: INTEGER; VAR EndColumn: INTEGER; WholeWord: BOOLEAN; MatchCase: BOOLEAN; PatternSearch: BOOLEAN): BOOLEAN, NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Target, arg[7]);
        CtlC.RefIntVar(StartLine, arg[6]);
        CtlC.RefIntVar(StartColumn, arg[5]);
        CtlC.RefIntVar(EndLine, arg[4]);
        CtlC.RefIntVar(EndColumn, arg[3]);
        CtlC.BoolVar(WholeWord, arg[2]);
        CtlC.BoolVar(MatchCase, arg[1]);
        CtlC.BoolVar(PatternSearch, arg[0]);
        CtlC.CallParMethod(this, 1610743825, arg, ret);
        RETURN CtlC.VarBool(ret)
    END Find;

    PROCEDURE (this: _CodeModule) CodePane* (): CodePane, NEW;
    BEGIN
        RETURN This_CodePane(CtlC.GetAny(this, 1610743826))
    END CodePane;


    (* ---------- _CodePanes, dual, nonextensible ---------- *)

    PROCEDURE (this: _CodePanes) Parent* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1610743808))
    END Parent;

    PROCEDURE (this: _CodePanes) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1610743809))
    END VBE;

    PROCEDURE (this: _CodePanes) Item* (index: CtlT.Any): CodePane, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_CodePane(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _CodePanes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Count;

    PROCEDURE (this: _CodePanes) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _CodePanes) Current* (): CodePane, NEW;
    BEGIN
        RETURN This_CodePane(CtlC.GetAny(this, 1610743813))
    END Current;

    PROCEDURE (this: _CodePanes) PUTCurrent* (p1: CodePane), NEW;
    BEGIN
        CtlC.PutObj(this, 1610743813, p1)
    END PUTCurrent;


    (* ---------- _CodePane, dual, nonextensible ---------- *)

    PROCEDURE (this: _CodePane) Collection* (): CodePanes, NEW;
    BEGIN
        RETURN This_CodePanes(CtlC.GetAny(this, 1610743808))
    END Collection;

    PROCEDURE (this: _CodePane) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1610743809))
    END VBE;

    PROCEDURE (this: _CodePane) Window* (): Window, NEW;
    BEGIN
        RETURN ThisWindow(CtlC.GetAny(this, 1610743810))
    END Window;

    PROCEDURE (this: _CodePane) GetSelection* (OUT StartLine: INTEGER; OUT StartColumn: INTEGER; OUT EndLine: INTEGER; OUT EndColumn: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(StartLine, arg[3]);
        CtlC.RefIntVar(StartColumn, arg[2]);
        CtlC.RefIntVar(EndLine, arg[1]);
        CtlC.RefIntVar(EndColumn, arg[0]);
        CtlC.CallParMethod(this, 1610743811, arg, NIL);
    END GetSelection;

    PROCEDURE (this: _CodePane) SetSelection* (StartLine: INTEGER; StartColumn: INTEGER; EndLine: INTEGER; EndColumn: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(StartLine, arg[3]);
        CtlC.IntVar(StartColumn, arg[2]);
        CtlC.IntVar(EndLine, arg[1]);
        CtlC.IntVar(EndColumn, arg[0]);
        CtlC.CallParMethod(this, 1610743812, arg, NIL);
    END SetSelection;

    PROCEDURE (this: _CodePane) TopLine* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743813)
    END TopLine;

    PROCEDURE (this: _CodePane) PUTTopLine* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743813, p1)
    END PUTTopLine;

    PROCEDURE (this: _CodePane) CountOfVisibleLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743815)
    END CountOfVisibleLines;

    PROCEDURE (this: _CodePane) CodeModule* (): CodeModule, NEW;
    BEGIN
        RETURN This_CodeModule(CtlC.GetAny(this, 1610743816))
    END CodeModule;

    PROCEDURE (this: _CodePane) Show* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743817, NIL);
    END Show;

    PROCEDURE (this: _CodePane) CodePaneView* (): vbext_CodePaneview, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743818)
    END CodePaneView;


    (* ---------- _References, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _References) Parent* (): VBProject, NEW;
    BEGIN
        RETURN This_VBProject(CtlC.GetAny(this, 1610743808))
    END Parent;

    PROCEDURE (this: _References) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1610743809))
    END VBE;

    PROCEDURE (this: _References) Item* (index: CtlT.Any): Reference, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisReference(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _References) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Count;

    PROCEDURE (this: _References) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _References) AddFromGuid* (Guid: ARRAY OF CHAR; Major: INTEGER; Minor: INTEGER): Reference, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Guid, arg[2]);
        CtlC.IntVar(Major, arg[1]);
        CtlC.IntVar(Minor, arg[0]);
        CtlC.CallParMethod(this, 1610743813, arg, ret);
        RETURN ThisReference(CtlC.VarAny(ret))
    END AddFromGuid;

    PROCEDURE (this: _References) AddFromFile* (FileName: ARRAY OF CHAR): Reference, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, ret);
        RETURN ThisReference(CtlC.VarAny(ret))
    END AddFromFile;

    PROCEDURE (this: _References) Remove* (reference: Reference), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(reference, arg[0]);
        CtlC.CallParMethod(this, 1610743815, arg, NIL);
    END Remove;


    (* ---------- Reference, dual, nonextensible ---------- *)

    PROCEDURE (this: Reference) Collection* (): References, NEW;
    BEGIN
        RETURN This_References(CtlC.GetAny(this, 1610743808))
    END Collection;

    PROCEDURE (this: Reference) VBE* (): VBE, NEW;
    BEGIN
        RETURN ThisVBE(CtlC.GetAny(this, 1610743809))
    END VBE;

    PROCEDURE (this: Reference) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743810)
    END Name;

    PROCEDURE (this: Reference) Guid* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743811)
    END Guid;

    PROCEDURE (this: Reference) Major* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743812)
    END Major;

    PROCEDURE (this: Reference) Minor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743813)
    END Minor;

    PROCEDURE (this: Reference) FullPath* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743814)
    END FullPath;

    PROCEDURE (this: Reference) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743815)
    END BuiltIn;

    PROCEDURE (this: Reference) IsBroken* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743816)
    END IsBroken;

    PROCEDURE (this: Reference) Type* (): vbext_RefKind, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743817)
    END Type;

    PROCEDURE (this: Reference) Description* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743818)
    END Description;


    (* ---------- _dispReferences_Events, hidden, nonextensible ---------- *)

    PROCEDURE (this: _dispReferences_Events) ItemAdded* (reference: Reference), NEW, ABSTRACT;

    PROCEDURE (this: _dispReferences_Events) ItemRemoved* (reference: Reference), NEW, ABSTRACT;

    PROCEDURE (this: _dispReferences_Events) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 0: ASSERT(n = 1, 11); this.ItemAdded(ThisReference(CtlC.VarAny(par[0])))
        | 1: ASSERT(n = 1, 11); this.ItemRemoved(ThisReference(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: _dispReferences_Events) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{CDDE3804-2064-11CF-867F-00AA005FF34A}"
    END GetIID;


    PROCEDURE NewWindows* (): _Windows;
    BEGIN
        RETURN This_Windows(CtlC.NewObj("{0002E185-0000-0000-C000-000000000046}"))
    END NewWindows;

    PROCEDURE NewLinkedWindows* (): _LinkedWindows;
    BEGIN
        RETURN This_LinkedWindows(CtlC.NewObj("{0002E187-0000-0000-C000-000000000046}"))
    END NewLinkedWindows;

    PROCEDURE NewProjectTemplate* (): _ProjectTemplate;
    BEGIN
        RETURN This_ProjectTemplate(CtlC.NewObj("{32CDF9E0-1602-11CE-BFDC-08002B2B8CDA}"))
    END NewProjectTemplate;

    PROCEDURE NewVBProject* (): _VBProject;
    BEGIN
        RETURN This_VBProject(CtlC.NewObj("{0002E169-0000-0000-C000-000000000046}"))
    END NewVBProject;

    PROCEDURE NewVBProjects* (): _VBProjects;
    BEGIN
        RETURN This_VBProjects(CtlC.NewObj("{0002E101-0000-0000-C000-000000000046}"))
    END NewVBProjects;

    PROCEDURE NewComponents* (): _Components;
    BEGIN
        RETURN This_Components(CtlC.NewObj("{BE39F3D6-1B13-11D0-887F-00A0C90F2744}"))
    END NewComponents;

    PROCEDURE NewVBComponents* (): _VBComponents;
    BEGIN
        RETURN This_VBComponents(CtlC.NewObj("{BE39F3D7-1B13-11D0-887F-00A0C90F2744}"))
    END NewVBComponents;

    PROCEDURE NewComponent* (): _Component;
    BEGIN
        RETURN This_Component(CtlC.NewObj("{BE39F3D8-1B13-11D0-887F-00A0C90F2744}"))
    END NewComponent;

    PROCEDURE NewVBComponent* (): _VBComponent;
    BEGIN
        RETURN This_VBComponent(CtlC.NewObj("{BE39F3DA-1B13-11D0-887F-00A0C90F2744}"))
    END NewVBComponent;

    PROCEDURE NewProperties* (): _Properties;
    BEGIN
        RETURN This_Properties(CtlC.NewObj("{0002E18B-0000-0000-C000-000000000046}"))
    END NewProperties;

    PROCEDURE NewCodeModule* (): _CodeModule;
    BEGIN
        RETURN This_CodeModule(CtlC.NewObj("{0002E170-0000-0000-C000-000000000046}"))
    END NewCodeModule;

    PROCEDURE NewCodePanes* (): _CodePanes;
    BEGIN
        RETURN This_CodePanes(CtlC.NewObj("{0002E174-0000-0000-C000-000000000046}"))
    END NewCodePanes;

    PROCEDURE NewCodePane* (): _CodePane;
    BEGIN
        RETURN This_CodePane(CtlC.NewObj("{0002E178-0000-0000-C000-000000000046}"))
    END NewCodePane;

    PROCEDURE NewReferences* (): _References;
    BEGIN
        RETURN This_References(CtlC.NewObj("{0002E17C-0000-0000-C000-000000000046}"))
    END NewReferences;

END CtlVBIDE.
