MODULE CtlT;
(**
    project    = "BlackBox"
    organization    = "www.oberon.ch"
    contributors    = "Oberon microsystems"
    version    = "System/Rsrc/About"
    copyright    = "System/Rsrc/About"
    license    = "Docu/BB-License"
    purpose    = "ole automation controller variant types and conversion tools"
    changes    = ""
    issues    = ""

**)
    
    IMPORT SYSTEM, COM, WinApi, WinOle, WinOleAut, Dates;

    (* trap 10: execution error *)
    (* trap 13: not connectable *)
    (* trap 14: already connected *)
    (* trap 19: memory error *)
    
    CONST
        (* variant type constants *)
        byte* = WinOle.VT_UI1;
        shortint* = WinOle.VT_I2;
        integer* = WinOle.VT_I4;
        shortreal* = WinOle.VT_R4;
        real* = WinOle.VT_R8;
        boolean* = WinOle.VT_BOOL;
        result* = WinOle.VT_ERROR;
        currency* = WinOle.VT_CY;
        date* = WinOle.VT_DATE;
        string* = WinOle.VT_BSTR;
        object* = WinOle.VT_DISPATCH;
        interface* = WinOle.VT_UNKNOWN;
        enumerator* = -1;
        any* = WinOle.VT_VARIANT;
        
        
    TYPE
        (* basic types *)
        Strg* = POINTER TO ARRAY OF CHAR;
        OleCy* = LONGINT;    (* scaled by 10000 *)
        OleDate* = REAL;    (* fractional days, 2.0 = 1.1.1900 *)
        
        PtrVoid* = INTEGER;
        IUnknown* = COM.IUnknown;
        IDispatch* = WinOleAut.IDispatch;
        RESULT* = INTEGER;
        GUID* = COM.GUID;
        Variant* = WinOleAut.VARIANT;
        ParList* = ARRAY [untagged] OF Variant;
        
        
        (* variant types *)
        Any* = POINTER TO ABSTRACT RECORD
            typeId*: SHORTINT;
            dim*: SHORTINT    (* array dimension *)
        END;
        
        Object* = POINTER TO ABSTRACT RECORD (Any) disp*: IDispatch END;
        OutObject* = POINTER TO ABSTRACT RECORD (Object) source*: Object; cookie: INTEGER END;
        
        ByteT* = POINTER TO RECORD (Any) val*: BYTE END;
        ShortInt* = POINTER TO RECORD (Any) val*: SHORTINT END;
        Integer* = POINTER TO RECORD (Any) val*: INTEGER END;
        ShortReal* = POINTER TO RECORD (Any) val*: SHORTREAL END;
        RealT* = POINTER TO RECORD (Any) val*: REAL END;
        Boolean* = POINTER TO RECORD (Any) val*: BOOLEAN END;
        Result* = POINTER TO RECORD (Any) val*: RESULT END;
        Currency* = POINTER TO RECORD (Any) val*: OleCy END;
        DateT* = POINTER TO RECORD (Any) val*: OleDate END;
        String* = POINTER TO RECORD (Any) val*: Strg END;
        Interface* = POINTER TO RECORD (Any) val*: IUnknown END;
        
        (* array types *)
        AnyArray* = POINTER TO RECORD (Any) p*:POINTER TO ARRAY OF Any END;
        ObjectArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF Object END;
        ByteArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF BYTE END;
        ShortIntArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF SHORTINT END;
        IntegerArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF INTEGER END;
        ShortRealArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF SHORTREAL END;
        RealArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF REAL END;
        BooleanArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF BOOLEAN END;
        ResultArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF RESULT END;
        CurrencyArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF OleCy END;
        DateArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF OleDate END;
        StringArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF Strg END;
        InterfaceArray* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF IUnknown END;
        
        (* 2 dimensional array types *)
        ByteArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF BYTE END;
        ShortIntArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF SHORTINT END;
        IntegerArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF INTEGER END;
        ShortRealArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF SHORTREAL END;
        RealArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF REAL END;
        BooleanArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF BOOLEAN END;
        ResultArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF RESULT END;
        CurrencyArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF OleCy END;
        DateArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF OleDate END;
        StringArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF Strg END;
        ObjectArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF Object END;
        InterfaceArray2* = POINTER TO RECORD (Any) p*: POINTER TO ARRAY OF ARRAY OF IUnknown END;
        AnyArray2* = POINTER TO RECORD (Any) p*:POINTER TO ARRAY OF ARRAY OF Any END;
    
        Enumerator* = POINTER TO ABSTRACT RECORD END;
        
        InObject = POINTER TO RECORD (Object) END;

        OutDispatch = POINTER TO RECORD (WinOleAut.IDispatch) obj: OutObject END;
        
    
    VAR
        noArg-: Any;    (* used as placeholder for omited parameters *)
        context*: SET;
        lcid*: INTEGER;
        
        
    (* base type conversions *)
    
