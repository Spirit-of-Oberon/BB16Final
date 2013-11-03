MODULE CtlC;
(**
    project    = "BlackBox"
    organization    = "www.oberon.ch"
    contributors    = "Oberon microsystems"
    version    = "System/Rsrc/About"
    copyright    = "System/Rsrc/About"
    license    = "Docu/BB-License"
    purpose    = "conversion functions for ole automation wrappers"
    changes    = ""
    issues    = ""

**)


    IMPORT SYSTEM, COM, WinApi, WinOle, WinOleAut, CtlT;
    
    
    CONST
        nullid = WinOle.GUID_NULL;
    
    
    TYPE
        ArrAny = POINTER TO ARRAY OF CtlT.Any;
        ArrObj = POINTER TO ARRAY OF CtlT.Object;
        ArrByte = POINTER TO ARRAY OF BYTE;
        ArrSInt = POINTER TO ARRAY OF SHORTINT;
        ArrInt = POINTER TO ARRAY OF INTEGER;
        ArrSReal = POINTER TO ARRAY OF SHORTREAL;
        ArrReal = POINTER TO ARRAY OF REAL;
        ArrBool = POINTER TO ARRAY OF BOOLEAN;
        ArrRes = POINTER TO ARRAY OF COM.RESULT;
        ArrCy = POINTER TO ARRAY OF CtlT.OleCy;
        ArrDate = POINTER TO ARRAY OF CtlT.OleDate;
        ArrStr = POINTER TO ARRAY OF CtlT.Strg;
        ArrIntfce = POINTER TO ARRAY OF COM.IUnknown;

        Arr2Any = POINTER TO ARRAY OF ARRAY OF CtlT.Any;
        Arr2Obj = POINTER TO ARRAY OF ARRAY OF CtlT.Object;
        Arr2Byte = POINTER TO ARRAY OF ARRAY OF BYTE;
        Arr2SInt = POINTER TO ARRAY OF ARRAY OF SHORTINT;
        Arr2Int = POINTER TO ARRAY OF ARRAY OF INTEGER;
        Arr2SReal = POINTER TO ARRAY OF ARRAY OF SHORTREAL;
        Arr2Real = POINTER TO ARRAY OF ARRAY OF REAL;
        Arr2Bool = POINTER TO ARRAY OF ARRAY OF BOOLEAN;
        Arr2Res = POINTER TO ARRAY OF ARRAY OF COM.RESULT;
        Arr2Cy = POINTER TO ARRAY OF ARRAY OF CtlT.OleCy;
        Arr2Date = POINTER TO ARRAY OF ARRAY OF CtlT.OleDate;
        Arr2Str = POINTER TO ARRAY OF ARRAY OF CtlT.Strg;
        Arr2Intfce = POINTER TO ARRAY OF ARRAY OF COM.IUnknown;
        
        AnyEnum = POINTER TO RECORD (CtlT.Enumerator)
            enum: WinOleAut.IEnumVARIANT
        END;
        
        EnumWrapper = POINTER TO RECORD (WinOleAut.IEnumVARIANT)
            enum: CtlT.Enumerator;
            cur: INTEGER
        END;
        
        Temp = POINTER TO RECORD
            str: CtlT.Strg;
            obj: CtlT.Object;
            any: CtlT.Any
        END;

        
    VAR
        nullpar: WinOleAut.DISPPARAMS;    (* empty parameter list *)
        putId: ARRAY 1 OF WinOleAut.DISPID;    (* dispid of put value parameter *)
        

    (* string tools *)
    
    PROCEDURE AllocSysString (IN s: ARRAY OF CHAR): WinOle.BSTR;
    BEGIN
        RETURN WinOleAut.SysAllocString(s);
    END AllocSysString;
    
    PROCEDURE AllocString (s: WinOle.BSTR): CtlT.Strg;
        VAR i, n: INTEGER; str: CtlT.Strg;
    BEGIN
        IF s # NIL THEN
            n := WinOleAut.SysStringLen(s);
            NEW(str, n + 1); str^ := s$
        ELSE
            NEW(str, 1); str[0] := 0X
        END;
        RETURN str
    END AllocString;
    
    PROCEDURE AllocSafeArray (len, elsize, flag: INTEGER; OUT arr: WinOleAut.PtrSAFEARRAY; OUT adr: INTEGER);
        VAR res: COM.RESULT; 
    BEGIN
        res := WinOleAut.SafeArrayAllocDescriptor(1, arr); ASSERT(res >= 0, 11);
        arr.rgsabound[0].lLbound := 0;
        arr.rgsabound[0].cElements := len;
        arr.cbElements := elsize;
        arr.fFeatures := SHORT(arr.fFeatures + SHORT(flag));
        res := WinOleAut.SafeArrayAllocData(arr); ASSERT(res >= 0, 11);
        res := WinOleAut.SafeArrayAccessData(arr, adr); ASSERT(res >= 0, 11);
    END AllocSafeArray;
    
    PROCEDURE AllocSafeArray2 (
        len, len1, elsize, flag: INTEGER; OUT arr: WinOleAut.PtrSAFEARRAY; OUT adr: INTEGER
    );
        VAR res: COM.RESULT; 
    BEGIN
        res := WinOleAut.SafeArrayAllocDescriptor(2, arr); ASSERT(res >= 0, 11);
        arr.rgsabound[0].lLbound := 0;
        arr.rgsabound[0].cElements := len1;
        arr.rgsabound[1].lLbound := 0;
        arr.rgsabound[1].cElements := len;
        arr.cbElements := elsize;
        arr.fFeatures := SHORT(arr.fFeatures + SHORT(flag));
        res := WinOleAut.SafeArrayAllocData(arr); ASSERT(res >= 0, 11);
        res := WinOleAut.SafeArrayAccessData(arr, adr); ASSERT(res >= 0, 11);
    END AllocSafeArray2;
    
    
    (* transformation tools to type VARIANT (not public) *)
    
    PROCEDURE ByteVar* (x: BYTE; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_UI1; var.u.bVal := SHORT(CHR(x))
    END ByteVar;
    
    PROCEDURE SIntVar* (x: SHORTINT; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_I2; var.u.iVal := x
    END SIntVar;
    
    PROCEDURE IntVar* (x: INTEGER; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_I4; var.u.lVal := x
    END IntVar;
    
    PROCEDURE SRealVar* (x: SHORTREAL; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_R4; var.u.fltVal := x
    END SRealVar;
    
    PROCEDURE RealVar* (x: REAL; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_R8; var.u.dblVal := x
    END RealVar;
    
    PROCEDURE BoolVar* (x: BOOLEAN; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_BOOL;
        IF x THEN var.u.boolVal := -1 ELSE var.u.boolVal := 0 END
    END BoolVar;
    
    PROCEDURE ResVar* (x: COM.RESULT; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_ERROR; var.u.scode := x
    END ResVar;
    
    PROCEDURE CyVar* (x: CtlT.OleCy; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_CY; var.u.cyVal := x
    END CyVar;
    
    PROCEDURE DateVar* (x: CtlT.OleDate; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_DATE; var.u.date := x
    END DateVar;
    
    PROCEDURE StrVar* (IN str: ARRAY OF CHAR; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_BSTR; var.u.bstrVal := AllocSysString(str)
    END StrVar;
    
    PROCEDURE ObjVar* (obj: CtlT.Object; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_DISPATCH; var.u.pdispVal := CtlT.Disp(obj)
    END ObjVar;
    
    PROCEDURE IntfceVar* (unk: COM.IUnknown; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_UNKNOWN; var.u.punkVal := unk
    END IntfceVar;
    
    PROCEDURE EnumVar* (enum: CtlT.Enumerator; VAR var: CtlT.Variant);
        VAR e: EnumWrapper;
    BEGIN
        var.vt := WinOle.VT_UNKNOWN; NEW(e); e.enum := enum; var.u.punkVal := e
    END EnumVar;
    
    PROCEDURE^ AnyVar* (v: CtlT.Any; VAR var: CtlT.Variant);
    
    PROCEDURE ByteArrVar* (VAR x: ARRAY OF BYTE; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_UI1;
        AllocSafeArray(LEN(x), SIZE(BYTE), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(BYTE));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END ByteArrVar;

    PROCEDURE SIntArrVar* (VAR x: ARRAY OF SHORTINT; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_I2;
        AllocSafeArray(LEN(x), SIZE(SHORTINT), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(SHORTINT));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END SIntArrVar;

    PROCEDURE IntArrVar* (VAR x: ARRAY OF INTEGER; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_I4;
        AllocSafeArray(LEN(x), SIZE(INTEGER), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(INTEGER));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END IntArrVar;

    PROCEDURE SRealArrVar* (VAR x: ARRAY OF SHORTREAL; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_R4;
        AllocSafeArray(LEN(x), SIZE(SHORTREAL), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(SHORTREAL));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END SRealArrVar;

    PROCEDURE RealArrVar* (VAR x: ARRAY OF REAL; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_R8;
        AllocSafeArray(LEN(x), SIZE(REAL), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(REAL));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END RealArrVar;

    PROCEDURE BoolArrVar* (VAR x: ARRAY OF BOOLEAN; VAR var: CtlT.Variant);
        VAR a, i: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_BOOL;
        AllocSafeArray(LEN(x), 2, 0, var.u.parray, a);
        i := 0;
        WHILE i < LEN(x) DO
            IF x[i] THEN SYSTEM.PUT(a, SHORT((* LONG( *)-1)) ELSE SYSTEM.PUT(a, SHORT((* LONG( *)0)) END;
            INC(a, 2); INC(i)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END BoolArrVar;

    PROCEDURE ResArrVar* (VAR x: ARRAY OF COM.RESULT; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_ERROR;
        AllocSafeArray(LEN(x), SIZE(COM.RESULT), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(COM.RESULT));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END ResArrVar;

    PROCEDURE CyArrVar* (VAR x: ARRAY OF CtlT.OleCy; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_CY;
        AllocSafeArray(LEN(x), SIZE(CtlT.OleCy), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(CtlT.OleCy));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END CyArrVar;

    PROCEDURE DateArrVar* (VAR x: ARRAY OF CtlT.OleDate; VAR var: CtlT.Variant);
        VAR a: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_DATE;
        AllocSafeArray(LEN(x), SIZE(CtlT.OleDate), 0, var.u.parray, a);
        SYSTEM.MOVE(SYSTEM.ADR(x), a, LEN(x) * SIZE(CtlT.OleDate));
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END DateArrVar;

    PROCEDURE StrArrVar* (VAR x: ARRAY OF CtlT.Strg; VAR var: CtlT.Variant);
        VAR a, i: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_BSTR;
        AllocSafeArray(LEN(x), SIZE(WinOle.BSTR), WinOleAut.FADF_BSTR, var.u.parray, a);
        i := 0;
        WHILE i < LEN(x) DO
            SYSTEM.PUT(a, AllocSysString(x[i]^)); INC(a, SIZE(WinOle.BSTR)); INC(i)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END StrArrVar;

    PROCEDURE ObjArrVar* (VAR x: ARRAY OF CtlT.Object; VAR var: CtlT.Variant);
        VAR i: INTEGER; res: COM.RESULT; p: POINTER TO ARRAY [untagged] OF WinOleAut.IDispatch;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_DISPATCH;
        AllocSafeArray(
            LEN(x), SIZE(WinOleAut.IDispatch), WinOleAut.FADF_DISPATCH, var.u.parray, SYSTEM.VAL(INTEGER, p));
        i := 0; WHILE i < LEN(x) DO p[i] := CtlT.Disp(x[i]); INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END ObjArrVar;

    PROCEDURE IntfceArrVar* (VAR x: ARRAY OF COM.IUnknown; VAR var: CtlT.Variant);
        VAR i: INTEGER; res: COM.RESULT; p: POINTER TO ARRAY [untagged] OF COM.IUnknown;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_UNKNOWN;
        AllocSafeArray(
            LEN(x), SIZE(COM.IUnknown), WinOleAut.FADF_UNKNOWN, var.u.parray, SYSTEM.VAL(INTEGER, p));
        i := 0; WHILE i < LEN(x) DO p[i] := x[i]; INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END IntfceArrVar;

    PROCEDURE AnyArrVar* (VAR x: ARRAY OF CtlT.Any; VAR var: CtlT.Variant);
        VAR i: INTEGER; res: COM.RESULT; p: POINTER TO ARRAY [untagged] OF CtlT.Variant;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_VARIANT;
        AllocSafeArray(LEN(x), SIZE(CtlT.Variant), WinOleAut.FADF_VARIANT, var.u.parray, SYSTEM.VAL(INTEGER, p));
        i := 0; WHILE i < LEN(x) DO AnyVar(x[i], p[i]); INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END AnyArrVar;

    PROCEDURE ByteArr2Var* (VAR x: ARRAY OF ARRAY OF BYTE; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_UI1;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(BYTE), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(BYTE)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END ByteArr2Var;

    PROCEDURE SIntArr2Var* (VAR x: ARRAY OF ARRAY OF SHORTINT; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_I2;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(SHORTINT), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(SHORTINT)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END SIntArr2Var;

    PROCEDURE IntArr2Var* (VAR x: ARRAY OF ARRAY OF INTEGER; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_I4;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(INTEGER), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(INTEGER)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END IntArr2Var;

    PROCEDURE SRealArr2Var* (VAR x: ARRAY OF ARRAY OF SHORTREAL; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_R4;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(SHORTREAL), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(SHORTREAL)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END SRealArr2Var;

    PROCEDURE RealArr2Var* (VAR x: ARRAY OF ARRAY OF REAL; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_R8;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(REAL), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(REAL)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END RealArr2Var;

    PROCEDURE BoolArr2Var* (VAR x: ARRAY OF ARRAY OF BOOLEAN; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_BOOL;
        AllocSafeArray2(LEN(x), LEN(x, 1), 2, 0, var.u.parray, a); j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0;
            WHILE i < LEN(x) DO
                IF x[i, j] THEN SYSTEM.PUT(a, SHORT((* LONG( *)-1)) ELSE SYSTEM.PUT(a, SHORT((* LONG( *)0)) END;
                INC(a, 2); INC(i)
            END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END BoolArr2Var;

    PROCEDURE ResArr2Var* (VAR x: ARRAY OF ARRAY OF COM.RESULT; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_ERROR;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(COM.RESULT), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(COM.RESULT)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END ResArr2Var;

    PROCEDURE CyArr2Var* (VAR x: ARRAY OF ARRAY OF CtlT.OleCy; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_CY;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(CtlT.OleCy), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(CtlT.OleCy)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END CyArr2Var;

    PROCEDURE DateArr2Var* (VAR x: ARRAY OF ARRAY OF CtlT.OleDate; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_DATE;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(CtlT.OleDate), 0, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, x[i, j]); INC(a, SIZE(CtlT.OleDate)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END DateArr2Var;

    PROCEDURE StrArr2Var* (VAR x: ARRAY OF ARRAY OF CtlT.Strg; VAR var: CtlT.Variant);
        VAR a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_BSTR;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(WinOle.BSTR), WinOleAut.FADF_BSTR, var.u.parray, a);
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO SYSTEM.PUT(a, AllocSysString(x[i, j]^)); INC(a, SIZE(WinOle.BSTR)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END StrArr2Var;

    PROCEDURE ObjArr2Var* (VAR x: ARRAY OF ARRAY OF CtlT.Object; VAR var: CtlT.Variant);
        VAR i, j: INTEGER; res: COM.RESULT; p: POINTER TO ARRAY [untagged] OF WinOleAut.IDispatch;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_DISPATCH;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(WinOleAut.IDispatch),
                                WinOleAut.FADF_DISPATCH, var.u.parray, SYSTEM.VAL(INTEGER, p));
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO p[i] := CtlT.Disp(x[i, j]); INC(i) END;
            INC(SYSTEM.VAL(INTEGER, p), SIZE(WinOleAut.IDispatch) * LEN(x)); INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END ObjArr2Var;

    PROCEDURE IntfceArr2Var* (VAR x: ARRAY OF ARRAY OF COM.IUnknown; VAR var: CtlT.Variant);
        VAR i, j: INTEGER; res: COM.RESULT; p: POINTER TO ARRAY [untagged] OF COM.IUnknown;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_UNKNOWN;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(COM.IUnknown),
                                WinOleAut.FADF_UNKNOWN, var.u.parray, SYSTEM.VAL(INTEGER, p));
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO p[i] := x[i, j]; INC(i) END;
            INC(SYSTEM.VAL(INTEGER, p), SIZE(COM.IUnknown) * LEN(x)); INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END IntfceArr2Var;

    PROCEDURE AnyArr2Var* (VAR x: ARRAY OF ARRAY OF CtlT.Any; VAR var: CtlT.Variant);
        VAR i, j: INTEGER; res: COM.RESULT; p: POINTER TO ARRAY [untagged] OF CtlT.Variant;
    BEGIN
        var.vt := WinOle.VT_ARRAY + WinOle.VT_VARIANT;
        AllocSafeArray2(LEN(x), LEN(x, 1), SIZE(CtlT.Variant),
                                WinOleAut.FADF_VARIANT, var.u.parray, SYSTEM.VAL(INTEGER, p));
        j := 0;
        WHILE j < LEN(x, 1) DO
            i := 0; WHILE i < LEN(x) DO AnyVar(x[i, j], p[i]); INC(i) END;
            INC(SYSTEM.VAL(INTEGER, p), SIZE(CtlT.Variant) * LEN(x)); INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(var.u.parray);
    END AnyArr2Var;

    PROCEDURE AnyVar* (v: CtlT.Any; VAR var: CtlT.Variant);
    BEGIN
        IF v # NIL THEN
            IF v.dim = 0 THEN
                var.vt := v.typeId;
                CASE v.typeId OF
                | CtlT.byte: var.u.bVal := SHORT(CHR(v(CtlT.ByteT).val))
                | CtlT.shortint: var.u.iVal := v(CtlT.ShortInt).val
                | CtlT.integer: var.u.lVal := v(CtlT.Integer).val
                | CtlT.shortreal: var.u.fltVal := v(CtlT.ShortReal).val
                | CtlT.real: var.u.dblVal := v(CtlT.RealT).val
                | CtlT.boolean: IF v(CtlT.Boolean).val THEN var.u.boolVal := -1 ELSE var.u.boolVal := 0 END
                | CtlT.result: var.u.scode:= v(CtlT.Result).val
                | CtlT.object: var.u.pdispVal := CtlT.Disp(v(CtlT.Object))
                | CtlT.interface: var.u.punkVal := v(CtlT.Interface).val
                | CtlT.currency: var.u.cyVal := v(CtlT.Currency).val
                | CtlT.date: var.u.date := v(CtlT.DateT).val
                | CtlT.string: var.u.bstrVal := AllocSysString(v(CtlT.String).val^);
                END
            ELSIF v.dim = 1 THEN
                CASE v.typeId OF
                | CtlT.byte: ByteArrVar(v(CtlT.ByteArray).p^, var)
                | CtlT.shortint: SIntArrVar(v(CtlT.ShortIntArray).p^, var)
                | CtlT.integer: IntArrVar(v(CtlT.IntegerArray).p^, var)
                | CtlT.shortreal: SRealArrVar(v(CtlT.ShortRealArray).p^, var)
                | CtlT.real: RealArrVar(v(CtlT.RealArray).p^, var)
                | CtlT.boolean: BoolArrVar(v(CtlT.BooleanArray).p^, var)
                | CtlT.result: ResArrVar(v(CtlT.ResultArray).p^, var)
                | CtlT.object: ObjArrVar(v(CtlT.ObjectArray).p^, var)
                | CtlT.interface: IntfceArrVar(v(CtlT.InterfaceArray).p^, var)
                | CtlT.currency: CyArrVar(v(CtlT.CurrencyArray).p^, var)
                | CtlT.date: DateArrVar(v(CtlT.DateArray).p^, var)
                | CtlT.string: StrArrVar(v(CtlT.StringArray).p^, var)
                | CtlT.any: AnyArrVar(v(CtlT.AnyArray).p^, var)
                END
            ELSIF v.dim = 2 THEN
                CASE v.typeId OF
                | CtlT.byte: ByteArr2Var(v(CtlT.ByteArray2).p^, var)
                | CtlT.shortint: SIntArr2Var(v(CtlT.ShortIntArray2).p^, var)
                | CtlT.integer: IntArr2Var(v(CtlT.IntegerArray2).p^, var)
                | CtlT.shortreal: SRealArr2Var(v(CtlT.ShortRealArray2).p^, var)
                | CtlT.real: RealArr2Var(v(CtlT.RealArray2).p^, var)
                | CtlT.boolean: BoolArr2Var(v(CtlT.BooleanArray2).p^, var)
                | CtlT.result: ResArr2Var(v(CtlT.ResultArray2).p^, var)
                | CtlT.object: ObjArr2Var(v(CtlT.ObjectArray2).p^, var)
                | CtlT.interface: IntfceArr2Var(v(CtlT.InterfaceArray2).p^, var)
                | CtlT.currency: CyArr2Var(v(CtlT.CurrencyArray2).p^, var)
                | CtlT.date: DateArr2Var(v(CtlT.DateArray2).p^, var)
                | CtlT.string: StrArr2Var(v(CtlT.StringArray2).p^, var)
                | CtlT.any: AnyArr2Var(v(CtlT.AnyArray2).p^, var)
                END
            ELSE HALT(100)
            END
        ELSE
            var.vt := WinOle.VT_EMPTY
        END
    END AnyVar;
    
    PROCEDURE RefByteVar* (VAR x: BYTE; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_UI1 + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefByteVar;
    
    PROCEDURE RefSIntVar* (VAR x: SHORTINT; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_I2 + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefSIntVar;
    
    PROCEDURE RefIntVar* (VAR x: INTEGER; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_I4 + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefIntVar;
    
    PROCEDURE RefSRealVar* (VAR x: SHORTREAL; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_R4 + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefSRealVar;
    
    PROCEDURE RefRealVar* (VAR x: REAL; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_R8 + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefRealVar;
    
    PROCEDURE RefResVar* (VAR x: COM.RESULT; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_ERROR + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefResVar;
    
    PROCEDURE RefCyVar* (VAR x: CtlT.OleCy; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_CY + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefCyVar;
    
    PROCEDURE RefDateVar* (VAR x: CtlT.OleDate; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_DATE + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefDateVar;
    
    PROCEDURE RefIntfceVar* (VAR unk: COM.IUnknown; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_UNKNOWN + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(unk)
    END RefIntfceVar;
    
    PROCEDURE RefBoolVar* (VAR x: CtlT.Variant; VAR var: CtlT.Variant);
    BEGIN
        x.vt := WinOle.VT_BOOL;
        var.vt := WinOle.VT_BOOL + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x.u.boolVal)
    END RefBoolVar;
    
    PROCEDURE RefStrVar* (VAR x: CtlT.Variant; VAR var: CtlT.Variant);
    BEGIN
        x.vt := WinOle.VT_BSTR;
        var.vt := WinOle.VT_BSTR + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x.u.bstrVal)
    END RefStrVar;
    
    PROCEDURE RefObjVar* (VAR x: CtlT.Variant; VAR var: CtlT.Variant);
    BEGIN
        x.vt := WinOle.VT_DISPATCH;
        var.vt := WinOle.VT_DISPATCH + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x.u.pdispVal)
    END RefObjVar;
    
    PROCEDURE RefAnyVar* (VAR x: CtlT.Variant; VAR var: CtlT.Variant);
    BEGIN
        var.vt := WinOle.VT_VARIANT + WinOle.VT_BYREF; var.u.byref := SYSTEM.ADR(x)
    END RefAnyVar;
(*    
    PROCEDURE BoolRefVar* (x: BOOLEAN; VAR var: CtlT.Variant);
    BEGIN
        ASSERT(var.vt = WinOle.VT_BOOL + WinOle.VT_BYREF, 100);
        IF x THEN var.u.pboolVal[0] := -1 ELSE var.u.pboolVal[0] := 0 END
    END BoolRefVar;
    
    PROCEDURE StrRefVar* (IN str: ARRAY OF CHAR; VAR var: CtlT.Variant);
    BEGIN
        ASSERT(var.vt = WinOle.VT_BSTR + WinOle.VT_BYREF, 100);
        var.u.pbstrVal[0] := AllocSysString(str)
    END StrRefVar;
    
    PROCEDURE ObjRefVar* (obj: CtlT.Object; VAR var: CtlT.Variant);
    BEGIN
        ASSERT(var.vt = WinOle.VT_DISPATCH + WinOle.VT_BYREF, 100);
        var.u.ppdispVal[0] := CtlT.Disp(obj)
    END ObjRefVar;
    
    PROCEDURE AnyRefVar* (v: CtlT.Any; VAR var: CtlT.Variant);
    BEGIN
        ASSERT(var.vt = WinOle.VT_DISPATCH + WinOle.VT_VARIANT, 100);
        AnyVar(v, var.u.pvarVal^)
    END AnyRefVar;
*)
    
    (* transformation tools from type VARIANT (not public) *)
    
    PROCEDURE^ VarAny* (VAR v: CtlT.Variant): CtlT.Any;

    PROCEDURE VarByte* (VAR v: CtlT.Variant): BYTE;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_UI1 THEN RETURN SHORT(ORD(v.u.pbVal[0]))
        ELSE ASSERT(v.vt = WinOle.VT_UI1, 100); RETURN SHORT(ORD(v.u.bVal))
        END
    END VarByte;
    
    PROCEDURE VarSInt* (VAR v: CtlT.Variant): SHORTINT;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_I2 THEN RETURN v.u.piVal[0]
        ELSE ASSERT(v.vt = WinOle.VT_I2, 100); RETURN v.u.iVal
        END
    END VarSInt;
    
    PROCEDURE VarInt* (VAR v: CtlT.Variant): INTEGER;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_I4 THEN RETURN v.u.plVal[0]
        ELSE ASSERT(v.vt = WinOle.VT_I4, 100); RETURN v.u.lVal
        END
    END VarInt;
    
    PROCEDURE VarSReal* (VAR v: CtlT.Variant): SHORTREAL;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_R4 THEN RETURN v.u.pfltVal[0]
        ELSE ASSERT(v.vt = WinOle.VT_R4, 100); RETURN v.u.fltVal
        END
    END VarSReal;
    
    PROCEDURE VarReal* (VAR v: CtlT.Variant): REAL;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_R8 THEN RETURN v.u.pdblVal[0]
        ELSE ASSERT(v.vt = WinOle.VT_R8, 100); RETURN v.u.dblVal
        END
    END VarReal;
    
    PROCEDURE VarBool* (VAR v: CtlT.Variant): BOOLEAN;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_BOOL THEN RETURN v.u.pboolVal[0] # 0
        ELSE ASSERT(v.vt = WinOle.VT_BOOL, 100); RETURN v.u.boolVal # 0
        END
    END VarBool;
    
    PROCEDURE VarRes* (VAR v: CtlT.Variant): COM.RESULT;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_ERROR THEN RETURN v.u.pscode[0]
        ELSE ASSERT(v.vt = WinOle.VT_ERROR, 100); RETURN v.u.scode
        END
    END VarRes;
    
    PROCEDURE VarCy* (VAR v: CtlT.Variant): CtlT.OleCy;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_CY THEN RETURN v.u.pcyVal[0]
        ELSE ASSERT(v.vt = WinOle.VT_CY, 100); RETURN v.u.cyVal
        END
    END VarCy;
    
    PROCEDURE VarDate* (VAR v: CtlT.Variant): CtlT.OleDate;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_DATE THEN RETURN v.u.pdate[0]
        ELSE ASSERT(v.vt = WinOle.VT_DATE, 100); RETURN v.u.date
        END
    END VarDate;
    
    PROCEDURE VarStr* (VAR v: CtlT.Variant): CtlT.Strg;
        VAR s: CtlT.Strg; res: COM.RESULT;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_BSTR THEN s := AllocString(v.u.pbstrVal[0])
        ELSE ASSERT(v.vt = WinOle.VT_BSTR, 100); s := AllocString(v.u.bstrVal)
        END;
        res := WinOleAut.VariantClear(v);
        RETURN s
    END VarStr;
    
    PROCEDURE VarObj* (VAR v: CtlT.Variant): CtlT.Object;
        VAR obj: CtlT.Object; res: COM.RESULT;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_DISPATCH THEN obj := CtlT.Obj(v.u.ppdispVal[0])
        ELSE ASSERT(v.vt = WinOle.VT_DISPATCH, 100); obj := CtlT.Obj(v.u.pdispVal)
        END;
        res := WinOleAut.VariantClear(v);
        RETURN obj
    END VarObj;
    
    PROCEDURE VarIntfce* (VAR v: CtlT.Variant): COM.IUnknown;
        VAR unk: COM.IUnknown; res: COM.RESULT;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_UNKNOWN THEN unk := v.u.ppunkVal[0]
        ELSE ASSERT(v.vt = WinOle.VT_UNKNOWN, 100); unk := v.u.punkVal
        END;
        res := WinOleAut.VariantClear(v);
        RETURN unk
    END VarIntfce;
    
    PROCEDURE VarEnum* (VAR v: CtlT.Variant): CtlT.Enumerator;
        VAR enum: WinOleAut.IEnumVARIANT; res: COM.RESULT; e: AnyEnum;
    BEGIN
        IF v.vt = WinOle.VT_BYREF + WinOle.VT_UNKNOWN THEN
            res := v.u.ppunkVal[0].QueryInterface(COM.ID(enum), enum)
        ELSE ASSERT(v.vt = WinOle.VT_UNKNOWN, 100);
            res := v.u.punkVal.QueryInterface(COM.ID(enum), enum)
        END;
        ASSERT(res >= 0, 100);
        res := WinOleAut.VariantClear(v);
        NEW(e); e.enum := enum;
        RETURN e
    END VarEnum;
    
    PROCEDURE VarByteArr* (VAR v: CtlT.Variant): ArrByte;
        VAR x: ArrByte; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_UI1, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(BYTE));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarByteArr;
    
    PROCEDURE VarSIntArr* (VAR v: CtlT.Variant): ArrSInt;
        VAR x: ArrSInt; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_I2, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(SHORTINT));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarSIntArr;
    
    PROCEDURE VarIntArr* (VAR v: CtlT.Variant): ArrInt;
        VAR x: ArrInt; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_I4, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(INTEGER));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarIntArr;
    
    PROCEDURE VarSRealArr* (VAR v: CtlT.Variant): ArrSReal;
        VAR x: ArrSReal; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_R4, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(SHORTREAL));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarSRealArr;
    
    PROCEDURE VarRealArr* (VAR v: CtlT.Variant): ArrReal;
        VAR x: ArrReal; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_R8, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(REAL));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarRealArr;
    
    PROCEDURE VarBoolArr* (VAR v: CtlT.Variant): ArrBool;
        VAR x: ArrBool; i, a: INTEGER; res: COM.RESULT; b: SHORTINT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_BOOL, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, b); x[i] := b # 0 ; INC(a, 2); INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarBoolArr;
    
    PROCEDURE VarResArr* (VAR v: CtlT.Variant): ArrRes;
        VAR x: ArrRes; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_ERROR, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(COM.RESULT));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarResArr;
    
    PROCEDURE VarCyArr* (VAR v: CtlT.Variant): ArrCy;
        VAR x: ArrCy; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_CY, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(CtlT.OleCy));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarCyArr;
    
    PROCEDURE VarDateArr* (VAR v: CtlT.Variant): ArrDate;
        VAR x: ArrDate; a: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_DATE, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        SYSTEM.MOVE(a, SYSTEM.ADR(x^), LEN(x^) * SIZE(CtlT.OleDate));
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarDateArr;
    
    PROCEDURE VarStrArr* (VAR v: CtlT.Variant): ArrStr;
        VAR x: ArrStr; i, a: INTEGER; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_DATE, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, s); x[i] := AllocString(s); INC(a, SIZE(WinOle.BSTR)); INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarStrArr;
    
    PROCEDURE VarObjArr* (VAR v: CtlT.Variant): ArrObj;
        VAR x: ArrObj; i: INTEGER; p: POINTER TO ARRAY [untagged] OF WinOleAut.IDispatch; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_DISPATCH, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, SYSTEM.VAL(INTEGER, p)); ASSERT(res >= 0, 11);
        i := 0; WHILE i < LEN(x^) DO x[i] := CtlT.Obj(p[i]); INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarObjArr;
    
    PROCEDURE VarIntfceArr* (VAR v: CtlT.Variant): ArrIntfce;
        VAR x: ArrIntfce; i: INTEGER; p: POINTER TO ARRAY [untagged] OF COM.IUnknown; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_UNKNOWN, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, SYSTEM.VAL(INTEGER, p)); ASSERT(res >= 0, 11);
        i := 0; WHILE i < LEN(x^) DO x[i] := p[i]; INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarIntfceArr;
    
    PROCEDURE VarAnyArr* (VAR v: CtlT.Variant): ArrAny;
        VAR x: ArrAny; i: INTEGER; p: POINTER TO ARRAY [untagged] OF CtlT.Variant; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_VARIANT, 100);
        ASSERT(v.u.parray.cDims = 1, 100);
        NEW(x, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, SYSTEM.VAL(INTEGER, p)); ASSERT(res >= 0, 11);
        i := 0; WHILE i < LEN(x^) DO x[i] := VarAny(p[i]); INC(i) END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarAnyArr;
    
    PROCEDURE VarByteArr2* (VAR v: CtlT.Variant): Arr2Byte;
        VAR x: Arr2Byte; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_UI1, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(BYTE)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarByteArr2;
    
    PROCEDURE VarSIntArr2* (VAR v: CtlT.Variant): Arr2SInt;
        VAR x: Arr2SInt; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_I2, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(SHORTINT)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarSIntArr2;
    
    PROCEDURE VarIntArr2* (VAR v: CtlT.Variant): Arr2Int;
        VAR x: Arr2Int; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_I4, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(INTEGER)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarIntArr2;
    
    PROCEDURE VarSRealArr2* (VAR v: CtlT.Variant): Arr2SReal;
        VAR x: Arr2SReal; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_R4, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(SHORTREAL)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarSRealArr2;
    
    PROCEDURE VarRealArr2* (VAR v: CtlT.Variant): Arr2Real;
        VAR x: Arr2Real; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_R8, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(REAL)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarRealArr2;
    
    PROCEDURE VarBoolArr2* (VAR v: CtlT.Variant): Arr2Bool;
        VAR x: Arr2Bool; a, i, j: INTEGER; res: COM.RESULT; b: SHORTINT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_BOOL, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, b); x[i, j] := b # 0; INC(a, 2); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarBoolArr2;
    
    PROCEDURE VarResArr2* (VAR v: CtlT.Variant): Arr2Res;
        VAR x: Arr2Res; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_ERROR, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(COM.RESULT)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarResArr2;
    
    PROCEDURE VarCyArr2* (VAR v: CtlT.Variant): Arr2Cy;
        VAR x: Arr2Cy; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_CY, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(CtlT.OleCy)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarCyArr2;
    
    PROCEDURE VarDateArr2* (VAR v: CtlT.Variant): Arr2Date;
        VAR x: Arr2Date; a, i, j: INTEGER; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_DATE, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO SYSTEM.GET(a, x[i, j]); INC(a, SIZE(CtlT.OleDate)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarDateArr2;
    
    PROCEDURE VarStrArr2* (VAR v: CtlT.Variant): Arr2Str;
        VAR x: Arr2Str; a, i, j: INTEGER; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_DATE, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, a); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0;
            WHILE i < LEN(x^) DO SYSTEM.GET(a, s); x[i, j] := AllocString(s); INC(a, SIZE(WinOle.BSTR)); INC(i) END;
            INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarStrArr2;
    
    PROCEDURE VarObjArr2* (VAR v: CtlT.Variant): Arr2Obj;
        VAR x: Arr2Obj; i, j: INTEGER; p: POINTER TO ARRAY [untagged] OF WinOleAut.IDispatch; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_DISPATCH, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, SYSTEM.VAL(INTEGER, p)); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO x[i, j] := CtlT.Obj(p[i]); INC(i) END;
            INC(SYSTEM.VAL(INTEGER, p), SIZE(WinOleAut.IDispatch) * LEN(x^)); INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarObjArr2;
    
    PROCEDURE VarIntfceArr2* (VAR v: CtlT.Variant): Arr2Intfce;
        VAR x: Arr2Intfce; i, j: INTEGER; p: POINTER TO ARRAY [untagged] OF COM.IUnknown; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_UNKNOWN, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, SYSTEM.VAL(INTEGER, p)); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO x[i, j] := p[i]; INC(i) END;
            INC(SYSTEM.VAL(INTEGER, p), SIZE(COM.IUnknown) * LEN(x^)); INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarIntfceArr2;
    
    PROCEDURE VarAnyArr2* (VAR v: CtlT.Variant): Arr2Any;
        VAR x: Arr2Any; i, j: INTEGER; p: POINTER TO ARRAY [untagged] OF CtlT.Variant; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ARRAY + WinOle.VT_VARIANT, 100);
        ASSERT(v.u.parray.cDims = 2, 100);
        NEW(x, v.u.parray.rgsabound[1].cElements, v.u.parray.rgsabound[0].cElements);
        res := WinOleAut.SafeArrayAccessData(v.u.parray, SYSTEM.VAL(INTEGER, p)); ASSERT(res >= 0, 11);
        j := 0;
        WHILE j < LEN(x^, 1) DO
            i := 0; WHILE i < LEN(x^) DO x[i, j] := VarAny(p[i]); INC(i) END;
            INC(SYSTEM.VAL(INTEGER, p), SIZE(CtlT.Variant) * LEN(x^)); INC(j)
        END;
        res := WinOleAut.SafeArrayUnaccessData(v.u.parray);
        res := WinOleAut.VariantClear(v);
        RETURN x
    END VarAnyArr2;
    
    PROCEDURE VarAny* (VAR v: CtlT.Variant): CtlT.Any;
        CONST c0 = 693596;    (* 1.1.1900 - 2 *)
        VAR c: CtlT.ByteT; i: CtlT.ShortInt; l: CtlT.Integer; r: CtlT.ShortReal; lr: CtlT.RealT; b: CtlT.Boolean;
            cy: CtlT.Currency; d: CtlT.DateT; s: CtlT.String; e: CtlT.Result; int: CtlT.Interface; res: COM.RESULT;
            ca: CtlT.ByteArray; ia: CtlT.ShortIntArray; la: CtlT.IntegerArray; ra: CtlT.ShortRealArray; lra: CtlT.RealArray;
            ba: CtlT.BooleanArray; cya: CtlT.CurrencyArray; da: CtlT.DateArray; sa: CtlT.StringArray; ea: CtlT.ResultArray;
            obja: CtlT.ObjectArray; inta: CtlT.InterfaceArray; aa: CtlT.AnyArray;
            ca2: CtlT.ByteArray2; ia2: CtlT.ShortIntArray2; la2: CtlT.IntegerArray2; ra2: CtlT.ShortRealArray2;
            lra2: CtlT.RealArray2; ba2: CtlT.BooleanArray2; cya2: CtlT.CurrencyArray2; da2: CtlT.DateArray2;
            sa2: CtlT.StringArray2; ea2: CtlT.ResultArray2;
            obja2: CtlT.ObjectArray2; inta2: CtlT.InterfaceArray2; aa2: CtlT.AnyArray2;
    BEGIN
        IF ODD(v.vt DIV WinOle.VT_ARRAY) THEN
            ASSERT(~ODD(v.vt DIV WinOle.VT_BYREF), 100);
            IF v.u.parray.cDims = 1 THEN
                CASE v.vt MOD 4096 OF
                | WinOle.VT_UI1: NEW(ca); ca.typeId := CtlT.byte; ca.dim := 1; ca.p := VarByteArr(v); RETURN ca
                | WinOle.VT_I2: NEW(ia); ia.typeId := CtlT.shortint; ia.dim := 1; ia.p := VarSIntArr(v); RETURN ia
                | WinOle.VT_I4: NEW(la); la.typeId := CtlT.integer; la.dim := 1; la.p := VarIntArr(v); RETURN la
                | WinOle.VT_R4: NEW(ra); ra.typeId := CtlT.shortreal; ra.dim := 1; ra.p := VarSRealArr(v); RETURN ra
                | WinOle.VT_R8: NEW(lra); lra.typeId := CtlT.real; lra.dim := 1; lra.p := VarRealArr(v); RETURN lra
                | WinOle.VT_BOOL: NEW(ba); ba.typeId := CtlT.boolean; ba.dim := 1; ba.p := VarBoolArr(v); RETURN ba
                | WinOle.VT_CY: NEW(cya); cya.typeId := CtlT.currency; cya.dim := 1; cya.p := VarCyArr(v); RETURN cya
                | WinOle.VT_DATE: NEW(da); da.typeId := CtlT.date; da.dim := 1; da.p := VarDateArr(v); RETURN da
                | WinOle.VT_ERROR: NEW(ea); ea.typeId := CtlT.result; ea.dim := 1; ea.p := VarResArr(v); RETURN ea
                | WinOle.VT_DISPATCH:
                    NEW(obja); obja.typeId := CtlT.object; obja.dim := 1; obja.p := VarObjArr(v); RETURN obja
                | WinOle.VT_UNKNOWN:
                    NEW(inta); inta.typeId := CtlT.interface; inta.dim := 1; inta.p := VarIntfceArr(v); RETURN inta
                | WinOle.VT_BSTR: NEW(sa); sa.typeId := CtlT.string; sa.dim := 1; sa.p := VarStrArr(v); RETURN sa
                | WinOle.VT_VARIANT: NEW(aa); aa.typeId := CtlT.any; aa.dim := 1; aa.p := VarAnyArr(v); RETURN aa
                END
            ELSIF v.u.parray.cDims = 2 THEN
                CASE v.vt MOD 4096 OF
                | WinOle.VT_UI1: NEW(ca2); ca2.typeId := CtlT.byte; ca2.dim := 2; ca2.p := VarByteArr2(v); RETURN ca2
                | WinOle.VT_I2: NEW(ia2); ia2.typeId := CtlT.shortint; ia2.dim := 2; ia2.p := VarSIntArr2(v); RETURN ia2
                | WinOle.VT_I4: NEW(la2); la2.typeId := CtlT.integer; la2.dim := 2; la2.p := VarIntArr2(v); RETURN la2
                | WinOle.VT_R4: NEW(ra2); ra2.typeId := CtlT.shortreal; ra2.dim := 2; ra2.p := VarSRealArr2(v); RETURN ra2
                | WinOle.VT_R8: NEW(lra2); lra2.typeId := CtlT.real; lra2.dim := 2; lra2.p := VarRealArr2(v); RETURN lra2
                | WinOle.VT_BOOL:
                    NEW(ba2); ba2.typeId := CtlT.boolean; ba2.dim := 2; ba2.p := VarBoolArr2(v); RETURN ba2
                | WinOle.VT_CY:
                    NEW(cya2); cya2.typeId := CtlT.currency; cya2.dim := 2; cya2.p := VarCyArr2(v); RETURN cya2
                | WinOle.VT_DATE: NEW(da2); da2.typeId := CtlT.date; da2.dim := 2; da2.p := VarDateArr2(v); RETURN da2
                | WinOle.VT_ERROR:
                    NEW(ea2); ea2.typeId := CtlT.result; ea2.dim := 2; ea2.p := VarResArr2(v); RETURN ea2
                | WinOle.VT_DISPATCH:
                    NEW(obja2); obja2.typeId := CtlT.object; obja2.dim := 2; obja2.p := VarObjArr2(v); RETURN obja2
                | WinOle.VT_UNKNOWN:
                    NEW(inta2); inta2.typeId := CtlT.interface; inta2.dim := 2; inta2.p := VarIntfceArr2(v); RETURN inta2
                | WinOle.VT_BSTR: NEW(sa2); sa2.typeId := CtlT.string; sa2.dim := 2; sa2.p := VarStrArr2(v); RETURN sa2
                | WinOle.VT_VARIANT: NEW(aa2); aa2.typeId := CtlT.any; aa2.dim := 2; aa2.p := VarAnyArr2(v); RETURN aa2
                END
            ELSE HALT(100)
            END
        ELSIF ODD(v.vt DIV WinOle.VT_BYREF) THEN
            CASE v.vt MOD 4096 OF
            | WinOle.VT_UI1: NEW(c); c.typeId := CtlT.byte; c.val := SHORT(ORD(v.u.pbVal[0])); RETURN c
            | WinOle.VT_I2: NEW(i); i.typeId := CtlT.shortint; i.val := v.u.piVal[0]; RETURN i
            | WinOle.VT_I4: NEW(l); l.typeId := CtlT.integer; l.val := v.u.plVal[0]; RETURN l
            | WinOle.VT_R4: NEW(r); r.typeId := CtlT.shortreal; r.val := v.u.pfltVal[0]; RETURN r
            | WinOle.VT_R8: NEW(lr); lr.typeId := CtlT.real; lr.val := v.u.pdblVal[0]; RETURN lr
            | WinOle.VT_BOOL: NEW(b); b.typeId := CtlT.boolean; b.val := v.u.pboolVal[0] # 0; RETURN b
            | WinOle.VT_CY: NEW(cy); cy.typeId := CtlT.currency; cy.val := v.u.pcyVal[0]; RETURN cy
            | WinOle.VT_DATE: NEW(d); d.typeId := CtlT.date; d.val := v.u.pdate[0]; RETURN d
            | WinOle.VT_ERROR: NEW(e); e.typeId := CtlT.result; e.val := v.u.pscode[0]; RETURN e
            | WinOle.VT_DISPATCH: RETURN CtlT.Obj(v.u.ppdispVal[0])
            | WinOle.VT_UNKNOWN: NEW(int); int.typeId := CtlT.interface; int.val := v.u.ppunkVal[0]; RETURN int
            | WinOle.VT_BSTR: NEW(s); s.typeId := CtlT.string; s.val := AllocString(v.u.pbstrVal[0]); RETURN s
            | WinOle.VT_VARIANT: RETURN VarAny(v.u.pvarVal^)
            END
        ELSE
            CASE v.vt MOD 4096 OF
            | WinOle.VT_EMPTY: RETURN NIL
            | WinOle.VT_UI1: NEW(c); c.typeId := CtlT.byte; c.val := SHORT(ORD(v.u.bVal)); RETURN c
            | WinOle.VT_I2: NEW(i); i.typeId := CtlT.shortint; i.val := v.u.iVal; RETURN i
            | WinOle.VT_I4: NEW(l); l.typeId := CtlT.integer; l.val := v.u.lVal; RETURN l
            | WinOle.VT_R4: NEW(r); r.typeId := CtlT.shortreal; r.val := v.u.fltVal; RETURN r
            | WinOle.VT_R8: NEW(lr); lr.typeId := CtlT.real; lr.val := v.u.dblVal; RETURN lr
            | WinOle.VT_BOOL: NEW(b); b.typeId := CtlT.boolean; b.val := v.u.boolVal # 0; RETURN b
            | WinOle.VT_CY: NEW(cy); cy.typeId := CtlT.currency; cy.val := v.u.cyVal; RETURN cy
            | WinOle.VT_DATE: NEW(d); d.typeId := CtlT.date; d.val := v.u.date; RETURN d
            | WinOle.VT_ERROR: NEW(e); e.typeId := CtlT.result; e.val := v.u.scode; RETURN e
            | WinOle.VT_DISPATCH: RETURN CtlT.Obj(v.u.pdispVal)
            | WinOle.VT_UNKNOWN: NEW(int); int.typeId := CtlT.interface; int.val := v.u.punkVal; RETURN int
            | WinOle.VT_BSTR: NEW(s); s.typeId := CtlT.string; s.val := AllocString(v.u.bstrVal); RETURN s
            END
        END;
        res := WinOleAut.VariantClear(v)
    END VarAny;
    
    PROCEDURE VarRefByte* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF BYTE;
        TYPE T = POINTER TO ARRAY [untagged] OF BYTE;
    BEGIN
        ASSERT(v.vt = WinOle.VT_UI1 + WinOle.VT_BYREF, 100); RETURN SYSTEM.VAL(T, v.u.pbVal)
    END VarRefByte;
    
    PROCEDURE VarRefSInt* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF SHORTINT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_I2 + WinOle.VT_BYREF, 100); RETURN v.u.piVal
    END VarRefSInt;
    
    PROCEDURE VarRefInt* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF INTEGER;
    BEGIN
        ASSERT(v.vt = WinOle.VT_I4 + WinOle.VT_BYREF, 100); RETURN v.u.plVal
    END VarRefInt;
    
    PROCEDURE VarRefSReal* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF SHORTREAL;
    BEGIN
        ASSERT(v.vt = WinOle.VT_R4 + WinOle.VT_BYREF, 100); RETURN v.u.pfltVal
    END VarRefSReal;
    
    PROCEDURE VarRefReal* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF REAL;
    BEGIN
        ASSERT(v.vt = WinOle.VT_R8 + WinOle.VT_BYREF, 100); RETURN v.u.pdblVal
    END VarRefReal;

    PROCEDURE VarRefRes* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_ERROR + WinOle.VT_BYREF, 100); RETURN v.u.pscode
    END VarRefRes;
    
    PROCEDURE VarRefCy* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF CtlT.OleCy;
    BEGIN
        ASSERT(v.vt = WinOle.VT_CY + WinOle.VT_BYREF, 100); RETURN v.u.pcyVal
    END VarRefCy;
    
    PROCEDURE VarRefDate* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF CtlT.OleDate;
    BEGIN
        ASSERT(v.vt = WinOle.VT_DATE + WinOle.VT_BYREF, 100); RETURN v.u.pdate
    END VarRefDate;
    
    PROCEDURE VarRefIntfce* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF COM.IUnknown;
        VAR unk: POINTER TO ARRAY [untagged] OF COM.IUnknown; res: COM.RESULT;
    BEGIN
        ASSERT(v.vt = WinOle.VT_UNKNOWN + WinOle.VT_BYREF, 100); unk := v.u.ppunkVal;
        res := WinOleAut.VariantClear(v);
        RETURN unk
    END VarRefIntfce;
    
    PROCEDURE VarRefBool* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF BOOLEAN;
        TYPE PB = POINTER TO ARRAY [untagged] OF BOOLEAN;
    BEGIN
        ASSERT(v.vt = WinOle.VT_BOOL + WinOle.VT_BYREF, 100);
        v.sign := SYSTEM.VAL(SHORTCHAR, v.u.pboolVal[0] # 0);
        RETURN SYSTEM.VAL(PB, SYSTEM.ADR(v.sign))
    END VarRefBool;
    
    PROCEDURE VarRefStr* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF CtlT.Strg;
        TYPE PS = POINTER TO ARRAY [untagged] OF CtlT.Strg;
        VAR t: Temp;
    BEGIN
        ASSERT(v.vt = WinOle.VT_BSTR + WinOle.VT_BYREF, 100);
        NEW(t); t.str := AllocString(v.u.pbstrVal[0]);
        v.Hi32 := SYSTEM.ADR(t.str);
        RETURN SYSTEM.VAL(PS, v.Hi32)
    END VarRefStr;
    
    PROCEDURE VarRefObj* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF CtlT.Object;
        TYPE PO = POINTER TO ARRAY [untagged] OF CtlT.Object;
        VAR t: Temp;
    BEGIN
        ASSERT(v.vt = WinOle.VT_DISPATCH + WinOle.VT_BYREF, 100);
        NEW(t); t.obj := CtlT.Obj(v.u.ppdispVal[0]);
        v.Hi32 := SYSTEM.ADR(t.obj);
        RETURN SYSTEM.VAL(PO, v.Hi32)
    END VarRefObj;
    
    PROCEDURE VarRefAny* (VAR v: CtlT.Variant): POINTER TO ARRAY [untagged] OF CtlT.Any;
        TYPE PA = POINTER TO ARRAY [untagged] OF CtlT.Any;
        VAR t: Temp;
    BEGIN
        ASSERT(v.vt = WinOle.VT_VARIANT + WinOle.VT_BYREF, 100);
        NEW(t); t.any := VarAny(v.u.pvarVal^);
        v.Hi32 := SYSTEM.ADR(t.any);
        RETURN SYSTEM.VAL(PA, v.Hi32)
    END VarRefAny;
    
    PROCEDURE RetBool* (VAR var: CtlT.Variant);
    BEGIN
        ASSERT(var.vt = WinOle.VT_BOOL + WinOle.VT_BYREF, 100);
        IF SYSTEM.VAL(BOOLEAN, var.sign) THEN var.u.pboolVal[0] := -1 ELSE var.u.pboolVal[0] := 0 END
    END RetBool;
    
    PROCEDURE RetStr* (VAR var: CtlT.Variant);
        VAR str: CtlT.Strg;
    BEGIN
        ASSERT(var.vt = WinOle.VT_BSTR + WinOle.VT_BYREF, 100);
        SYSTEM.GET(var.Hi32, str);
        var.u.pbstrVal[0] := AllocSysString(str)
    END RetStr;
    
    PROCEDURE RetObj* (VAR var: CtlT.Variant);
        VAR obj: CtlT.Object;
    BEGIN
        ASSERT(var.vt = WinOle.VT_DISPATCH + WinOle.VT_BYREF, 100);
        SYSTEM.GET(var.Hi32, obj);
        var.u.ppdispVal[0] := obj.disp
    END RetObj;
    
    PROCEDURE RetAny* (VAR var: CtlT.Variant);
        VAR a: CtlT.Any;
    BEGIN
        ASSERT(var.vt = WinOle.VT_DISPATCH + WinOle.VT_VARIANT, 100);
        SYSTEM.GET(var.Hi32, a);
        AnyVar(a, var.u.pvarVal^)
    END RetAny;
    
    
    (* enumerator methods *)
    
    PROCEDURE (e: AnyEnum) First (): CtlT.Any;
        VAR res: COM.RESULT; var: ARRAY 1 OF WinOleAut.VARIANT;
    BEGIN
        res := e.enum.Reset();
        res := e.enum.Next(1, var, NIL);
        IF res = 0 THEN RETURN VarAny(var[0])
        ELSE RETURN NIL
        END
    END First;
    
    PROCEDURE (e: AnyEnum) Next (): CtlT.Any;
        VAR res: COM.RESULT; var: ARRAY 1 OF WinOleAut.VARIANT;
    BEGIN
        res := e.enum.Next(1, var, NIL);
        IF res = 0 THEN RETURN VarAny(var[0])
        ELSE RETURN NIL
        END
    END Next;
    

    (* EnumWrapper *)
    
    PROCEDURE (this: EnumWrapper) Next (num: INTEGER; OUT elem: ARRAY [untagged] OF WinOleAut.VARIANT;
                                                        OUT [nil] fetched: INTEGER): COM.RESULT;
        VAR n, i: INTEGER; obj: CtlT.Any;
    BEGIN
        n := 0;
        IF VALID(fetched) THEN fetched := 0
        ELSIF num # 1 THEN RETURN 80004003H (* E_POINTER *)
        END;
        obj := this.enum.First();
        i := 0; WHILE i < this.cur DO obj := this.enum.Next(); INC(i) END;
        IF obj # NIL THEN
            WHILE (obj # NIL) & (num > 0) DO
                AnyVar(obj, elem[n]);
                INC(this.cur); INC(n); DEC(num);
                obj := this.enum.Next()
            END;
            IF VALID(fetched) THEN fetched := n END;
            RETURN 0
        END;
        RETURN 1 (* S_FALSE *)
    END Next;
    
    PROCEDURE (this: EnumWrapper) Skip (num: INTEGER): COM.RESULT;
    BEGIN
        INC(this.cur, num); RETURN 0
    END Skip;
    
    PROCEDURE (this: EnumWrapper) Reset (): COM.RESULT;
    BEGIN
        this.cur := 0; RETURN 0
    END Reset;
    
    PROCEDURE (this: EnumWrapper) Clone (OUT [nil] enum: WinOleAut.IEnumVARIANT): COM.RESULT;
        VAR new: EnumWrapper;
    BEGIN
        NEW(new);
        IF new # NIL THEN
            new.enum := this.enum;
            new.cur := this.cur;
            enum := new;
            RETURN 0
        ELSE RETURN 8007000EH (* E_OUTOFMEMORY *)
        END
    END Clone;
    
    
    (* wrapper functions *)
    
    PROCEDURE IsObj* (a: CtlT.Any; IN id: COM.GUID): BOOLEAN;
        VAR res: COM.RESULT; unk: COM.IUnknown; iid: COM.GUID;
    BEGIN
        WITH a: CtlT.OutObject DO
            a.GetIID(iid); RETURN id = iid
        | a: CtlT.Object DO
            res := a.disp.QueryInterface(id, unk);
            RETURN res >= 0
        ELSE RETURN FALSE
        END
    END IsObj;
    
    PROCEDURE InitObj* (obj: CtlT.Object; a: CtlT.Any; IN id: COM.GUID);
        VAR res: COM.RESULT;
    BEGIN
        obj.typeId := CtlT.object;
        WITH a: CtlT.Object DO
            res := a.disp.QueryInterface(id, SYSTEM.VAL(COM.IUnknown, obj.disp));
            ASSERT(res >= 0, 100)
        ELSE HALT(100)
        END
    END InitObj;
    
    PROCEDURE NewObj* (IN clsid: COM.GUID): CtlT.Any;
        VAR res: COM.RESULT; unk: COM.IUnknown; disp: WinOleAut.IDispatch;
    BEGIN
        res := WinOle.CoCreateInstance(clsid, NIL, CtlT.context, COM.ID(unk), unk);
        IF res >= 0 THEN
            res := unk.QueryInterface(COM.ID(disp), disp);
            IF res >= 0 THEN
                RETURN CtlT.Obj(disp)
            END
        END;
        RETURN NIL
    END NewObj;
    
    
    PROCEDURE ShowError (res: COM.RESULT; VAR error: WinOleAut.EXCEPINFO; param: INTEGER);
        VAR source, description: ARRAY 256 OF CHAR;
            code, i: INTEGER; scode: COM.RESULT;
    BEGIN
        source := ""; description := ""; code := 0; scode := 0;
        IF res = 80020009H (* DISP_E_EXCEPTION *) THEN
            IF error.pfnDeferredFillIn # NIL THEN scode := error.pfnDeferredFillIn(error) END;
            code := error.wCode; scode := error.scode;
            IF error.bstrSource # NIL THEN
                IF LEN(error.bstrSource$) >= LEN(source) THEN error.bstrSource[LEN(source) - 1] := 0X END;
                source := error.bstrSource$;
                WinOleAut.SysFreeString(error.bstrSource)
            END;
            IF error.bstrDescription # NIL THEN
                IF LEN(error.bstrDescription$) >= LEN(description) THEN error.bstrDescription[LEN(description) - 1] := 0X
                END;
                description := error.bstrDescription$;
                WinOleAut.SysFreeString(error.bstrDescription)
            END
        ELSIF (res = 8002000AH (* DISP_E_OVERFLOW *) ) OR (res = 80020005H (* DISP_E_TYPEMISMATCH *) )
        THEN
            description := "Type error in parameter"
        END;
        IF description = "" THEN
            i := WinApi.FormatMessageW({12}, 0, res, 0, description, LEN(description), NIL);
            IF i > 0 THEN
                REPEAT DEC(i) UNTIL (i < 0) OR (description[i] >= " ");
                description[i + 1] := 0X;
            ELSE description := ""
            END
        END;
        HALT(10)
    END ShowError;
    
    PROCEDURE CallMethod* (obj: CtlT.Object; id: INTEGER; OUT [nil] ret: CtlT.Variant);
        VAR res: COM.RESULT; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 1, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END
    END CallMethod;
    
    PROCEDURE CallParMethod* (obj: CtlT.Object; id: INTEGER; VAR arg: ARRAY OF CtlT.Variant;
                                            OUT [nil] ret: CtlT.Variant);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.cNamedArgs := 0; par.cArgs := LEN(arg);
        WHILE (par.cArgs > 0) & (par.rgvarg[0].vt = WinOle.VT_EMPTY) DO
            DEC(par.cArgs); INC(SYSTEM.VAL(INTEGER, par.rgvarg), SIZE(CtlT.Variant))
        END;
        param := 0;
        WHILE param < par.cArgs DO
            IF par.rgvarg[param].vt = WinOle.VT_EMPTY THEN
                par.rgvarg[param].vt := WinOle.VT_ERROR;
                par.rgvarg[param].u.scode := WinApi.DISP_E_PARAMNOTFOUND
            END;
            INC(param)
        END;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 1, par, ret, error, param);
        IF res < 0 THEN ShowError(res, error, par.cArgs - param) END;
        WHILE par.cArgs > 0 DO
            DEC(par.cArgs); res := WinOleAut.VariantClear(par.rgvarg[par.cArgs])
        END
    END CallParMethod;
    
    PROCEDURE CallGetMethod* (obj: CtlT.Object; id: INTEGER; VAR arg: ARRAY OF CtlT.Variant;
                                            OUT [nil] ret: CtlT.Variant);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.cNamedArgs := 0; par.cArgs := LEN(arg);
        WHILE (par.cArgs > 0) & (par.rgvarg[0].vt = WinOle.VT_EMPTY) DO
            DEC(par.cArgs); INC(SYSTEM.VAL(INTEGER, par.rgvarg), SIZE(CtlT.Variant))
        END;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, par, ret, error, param);
        IF res < 0 THEN ShowError(res, error, par.cArgs - param) END;
        WHILE par.cArgs > 0 DO
            DEC(par.cArgs); res := WinOleAut.VariantClear(par.rgvarg[par.cArgs])
        END
    END CallGetMethod;
    
    PROCEDURE CallPutMethod* (obj: CtlT.Object; id: INTEGER; VAR arg: ARRAY OF CtlT.Variant;
                                            OUT [nil] ret: CtlT.Variant);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := LEN(arg);
        WHILE (par.cArgs > 0) & (par.rgvarg[0].vt = WinOle.VT_EMPTY) DO
            DEC(par.cArgs); INC(SYSTEM.VAL(INTEGER, par.rgvarg), SIZE(CtlT.Variant))
        END;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, ret, error, param);
        IF res < 0 THEN ShowError(res, error, par.cArgs - param) END;
        WHILE par.cArgs > 0 DO
            DEC(par.cArgs); res := WinOleAut.VariantClear(par.rgvarg[par.cArgs])
        END
    END CallPutMethod;
    
    PROCEDURE CallPutRefMethod* (obj: CtlT.Object; id: INTEGER; VAR arg: ARRAY OF CtlT.Variant;
                                            OUT [nil] ret: CtlT.Variant);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := LEN(arg);
        WHILE (par.cArgs > 0) & (par.rgvarg[0].vt = WinOle.VT_EMPTY) DO
            DEC(par.cArgs); INC(SYSTEM.VAL(INTEGER, par.rgvarg), SIZE(CtlT.Variant))
        END;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 8, par, ret, error, param);
        IF res < 0 THEN ShowError(res, error, par.cArgs - param) END;
        WHILE par.cArgs > 0 DO
            DEC(par.cArgs); res := WinOleAut.VariantClear(par.rgvarg[par.cArgs])
        END
    END CallPutRefMethod;
    
    
    PROCEDURE GetByte* (obj: CtlT.Object; id: INTEGER): BYTE;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_UI1, 100);
        RETURN SHORT(ORD(ret.u.bVal))
    END GetByte;
    
    PROCEDURE GetSInt* (obj: CtlT.Object; id: INTEGER): SHORTINT;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_I2, 100);
        RETURN ret.u.iVal
    END GetSInt;
    
    PROCEDURE GetInt* (obj: CtlT.Object; id: INTEGER): INTEGER;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_I4, 100);
        RETURN ret.u.lVal
    END GetInt;
    
    PROCEDURE GetSReal* (obj: CtlT.Object; id: INTEGER): SHORTREAL;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_R4, 100);
        RETURN ret.u.fltVal
    END GetSReal;
    
    PROCEDURE GetReal* (obj: CtlT.Object; id: INTEGER): REAL;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_R8, 100);
        RETURN ret.u.dblVal
    END GetReal;
    
    PROCEDURE GetBool* (obj: CtlT.Object; id: INTEGER): BOOLEAN;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_BOOL, 100);
        RETURN ret.u.boolVal # 0
    END GetBool;
    
    PROCEDURE GetRes* (obj: CtlT.Object; id: INTEGER): COM.RESULT;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_ERROR, 100);
        RETURN ret.u.scode
    END GetRes;
    
    PROCEDURE GetCy* (obj: CtlT.Object; id: INTEGER): CtlT.OleCy;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_CY, 100);
        RETURN ret.u.cyVal
    END GetCy;
    
    PROCEDURE GetDate* (obj: CtlT.Object; id: INTEGER): CtlT.OleDate;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_DATE, 100);
        RETURN ret.u.date
    END GetDate;
    
    PROCEDURE GetStr* (obj: CtlT.Object; id: INTEGER): CtlT.Strg;
        VAR res: COM.RESULT; ret: CtlT.Variant; s: CtlT.Strg; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_BSTR, 100);
        s := AllocString(ret.u.bstrVal);
        res := WinOleAut.VariantClear(ret);
        RETURN s
    END GetStr;
    
    PROCEDURE GetObj* (obj: CtlT.Object; id: INTEGER): CtlT.Object;
        VAR res: COM.RESULT; ret: CtlT.Variant; o: CtlT.Object; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_DISPATCH, 100);
        o := CtlT.Obj(ret.u.pdispVal);
        res := WinOleAut.VariantClear(ret);
        RETURN o
    END GetObj;
    
    PROCEDURE GetIntfce* (obj: CtlT.Object; id: INTEGER): COM.IUnknown;
        VAR res: COM.RESULT; ret: CtlT.Variant; u: COM.IUnknown; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_UNKNOWN, 100);
        u := ret.u.punkVal;
        res := WinOleAut.VariantClear(ret);
        RETURN u
    END GetIntfce;
    
    PROCEDURE GetEnum* (obj: CtlT.Object; id: INTEGER): CtlT.Enumerator;
        VAR res: COM.RESULT; ret: CtlT.Variant; u: COM.IUnknown; enum: WinOleAut.IEnumVARIANT;
            param: INTEGER; error: WinOleAut.EXCEPINFO; e: AnyEnum;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        ASSERT(ret.vt = WinOle.VT_UNKNOWN, 100);
        res := ret.u.punkVal.QueryInterface(COM.ID(enum), enum);
        ASSERT(res >= 0, 100);
        res := WinOleAut.VariantClear(ret);
        NEW(e); e.enum := enum;
        RETURN e
    END GetEnum;
    
    PROCEDURE GetAny* (obj: CtlT.Object; id: INTEGER): CtlT.Any;
        VAR res: COM.RESULT; ret: CtlT.Variant; param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 2, nullpar, ret, error, param);
        IF res < 0 THEN ShowError(res, error, 0) END;
        RETURN VarAny(ret)
    END GetAny;
    
    
    PROCEDURE PutByte* (obj: CtlT.Object; id: INTEGER; val: BYTE);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_UI1; arg[0].u.bVal := SHORT(CHR(val));
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutByte;
    
    PROCEDURE PutSInt* (obj: CtlT.Object; id: INTEGER; val: SHORTINT);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_I2; arg[0].u.iVal := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutSInt;
    
    PROCEDURE PutInt* (obj: CtlT.Object; id: INTEGER; val: INTEGER);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_I4; arg[0].u.lVal := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutInt;
    
    PROCEDURE PutSReal* (obj: CtlT.Object; id: INTEGER; val: SHORTREAL);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_R4; arg[0].u.fltVal := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutSReal;
    
    PROCEDURE PutReal* (obj: CtlT.Object; id: INTEGER; val: REAL);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_R8; arg[0].u.dblVal := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutReal;
    
    PROCEDURE PutBool* (obj: CtlT.Object; id: INTEGER; val: BOOLEAN);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_BOOL;
        IF val THEN arg[0].u.boolVal := -1 ELSE arg[0].u.boolVal := 0 END;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutBool;
    
    PROCEDURE PutRes* (obj: CtlT.Object; id: INTEGER; val: COM.RESULT);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_ERROR; arg[0].u.scode := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutRes;
    
    PROCEDURE PutCy* (obj: CtlT.Object; id: INTEGER; val: CtlT.OleCy);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_CY; arg[0].u.cyVal := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutCy;
    
    PROCEDURE PutDate* (obj: CtlT.Object; id: INTEGER; val: CtlT.OleDate);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_DATE; arg[0].u.date := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutDate;
    
    PROCEDURE PutStr* (obj: CtlT.Object; id: INTEGER; IN val: ARRAY OF CHAR);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_BSTR; arg[0].u.bstrVal := AllocSysString(val);
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutStr;
    
    PROCEDURE PutObj* (obj: CtlT.Object; id: INTEGER; val: CtlT.Object);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_DISPATCH; arg[0].u.pdispVal := CtlT.Disp(val);
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutObj;
    
    PROCEDURE PutIntfce* (obj: CtlT.Object; id: INTEGER; val: COM.IUnknown);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        arg[0].vt := WinOle.VT_UNKNOWN; arg[0].u.punkVal := val;
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutIntfce;
    
    PROCEDURE PutAny* (obj: CtlT.Object; id: INTEGER; val: CtlT.Any);
        VAR res: COM.RESULT; par: WinOleAut.DISPPARAMS; arg: ARRAY 1 OF CtlT.Variant;
            param: INTEGER; error: WinOleAut.EXCEPINFO;
    BEGIN
        par.rgvarg := arg; par.rgdispidNamedArgs := putId; par.cNamedArgs := 1; par.cArgs := 1;
        AnyVar(val, arg[0]);
        res := obj.disp.Invoke(id, nullid, CtlT.lcid, 4, par, NIL, error, param);
        IF res < 0 THEN ShowError(res, error, 1) END;
        res := WinOleAut.VariantClear(arg[0])
    END PutAny;
    

BEGIN
    putId[0] := WinOleAut.DISPID_PROPERTYPUT
END CtlC.