(*
    PROCEDURE Stg (IN s: ARRAY OF CHAR): Strg;
        VAR i, n: INTEGER; str: Strg;
    BEGIN
        n := 0; WHILE s[n] # 0X DO INC(n) END;
        NEW(str, n + 1); str^ := s$;
        RETURN str
    END Stg;
*)    

    PROCEDURE OleDateToDateAndTime* (d: OleDate; OUT date: Dates.Date; OUT time: Dates.Time);
    (* implementation without WinOleAut import *)
        VAR res: INTEGER; st: WinApi.SYSTEMTIME;
    BEGIN
        res := WinOleAut.VariantTimeToSystemTime(d, st);
        ASSERT(res = WinApi.TRUE, 20);
        date.year := st.wYear;
        date.month := st.wMonth;
        date.day := st.wDay;
        time.hour := st.wHour;
        time.minute := st.wMinute;
        time.second := st.wSecond
    END OleDateToDateAndTime;
    
    PROCEDURE SystemDayOfWeek (IN date: Dates.Date): SHORTINT;
    BEGIN
        CASE Dates.DayOfWeek(date) OF
        | Dates.monday: RETURN 1
        | Dates.tuesday: RETURN 2
        | Dates.wednesday: RETURN 3
        | Dates.thursday: RETURN 4
        | Dates.friday: RETURN 5
        | Dates.saturday: RETURN 6
        | Dates.sunday: RETURN 0
        END
    END SystemDayOfWeek;
    
    PROCEDURE OleDateFromDateAndTime* (IN date: Dates.Date; IN time: Dates.Time): OleDate;
    (* implementation without WinOleAut import *)
        VAR res: INTEGER; st: WinApi.SYSTEMTIME; vt: REAL;
    BEGIN
        st.wYear := SHORT(date.year);
        st.wMonth := SHORT(date.month);
        st.wDay := SHORT(date.day);
        st.wDayOfWeek := SystemDayOfWeek(date);
        st.wHour := SHORT(time.hour);
        st.wMinute := SHORT(time.minute);
        st.wSecond := SHORT(time.second);
        st.wMilliseconds := 0;
        res := WinOleAut.SystemTimeToVariantTime(st, vt);
        ASSERT(res # 0, 60);
        RETURN vt
    END OleDateFromDateAndTime;

    
    (* string tools *)
    
    PROCEDURE AllocSysString (IN s: ARRAY OF CHAR): WinOle.BSTR;
    BEGIN
        RETURN WinOleAut.SysAllocString(s);
    END AllocSysString;
    
    PROCEDURE AllocString (s: WinOle.BSTR): Strg;
        VAR i, n: INTEGER; str: Strg;
    BEGIN
        IF s # NIL THEN
            n := WinOleAut.SysStringLen(s);
            NEW(str, n + 1); str^ := s$
        ELSE
            NEW(str, 1); str[0] := 0X
        END;
        RETURN str
    END AllocString;
    
    
    (* enumerator methods *)
    
    PROCEDURE (e: Enumerator) First* (): Any, NEW, ABSTRACT;
    PROCEDURE (e: Enumerator) Next* (): Any, NEW, ABSTRACT;
    
    
    (* object dispatch methods *)
    
    PROCEDURE (obj: OutObject) Invoke* (id, n: INTEGER; VAR par: ParList; VAR ret: Variant), NEW, ABSTRACT;
    PROCEDURE (obj: OutObject) GetIID* (OUT iid: GUID), NEW, ABSTRACT;
    
    
    PROCEDURE (this: OutDispatch) QueryInterface (IN [iid] iid: COM.GUID; OUT [new] int: COM.IUnknown
    ): COM.RESULT;
        TYPE T = POINTER TO RECORD [untagged] u: COM.IUnknown END;
        VAR p: T; myId: COM.GUID;
    BEGIN
        this.obj.GetIID(myId);
        IF iid = myId THEN p := SYSTEM.VAL(T, SYSTEM.ADR(int)); p.u := this; RETURN 0
        ELSIF COM.QUERY(this, iid, int) THEN RETURN 0
        ELSE RETURN 80004002H (* E_NOINTERFACE *)
        END
    END QueryInterface;
    
    PROCEDURE (this: OutDispatch) GetTypeInfoCount (OUT [nil] pctinfo: INTEGER): COM.RESULT;
    BEGIN
        RETURN 80004001H (* E_NOTIMPL *)
    END GetTypeInfoCount;
    
    PROCEDURE (this: OutDispatch) GetTypeInfo (iTInfo: INTEGER; lcid: WinOle.LCID;
                                                            OUT [nil] ppTInfo: WinOleAut.ITypeInfo): COM.RESULT;
    BEGIN
        RETURN 80004001H (* E_NOTIMPL *)
    END GetTypeInfo;
    
    PROCEDURE (this: OutDispatch) GetIDsOfNames (IN [nil] riid: COM.GUID; IN [nil] rgszNames: WinOle.PtrWSTR;
                                                                    cNames: INTEGER; lcid: WinOle.LCID;
                                                                    OUT [nil] rgDispId: WinOleAut.DISPID): COM.RESULT;
    BEGIN
        RETURN 80004001H (* E_NOTIMPL *)
    END GetIDsOfNames;
    
    PROCEDURE (this: OutDispatch) Invoke (dispIdMember: WinOleAut.DISPID; IN riid: COM.GUID; lcid: WinOle.LCID;
                                                    wFlags: SHORTINT; VAR [nil] pDispParams: WinOleAut.DISPPARAMS;
                                                    OUT [nil] pVarResult: WinOleAut.VARIANT;
                                                    OUT [nil] pExcepInfo: WinOleAut.EXCEPINFO;
                                                    OUT [nil] puArgErr: INTEGER): COM.RESULT;
        VAR n: INTEGER;
    BEGIN
        IF pDispParams.cNamedArgs # 0 THEN RETURN 80020007H (* DISP_E_NONAMEDARGS *) END;
        IF riid # WinOle.GUID_NULL THEN RETURN 80020001H (* DISP_E_UNKNOWNINTERFACE *) END;
        IF VALID(pVarResult) THEN pVarResult.vt := 0 END;
        n := pDispParams.cArgs;
        IF ODD(wFlags DIV WinOleAut.DISPATCH_PROPERTYPUT) THEN n := -n
        ELSIF ODD(wFlags DIV WinOleAut.DISPATCH_PROPERTYPUTREF) THEN n := -100 - n
        END;
        this.obj.Invoke(dispIdMember, n, pDispParams.rgvarg^, pVarResult);
        RETURN 0
    END Invoke;
    
    
    PROCEDURE Disp* (obj: Object): IDispatch;
        VAR disp: OutDispatch;
    BEGIN
        ASSERT((obj.disp # NIL) OR (obj IS OutObject), 100);
        IF obj.disp # NIL THEN RETURN obj.disp
        ELSE NEW(disp); disp.obj := obj(OutObject); RETURN disp
        END
    END Disp;
    
    
    (* value access methods *)
    
    PROCEDURE (x: Any) Byte* (): BYTE, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN 0
    END Byte;
    
    PROCEDURE (x: Any) SInt* (): SHORTINT, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN 0
    END SInt;
    
    PROCEDURE (x: Any) Int* (): INTEGER, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN 0
    END Int;
    
    PROCEDURE (x: Any) SReal* (): SHORTREAL, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN 0
    END SReal;
    
    PROCEDURE (x: Any) Real* (): REAL, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN 0
    END Real;
    
    PROCEDURE (x: Any) Bool* (): BOOLEAN, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN FALSE
    END Bool;
    
    PROCEDURE (x: Any) Cy* (): OleCy, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN 0
    END Cy;
    
    PROCEDURE (x: Any) Date* (): OleDate, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN 0
    END Date;
    
    PROCEDURE (x: Any) Str* (): Strg, NEW, EXTENSIBLE;
    BEGIN
        HALT(20); RETURN NIL
    END Str;
    
    
    PROCEDURE (x: ByteT) Byte* (): BYTE;
    BEGIN
        RETURN x.val
    END Byte;
    
    PROCEDURE (x: ByteT) SInt* (): SHORTINT;
    BEGIN
        RETURN x.val
    END SInt;
    
    PROCEDURE (x: ByteT) Int* (): INTEGER;
    BEGIN
        RETURN x.val
    END Int;
    
    PROCEDURE (x: ByteT) SReal* (): SHORTREAL;
    BEGIN
        RETURN x.val
    END SReal;
    
    PROCEDURE (x: ByteT) Real* (): REAL;
    BEGIN
        RETURN x.val
    END Real;
    
    PROCEDURE (x: ByteT) Bool* (): BOOLEAN;
    BEGIN
        RETURN x.val # 0
    END Bool;
    
    PROCEDURE (x: ByteT) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarCyFromUI1(SHORT(CHR(x.val)), c);
        ASSERT(res >= 0, 20);
        RETURN c
    END Cy;
    
    PROCEDURE (x: ByteT) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarDateFromUI1(SHORT(CHR(x.val)), d);
        ASSERT(res >= 0, 20);
        RETURN d
    END Date;
    
    PROCEDURE (x: ByteT) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromUI1(SHORT(CHR(x.val)), lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    

    PROCEDURE (x: ShortInt) Byte* (): BYTE;
    BEGIN
        RETURN SHORT(x.val)
    END Byte;
    
    PROCEDURE (x: ShortInt) SInt* (): SHORTINT;
    BEGIN
        RETURN x.val
    END SInt;
    
    PROCEDURE (x: ShortInt) Int* (): INTEGER;
    BEGIN
        RETURN x.val
    END Int;
    
    PROCEDURE (x: ShortInt) SReal* (): SHORTREAL;
    BEGIN
        RETURN x.val
    END SReal;
    
    PROCEDURE (x: ShortInt) Real* (): REAL;
    BEGIN
        RETURN x.val
    END Real;
    
    PROCEDURE (x: ShortInt) Bool* (): BOOLEAN;
    BEGIN
        RETURN x.val # 0
    END Bool;
    
    PROCEDURE (x: ShortInt) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarCyFromI2(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN c
    END Cy;
    
    PROCEDURE (x: ShortInt) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarDateFromI2(x.val, d);
        ASSERT(res >= 0, 20);
        RETURN d
    END Date;
    
    PROCEDURE (x: ShortInt) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromI2(x.val, lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    PROCEDURE (x: Integer) Byte* (): BYTE;
    BEGIN
        ASSERT((x.val >= -128) & (x.val < 256), 20);
        RETURN SHORT(SHORT(x.val))
    END Byte;
    
    PROCEDURE (x: Integer) SInt* (): SHORTINT;
    BEGIN
        ASSERT((x.val >= -32768) & (x.val <= 32767), 20);
        RETURN SHORT(x.val)
    END SInt;
    
    PROCEDURE (x: Integer) Int* (): INTEGER;
    BEGIN
        RETURN x.val
    END Int;
    
    PROCEDURE (x: Integer) SReal* (): SHORTREAL;
    BEGIN
        RETURN x.val
    END SReal;
    
    PROCEDURE (x: Integer) Real* (): REAL;
    BEGIN
        RETURN x.val
    END Real;
    
    PROCEDURE (x: Integer) Bool* (): BOOLEAN;
    BEGIN
        RETURN x.val # 0
    END Bool;
    
    PROCEDURE (x: Integer) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarCyFromI4(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN c
    END Cy;
    
    PROCEDURE (x: Integer) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarDateFromI4(x.val, d);
        ASSERT(res >= 0, 20);
        RETURN d
    END Date;
    
    PROCEDURE (x: Integer) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromI4(x.val, lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    PROCEDURE (x: ShortReal) Byte* (): BYTE;
        VAR c: SHORTCHAR; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarUI1FromR4(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN SHORT(ORD(c))
    END Byte;
    
    PROCEDURE (x: ShortReal) SInt* (): SHORTINT;
        VAR i: SHORTINT; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI2FromR4(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END SInt;
    
    PROCEDURE (x: ShortReal) Int* (): INTEGER;
        VAR i: INTEGER; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI4FromR4(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END Int;
    
    PROCEDURE (x: ShortReal) SReal* (): SHORTREAL;
    BEGIN
        RETURN x.val
    END SReal;
    
    PROCEDURE (x: ShortReal) Real* (): REAL;
    BEGIN
        RETURN x.val
    END Real;
    
    PROCEDURE (x: ShortReal) Bool* (): BOOLEAN;
    BEGIN
        RETURN x.val # 0.0
    END Bool;
    
    PROCEDURE (x: ShortReal) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarCyFromR4(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN c
    END Cy;
    
    PROCEDURE (x: ShortReal) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarDateFromR4(x.val, d);
        ASSERT(res >= 0, 20);
        RETURN d
    END Date;
    
    PROCEDURE (x: ShortReal) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromR4(x.val, lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    PROCEDURE (x: RealT) Byte* (): BYTE;
        VAR c: SHORTCHAR; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarUI1FromR8(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN SHORT(ORD(c))
    END Byte;
    
    PROCEDURE (x: RealT) SInt* (): SHORTINT;
        VAR i: SHORTINT; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI2FromR8(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END SInt;
    
    PROCEDURE (x: RealT) Int* (): INTEGER;
        VAR i: INTEGER; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI4FromR8(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END Int;
    
    PROCEDURE (x: RealT) SReal* (): SHORTREAL;
        VAR r: SHORTREAL; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarR4FromR8(x.val, r);
        ASSERT(res >= 0, 20);
        RETURN r
    END SReal;
    
    PROCEDURE (x: RealT) Real* (): REAL;
    BEGIN
        RETURN x.val
    END Real;
    
    PROCEDURE (x: RealT) Bool* (): BOOLEAN;
    BEGIN
        RETURN x.val # 0.0
    END Bool;
    
    PROCEDURE (x: RealT) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarCyFromR8(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN c
    END Cy;
    
    PROCEDURE (x: RealT) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarDateFromR8(x.val, d);
        ASSERT(res >= 0, 20);
        RETURN d
    END Date;
    
    PROCEDURE (x: RealT) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromR8(x.val, lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    PROCEDURE (x: Boolean) Byte* (): BYTE;
    BEGIN
        IF x.val THEN RETURN -1 ELSE RETURN 0 END
    END Byte;
    
    PROCEDURE (x: Boolean) SInt* (): SHORTINT;
    BEGIN
        IF x.val THEN RETURN -1 ELSE RETURN 0 END
    END SInt;
    
    PROCEDURE (x: Boolean) Int* (): INTEGER;
    BEGIN
        IF x.val THEN RETURN -1 ELSE RETURN 0 END
    END Int;
    
    PROCEDURE (x: Boolean) SReal* (): SHORTREAL;
    BEGIN
        IF x.val THEN RETURN -1 ELSE RETURN 0 END
    END SReal;
    
    PROCEDURE (x: Boolean) Real* (): REAL;
    BEGIN
        IF x.val THEN RETURN -1 ELSE RETURN 0 END
    END Real;
    
    PROCEDURE (x: Boolean) Bool* (): BOOLEAN;
    BEGIN
        RETURN x.val
    END Bool;
    
    PROCEDURE (x: Boolean) Cy* (): OleCy;
    BEGIN
        IF x.val THEN RETURN -10000 ELSE RETURN 0 END
    END Cy;
    
    PROCEDURE (x: Boolean) Date* (): OleDate;
    BEGIN
        IF x.val THEN RETURN -1 ELSE RETURN 0 END
    END Date;
    
    PROCEDURE (x: Boolean) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        IF x.val THEN res := WinOleAut.VarBstrFromBool(-1, lcid, {}, b)
        ELSE res := WinOleAut.VarBstrFromBool(0, lcid, {}, b)
        END;
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    PROCEDURE (x: Currency) Byte* (): BYTE;
        VAR c: SHORTCHAR; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarUI1FromCy(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN SHORT(ORD(c))
    END Byte;
    
    PROCEDURE (x: Currency) SInt* (): SHORTINT;
        VAR i: SHORTINT; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI2FromCy(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END SInt;
    
    PROCEDURE (x: Currency) Int* (): INTEGER;
        VAR i: INTEGER; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI4FromCy(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END Int;
    
    PROCEDURE (x: Currency) SReal* (): SHORTREAL;
        VAR r: SHORTREAL; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarR4FromCy(x.val, r);
        ASSERT(res >= 0, 20);
        RETURN r
    END SReal;
    
    PROCEDURE (x: Currency) Real* (): REAL;
        VAR r: REAL; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarR8FromCy(x.val, r);
        ASSERT(res >= 0, 20);
        RETURN r
    END Real;
    
    PROCEDURE (x: Currency) Bool* (): BOOLEAN;
        VAR b: WinOle.VARIANT_BOOL; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBoolFromCy(x.val, b);
        ASSERT(res >= 0, 20);
        RETURN b # 0
    END Bool;
    
    PROCEDURE (x: Currency) Cy* (): OleCy;
    BEGIN
        RETURN x.val
    END Cy;
    
    PROCEDURE (x: Currency) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarDateFromCy(x.val, d);
        ASSERT(res >= 0, 20);
        RETURN d
    END Date;
    
    PROCEDURE (x: Currency) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromCy(x.val, lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    PROCEDURE (x: DateT) Byte* (): BYTE;
        VAR c: SHORTCHAR; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarUI1FromDate(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN SHORT(ORD(c))
    END Byte;
    
    PROCEDURE (x: DateT) SInt* (): SHORTINT;
        VAR i: SHORTINT; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI2FromDate(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END SInt;
    
    PROCEDURE (x: DateT) Int* (): INTEGER;
        VAR i: INTEGER; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarI4FromDate(x.val, i);
        ASSERT(res >= 0, 20);
        RETURN i
    END Int;
    
    PROCEDURE (x: DateT) SReal* (): SHORTREAL;
        VAR r: SHORTREAL; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarR4FromDate(x.val, r);
        ASSERT(res >= 0, 20);
        RETURN r
    END SReal;
    
    PROCEDURE (x: DateT) Real* (): REAL;
        VAR r: REAL; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarR8FromDate(x.val, r);
        ASSERT(res >= 0, 20);
        RETURN r
    END Real;
    
    PROCEDURE (x: DateT) Bool* (): BOOLEAN;
        VAR b: WinOle.VARIANT_BOOL; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBoolFromDate(x.val, b);
        ASSERT(res >= 0, 20);
        RETURN b # 0
    END Bool;
    
    PROCEDURE (x: DateT) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarCyFromDate(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN c
    END Cy;
    
    PROCEDURE (x: DateT) Date* (): OleDate;
    BEGIN
        RETURN x.val
    END Date;
    
    PROCEDURE (x: DateT) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromDate(x.val, lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    PROCEDURE (x: String) Byte* (): BYTE;
        VAR c: SHORTCHAR; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarUI1FromStr(s^, lcid, {}, c);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN SHORT(ORD(c))
    END Byte;
    
    PROCEDURE (x: String) SInt* (): SHORTINT;
        VAR i: SHORTINT; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarI2FromStr(s^, lcid, {}, i);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN i
    END SInt;
    
    PROCEDURE (x: String) Int* (): INTEGER;
        VAR i: INTEGER; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarI4FromStr(s^, lcid, {}, i);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN i
    END Int;
    
    PROCEDURE (x: String) SReal* (): SHORTREAL;
        VAR r: SHORTREAL; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarR4FromStr(s^, lcid, {}, r);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN r
    END SReal;
    
    PROCEDURE (x: String) Real* (): REAL;
        VAR r: REAL; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarR8FromStr(s^, lcid, {}, r);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN r
    END Real;
    
    PROCEDURE (x: String) Bool* (): BOOLEAN;
        VAR b: WinOle.VARIANT_BOOL; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarBoolFromStr(s^, lcid, {}, b);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN b # 0
    END Bool;
    
    PROCEDURE (x: String) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarCyFromStr(s^, lcid, {}, c);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN c
    END Cy;
    
    PROCEDURE (x: String) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT; s: WinOle.BSTR;
    BEGIN
        s := AllocSysString(x.val^);
        res := WinOleAut.VarDateFromStr(s^, lcid, {}, d);
        ASSERT(res >= 0, 20);
        WinOleAut.SysFreeString(s);
        RETURN d
    END Date;
    
    PROCEDURE (x: String) Str* (): Strg;
    BEGIN
        RETURN x.val
    END Str;
    
    
    PROCEDURE (x: Result) Byte* (): BYTE;
    BEGIN
        ASSERT((x.val >= -128) & (x.val < 256), 20);
        RETURN SHORT(SHORT(x.val))
    END Byte;
    
    PROCEDURE (x: Result) SInt* (): SHORTINT;
    BEGIN
        ASSERT((x.val >= -32768) & (x.val <= 32767), 20);
        RETURN SHORT(x.val)
    END SInt;
    
    PROCEDURE (x: Result) Int* (): INTEGER;
    BEGIN
        RETURN x.val
    END Int;
    
    PROCEDURE (x: Result) SReal* (): SHORTREAL;
    BEGIN
        RETURN x.val
    END SReal;
    
    PROCEDURE (x: Result) Real* (): REAL;
    BEGIN
        RETURN x.val
    END Real;
    
    PROCEDURE (x: Result) Bool* (): BOOLEAN;
    BEGIN
        RETURN x.val # 0
    END Bool;
    
    PROCEDURE (x: Result) Cy* (): OleCy;
        VAR c: OleCy; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarCyFromI4(x.val, c);
        ASSERT(res >= 0, 20);
        RETURN c
    END Cy;
    
    PROCEDURE (x: Result) Date* (): OleDate;
        VAR d: OleDate; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarDateFromI4(x.val, d);
        ASSERT(res >= 0, 20);
        RETURN d
    END Date;
    
    PROCEDURE (x: Result) Str* (): Strg;
        VAR b: WinOle.BSTR; s: Strg; res: COM.RESULT;
    BEGIN
        res := WinOleAut.VarBstrFromI4(x.val, lcid, {}, b);
        ASSERT(res >= 0, 20);
        s := AllocString(b);
        WinOleAut.SysFreeString(b);
        RETURN s
    END Str;
    
    
    (* variant generator functions *)
    
    PROCEDURE Byte* (val: BYTE): ByteT;
        VAR x: ByteT;
    BEGIN
        NEW(x); x.typeId := byte; x.val := val; RETURN x
    END Byte;
    
    PROCEDURE SInt* (val: SHORTINT): ShortInt;
        VAR x: ShortInt;
    BEGIN
        NEW(x); x.typeId := shortint; x.val := val; RETURN x
    END SInt;
    
    PROCEDURE Int* (val: INTEGER): Integer;
        VAR x: Integer;
    BEGIN
        NEW(x); x.typeId := integer; x.val := val; RETURN x
    END Int;
    
    PROCEDURE SReal* (val: SHORTREAL): ShortReal;
        VAR x: ShortReal;
    BEGIN
        NEW(x); x.typeId := shortreal; x.val := val; RETURN x
    END SReal;
    
    PROCEDURE Real* (val: REAL): RealT;
        VAR x: RealT;
    BEGIN
        NEW(x); x.typeId := real; x.val := val; RETURN x
    END Real;
    
    PROCEDURE Bool* (val: BOOLEAN): Boolean;
        VAR x: Boolean;
    BEGIN
        NEW(x); x.typeId := boolean; x.val := val; RETURN x
    END Bool;
    
    PROCEDURE Res* (val: RESULT): Result;
        VAR x: Result;
    BEGIN
        NEW(x); x.typeId := result; x.val := val; RETURN x
    END Res;
    
    PROCEDURE Cy* (val: OleCy): Currency;
        VAR x: Currency;
    BEGIN
        NEW(x); x.typeId := currency; x.val := val; RETURN x
    END Cy;
    
    PROCEDURE Date* (val: OleDate): DateT;
        VAR x: DateT;
    BEGIN
        NEW(x); x.typeId := date; x.val := val; RETURN x
    END Date;
    
    PROCEDURE Str* (IN val: ARRAY OF CHAR): String;
        VAR x: String;
    BEGIN
        NEW(x); NEW(x.val, LEN(val)); x.typeId := string; x.val^ := val$; RETURN x
    END Str;
    
    PROCEDURE Obj* (disp: IDispatch): Object;
        VAR x: InObject;
    BEGIN
        IF disp = NIL THEN RETURN NIL
        ELSE NEW(x); x.typeId := object; x.disp := disp; RETURN x
        END
    END Obj;
    
    PROCEDURE Intfce* (val: IUnknown): Interface;
        VAR x: Interface;
    BEGIN
        NEW(x); x.typeId := interface; x.val := val; RETURN x
    END Intfce;
    
    
    PROCEDURE ByteArr* (IN val: ARRAY OF BYTE): ByteArray;
        VAR x: ByteArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := byte; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END ByteArr;
    
    PROCEDURE SIntArr* (IN val: ARRAY OF SHORTINT): ShortIntArray;
        VAR x: ShortIntArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := shortint; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END SIntArr;
    
    PROCEDURE IntArr* (IN val: ARRAY OF INTEGER): IntegerArray;
        VAR x: IntegerArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := integer; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END IntArr;
    
    PROCEDURE SRealArr* (IN val: ARRAY OF SHORTREAL): ShortRealArray;
        VAR x: ShortRealArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := shortreal; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END SRealArr;
    
    PROCEDURE RealArr* (IN val: ARRAY OF REAL): RealArray;
        VAR x: RealArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := real; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END RealArr;
    
    PROCEDURE BoolArr* (IN val: ARRAY OF BOOLEAN): BooleanArray;
        VAR x: BooleanArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := boolean; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END BoolArr;
    
    PROCEDURE ResArr* (IN val: ARRAY OF RESULT): ResultArray;
        VAR x: ResultArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := result; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END ResArr;
    
    PROCEDURE CyArr* (IN val: ARRAY OF OleCy): CurrencyArray;
        VAR x: CurrencyArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := currency; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END CyArr;
    
    PROCEDURE DateArr* (IN val: ARRAY OF OleDate): DateArray;
        VAR x: DateArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := date; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END DateArr;
    
    PROCEDURE StrArr* (IN val: ARRAY OF Strg): StringArray;
        VAR x: StringArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := string; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END StrArr;
    
    PROCEDURE ObjArr* (IN val: ARRAY OF Object): ObjectArray;
        VAR x: ObjectArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := object; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END ObjArr;
    
    PROCEDURE IntfceArr* (IN val: ARRAY OF IUnknown): InterfaceArray;
        VAR x: InterfaceArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := interface; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END IntfceArr;
    
    PROCEDURE AnyArr* (IN val: ARRAY OF Any): AnyArray;
        VAR x: AnyArray; i: INTEGER;
    BEGIN
        NEW(x); x.typeId := any; x.dim := 1;
        NEW(x.p, LEN(val));
        i := 0; WHILE i < LEN(val) DO x.p[i] := val[i]; INC(i) END;
        RETURN x
    END AnyArr;
    

    PROCEDURE ByteArr2* (IN val: ARRAY OF ARRAY OF BYTE): ByteArray2;
        VAR x: ByteArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := byte; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END ByteArr2;
    
    PROCEDURE SIntArr2* (IN val: ARRAY OF ARRAY OF SHORTINT): ShortIntArray2;
        VAR x: ShortIntArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := shortint; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END SIntArr2;
    
    PROCEDURE IntArr2* (IN val: ARRAY OF ARRAY OF INTEGER): IntegerArray2;
        VAR x: IntegerArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := integer; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END IntArr2;
    
    PROCEDURE SRealArr2* (IN val: ARRAY OF ARRAY OF SHORTREAL): ShortRealArray2;
        VAR x: ShortRealArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := shortreal; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END SRealArr2;
    
    PROCEDURE RealArr2* (IN val: ARRAY OF ARRAY OF REAL): RealArray2;
        VAR x: RealArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := real; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END RealArr2;
    
    PROCEDURE BoolArr2* (IN val: ARRAY OF ARRAY OF BOOLEAN): BooleanArray2;
        VAR x: BooleanArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := boolean; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END BoolArr2;
    
    PROCEDURE ResArr2* (IN val: ARRAY OF ARRAY OF RESULT): ResultArray2;
        VAR x: ResultArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := result; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END ResArr2;
    
    PROCEDURE CyArr2* (IN val: ARRAY OF ARRAY OF OleCy): CurrencyArray2;
        VAR x: CurrencyArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := currency; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END CyArr2;
    
    PROCEDURE DateArr2* (IN val: ARRAY OF ARRAY OF OleDate): DateArray2;
        VAR x: DateArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := date; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END DateArr2;
    
    PROCEDURE StrArr2* (IN val: ARRAY OF ARRAY OF Strg): StringArray2;
        VAR x: StringArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := string; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END StrArr2;
    
    PROCEDURE ObjArr2* (IN val: ARRAY OF ARRAY OF Object): ObjectArray2;
        VAR x: ObjectArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := object; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END ObjArr2;
    
    PROCEDURE IntfceArr2* (IN val: ARRAY OF ARRAY OF IUnknown): InterfaceArray2;
        VAR x: InterfaceArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := interface; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END IntfceArr2;
    
    PROCEDURE AnyArr2* (IN val: ARRAY OF ARRAY OF Any): AnyArray2;
        VAR x: AnyArray2; i, j: INTEGER;
    BEGIN
        NEW(x); x.typeId := any; x.dim := 2;
        NEW(x.p, LEN(val), LEN(val, 1)); i := 0;
        WHILE i < LEN(val) DO
            j := 0; WHILE j < LEN(val, 1) DO x.p[i, j] := val[i, j]; INC(j) END;
            INC(i)
        END;
        RETURN x
    END AnyArr2;
    

    PROCEDURE GetConnectionPoint (source: Object; IN iid: COM.GUID): WinOle.IConnectionPoint;
        VAR res: COM.RESULT; cont: WinOle.IConnectionPointContainer; cp: WinOle.IConnectionPoint;
    BEGIN
        res := source.disp.QueryInterface(COM.ID(cont), cont);
        IF res >= 0 THEN
            res := cont.FindConnectionPoint(iid, cp);
            RETURN cp
        ELSE RETURN NIL
        END
    END GetConnectionPoint;
    
    PROCEDURE Connect* (sink: OutObject; source: Object);
        VAR res: COM.RESULT; cp: WinOle.IConnectionPoint; iid: COM.GUID; disp: WinOleAut.IDispatch;
    BEGIN
        sink.GetIID(iid);
        ASSERT(sink.cookie = 0, 20);
        ASSERT(source.disp # NIL, 21);
        cp := GetConnectionPoint(source, iid);
        ASSERT(cp # NIL, 21);
        disp := Disp(sink);
        res := cp.Advise(disp, sink.cookie);
        ASSERT(res >= 0, 21)
    END Connect;
    
    PROCEDURE Disconnect* (sink: OutObject; source: Object);
        VAR res: COM.RESULT; cp: WinOle.IConnectionPoint; iid: COM.GUID;
    BEGIN
        sink.GetIID(iid);
        ASSERT(sink.cookie # 0, 20);
        ASSERT(source.disp # NIL, 20);
        cp := GetConnectionPoint(source, iid);
        ASSERT(cp # NIL, 20);
        res := cp.Unadvise(sink.cookie);
        ASSERT(res >= 0, 20);
        sink.cookie := 0;
    END Disconnect;
    
    
BEGIN
    noArg := Res(80020004H);    (* DISP_E_PARAMNOTFOUND *)
    context := WinOle.CLSCTX_INPROC_SERVER + WinOle.CLSCTX_LOCAL_SERVER;
    lcid := 2048;    (* LOCALE_SYSTEM_DEFAULT *)
END CtlT.
