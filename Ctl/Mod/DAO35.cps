MODULE CtlDAO35;
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

    (* Microsoft DAO 2.5/3.5 Compatibility Library, help: C:\Program Files\Common Files\Microsoft Shared\DAO\dao35.hlp, id: 0 *)
    (* guid: {00025E04-0000-0000-C000-000000000046}, lcid: 0, syskind: win32, version: 3.5 *)

    IMPORT CtlT, CtlC;

    CONST
        (* RecordsetTypeEnum *)
            dbOpenTable* = 1; (* Type property (Recordset, type argument of OpenRecordset) *)
            dbOpenDynaset* = 2; (* Type property (Recordset, type argument of OpenRecordset) *)
            dbOpenSnapshot* = 4; (* Type property (Recordset, type argument of OpenRecordset) *)
            dbOpenForwardOnly* = 8; (* Type property (Recordset, type argument of OpenRecordset) *)
            dbOpenDynamic* = 16; (* Type (RecordSet, argument of OpenRecordset) *)
        (* EditModeEnum *)
            dbEditNone* = 0; (* EditMode (Recordset) *)
            dbEditInProgress* = 1; (* EditMode (Recordset) *)
            dbEditAdd* = 2; (* EditMode (Recordset) *)
            dbEditChanged* = 4;
            dbEditDeleted* = 8;
            dbEditNew* = 16;
        (* RecordsetOptionEnum *)
            dbDenyWrite* = 1; (* Options argument (OpenRecordset) *)
            dbDenyRead* = 2; (* Options argument (OpenRecordset, Execute) *)
            dbReadOnly* = 4; (* Options argument (OpenRecordset) *)
            dbAppendOnly* = 8; (* Options argument (OpenRecordset) *)
            dbInconsistent* = 16; (* Options argument (OpenRecordset, Execute) *)
            dbConsistent* = 32; (* Options argument (OpenRecordset, Execute) *)
            dbSQLPassThrough* = 64; (* Options argument (OpenRecordset, Execute) *)
            dbFailOnError* = 128; (* Options argument (Execute) *)
            dbForwardOnly* = 256; (* Options argument (OpenRecordset) *)
            dbSeeChanges* = 512; (* Options argument (OpenRecordset, Execute) *)
            dbRunAsync* = 1024; (* Options argument (OpenRecordset, Execute) *)
            dbExecDirect* = 2048; (* Options argument (OpenRecordset, Execute) *)
        (* LockTypeEnum *)
            dbPessimistic* = 2; (* Options argument (OpenRecordset) *)
            dbOptimistic* = 3; (* Options argument (OpenRecordset) *)
            dbOptimisticValue* = 1; (* Options argument (OpenRecordset) *)
            dbOptimisticBatch* = 5; (* LockEdits argument (OpenRecordset) *)
        (* UpdateCriteriaEnum *)
            dbCriteriaKey* = 1; (* UpdateOptions (Recordset) *)
            dbCriteriaModValues* = 2; (* UpdateOptions (Recordset) *)
            dbCriteriaAllCols* = 4; (* UpdateOptions (Recordset) *)
            dbCriteriaTimestamp* = 8; (* UpdateOptions (Recordset) *)
            dbCriteriaDeleteInsert* = 16; (* UpdateOptions (Recordset) *)
            dbCriteriaUpdate* = 32; (* UpdateOptions (Recordset) *)
        (* FieldAttributeEnum *)
            dbFixedField* = 1; (* Attributes (Field on TableDef) *)
            dbVariableField* = 2; (* Attributes (Field on TableDef) *)
            dbAutoIncrField* = 16; (* Attributes (Field on TableDef) *)
            dbUpdatableField* = 32; (* Attributes (Field on TableDef) *)
            dbSystemField* = 8192; (* Attributes (Field on TableDef) *)
            dbHyperlinkField* = 32768; (* Attributes (Field on TableDef) *)
            dbDescending* = 1; (* Attributes (Field on Index) *)
        (* DataTypeEnum *)
            dbBoolean* = 1; (* Type (Field, Parameter, Property) *)
            dbByte* = 2; (* Type (Field, Parameter, Property) *)
            dbInteger* = 3; (* Type (Field, Parameter, Property) *)
            dbLong* = 4; (* Type (Field, Parameter, Property) *)
            dbCurrency* = 5; (* Type (Field, Parameter, Property) *)
            dbSingle* = 6; (* Type (Field, Parameter, Property) *)
            dbDouble* = 7; (* Type (Field, Parameter, Property) *)
            dbDate* = 8; (* Type (Field, Parameter, Property) *)
            dbBinary* = 9; (* Type (Field, Parameter, Property) *)
            dbText* = 10; (* Type (Field, Parameter, Property) *)
            dbLongBinary* = 11; (* Type (Field, Parameter, Property) *)
            dbMemo* = 12; (* Type (Field, Parameter, Property) *)
            dbGUID* = 15; (* Type (Field, Parameter, Property) *)
            dbBigInt* = 16; (* Type (Field, Parameter, Property) *)
            dbVarBinary* = 17; (* Type (Field, Parameter, Property) *)
            dbChar* = 18; (* Type (Field, Parameter, Property) *)
            dbNumeric* = 19; (* Type (Field, Parameter, Property) *)
            dbDecimal* = 20; (* Type (Field, Parameter, Property) *)
            dbFloat* = 21; (* Type (Field, Parameter, Property) *)
            dbTime* = 22; (* Type (Field, Parameter, Property) *)
            dbTimeStamp* = 23; (* Type (Field, Parameter, Property) *)
        (* RelationAttributeEnum *)
            dbRelationUnique* = 1; (* Attributes (Relation) *)
            dbRelationDontEnforce* = 2; (* Attributes (Relation) *)
            dbRelationInherited* = 4; (* Attributes (Relation) *)
            dbRelationUpdateCascade* = 256; (* Attributes (Relation) *)
            dbRelationDeleteCascade* = 4096; (* Attributes (Relation) *)
            dbRelationLeft* = 16777216; (* Attributes (Relation) *)
            dbRelationRight* = 33554432; (* Attributes (Relation) *)
        (* TableDefAttributeEnum *)
            dbAttachExclusive* = 65536; (* Attributes (TableDef) *)
            dbAttachSavePWD* = 131072; (* Attributes (TableDef) *)
            dbSystemObject* = -2147483646; (* Attributes (TableDef) *)
            dbAttachedTable* = 1073741824; (* Attributes (TableDef) *)
            dbAttachedODBC* = 536870912; (* Attributes (TableDef) *)
            dbHiddenObject* = 1; (* Attributes (TableDef) *)
        (* QueryDefTypeEnum *)
            dbQSelect* = 0; (* Type (QueryDef) *)
            dbQProcedure* = 224; (* Type (QueryDef) *)
            dbQAction* = 240; (* Type (QueryDef) *)
            dbQCrosstab* = 16; (* Type (QueryDef) *)
            dbQDelete* = 32; (* Type (QueryDef) *)
            dbQUpdate* = 48; (* Type (QueryDef) *)
            dbQAppend* = 64; (* Type (QueryDef) *)
            dbQMakeTable* = 80; (* Type (QueryDef) *)
            dbQDDL* = 96; (* Type (QueryDef) *)
            dbQSQLPassThrough* = 112; (* Type (QueryDef) *)
            dbQSetOperation* = 128; (* Type (QueryDef) *)
            dbQSPTBulk* = 144; (* Type (QueryDef) *)
            dbQCompound* = 160; (* Type (Querydef) *)
        (* QueryDefStateEnum *)
            dbQPrepare* = 1; (* Prepare (QueryDef) *)
            dbQUnprepare* = 2; (* Prepare (QueryDef) *)
        (* DatabaseTypeEnum *)
            dbVersion10* = 1; (* Options argument (CreateDatabase, CompactDatabase) *)
            dbEncrypt* = 2; (* Options argument (CreateDatabase, CompactDatabase) *)
            dbDecrypt* = 4; (* Options argument (CreateDatabase, CompactDatabase) *)
            dbVersion11* = 8; (* Options argument (CreateDatabase, CompactDatabase) *)
            dbVersion20* = 16; (* Options argument (CreateDatabase, CompactDatabase) *)
            dbVersion30* = 32; (* Options argument (CreateDatabase, CompactDatabase) *)
        (* CollatingOrderEnum *)
            dbSortNeutral* = 1024; (* CollatingOrder (Database, Field) *)
            dbSortArabic* = 1025; (* CollatingOrder (Database, Field) *)
            dbSortCyrillic* = 1049; (* CollatingOrder (Database, Field) *)
            dbSortCzech* = 1029; (* CollatingOrder (Database, Field) *)
            dbSortDutch* = 1043; (* CollatingOrder (Database, Field) *)
            dbSortGeneral* = 1033; (* CollatingOrder (Database, Field) *)
            dbSortGreek* = 1032; (* CollatingOrder (Database, Field) *)
            dbSortHebrew* = 1037; (* CollatingOrder (Database, Field) *)
            dbSortHungarian* = 1038; (* CollatingOrder (Database, Field) *)
            dbSortIcelandic* = 1039; (* CollatingOrder (Database, Field) *)
            dbSortNorwdan* = 1030; (* CollatingOrder (Database, Field) *)
            dbSortPDXIntl* = 1033; (* CollatingOrder (Database, Field) *)
            dbSortPDXNor* = 1030; (* CollatingOrder (Database, Field) *)
            dbSortPDXSwe* = 1053; (* CollatingOrder (Database, Field) *)
            dbSortPolish* = 1045; (* CollatingOrder (Database, Field) *)
            dbSortSpanish* = 1034; (* CollatingOrder (Database, Field) *)
            dbSortSwedFin* = 1053; (* CollatingOrder (Database, Field) *)
            dbSortTurkish* = 1055; (* CollatingOrder (Database, Field) *)
            dbSortJapanese* = 1041; (* CollatingOrder (Database, Field) *)
            dbSortChineseSimplified* = 2052; (* CollatingOrder (Database, Field) *)
            dbSortChineseTraditional* = 1028; (* CollatingOrder (Database, Field) *)
            dbSortKorean* = 1042; (* CollatingOrder (Database, Field) *)
            dbSortThai* = 1054; (* CollatingOrder (Database, Field) *)
            dbSortSlovenian* = 1060; (* CollatingOrder (Database, Field) *)
            dbSortUndefined* = -1; (* CollatingOrder (Database, Field) *)
        (* IdleEnum *)
            dbFreeLocks* = 1; (* Idle (DBEngine) *)
            dbRefreshCache* = 8; (* Options argument (Idle) *)
        (* PermissionEnum *)
            dbSecNoAccess* = 0; (* Permissions (Container, Document) *)
            dbSecFullAccess* = 1048575; (* Permissions (Container, Document) *)
            dbSecDelete* = 65536; (* Permissions (Container, Document) *)
            dbSecReadSec* = 131072; (* Permissions (Container, Document) *)
            dbSecWriteSec* = 262144; (* Permissions (Container, Document) *)
            dbSecWriteOwner* = 524288; (* Permissions (Container, Document) *)
            dbSecDBCreate* = 1; (* Permissions (Container, Document) *)
            dbSecDBOpen* = 2; (* Permissions (Container, Document) *)
            dbSecDBExclusive* = 4; (* Permissions (Container, Document) *)
            dbSecDBAdmin* = 8; (* Permissions (Container, Document) *)
            dbSecCreate* = 1; (* Permissions (Container, Document) *)
            dbSecReadDef* = 4; (* Permissions (Container, Document) *)
            dbSecWriteDef* = 65548; (* Permissions (Container, Document) *)
            dbSecRetrieveData* = 20; (* Permissions (Container, Document) *)
            dbSecInsertData* = 32; (* Permissions (Container, Document) *)
            dbSecReplaceData* = 64; (* Permissions (Container, Document) *)
            dbSecDeleteData* = 128; (* Permissions (Container, Document) *)
        (* SynchronizeTypeEnum *)
            dbRepExportChanges* = 1; (* Exchange argument (Synchronize) *)
            dbRepImportChanges* = 2; (* Exchange argument (Synchronize) *)
            dbRepImpExpChanges* = 4; (* Exchange argument (Synchronize) *)
            dbRepSyncInternet* = 16; (* Exchange argument (Synchronize) *)
        (* ReplicaTypeEnum *)
            dbRepMakeReadOnly* = 2; (* Options argument (MakeReplica) *)
            dbRepMakePartial* = 1; (* Options argument (MakeReplica) *)
        (* WorkspaceTypeEnum *)
            dbUseODBC* = 1; (* Type (DBEngine, type argument of OpenWorkspace) *)
            dbUseJet* = 2; (* Type (DBEngine, type argument of OpenWorkspace) *)
        (* CursorDriverEnum *)
            dbUseDefaultCursor* = -1; (* Type (Workspace, OpenConnection, OpenDatabase) *)
            dbUseODBCCursor* = 1; (* Type (Workspace, OpenConnection, OpenDatabase) *)
            dbUseServerCursor* = 2; (* Type (Workspace, OpenConnection, OpenDatabase) *)
            dbUseClientBatchCursor* = 3; (* DefaultCursorDriver (Workspace) *)
            dbUseNoCursor* = 4; (* DefaultCursorDriver (Workspace) *)
        (* DriverPromptEnum *)
            dbDriverPrompt* = 2; (* Options argument (OpenConnection, OpenDatabase) *)
            dbDriverNoPrompt* = 1; (* Options argument (OpenConnection, OpenDatabase) *)
            dbDriverComplete* = 0; (* Options argument (OpenConnection, OpenDatabase) *)
            dbDriverCompleteRequired* = 3; (* Options argument (OpenConnection, OpenDatabase) *)
        (* SetOptionEnum *)
            dbPageTimeout* = 6; (* Parameter argument (SetOption) *)
            dbLockRetry* = 57; (* Parameter argument (SetOption) *)
            dbMaxBufferSize* = 8; (* Parameter argument (SetOption) *)
            dbUserCommitSync* = 58; (* Parameter argument (SetOption) *)
            dbImplicitCommitSync* = 59; (* Parameter argument (SetOption) *)
            dbExclusiveAsyncDelay* = 60; (* Parameter argument (SetOption) *)
            dbSharedAsyncDelay* = 61; (* Parameter argument (SetOption) *)
            dbMaxLocksPerFile* = 62; (* Parameter argument (SetOption) *)
            dbLockDelay* = 63; (* Parameter argument (SetOption) *)
            dbRecycleLVs* = 65; (* Parameter argument (SetOption) *)
            dbFlushTransactionTimeout* = 66; (* Parameter argument (SetOption) *)
        (* ParameterDirectionEnum *)
            dbParamInput* = 1; (* Direction (Parameter) *)
            dbParamOutput* = 2; (* Direction (Parameter) *)
            dbParamInputOutput* = 3; (* Direction (Parameter) *)
            dbParamReturnValue* = 4; (* Direction (Parameter) *)
        (* UpdateTypeEnum *)
            dbUpdateBatch* = 4; (* Type argument (Update, CancelUpdate) *)
            dbUpdateRegular* = 1; (* Type argument (Update, CancelUpdate) *)
            dbUpdateCurrentRecord* = 2; (* Type argument (Update) *)
        (* RecordStatusEnum *)
            dbRecordUnmodified* = 0; (* RecordStatus (Recordset) *)
            dbRecordModified* = 1; (* RecordStatus (Recordset) *)
            dbRecordNew* = 2; (* RecordStatus (Recordset) *)
            dbRecordDeleted* = 3; (* RecordStatus (Recordset) *)
            dbRecordDBDeleted* = 4; (* RecordStatus (Recordset) *)
        (* CommitTransOptionsEnum *)
            dbForceOSFlush* = 1; (* Options argument (CommitTrans) *)
        (* _DAOSuppHelp *)
            LogMessages* = 0; (* Indicates whether to log messages returned from a pass-through query *)
            KeepLocal* = 0; (* Indicates whether an object will be included in a replica *)
            Replicable* = 0; (* Indicates whether an object can be replicated (String) *)
            ReplicableBool* = 0; (* Indicates whether an object can be replicated (Boolean) *)
            V1xNullBehavior* = 0; (* Determines how to store Nulls from a Jet Version 1.x databasewill be *)
        (* LanguageConstants: DAO predefined constants. *)
            dbLangArabic* = ";LANGID=0x0401;CP=1256;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangCzech* = ";LANGID=0x0405;CP=1250;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangDutch* = ";LANGID=0x0413;CP=1252;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangGeneral* = ";LANGID=0x0409;CP=1252;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangGreek* = ";LANGID=0x0408;CP=1253;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangHebrew* = ";LANGID=0x040D;CP=1255;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangHungarian* = ";LANGID=0x040E;CP=1250;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangIcelandic* = ";LANGID=0x040F;CP=1252;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangNordic* = ";LANGID=0x041D;CP=1252;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangNorwDan* = ";LANGID=0x0414;CP=1252;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangPolish* = ";LANGID=0x0415;CP=1250;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangCyrillic* = ";LANGID=0x0419;CP=1251;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangSpanish* = ";LANGID=0x040A;CP=1252;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangSwedFin* = ";LANGID=0x040B;CP=1252;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangTurkish* = ";LANGID=0x041F;CP=1254;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangJapanese* = ";LANGID=0x0411;CP=932;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangChineseSimplified* = ";LANGID=0x0804;CP=936;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangChineseTraditional* = ";LANGID=0x0404;CP=950;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangKorean* = ";LANGID=0x0412;CP=949;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangThai* = ";LANGID=0x041E;CP=874;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)
            dbLangSlovenian* = ";LANGID=0x0424;CP=1250;COUNTRY=0"; (* Locale argument (CreateDatabase, CompactDatabase) *)


    TYPE
        RecordsetTypeEnum* = INTEGER;
        EditModeEnum* = INTEGER;
        RecordsetOptionEnum* = INTEGER;
        LockTypeEnum* = INTEGER;
        UpdateCriteriaEnum* = INTEGER;
        FieldAttributeEnum* = INTEGER;
        DataTypeEnum* = INTEGER;
        RelationAttributeEnum* = INTEGER;
        TableDefAttributeEnum* = INTEGER;
        QueryDefTypeEnum* = INTEGER;
        QueryDefStateEnum* = INTEGER;
        DatabaseTypeEnum* = INTEGER;
        CollatingOrderEnum* = INTEGER;
        IdleEnum* = INTEGER;
        PermissionEnum* = INTEGER;
        SynchronizeTypeEnum* = INTEGER;
        ReplicaTypeEnum* = INTEGER;
        WorkspaceTypeEnum* = INTEGER;
        CursorDriverEnum* = INTEGER;
        DriverPromptEnum* = INTEGER;
        SetOptionEnum* = INTEGER;
        ParameterDirectionEnum* = INTEGER;
        UpdateTypeEnum* = INTEGER;
        RecordStatusEnum* = INTEGER;
        CommitTransOptionsEnum* = INTEGER;
        _DAOSuppHelp* = INTEGER;
        _Collection* = POINTER TO RECORD (CtlT.Object) END;
        _DynaCollection* = POINTER TO RECORD (CtlT.Object) END;
        _DAO* = POINTER TO RECORD (CtlT.Object) END;
        (* The Microsoft Jet database engine. *)
        _DBEngine* = POINTER TO RECORD (CtlT.Object) END;
        (* The Microsoft Jet database engine. *)
        DBEngine* = _DBEngine;
        (* DAO 3.0 DBEngine (private) *)
        PrivDBEngine* = _DBEngine;
        (* Information about any errors that occurred with a DAO object. *)
        Error* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Error objects. *)
        Errors* = POINTER TO RECORD (CtlT.Object) END;
        (* A session for a user. *)
        Workspace* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Workspace objects. *)
        Workspaces* = POINTER TO RECORD (CtlT.Object) END;
        (* A saved table definition. *)
        _TableDef* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of TableDef objects. *)
        TableDefs* = POINTER TO RECORD (CtlT.Object) END;
        (* A saved table definition. *)
        TableDef* = _TableDef;
        (* An open database. *)
        Database* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Database objects. *)
        Databases* = POINTER TO RECORD (CtlT.Object) END;
        (* A saved query definition. *)
        _QueryDef* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of QueryDef objects. *)
        QueryDefs* = POINTER TO RECORD (CtlT.Object) END;
        (* A saved query definition. *)
        QueryDef* = _QueryDef;
        (* A representation of the records in a base table or the records that result from  *)
        Recordset* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Recordset objects. *)
        Recordsets* = POINTER TO RECORD (CtlT.Object) END;
        (* A column that is part of a TableDef, QueryDef, Index, Relation, or Recordset. *)
        _Field* = POINTER TO RECORD (CtlT.Object) END;
        (* A column that is part of a TableDef, QueryDef, Index, Relation, or Recordset. *)
        Field* = _Field;
        (* Collection of Field objects. *)
        Fields* = POINTER TO RECORD (CtlT.Object) END;
        (* The Index object orders values and provides efficient access to a Recordset. *)
        _Index* = POINTER TO RECORD (CtlT.Object) END;
        (* The Index object orders values and provides efficient access to a Recordset. *)
        Index* = _Index;
        (* Collection of Index objects. *)
        Indexes* = POINTER TO RECORD (CtlT.Object) END;
        IndexFields* = POINTER TO RECORD (CtlT.Object) END;
        (* A parameter for a parameter query. *)
        Parameter* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Parameter objects. *)
        Parameters* = POINTER TO RECORD (CtlT.Object) END;
        (* A user account. *)
        _User* = POINTER TO RECORD (CtlT.Object) END;
        (* A user account. *)
        User* = _User;
        (* Collection of User objects. *)
        Users* = POINTER TO RECORD (CtlT.Object) END;
        (* A group of user accounts. *)
        _Group* = POINTER TO RECORD (CtlT.Object) END;
        (* A group of user accounts. *)
        Group* = _Group;
        (* Collection of Group objects. *)
        Groups* = POINTER TO RECORD (CtlT.Object) END;
        (* A relationship between fields in tables and queries. *)
        _Relation* = POINTER TO RECORD (CtlT.Object) END;
        (* A relationship between fields in tables and queries. *)
        Relation* = _Relation;
        (* Collection of Relation objects. *)
        Relations* = POINTER TO RECORD (CtlT.Object) END;
        (* A built-in or user-defined property. *)
        Property* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Property objects. *)
        Properties* = POINTER TO RECORD (CtlT.Object) END;
        (* Storage for information about a predefined object type. *)
        Container* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Container objects. *)
        Containers* = POINTER TO RECORD (CtlT.Object) END;
        (* Information about a saved, predefined object. *)
        Document* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Document objects. *)
        Documents* = POINTER TO RECORD (CtlT.Object) END;
        (* An open ODBCDirect connection. *)
        Connection* = POINTER TO RECORD (CtlT.Object) END;
        (* Collection of Connection objects *)
        Connections* = POINTER TO RECORD (CtlT.Object) END;
        (* (obsolete) Snapshot object - Use Recordset object instead *)
        Snapshot* = POINTER TO RECORD (CtlT.Object) END;
        (* (obsolete) Table Object - Use Recordset object instead *)
        Table* = POINTER TO RECORD (CtlT.Object) END;
        (* (obsolete) Dynaset object - Use Recordset object instead *)
        Dynaset* = POINTER TO RECORD (CtlT.Object) END;


    PROCEDURE This_Collection* (v: CtlT.Any): _Collection;
        VAR new: _Collection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000000A0-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Collection;

    PROCEDURE Is_Collection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000000A0-0000-0010-8000-00AA006D2EA4}")
    END Is_Collection;

    PROCEDURE This_DynaCollection* (v: CtlT.Any): _DynaCollection;
        VAR new: _DynaCollection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000000A2-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DynaCollection;

    PROCEDURE Is_DynaCollection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000000A2-0000-0010-8000-00AA006D2EA4}")
    END Is_DynaCollection;

    PROCEDURE This_DAO* (v: CtlT.Any): _DAO;
        VAR new: _DAO;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000000A-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DAO;

    PROCEDURE Is_DAO* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000000A-0000-0010-8000-00AA006D2EA4}")
    END Is_DAO;

    PROCEDURE This_DBEngine* (v: CtlT.Any): _DBEngine;
        VAR new: _DBEngine;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000021-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DBEngine;

    PROCEDURE Is_DBEngine* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000021-0000-0010-8000-00AA006D2EA4}")
    END Is_DBEngine;

    PROCEDURE ThisError* (v: CtlT.Any): Error;
        VAR new: Error;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000023-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisError;

    PROCEDURE IsError* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000023-0000-0010-8000-00AA006D2EA4}")
    END IsError;

    PROCEDURE ThisErrors* (v: CtlT.Any): Errors;
        VAR new: Errors;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000025-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisErrors;

    PROCEDURE IsErrors* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000025-0000-0010-8000-00AA006D2EA4}")
    END IsErrors;

    PROCEDURE ThisWorkspace* (v: CtlT.Any): Workspace;
        VAR new: Workspace;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000039-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisWorkspace;

    PROCEDURE IsWorkspace* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000039-0000-0010-8000-00AA006D2EA4}")
    END IsWorkspace;

    PROCEDURE ThisWorkspaces* (v: CtlT.Any): Workspaces;
        VAR new: Workspaces;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000003B-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisWorkspaces;

    PROCEDURE IsWorkspaces* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000003B-0000-0010-8000-00AA006D2EA4}")
    END IsWorkspaces;

    PROCEDURE This_TableDef* (v: CtlT.Any): _TableDef;
        VAR new: _TableDef;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000049-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_TableDef;

    PROCEDURE Is_TableDef* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000049-0000-0010-8000-00AA006D2EA4}")
    END Is_TableDef;

    PROCEDURE ThisTableDefs* (v: CtlT.Any): TableDefs;
        VAR new: TableDefs;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000004B-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTableDefs;

    PROCEDURE IsTableDefs* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000004B-0000-0010-8000-00AA006D2EA4}")
    END IsTableDefs;

    PROCEDURE ThisDatabase* (v: CtlT.Any): Database;
        VAR new: Database;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000071-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDatabase;

    PROCEDURE IsDatabase* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000071-0000-0010-8000-00AA006D2EA4}")
    END IsDatabase;

    PROCEDURE ThisDatabases* (v: CtlT.Any): Databases;
        VAR new: Databases;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000073-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDatabases;

    PROCEDURE IsDatabases* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000073-0000-0010-8000-00AA006D2EA4}")
    END IsDatabases;

    PROCEDURE This_QueryDef* (v: CtlT.Any): _QueryDef;
        VAR new: _QueryDef;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000079-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_QueryDef;

    PROCEDURE Is_QueryDef* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000079-0000-0010-8000-00AA006D2EA4}")
    END Is_QueryDef;

    PROCEDURE ThisQueryDefs* (v: CtlT.Any): QueryDefs;
        VAR new: QueryDefs;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000007B-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisQueryDefs;

    PROCEDURE IsQueryDefs* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000007B-0000-0010-8000-00AA006D2EA4}")
    END IsQueryDefs;

    PROCEDURE ThisRecordset* (v: CtlT.Any): Recordset;
        VAR new: Recordset;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000031-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRecordset;

    PROCEDURE IsRecordset* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000031-0000-0010-8000-00AA006D2EA4}")
    END IsRecordset;

    PROCEDURE ThisRecordsets* (v: CtlT.Any): Recordsets;
        VAR new: Recordsets;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000033-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRecordsets;

    PROCEDURE IsRecordsets* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000033-0000-0010-8000-00AA006D2EA4}")
    END IsRecordsets;

    PROCEDURE This_Field* (v: CtlT.Any): _Field;
        VAR new: _Field;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000051-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Field;

    PROCEDURE Is_Field* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000051-0000-0010-8000-00AA006D2EA4}")
    END Is_Field;

    PROCEDURE ThisFields* (v: CtlT.Any): Fields;
        VAR new: Fields;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000053-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFields;

    PROCEDURE IsFields* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000053-0000-0010-8000-00AA006D2EA4}")
    END IsFields;

    PROCEDURE This_Index* (v: CtlT.Any): _Index;
        VAR new: _Index;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000059-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Index;

    PROCEDURE Is_Index* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000059-0000-0010-8000-00AA006D2EA4}")
    END Is_Index;

    PROCEDURE ThisIndexes* (v: CtlT.Any): Indexes;
        VAR new: Indexes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000005B-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIndexes;

    PROCEDURE IsIndexes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000005B-0000-0010-8000-00AA006D2EA4}")
    END IsIndexes;

    PROCEDURE ThisIndexFields* (v: CtlT.Any): IndexFields;
        VAR new: IndexFields;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000005D-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIndexFields;

    PROCEDURE IsIndexFields* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000005D-0000-0010-8000-00AA006D2EA4}")
    END IsIndexFields;

    PROCEDURE ThisParameter* (v: CtlT.Any): Parameter;
        VAR new: Parameter;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000081-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisParameter;

    PROCEDURE IsParameter* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000081-0000-0010-8000-00AA006D2EA4}")
    END IsParameter;

    PROCEDURE ThisParameters* (v: CtlT.Any): Parameters;
        VAR new: Parameters;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000083-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisParameters;

    PROCEDURE IsParameters* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000083-0000-0010-8000-00AA006D2EA4}")
    END IsParameters;

    PROCEDURE This_User* (v: CtlT.Any): _User;
        VAR new: _User;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000069-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_User;

    PROCEDURE Is_User* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000069-0000-0010-8000-00AA006D2EA4}")
    END Is_User;

    PROCEDURE ThisUsers* (v: CtlT.Any): Users;
        VAR new: Users;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000006B-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisUsers;

    PROCEDURE IsUsers* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000006B-0000-0010-8000-00AA006D2EA4}")
    END IsUsers;

    PROCEDURE This_Group* (v: CtlT.Any): _Group;
        VAR new: _Group;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000061-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Group;

    PROCEDURE Is_Group* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000061-0000-0010-8000-00AA006D2EA4}")
    END Is_Group;

    PROCEDURE ThisGroups* (v: CtlT.Any): Groups;
        VAR new: Groups;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000063-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisGroups;

    PROCEDURE IsGroups* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000063-0000-0010-8000-00AA006D2EA4}")
    END IsGroups;

    PROCEDURE This_Relation* (v: CtlT.Any): _Relation;
        VAR new: _Relation;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000089-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Relation;

    PROCEDURE Is_Relation* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000089-0000-0010-8000-00AA006D2EA4}")
    END Is_Relation;

    PROCEDURE ThisRelations* (v: CtlT.Any): Relations;
        VAR new: Relations;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000008B-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRelations;

    PROCEDURE IsRelations* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000008B-0000-0010-8000-00AA006D2EA4}")
    END IsRelations;

    PROCEDURE ThisProperty* (v: CtlT.Any): Property;
        VAR new: Property;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000027-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisProperty;

    PROCEDURE IsProperty* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000027-0000-0010-8000-00AA006D2EA4}")
    END IsProperty;

    PROCEDURE ThisProperties* (v: CtlT.Any): Properties;
        VAR new: Properties;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000029-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisProperties;

    PROCEDURE IsProperties* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000029-0000-0010-8000-00AA006D2EA4}")
    END IsProperties;

    PROCEDURE ThisContainer* (v: CtlT.Any): Container;
        VAR new: Container;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000091-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisContainer;

    PROCEDURE IsContainer* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000091-0000-0010-8000-00AA006D2EA4}")
    END IsContainer;

    PROCEDURE ThisContainers* (v: CtlT.Any): Containers;
        VAR new: Containers;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000093-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisContainers;

    PROCEDURE IsContainers* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000093-0000-0010-8000-00AA006D2EA4}")
    END IsContainers;

    PROCEDURE ThisDocument* (v: CtlT.Any): Document;
        VAR new: Document;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000099-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDocument;

    PROCEDURE IsDocument* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000099-0000-0010-8000-00AA006D2EA4}")
    END IsDocument;

    PROCEDURE ThisDocuments* (v: CtlT.Any): Documents;
        VAR new: Documents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000009B-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDocuments;

    PROCEDURE IsDocuments* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000009B-0000-0010-8000-00AA006D2EA4}")
    END IsDocuments;

    PROCEDURE ThisConnection* (v: CtlT.Any): Connection;
        VAR new: Connection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000041-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisConnection;

    PROCEDURE IsConnection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000041-0000-0010-8000-00AA006D2EA4}")
    END IsConnection;

    PROCEDURE ThisConnections* (v: CtlT.Any): Connections;
        VAR new: Connections;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000043-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisConnections;

    PROCEDURE IsConnections* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000043-0000-0010-8000-00AA006D2EA4}")
    END IsConnections;

    PROCEDURE ThisSnapshot* (v: CtlT.Any): Snapshot;
        VAR new: Snapshot;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000000FD-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSnapshot;

    PROCEDURE IsSnapshot* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000000FD-0000-0010-8000-00AA006D2EA4}")
    END IsSnapshot;

    PROCEDURE ThisTable* (v: CtlT.Any): Table;
        VAR new: Table;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000000FE-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTable;

    PROCEDURE IsTable* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000000FE-0000-0010-8000-00AA006D2EA4}")
    END IsTable;

    PROCEDURE ThisDynaset* (v: CtlT.Any): Dynaset;
        VAR new: Dynaset;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000000FF-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDynaset;

    PROCEDURE IsDynaset* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000000FF-0000-0010-8000-00AA006D2EA4}")
    END IsDynaset;



    (* ---------- _Collection, dual, nonextensible ---------- *)

    PROCEDURE (this: _Collection) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: _Collection) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _Collection) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;


    (* ---------- _DynaCollection, dual, nonextensible ---------- *)

    PROCEDURE (this: _DynaCollection) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: _DynaCollection) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _DynaCollection) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: _DynaCollection) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: _DynaCollection) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;


    (* ---------- _DAO, dual, nonextensible ---------- *)

    PROCEDURE (this: _DAO) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;


    (* ---------- _DBEngine: The Microsoft Jet database engine., dual, nonextensible ---------- *)

    PROCEDURE (this: _DBEngine) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _DBEngine) Version* (): CtlT.Strg, NEW;
        (* Returns the version of the database engine. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Version;

    PROCEDURE (this: _DBEngine) IniPath* (): CtlT.Strg, NEW;
        (* Sets or returns Windows Registry path containing Microsoft Jet engine settings. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END IniPath;

    PROCEDURE (this: _DBEngine) PUTIniPath* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns Windows Registry path containing Microsoft Jet engine settings. *)
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTIniPath;

    PROCEDURE (this: _DBEngine) PUTDefaultUser* (p1: ARRAY OF CHAR), NEW;
        (* Sets the user name used to create the default Workspace object. *)
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTDefaultUser;

    PROCEDURE (this: _DBEngine) PUTDefaultPassword* (p1: ARRAY OF CHAR), NEW;
        (* Sets the password used to create the default Workspace object. *)
    BEGIN
        CtlC.PutStr(this, 1610809348, p1)
    END PUTDefaultPassword;

    PROCEDURE (this: _DBEngine) LoginTimeout* (): SHORTINT, NEW;
        (* Sets or returns the number of seconds allowed when logging on to an ODBC databas *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809349)
    END LoginTimeout;

    PROCEDURE (this: _DBEngine) PUTLoginTimeout* (p1: SHORTINT), NEW;
        (* Sets or returns the number of seconds allowed when logging on to an ODBC databas *)
    BEGIN
        CtlC.PutSInt(this, 1610809349, p1)
    END PUTLoginTimeout;

    PROCEDURE (this: _DBEngine) Workspaces* (): Workspaces, NEW;
        (* Collection of open Workspace objects. *)
    BEGIN
        RETURN ThisWorkspaces(CtlC.GetAny(this, 0))
    END Workspaces;

    PROCEDURE (this: _DBEngine) Errors* (): Errors, NEW;
        (* Collection of errors from the most recently failed DAO operation. *)
    BEGIN
        RETURN ThisErrors(CtlC.GetAny(this, 1610809352))
    END Errors;

    PROCEDURE (this: _DBEngine) Idle* ((* optional *) Action: CtlT.Any), NEW;
        (* Completes pending engine tasks such as lock removal. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Action, arg[0]);
        CtlC.CallParMethod(this, 1610809353, arg, NIL);
    END Idle;

    PROCEDURE (this: _DBEngine) CompactDatabase* (SrcName: ARRAY OF CHAR; DstName: ARRAY OF CHAR; (* optional *) DstLocale: CtlT.Any; Options: CtlT.Any; SrcLocale: CtlT.Any), NEW;
        (* Compacts a closed database. *)
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(SrcName, arg[4]);
        CtlC.StrVar(DstName, arg[3]);
        CtlC.AnyVar(DstLocale, arg[2]);
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(SrcLocale, arg[0]);
        CtlC.CallParMethod(this, 1610809354, arg, NIL);
    END CompactDatabase;

    PROCEDURE (this: _DBEngine) RepairDatabase* (Name: ARRAY OF CHAR), NEW;
        (* Repairs a corrupted database. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809355, arg, NIL);
    END RepairDatabase;

    PROCEDURE (this: _DBEngine) RegisterDatabase* (Dsn: ARRAY OF CHAR; Driver: ARRAY OF CHAR; Silent: BOOLEAN; Attributes: ARRAY OF CHAR), NEW;
        (* Enters connection information for an ODBC data source. *)
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Dsn, arg[3]);
        CtlC.StrVar(Driver, arg[2]);
        CtlC.BoolVar(Silent, arg[1]);
        CtlC.StrVar(Attributes, arg[0]);
        CtlC.CallParMethod(this, 1610809356, arg, NIL);
    END RegisterDatabase;

    PROCEDURE (this: _DBEngine) OpenDatabase* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; ReadOnly: CtlT.Any; Connect: CtlT.Any): Database, NEW;
        (* Opens a specified database. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.AnyVar(Options, arg[2]);
        CtlC.AnyVar(ReadOnly, arg[1]);
        CtlC.AnyVar(Connect, arg[0]);
        CtlC.CallParMethod(this, 1610809358, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END OpenDatabase;

    PROCEDURE (this: _DBEngine) CreateDatabase* (Name: ARRAY OF CHAR; Locale: ARRAY OF CHAR; (* optional *) Option: CtlT.Any): Database, NEW;
        (* Creates a new Microsoft Jet database (.mdb). *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[2]);
        CtlC.StrVar(Locale, arg[1]);
        CtlC.AnyVar(Option, arg[0]);
        CtlC.CallParMethod(this, 1610809359, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END CreateDatabase;

    PROCEDURE (this: _DBEngine) FreeLocks* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809360, NIL);
    END FreeLocks;

    PROCEDURE (this: _DBEngine) BeginTrans* (), NEW;
        (* Begins a new transaction. *)
    BEGIN
        CtlC.CallMethod(this, 1610809361, NIL);
    END BeginTrans;

    PROCEDURE (this: _DBEngine) CommitTrans* (Option: INTEGER), NEW;
        (* Ends the transaction and saves the changes. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Option, arg[0]);
        CtlC.CallParMethod(this, 1610809362, arg, NIL);
    END CommitTrans;

    PROCEDURE (this: _DBEngine) Rollback* (), NEW;
        (* Rolls back any changes since the last BeginTrans. *)
    BEGIN
        CtlC.CallMethod(this, 1610809363, NIL);
    END Rollback;

    PROCEDURE (this: _DBEngine) SetDefaultWorkspace* (Name: ARRAY OF CHAR; Password: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.StrVar(Password, arg[0]);
        CtlC.CallParMethod(this, 1610809364, arg, NIL);
    END SetDefaultWorkspace;

    PROCEDURE (this: _DBEngine) SetDataAccessOption* (Option: SHORTINT; Value: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.SIntVar(Option, arg[1]);
        CtlC.AnyVar(Value, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, NIL);
    END SetDataAccessOption;

    PROCEDURE (this: _DBEngine) ISAMStats* (StatNum: INTEGER; (* optional *) Reset: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(StatNum, arg[1]);
        CtlC.AnyVar(Reset, arg[0]);
        CtlC.CallParMethod(this, 1610809366, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ISAMStats;

    PROCEDURE (this: _DBEngine) SystemDB* (): CtlT.Strg, NEW;
        (* Sets or returns the path to the system database. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809367)
    END SystemDB;

    PROCEDURE (this: _DBEngine) PUTSystemDB* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the path to the system database. *)
    BEGIN
        CtlC.PutStr(this, 1610809367, p1)
    END PUTSystemDB;

    PROCEDURE (this: _DBEngine) CreateWorkspace* (Name: ARRAY OF CHAR; UserName: ARRAY OF CHAR; Password: ARRAY OF CHAR; (* optional *) UseType: CtlT.Any): Workspace, NEW;
        (* Creates a new Workspace object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.StrVar(UserName, arg[2]);
        CtlC.StrVar(Password, arg[1]);
        CtlC.AnyVar(UseType, arg[0]);
        CtlC.CallParMethod(this, 1610809369, arg, ret);
        RETURN ThisWorkspace(CtlC.VarAny(ret))
    END CreateWorkspace;

    PROCEDURE (this: _DBEngine) OpenConnection* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; ReadOnly: CtlT.Any; Connect: CtlT.Any): Connection, NEW;
        (* Opens a connection to a database *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.AnyVar(Options, arg[2]);
        CtlC.AnyVar(ReadOnly, arg[1]);
        CtlC.AnyVar(Connect, arg[0]);
        CtlC.CallParMethod(this, 1610809370, arg, ret);
        RETURN ThisConnection(CtlC.VarAny(ret))
    END OpenConnection;

    PROCEDURE (this: _DBEngine) DefaultType* (): INTEGER, NEW;
        (* Sets the default Workspace type *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809371)
    END DefaultType;

    PROCEDURE (this: _DBEngine) PUTDefaultType* (p1: INTEGER), NEW;
        (* Sets the default Workspace type *)
    BEGIN
        CtlC.PutInt(this, 1610809371, p1)
    END PUTDefaultType;

    PROCEDURE (this: _DBEngine) SetOption* (Option: INTEGER; Value: CtlT.Any), NEW;
        (* Overrides Jet registry settings *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Option, arg[1]);
        CtlC.AnyVar(Value, arg[0]);
        CtlC.CallParMethod(this, 1610809373, arg, NIL);
    END SetOption;


    (* ---------- Error: Information about any errors that occurred with a DAO object., dual, nonextensible ---------- *)

    PROCEDURE (this: Error) Number* (): INTEGER, NEW;
        (* Returns a numeric value specifying an error. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
    END Number;

    PROCEDURE (this: Error) Source* (): CtlT.Strg, NEW;
        (* Returns the name of the object class that generated the error. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610743809)
    END Source;

    PROCEDURE (this: Error) Description* (): CtlT.Strg, NEW;
        (* Returns a text description of error. *)
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Description;

    PROCEDURE (this: Error) HelpFile* (): CtlT.Strg, NEW;
        (* Returns a path for a Help file. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610743811)
    END HelpFile;

    PROCEDURE (this: Error) HelpContext* (): INTEGER, NEW;
        (* Returns a context ID for a topic in a Help file. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610743812)
    END HelpContext;


    (* ---------- Errors: Collection of Error objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Errors) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Errors) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Errors) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Errors) Item* (Index: CtlT.Any): Error, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisError(CtlC.VarAny(ret))
    END Item;


    (* ---------- Workspace: A session for a user., dual, nonextensible ---------- *)

    PROCEDURE (this: Workspace) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Workspace) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Workspace) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: Workspace) UserName* (): CtlT.Strg, NEW;
        (* Sets or returns a user or group. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END UserName;

    PROCEDURE (this: Workspace) IsolateODBCTrans* (): SHORTINT, NEW;
        (* Sets or returns a value indicating whether multiple transactions are isolated. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809349)
    END IsolateODBCTrans;

    PROCEDURE (this: Workspace) PUTIsolateODBCTrans* (p1: SHORTINT), NEW;
        (* Sets or returns a value indicating whether multiple transactions are isolated. *)
    BEGIN
        CtlC.PutSInt(this, 1610809349, p1)
    END PUTIsolateODBCTrans;

    PROCEDURE (this: Workspace) Databases* (): Databases, NEW;
        (* Collection of open Database objects. *)
    BEGIN
        RETURN ThisDatabases(CtlC.GetAny(this, 0))
    END Databases;

    PROCEDURE (this: Workspace) Users* (): Users, NEW;
        (* Collection of User objects for a Workspace or Group object. *)
    BEGIN
        RETURN ThisUsers(CtlC.GetAny(this, 1610809352))
    END Users;

    PROCEDURE (this: Workspace) Groups* (): Groups, NEW;
        (* Collection of Group objects in a Workspace or User object. *)
    BEGIN
        RETURN ThisGroups(CtlC.GetAny(this, 1610809353))
    END Groups;

    PROCEDURE (this: Workspace) BeginTrans* (), NEW;
        (* Begins a new transaction. *)
    BEGIN
        CtlC.CallMethod(this, 1610809354, NIL);
    END BeginTrans;

    PROCEDURE (this: Workspace) CommitTrans* (Options: INTEGER), NEW;
        (* Ends the transaction and saves the changes. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809355, arg, NIL);
    END CommitTrans;

    PROCEDURE (this: Workspace) Close* (), NEW;
        (* Closes an open DAO object. *)
    BEGIN
        CtlC.CallMethod(this, 1610809356, NIL);
    END Close;

    PROCEDURE (this: Workspace) Rollback* (), NEW;
        (* Rolls back any changes since the last BeginTrans. *)
    BEGIN
        CtlC.CallMethod(this, 1610809357, NIL);
    END Rollback;

    PROCEDURE (this: Workspace) OpenDatabase* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; ReadOnly: CtlT.Any; Connect: CtlT.Any): Database, NEW;
        (* Opens a specified database. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.AnyVar(Options, arg[2]);
        CtlC.AnyVar(ReadOnly, arg[1]);
        CtlC.AnyVar(Connect, arg[0]);
        CtlC.CallParMethod(this, 1610809358, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END OpenDatabase;

    PROCEDURE (this: Workspace) CreateDatabase* (Name: ARRAY OF CHAR; Connect: ARRAY OF CHAR; (* optional *) Option: CtlT.Any): Database, NEW;
        (* Creates a new Microsoft Jet database (.mdb). *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[2]);
        CtlC.StrVar(Connect, arg[1]);
        CtlC.AnyVar(Option, arg[0]);
        CtlC.CallParMethod(this, 1610809359, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END CreateDatabase;

    PROCEDURE (this: Workspace) CreateUser* ((* optional *) Name: CtlT.Any; PID: CtlT.Any; Password: CtlT.Any): User, NEW;
        (* Creates a new User object. *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(PID, arg[1]);
        CtlC.AnyVar(Password, arg[0]);
        CtlC.CallParMethod(this, 1610809360, arg, ret);
        RETURN This_User(CtlC.VarAny(ret))
    END CreateUser;

    PROCEDURE (this: Workspace) CreateGroup* ((* optional *) Name: CtlT.Any; PID: CtlT.Any): Group, NEW;
        (* Creates a new Group object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(PID, arg[0]);
        CtlC.CallParMethod(this, 1610809361, arg, ret);
        RETURN This_Group(CtlC.VarAny(ret))
    END CreateGroup;

    PROCEDURE (this: Workspace) OpenConnection* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; ReadOnly: CtlT.Any; Connect: CtlT.Any): Connection, NEW;
        (* Opens a connection to a database *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.AnyVar(Options, arg[2]);
        CtlC.AnyVar(ReadOnly, arg[1]);
        CtlC.AnyVar(Connect, arg[0]);
        CtlC.CallParMethod(this, 1610809362, arg, ret);
        RETURN ThisConnection(CtlC.VarAny(ret))
    END OpenConnection;

    PROCEDURE (this: Workspace) LoginTimeout* (): INTEGER, NEW;
        (* Number of seconds allowed for logging in to an ODBC database *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809363)
    END LoginTimeout;

    PROCEDURE (this: Workspace) PUTLoginTimeout* (p1: INTEGER), NEW;
        (* Number of seconds allowed for logging in to an ODBC database *)
    BEGIN
        CtlC.PutInt(this, 1610809363, p1)
    END PUTLoginTimeout;

    PROCEDURE (this: Workspace) DefaultCursorDriver* (): INTEGER, NEW;
        (* Selects the ODBC cursor library *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809365)
    END DefaultCursorDriver;

    PROCEDURE (this: Workspace) PUTDefaultCursorDriver* (p1: INTEGER), NEW;
        (* Selects the ODBC cursor library *)
    BEGIN
        CtlC.PutInt(this, 1610809365, p1)
    END PUTDefaultCursorDriver;

    PROCEDURE (this: Workspace) hEnv* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809367)
    END hEnv;

    PROCEDURE (this: Workspace) Type* (): INTEGER, NEW;
        (* Type (Field, Parameter, Property) *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809368)
    END Type;

    PROCEDURE (this: Workspace) Connections* (): Connections, NEW;
        (* Collection of Connection objects. *)
    BEGIN
        RETURN ThisConnections(CtlC.GetAny(this, 1610809369))
    END Connections;


    (* ---------- Workspaces: Collection of Workspace objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Workspaces) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Workspaces) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Workspaces) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Workspaces) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Workspaces) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Workspaces) Item* (Index: CtlT.Any): Workspace, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisWorkspace(CtlC.VarAny(ret))
    END Item;


    (* ---------- _TableDef: A saved table definition., dual, nonextensible ---------- *)

    PROCEDURE (this: _TableDef) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _TableDef) Attributes* (): INTEGER, NEW;
        (* Sets or returns a value indicating characteristics of an object. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809344)
    END Attributes;

    PROCEDURE (this: _TableDef) PUTAttributes* (p1: INTEGER), NEW;
        (* Sets or returns a value indicating characteristics of an object. *)
    BEGIN
        CtlC.PutInt(this, 1610809344, p1)
    END PUTAttributes;

    PROCEDURE (this: _TableDef) Connect* (): CtlT.Strg, NEW;
        (* Sets or returns a value providing information about a data source for a TableDef *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Connect;

    PROCEDURE (this: _TableDef) PUTConnect* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value providing information about a data source for a TableDef *)
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTConnect;

    PROCEDURE (this: _TableDef) DateCreated* (): CtlT.Any, NEW;
        (* Returns the date and time when the table was created. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809348)
    END DateCreated;

    PROCEDURE (this: _TableDef) LastUpdated* (): CtlT.Any, NEW;
        (* Returns the date and time of the most recent change to an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809349)
    END LastUpdated;

    PROCEDURE (this: _TableDef) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809350)
    END Name;

    PROCEDURE (this: _TableDef) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809350, p1)
    END PUTName;

    PROCEDURE (this: _TableDef) SourceTableName* (): CtlT.Strg, NEW;
        (* Sets or returns the name of a linked table's original source table. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809352)
    END SourceTableName;

    PROCEDURE (this: _TableDef) PUTSourceTableName* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the name of a linked table's original source table. *)
    BEGIN
        CtlC.PutStr(this, 1610809352, p1)
    END PUTSourceTableName;

    PROCEDURE (this: _TableDef) Updatable* (): BOOLEAN, NEW;
        (* Returns whether the definition of the table can be changed. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809354)
    END Updatable;

    PROCEDURE (this: _TableDef) ValidationText* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809355)
    END ValidationText;

    PROCEDURE (this: _TableDef) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        CtlC.PutStr(this, 1610809355, p1)
    END PUTValidationText;

    PROCEDURE (this: _TableDef) ValidationRule* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809357)
    END ValidationRule;

    PROCEDURE (this: _TableDef) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        CtlC.PutStr(this, 1610809357, p1)
    END PUTValidationRule;

    PROCEDURE (this: _TableDef) RecordCount* (): INTEGER, NEW;
        (* Returns the number of records in the Recordset. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809359)
    END RecordCount;

    PROCEDURE (this: _TableDef) Fields* (): Fields, NEW;
        (* Collection of Field objects in a TableDef object. *)
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: _TableDef) Indexes* (): Indexes, NEW;
        (* Collection of Index objects associated with a TableDef object. *)
    BEGIN
        RETURN ThisIndexes(CtlC.GetAny(this, 1610809361))
    END Indexes;

    PROCEDURE (this: _TableDef) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809362, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: _TableDef) RefreshLink* (), NEW;
        (* Updates the connection information for a linked table. *)
    BEGIN
        CtlC.CallMethod(this, 1610809363, NIL);
    END RefreshLink;

    PROCEDURE (this: _TableDef) CreateField* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Size: CtlT.Any): Field, NEW;
        (* Creates a new Field object. *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Size, arg[0]);
        CtlC.CallParMethod(this, 1610809364, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END CreateField;

    PROCEDURE (this: _TableDef) CreateIndex* ((* optional *) Name: CtlT.Any): Index, NEW;
        (* Creates a new Index object. *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, ret);
        RETURN This_Index(CtlC.VarAny(ret))
    END CreateIndex;

    PROCEDURE (this: _TableDef) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        (* Creates a new user-defined Property object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809366, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;

    PROCEDURE (this: _TableDef) ConflictTable* (): CtlT.Strg, NEW;
        (* Returns the table name that contains conflicts that occurred during synchronizat *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809367)
    END ConflictTable;

    PROCEDURE (this: _TableDef) ReplicaFilter* (): CtlT.Any, NEW;
        (* Indicates which records to include in a partial replica *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809368)
    END ReplicaFilter;

    PROCEDURE (this: _TableDef) PUTReplicaFilter* (p1: CtlT.Any), NEW;
        (* Indicates which records to include in a partial replica *)
    BEGIN
        CtlC.PutAny(this, 1610809368, p1)
    END PUTReplicaFilter;


    (* ---------- TableDefs: Collection of TableDef objects., dual, nonextensible ---------- *)

    PROCEDURE (this: TableDefs) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: TableDefs) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: TableDefs) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: TableDefs) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: TableDefs) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: TableDefs) Item* (Index: CtlT.Any): TableDef, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_TableDef(CtlC.VarAny(ret))
    END Item;


    (* ---------- Database: An open database., dual, nonextensible ---------- *)

    PROCEDURE (this: Database) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Database) CollatingOrder* (): INTEGER, NEW;
        (* Returns the sort order for sorting and comparisons. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809344)
    END CollatingOrder;

    PROCEDURE (this: Database) Connect* (): CtlT.Strg, NEW;
        (* Sets or returns a value providing information about a data source. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Connect;

    PROCEDURE (this: Database) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Name;

    PROCEDURE (this: Database) QueryTimeout* (): SHORTINT, NEW;
        (* Sets or returns the number of seconds before a timeout occurs when executing a q *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809347)
    END QueryTimeout;

    PROCEDURE (this: Database) PUTQueryTimeout* (p1: SHORTINT), NEW;
        (* Sets or returns the number of seconds before a timeout occurs when executing a q *)
    BEGIN
        CtlC.PutSInt(this, 1610809347, p1)
    END PUTQueryTimeout;

    PROCEDURE (this: Database) Transactions* (): BOOLEAN, NEW;
        (* Indicates whether the DAO object supports transactions. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809349)
    END Transactions;

    PROCEDURE (this: Database) Updatable* (): BOOLEAN, NEW;
        (* Returns whether the database can be modified. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809350)
    END Updatable;

    PROCEDURE (this: Database) Version* (): CtlT.Strg, NEW;
        (* Returns the version of the database. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809351)
    END Version;

    PROCEDURE (this: Database) RecordsAffected* (): INTEGER, NEW;
        (* Returns the number of records affected by the last Execute method. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809352)
    END RecordsAffected;

    PROCEDURE (this: Database) TableDefs* (): TableDefs, NEW;
        (* Collection of TableDef objects in a Database object. *)
    BEGIN
        RETURN ThisTableDefs(CtlC.GetAny(this, 0))
    END TableDefs;

    PROCEDURE (this: Database) QueryDefs* (): QueryDefs, NEW;
        (* Collection of QueryDef objects in a Database object. *)
    BEGIN
        RETURN ThisQueryDefs(CtlC.GetAny(this, 1610809354))
    END QueryDefs;

    PROCEDURE (this: Database) Relations* (): Relations, NEW;
        (* Collection of Relation objects in a Database object. *)
    BEGIN
        RETURN ThisRelations(CtlC.GetAny(this, 1610809355))
    END Relations;

    PROCEDURE (this: Database) Containers* (): Containers, NEW;
        (* Collection of Container objects defined in a Database object. *)
    BEGIN
        RETURN ThisContainers(CtlC.GetAny(this, 1610809356))
    END Containers;

    PROCEDURE (this: Database) Recordsets* (): Recordsets, NEW;
        (* Collection of Recordset objects open in a Database object. *)
    BEGIN
        RETURN ThisRecordsets(CtlC.GetAny(this, 1610809357))
    END Recordsets;

    PROCEDURE (this: Database) Close* (), NEW;
        (* Closes an open DAO object. *)
    BEGIN
        CtlC.CallMethod(this, 1610809358, NIL);
    END Close;

    PROCEDURE (this: Database) Execute* (Query: ARRAY OF CHAR; (* optional *) Options: CtlT.Any), NEW;
        (* Executes a query. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Query, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809359, arg, NIL);
    END Execute;

    PROCEDURE (this: Database) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        (* Creates a new user-defined Property object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809361, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;

    PROCEDURE (this: Database) CreateRelation* ((* optional *) Name: CtlT.Any; Table: CtlT.Any; ForeignTable: CtlT.Any; Attributes: CtlT.Any): Relation, NEW;
        (* Creates a new Relation object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Table, arg[2]);
        CtlC.AnyVar(ForeignTable, arg[1]);
        CtlC.AnyVar(Attributes, arg[0]);
        CtlC.CallParMethod(this, 1610809362, arg, ret);
        RETURN This_Relation(CtlC.VarAny(ret))
    END CreateRelation;

    PROCEDURE (this: Database) CreateTableDef* ((* optional *) Name: CtlT.Any; Attributes: CtlT.Any; SourceTableName: CtlT.Any; Connect: CtlT.Any): TableDef, NEW;
        (* Creates a new TableDef object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Attributes, arg[2]);
        CtlC.AnyVar(SourceTableName, arg[1]);
        CtlC.AnyVar(Connect, arg[0]);
        CtlC.CallParMethod(this, 1610809363, arg, ret);
        RETURN This_TableDef(CtlC.VarAny(ret))
    END CreateTableDef;

    PROCEDURE (this: Database) BeginTrans* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809364, NIL);
    END BeginTrans;

    PROCEDURE (this: Database) CommitTrans* (Options: INTEGER), NEW;
        (* (Obsolete) End the transaction and save the changes *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, NIL);
    END CommitTrans;

    PROCEDURE (this: Database) Rollback* (), NEW;
        (* (Obsolete) Undo any changes since the last BeginTrans *)
    BEGIN
        CtlC.CallMethod(this, 1610809366, NIL);
    END Rollback;

    PROCEDURE (this: Database) CreateDynaset* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; Inconsistent: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a Dynaset object *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[2]);
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(Inconsistent, arg[0]);
        CtlC.CallParMethod(this, 1610809367, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateDynaset;

    PROCEDURE (this: Database) CreateQueryDef* ((* optional *) Name: CtlT.Any; SQLText: CtlT.Any): QueryDef, NEW;
        (* Creates a new QueryDef object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(SQLText, arg[0]);
        CtlC.CallParMethod(this, 1610809368, arg, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CreateQueryDef;

    PROCEDURE (this: Database) CreateSnapshot* (Source: ARRAY OF CHAR; (* optional *) Options: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a snapshot from the specified source *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Source, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809369, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateSnapshot;

    PROCEDURE (this: Database) DeleteQueryDef* (Name: ARRAY OF CHAR), NEW;
        (* (Obsolete) Deletes the QueryDef object from the database *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809370, arg, NIL);
    END DeleteQueryDef;

    PROCEDURE (this: Database) ExecuteSQL* (SQL: ARRAY OF CHAR): INTEGER, NEW;
        (* (Obsolete) Execute an SQL statement *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(SQL, arg[0]);
        CtlC.CallParMethod(this, 1610809371, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ExecuteSQL;

    PROCEDURE (this: Database) ListFields* (Name: ARRAY OF CHAR): Recordset, NEW;
        (* (Obsolete) Creates a snapshot with one record for each field *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809372, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListFields;

    PROCEDURE (this: Database) ListTables* (): Recordset, NEW;
        (* (Obsolete) Creates a snapshot of Table and QueryDef objects *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610809373, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListTables;

    PROCEDURE (this: Database) OpenQueryDef* (Name: ARRAY OF CHAR): QueryDef, NEW;
        (* (Obsolete) Opens a querydef object for editing *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809374, arg, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END OpenQueryDef;

    PROCEDURE (this: Database) OpenTable* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a table object *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809375, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenTable;

    PROCEDURE (this: Database) ReplicaID* (): CtlT.Strg, NEW;
        (* Returns a unique identifier for a replica. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809376)
    END ReplicaID;

    PROCEDURE (this: Database) DesignMasterID* (): CtlT.Strg, NEW;
        (* Returns a unique identifier for a Design Master. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809377)
    END DesignMasterID;

    PROCEDURE (this: Database) PUTDesignMasterID* (p1: ARRAY OF CHAR), NEW;
        (* Returns a unique identifier for a Design Master. *)
    BEGIN
        CtlC.PutStr(this, 1610809377, p1)
    END PUTDesignMasterID;

    PROCEDURE (this: Database) Synchronize* (DbPathName: ARRAY OF CHAR; (* optional *) ExchangeType: CtlT.Any), NEW;
        (* Synchronizes two replicas. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(DbPathName, arg[1]);
        CtlC.AnyVar(ExchangeType, arg[0]);
        CtlC.CallParMethod(this, 1610809379, arg, NIL);
    END Synchronize;

    PROCEDURE (this: Database) MakeReplica* (PathName: ARRAY OF CHAR; Description: ARRAY OF CHAR; (* optional *) Options: CtlT.Any), NEW;
        (* Makes a new replica based on the current replica. *)
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PathName, arg[2]);
        CtlC.StrVar(Description, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809380, arg, NIL);
    END MakeReplica;

    PROCEDURE (this: Database) PUTConnect* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value providing information about a data source. *)
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTConnect;

    PROCEDURE (this: Database) NewPassword* (bstrOld: ARRAY OF CHAR; bstrNew: ARRAY OF CHAR), NEW;
        (* Changes the password of an existing database. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrOld, arg[1]);
        CtlC.StrVar(bstrNew, arg[0]);
        CtlC.CallParMethod(this, 1610809382, arg, NIL);
    END NewPassword;

    PROCEDURE (this: Database) OpenRecordset* (Name: ARRAY OF CHAR; (* optional *) Type: CtlT.Any; Options: CtlT.Any; LockEdit: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(LockEdit, arg[0]);
        CtlC.CallParMethod(this, 1610809383, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: Database) Connection* (): Connection, NEW;
        (* An open ODBCDirect connection *)
    BEGIN
        RETURN ThisConnection(CtlC.GetAny(this, 1610809384))
    END Connection;

    PROCEDURE (this: Database) PopulatePartial* (DbPathName: ARRAY OF CHAR), NEW;
        (* Synchronizes a partial replica *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(DbPathName, arg[0]);
        CtlC.CallParMethod(this, 1610809385, arg, NIL);
    END PopulatePartial;


    (* ---------- Databases: Collection of Database objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Databases) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Databases) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Databases) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Databases) Item* (Index: CtlT.Any): Database, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END Item;


    (* ---------- _QueryDef: A saved query definition., dual, nonextensible ---------- *)

    PROCEDURE (this: _QueryDef) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _QueryDef) DateCreated* (): CtlT.Any, NEW;
        (* Returns the date and time when the Querydef was created. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809344)
    END DateCreated;

    PROCEDURE (this: _QueryDef) LastUpdated* (): CtlT.Any, NEW;
        (* Returns the date and time of the most recent change to an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809345)
    END LastUpdated;

    PROCEDURE (this: _QueryDef) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Name;

    PROCEDURE (this: _QueryDef) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTName;

    PROCEDURE (this: _QueryDef) ODBCTimeout* (): SHORTINT, NEW;
        (* Sets or returns the number of seconds before a timeout occurs on an ODBC databas *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809348)
    END ODBCTimeout;

    PROCEDURE (this: _QueryDef) PUTODBCTimeout* (p1: SHORTINT), NEW;
        (* Sets or returns the number of seconds before a timeout occurs on an ODBC databas *)
    BEGIN
        CtlC.PutSInt(this, 1610809348, p1)
    END PUTODBCTimeout;

    PROCEDURE (this: _QueryDef) Type* (): SHORTINT, NEW;
        (* Sets or returns  the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809350)
    END Type;

    PROCEDURE (this: _QueryDef) SQL* (): CtlT.Strg, NEW;
        (* Sets or returns the SQL statement that defines the query. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809351)
    END SQL;

    PROCEDURE (this: _QueryDef) PUTSQL* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the SQL statement that defines the query. *)
    BEGIN
        CtlC.PutStr(this, 1610809351, p1)
    END PUTSQL;

    PROCEDURE (this: _QueryDef) Updatable* (): BOOLEAN, NEW;
        (* Returns whether the query definition can be changed. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809353)
    END Updatable;

    PROCEDURE (this: _QueryDef) Connect* (): CtlT.Strg, NEW;
        (* Sets or returns a value providing information about a data source for a QueryDef *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809354)
    END Connect;

    PROCEDURE (this: _QueryDef) PUTConnect* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value providing information about a data source for a QueryDef *)
    BEGIN
        CtlC.PutStr(this, 1610809354, p1)
    END PUTConnect;

    PROCEDURE (this: _QueryDef) ReturnsRecords* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether an SQL pass-through returns records. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809356)
    END ReturnsRecords;

    PROCEDURE (this: _QueryDef) PUTReturnsRecords* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether an SQL pass-through returns records. *)
    BEGIN
        CtlC.PutBool(this, 1610809356, p1)
    END PUTReturnsRecords;

    PROCEDURE (this: _QueryDef) RecordsAffected* (): INTEGER, NEW;
        (* Returns the number of records affected by the last Execute method. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809358)
    END RecordsAffected;

    PROCEDURE (this: _QueryDef) Fields* (): Fields, NEW;
        (* Collection of Field objects in a QueryDef object. *)
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 1610809359))
    END Fields;

    PROCEDURE (this: _QueryDef) Parameters* (): Parameters, NEW;
        (* Collection of Parameter objects available for a QueryDef object. *)
    BEGIN
        RETURN ThisParameters(CtlC.GetAny(this, 0))
    END Parameters;

    PROCEDURE (this: _QueryDef) Close* (), NEW;
        (* Closes an open DAO object. *)
    BEGIN
        CtlC.CallMethod(this, 1610809361, NIL);
    END Close;

    PROCEDURE (this: _QueryDef) Execute* ((* optional *) Options: CtlT.Any), NEW;
        (* Executes an action query. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, NIL);
    END Execute;

    PROCEDURE (this: _QueryDef) CreateDynaset* ((* optional *) Options: CtlT.Any; Inconsistent: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a Dynaset object *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(Inconsistent, arg[0]);
        CtlC.CallParMethod(this, 1610809367, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateDynaset;

    PROCEDURE (this: _QueryDef) CreateSnapshot* ((* optional *) Options: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a snapshot from the specified source *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809368, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateSnapshot;

    PROCEDURE (this: _QueryDef) ListParameters* (): Recordset, NEW;
        (* (Obsolete) Lists the parameters for the querydef *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610809369, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListParameters;

    PROCEDURE (this: _QueryDef) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        (* Creates a new user-defined Property object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809370, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;

    PROCEDURE (this: _QueryDef) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any; LockEdit: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object. *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(LockEdit, arg[0]);
        CtlC.CallParMethod(this, 1610809371, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: _QueryDef) Cancel* (), NEW;
        (* Cancels execution of an asynchronous OpenRecordset method. *)
    BEGIN
        CtlC.CallMethod(this, 1610809373, NIL);
    END Cancel;

    PROCEDURE (this: _QueryDef) hStmt* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809374)
    END hStmt;

    PROCEDURE (this: _QueryDef) MaxRecords* (): INTEGER, NEW;
        (* Indicates the maximum number of records to return from a query *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809375)
    END MaxRecords;

    PROCEDURE (this: _QueryDef) PUTMaxRecords* (p1: INTEGER), NEW;
        (* Indicates the maximum number of records to return from a query *)
    BEGIN
        CtlC.PutInt(this, 1610809375, p1)
    END PUTMaxRecords;

    PROCEDURE (this: _QueryDef) StillExecuting* (): BOOLEAN, NEW;
        (* Indicates whether an asynchronous method call is still executing *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809377)
    END StillExecuting;

    PROCEDURE (this: _QueryDef) CacheSize* (): INTEGER, NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809378)
    END CacheSize;

    PROCEDURE (this: _QueryDef) PUTCacheSize* (p1: INTEGER), NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        CtlC.PutInt(this, 1610809378, p1)
    END PUTCacheSize;

    PROCEDURE (this: _QueryDef) Prepare* (): CtlT.Any, NEW;
        (* Indicates whether to prepare a temporary stored procedure from the query *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809380)
    END Prepare;

    PROCEDURE (this: _QueryDef) PUTPrepare* (p1: CtlT.Any), NEW;
        (* Indicates whether to prepare a temporary stored procedure from the query *)
    BEGIN
        CtlC.PutAny(this, 1610809380, p1)
    END PUTPrepare;


    (* ---------- QueryDefs: Collection of QueryDef objects., dual, nonextensible ---------- *)

    PROCEDURE (this: QueryDefs) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: QueryDefs) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: QueryDefs) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: QueryDefs) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: QueryDefs) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: QueryDefs) Item* (Index: CtlT.Any): QueryDef, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END Item;


    (* ---------- Recordset: A representation of the records in a base table or the records that result from , dual ---------- *)

    PROCEDURE (this: Recordset) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Recordset) BOF* (): BOOLEAN, NEW;
        (* Indicates whether the current record position is before the first record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 101)
    END BOF;

    PROCEDURE (this: Recordset) Bookmark* (): CtlT.Any, NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        RETURN CtlC.GetAny(this, 102)
    END Bookmark;

    PROCEDURE (this: Recordset) PUTBookmark* (p1: CtlT.Any), NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        CtlC.PutAny(this, 102, p1)
    END PUTBookmark;

    PROCEDURE (this: Recordset) Bookmarkable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset supports bookmarks. *)
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Bookmarkable;

    PROCEDURE (this: Recordset) DateCreated* (): CtlT.Any, NEW;
        (* Returns the date and time when the underlying base table was created. *)
    BEGIN
        RETURN CtlC.GetAny(this, 104)
    END DateCreated;

    PROCEDURE (this: Recordset) EOF* (): BOOLEAN, NEW;
        (* Indicates whether the the current record position is after the last record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 105)
    END EOF;

    PROCEDURE (this: Recordset) Filter* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END Filter;

    PROCEDURE (this: Recordset) PUTFilter* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTFilter;

    PROCEDURE (this: Recordset) Index* (): CtlT.Strg, NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        RETURN CtlC.GetStr(this, 107)
    END Index;

    PROCEDURE (this: Recordset) PUTIndex* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        CtlC.PutStr(this, 107, p1)
    END PUTIndex;

    PROCEDURE (this: Recordset) LastModified* (): CtlT.Any, NEW;
        (* Returns a bookmark indicating the most recently added or changed record. *)
    BEGIN
        RETURN CtlC.GetAny(this, 108)
    END LastModified;

    PROCEDURE (this: Recordset) LastUpdated* (): CtlT.Any, NEW;
        (* Returns the date and time of the most recent change to an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 109)
    END LastUpdated;

    PROCEDURE (this: Recordset) LockEdits* (): BOOLEAN, NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        RETURN CtlC.GetBool(this, 110)
    END LockEdits;

    PROCEDURE (this: Recordset) PUTLockEdits* (p1: BOOLEAN), NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        CtlC.PutBool(this, 110, p1)
    END PUTLockEdits;

    PROCEDURE (this: Recordset) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END Name;

    PROCEDURE (this: Recordset) NoMatch* (): BOOLEAN, NEW;
        (* Indicates whether a record was found with the Seek or Find methods. *)
    BEGIN
        RETURN CtlC.GetBool(this, 112)
    END NoMatch;

    PROCEDURE (this: Recordset) Sort* (): CtlT.Strg, NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END Sort;

    PROCEDURE (this: Recordset) PUTSort* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTSort;

    PROCEDURE (this: Recordset) Transactions* (): BOOLEAN, NEW;
        (* Indicates whether the Recordset object supports transactions. *)
    BEGIN
        RETURN CtlC.GetBool(this, 114)
    END Transactions;

    PROCEDURE (this: Recordset) Type* (): SHORTINT, NEW;
        (* Returns the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 115)
    END Type;

    PROCEDURE (this: Recordset) RecordCount* (): INTEGER, NEW;
        (* Returns the number of records accessed in a Recordset. *)
    BEGIN
        RETURN CtlC.GetInt(this, 116)
    END RecordCount;

    PROCEDURE (this: Recordset) Updatable* (): BOOLEAN, NEW;
        (* Returns whether records in the Recordset can be updated. *)
    BEGIN
        RETURN CtlC.GetBool(this, 117)
    END Updatable;

    PROCEDURE (this: Recordset) Restartable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset object supports the Requery method. *)
    BEGIN
        RETURN CtlC.GetBool(this, 118)
    END Restartable;

    PROCEDURE (this: Recordset) ValidationText* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        RETURN CtlC.GetStr(this, 119)
    END ValidationText;

    PROCEDURE (this: Recordset) ValidationRule* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        RETURN CtlC.GetStr(this, 120)
    END ValidationRule;

    PROCEDURE (this: Recordset) CacheStart* (): CtlT.Any, NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        RETURN CtlC.GetAny(this, 121)
    END CacheStart;

    PROCEDURE (this: Recordset) PUTCacheStart* (p1: CtlT.Any), NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        CtlC.PutAny(this, 121, p1)
    END PUTCacheStart;

    PROCEDURE (this: Recordset) CacheSize* (): INTEGER, NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        RETURN CtlC.GetInt(this, 122)
    END CacheSize;

    PROCEDURE (this: Recordset) PUTCacheSize* (p1: INTEGER), NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        CtlC.PutInt(this, 122, p1)
    END PUTCacheSize;

    PROCEDURE (this: Recordset) PercentPosition* (): SHORTREAL, NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        RETURN CtlC.GetSReal(this, 123)
    END PercentPosition;

    PROCEDURE (this: Recordset) PUTPercentPosition* (p1: SHORTREAL), NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        CtlC.PutSReal(this, 123, p1)
    END PUTPercentPosition;

    PROCEDURE (this: Recordset) AbsolutePosition* (): INTEGER, NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END AbsolutePosition;

    PROCEDURE (this: Recordset) PUTAbsolutePosition* (p1: INTEGER), NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        CtlC.PutInt(this, 124, p1)
    END PUTAbsolutePosition;

    PROCEDURE (this: Recordset) EditMode* (): SHORTINT, NEW;
        (* Returns the state of editing for the current record. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 125)
    END EditMode;

    PROCEDURE (this: Recordset) ODBCFetchCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 126)
    END ODBCFetchCount;

    PROCEDURE (this: Recordset) ODBCFetchDelay* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END ODBCFetchDelay;

    PROCEDURE (this: Recordset) Parent* (): Database, NEW;
    BEGIN
        RETURN ThisDatabase(CtlC.GetAny(this, 128))
    END Parent;

    PROCEDURE (this: Recordset) Fields* (): Fields, NEW;
        (* Collection of Field objects in a Recordset object. *)
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: Recordset) Indexes* (): Indexes, NEW;
    BEGIN
        RETURN ThisIndexes(CtlC.GetAny(this, 130))
    END Indexes;

    PROCEDURE (this: Recordset) AddNew* (), NEW;
        (* Creates a new record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 132, NIL);
    END AddNew;

    PROCEDURE (this: Recordset) Close* (), NEW;
        (* Closes an open DAO object. *)
    BEGIN
        CtlC.CallMethod(this, 133, NIL);
    END Close;

    PROCEDURE (this: Recordset) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 134, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: Recordset) Delete* (), NEW;
        (* Deletes a record from a Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 135, NIL);
    END Delete;

    PROCEDURE (this: Recordset) Edit* (), NEW;
        (* Prepares a row of a Recordset for editing. *)
    BEGIN
        CtlC.CallMethod(this, 136, NIL);
    END Edit;

    PROCEDURE (this: Recordset) FindFirst* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the first record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 137, arg, NIL);
    END FindFirst;

    PROCEDURE (this: Recordset) FindLast* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the last record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 138, arg, NIL);
    END FindLast;

    PROCEDURE (this: Recordset) FindNext* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the next record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 139, arg, NIL);
    END FindNext;

    PROCEDURE (this: Recordset) FindPrevious* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the previous record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 140, arg, NIL);
    END FindPrevious;

    PROCEDURE (this: Recordset) MoveFirst* (), NEW;
        (* Moves to the first record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 141, NIL);
    END MoveFirst;

    PROCEDURE (this: Recordset) MoveNext* (), NEW;
        (* Moves to the next record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 143, NIL);
    END MoveNext;

    PROCEDURE (this: Recordset) MovePrevious* (), NEW;
        (* Moves to the previous record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 144, NIL);
    END MovePrevious;

    PROCEDURE (this: Recordset) Seek* (Comparison: ARRAY OF CHAR; Key1: CtlT.Any; (* optional *) Key2: CtlT.Any; Key3: CtlT.Any; Key4: CtlT.Any; Key5: CtlT.Any; Key6: CtlT.Any; Key7: CtlT.Any; Key8: CtlT.Any; Key9: CtlT.Any; Key10: CtlT.Any; Key11: CtlT.Any; Key12: CtlT.Any; Key13: CtlT.Any), NEW;
        (* Locates a record in a table-type Recordset. *)
        VAR arg: ARRAY 14 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Comparison, arg[13]);
        CtlC.AnyVar(Key1, arg[12]);
        CtlC.AnyVar(Key2, arg[11]);
        CtlC.AnyVar(Key3, arg[10]);
        CtlC.AnyVar(Key4, arg[9]);
        CtlC.AnyVar(Key5, arg[8]);
        CtlC.AnyVar(Key6, arg[7]);
        CtlC.AnyVar(Key7, arg[6]);
        CtlC.AnyVar(Key8, arg[5]);
        CtlC.AnyVar(Key9, arg[4]);
        CtlC.AnyVar(Key10, arg[3]);
        CtlC.AnyVar(Key11, arg[2]);
        CtlC.AnyVar(Key12, arg[1]);
        CtlC.AnyVar(Key13, arg[0]);
        CtlC.CallParMethod(this, 145, arg, NIL);
    END Seek;

    PROCEDURE (this: Recordset) Clone* (): Recordset, NEW;
        (* Creates a duplicate Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 147, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END Clone;

    PROCEDURE (this: Recordset) Requery* ((* optional *) NewQueryDef: CtlT.Any), NEW;
        (* Re-executes the query the Recordset is based on. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NewQueryDef, arg[0]);
        CtlC.CallParMethod(this, 148, arg, NIL);
    END Requery;

    PROCEDURE (this: Recordset) Move* (Rows: INTEGER; (* optional *) StartBookmark: CtlT.Any), NEW;
        (* Moves the position of the current record in a Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 149, arg, NIL);
    END Move;

    PROCEDURE (this: Recordset) FillCache* ((* optional *) Rows: CtlT.Any; StartBookmark: CtlT.Any), NEW;
        (* Fills the cache for an ODBC-derived Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 150, arg, NIL);
    END FillCache;

    PROCEDURE (this: Recordset) CreateDynaset* ((* optional *) Options: CtlT.Any; Inconsistent: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a Dynaset object *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(Inconsistent, arg[0]);
        CtlC.CallParMethod(this, 151, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateDynaset;

    PROCEDURE (this: Recordset) CreateSnapshot* ((* optional *) Options: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 152, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateSnapshot;

    PROCEDURE (this: Recordset) CopyQueryDef* (): QueryDef, NEW;
        (* Returns a copy of the QueryDef that created the Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 153, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CopyQueryDef;

    PROCEDURE (this: Recordset) ListFields* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 154, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListFields;

    PROCEDURE (this: Recordset) ListIndexes* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 155, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListIndexes;

    PROCEDURE (this: Recordset) GetRows* ((* optional *) NumRows: CtlT.Any): CtlT.Any, NEW;
        (* Retrieves multiple records of a Recordset into an array. *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NumRows, arg[0]);
        CtlC.CallParMethod(this, 156, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetRows;

    PROCEDURE (this: Recordset) Collect* (Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, -8, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Collect;

    PROCEDURE (this: Recordset) PUTCollect* (Index: CtlT.Any; p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -8, arg, NIL);
    END PUTCollect;

    PROCEDURE (this: Recordset) Cancel* (), NEW;
        (* Cancels execution of an asynchronous Execute, OpenRecordset, or OpenConnection m *)
    BEGIN
        CtlC.CallMethod(this, 157, NIL);
    END Cancel;

    PROCEDURE (this: Recordset) NextRecordset* (): BOOLEAN, NEW;
        (* Fetches next recordset in a mutli-query Recordset *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 158, ret);
        RETURN CtlC.VarBool(ret)
    END NextRecordset;

    PROCEDURE (this: Recordset) hStmt* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 159)
    END hStmt;

    PROCEDURE (this: Recordset) StillExecuting* (): BOOLEAN, NEW;
        (* Indicates whether an asynchronous method call is still executing *)
    BEGIN
        RETURN CtlC.GetBool(this, 160)
    END StillExecuting;

    PROCEDURE (this: Recordset) BatchSize* (): INTEGER, NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END BatchSize;

    PROCEDURE (this: Recordset) PUTBatchSize* (p1: INTEGER), NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTBatchSize;

    PROCEDURE (this: Recordset) BatchCollisionCount* (): INTEGER, NEW;
        (* Indicates how many rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END BatchCollisionCount;

    PROCEDURE (this: Recordset) BatchCollisions* (): CtlT.Any, NEW;
        (* Indicates which rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetAny(this, 163)
    END BatchCollisions;

    PROCEDURE (this: Recordset) Connection* (): Connection, NEW;
        (* Indicates which Connection owns the Recordset *)
    BEGIN
        RETURN ThisConnection(CtlC.GetAny(this, 164))
    END Connection;

    PROCEDURE (this: Recordset) PUTREFConnection* (p1: Connection), NEW;
        (* Indicates which Connection owns the Recordset *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 164, arg, NIL);
    END PUTREFConnection;

    PROCEDURE (this: Recordset) RecordStatus* (): SHORTINT, NEW;
        (* Indicating the batch-update status of the current record *)
    BEGIN
        RETURN CtlC.GetSInt(this, 165)
    END RecordStatus;

    PROCEDURE (this: Recordset) UpdateOptions* (): INTEGER, NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        RETURN CtlC.GetInt(this, 166)
    END UpdateOptions;

    PROCEDURE (this: Recordset) PUTUpdateOptions* (p1: INTEGER), NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        CtlC.PutInt(this, 166, p1)
    END PUTUpdateOptions;

    PROCEDURE (this: Recordset) CancelUpdate* (UpdateType: INTEGER), NEW;
        (* Cancels any pending Update statements. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[0]);
        CtlC.CallParMethod(this, 167, arg, NIL);
    END CancelUpdate;

    PROCEDURE (this: Recordset) Update* (UpdateType: INTEGER; Force: BOOLEAN), NEW;
        (* Saves changes made with the Edit or AddNew methods. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[1]);
        CtlC.BoolVar(Force, arg[0]);
        CtlC.CallParMethod(this, 168, arg, NIL);
    END Update;

    PROCEDURE (this: Recordset) MoveLast* (Options: INTEGER), NEW;
        (* Moves to the last record in the Recordset. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 169, arg, NIL);
    END MoveLast;


    (* ---------- Recordsets: Collection of Recordset objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Recordsets) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Recordsets) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Recordsets) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Recordsets) Item* (Index: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Field: A column that is part of a TableDef, QueryDef, Index, Relation, or Recordset., dual, nonextensible ---------- *)

    PROCEDURE (this: _Field) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Field) CollatingOrder* (): INTEGER, NEW;
        (* Specifies the language used for sorting and comparisons. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809344)
    END CollatingOrder;

    PROCEDURE (this: _Field) Type* (): SHORTINT, NEW;
        (* Sets or returns the data type of the object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809345)
    END Type;

    PROCEDURE (this: _Field) PUTType* (p1: SHORTINT), NEW;
        (* Sets or returns the data type of the object. *)
    BEGIN
        CtlC.PutSInt(this, 1610809345, p1)
    END PUTType;

    PROCEDURE (this: _Field) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END Name;

    PROCEDURE (this: _Field) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTName;

    PROCEDURE (this: _Field) Size* (): INTEGER, NEW;
        (* Sets or returns the maximum size of a field. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END Size;

    PROCEDURE (this: _Field) PUTSize* (p1: INTEGER), NEW;
        (* Sets or returns the maximum size of a field. *)
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTSize;

    PROCEDURE (this: _Field) SourceField* (): CtlT.Strg, NEW;
        (* Returns the name of the original source of data for a Field object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809351)
    END SourceField;

    PROCEDURE (this: _Field) SourceTable* (): CtlT.Strg, NEW;
        (* Returns the name of the original source table. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809352)
    END SourceTable;

    PROCEDURE (this: _Field) Value* (): CtlT.Any, NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _Field) PUTValue* (p1: CtlT.Any), NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _Field) Attributes* (): INTEGER, NEW;
        (* Sets or returns a value indicating characteristics of an object. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809355)
    END Attributes;

    PROCEDURE (this: _Field) PUTAttributes* (p1: INTEGER), NEW;
        (* Sets or returns a value indicating characteristics of an object. *)
    BEGIN
        CtlC.PutInt(this, 1610809355, p1)
    END PUTAttributes;

    PROCEDURE (this: _Field) OrdinalPosition* (): SHORTINT, NEW;
        (* Sets or returns a value indicating the relative position of a Field object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809357)
    END OrdinalPosition;

    PROCEDURE (this: _Field) PUTOrdinalPosition* (p1: SHORTINT), NEW;
        (* Sets or returns a value indicating the relative position of a Field object. *)
    BEGIN
        CtlC.PutSInt(this, 1610809357, p1)
    END PUTOrdinalPosition;

    PROCEDURE (this: _Field) ValidationText* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809359)
    END ValidationText;

    PROCEDURE (this: _Field) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        CtlC.PutStr(this, 1610809359, p1)
    END PUTValidationText;

    PROCEDURE (this: _Field) ValidateOnSet* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether a value is validated immediately. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809361)
    END ValidateOnSet;

    PROCEDURE (this: _Field) PUTValidateOnSet* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether a value is validated immediately. *)
    BEGIN
        CtlC.PutBool(this, 1610809361, p1)
    END PUTValidateOnSet;

    PROCEDURE (this: _Field) ValidationRule* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809363)
    END ValidationRule;

    PROCEDURE (this: _Field) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        CtlC.PutStr(this, 1610809363, p1)
    END PUTValidationRule;

    PROCEDURE (this: _Field) DefaultValue* (): CtlT.Any, NEW;
        (* Sets or returns the default value of a Field object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809365)
    END DefaultValue;

    PROCEDURE (this: _Field) PUTDefaultValue* (p1: CtlT.Any), NEW;
        (* Sets or returns the default value of a Field object. *)
    BEGIN
        CtlC.PutAny(this, 1610809365, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _Field) Required* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether an object requires a non-Null value. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809367)
    END Required;

    PROCEDURE (this: _Field) PUTRequired* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether an object requires a non-Null value. *)
    BEGIN
        CtlC.PutBool(this, 1610809367, p1)
    END PUTRequired;

    PROCEDURE (this: _Field) AllowZeroLength* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether a zero-length string is valid for thi *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809369)
    END AllowZeroLength;

    PROCEDURE (this: _Field) PUTAllowZeroLength* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether a zero-length string is valid for thi *)
    BEGIN
        CtlC.PutBool(this, 1610809369, p1)
    END PUTAllowZeroLength;

    PROCEDURE (this: _Field) DataUpdatable* (): BOOLEAN, NEW;
        (* Indicates whether the data in the field is updatable. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809371)
    END DataUpdatable;

    PROCEDURE (this: _Field) ForeignName* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating the name of a foreign field. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809372)
    END ForeignName;

    PROCEDURE (this: _Field) PUTForeignName* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating the name of a foreign field. *)
    BEGIN
        CtlC.PutStr(this, 1610809372, p1)
    END PUTForeignName;

    PROCEDURE (this: _Field) AppendChunk* (Val: CtlT.Any), NEW;
        (* Appends Long Binary data into a field. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Val, arg[0]);
        CtlC.CallParMethod(this, 1610809374, arg, NIL);
    END AppendChunk;

    PROCEDURE (this: _Field) GetChunk* (Offset: INTEGER; Bytes: INTEGER): CtlT.Any, NEW;
        (* Reads binary data from a field. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Offset, arg[1]);
        CtlC.IntVar(Bytes, arg[0]);
        CtlC.CallParMethod(this, 1610809375, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetChunk;

    PROCEDURE (this: _Field) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        (* Creates a new user-defined Property object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809377, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;

    PROCEDURE (this: _Field) CollectionIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809378)
    END CollectionIndex;

    PROCEDURE (this: _Field) OriginalValue* (): CtlT.Any, NEW;
        (* Returns the value stored in the database server at the start of a batch update *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809379)
    END OriginalValue;

    PROCEDURE (this: _Field) VisibleValue* (): CtlT.Any, NEW;
        (* Returns the value currently stored in the database server *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809380)
    END VisibleValue;

    PROCEDURE (this: _Field) FieldSize* (): INTEGER, NEW;
        (* Indicates the size of a Memo or Long Binary field. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809381)
    END FieldSize;


    (* ---------- Fields: Collection of Field objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Fields) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Fields) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Fields) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Fields) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Fields) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Fields) Item* (Index: CtlT.Any): Field, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Index: The Index object orders values and provides efficient access to a Recordset., dual, nonextensible ---------- *)

    PROCEDURE (this: _Index) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Index) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _Index) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _Index) Foreign* (): BOOLEAN, NEW;
        (* Returns whether an Index object represents a foreign key. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809346)
    END Foreign;

    PROCEDURE (this: _Index) Unique* (): BOOLEAN, NEW;
        (* Returns whether an Index object is a unique index. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809347)
    END Unique;

    PROCEDURE (this: _Index) PUTUnique* (p1: BOOLEAN), NEW;
        (* Returns whether an Index object is a unique index. *)
    BEGIN
        CtlC.PutBool(this, 1610809347, p1)
    END PUTUnique;

    PROCEDURE (this: _Index) Clustered* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether an Index object is clustered. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809349)
    END Clustered;

    PROCEDURE (this: _Index) PUTClustered* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether an Index object is clustered. *)
    BEGIN
        CtlC.PutBool(this, 1610809349, p1)
    END PUTClustered;

    PROCEDURE (this: _Index) Required* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether an object requires a non-Null value. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809351)
    END Required;

    PROCEDURE (this: _Index) PUTRequired* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether an object requires a non-Null value. *)
    BEGIN
        CtlC.PutBool(this, 1610809351, p1)
    END PUTRequired;

    PROCEDURE (this: _Index) IgnoreNulls* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether Null values are stored in the index. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809353)
    END IgnoreNulls;

    PROCEDURE (this: _Index) PUTIgnoreNulls* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether Null values are stored in the index. *)
    BEGIN
        CtlC.PutBool(this, 1610809353, p1)
    END PUTIgnoreNulls;

    PROCEDURE (this: _Index) Primary* (): BOOLEAN, NEW;
        (* Sets or returns a value indicating whether an Index object is a primary index. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809355)
    END Primary;

    PROCEDURE (this: _Index) PUTPrimary* (p1: BOOLEAN), NEW;
        (* Sets or returns a value indicating whether an Index object is a primary index. *)
    BEGIN
        CtlC.PutBool(this, 1610809355, p1)
    END PUTPrimary;

    PROCEDURE (this: _Index) DistinctCount* (): INTEGER, NEW;
        (* Returns the number of unique values in an Index object. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809357)
    END DistinctCount;

    PROCEDURE (this: _Index) Fields* (): CtlT.Any, NEW;
        (* Collection of Field objects in an Index object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809358)
    END Fields;

    PROCEDURE (this: _Index) PUTFields* (p1: CtlT.Any), NEW;
        (* Collection of Field objects in an Index object. *)
    BEGIN
        CtlC.PutAny(this, 1610809358, p1)
    END PUTFields;

    PROCEDURE (this: _Index) CreateField* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Size: CtlT.Any): Field, NEW;
        (* Creates a new Field object. *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Size, arg[0]);
        CtlC.CallParMethod(this, 1610809360, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END CreateField;

    PROCEDURE (this: _Index) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        (* Creates a new user-defined Property object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809361, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;


    (* ---------- Indexes: Collection of Index objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Indexes) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Indexes) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Indexes) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Indexes) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Indexes) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Indexes) Item* (index: CtlT.Any): Index, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Index(CtlC.VarAny(ret))
    END Item;


    (* ---------- IndexFields, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IndexFields) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: IndexFields) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: IndexFields) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: IndexFields) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: IndexFields) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: IndexFields) Item* ((* optional *) Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Item;


    (* ---------- Parameter: A parameter for a parameter query., dual, nonextensible ---------- *)

    PROCEDURE (this: Parameter) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Parameter) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Parameter) Value* (): CtlT.Any, NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: Parameter) PUTValue* (p1: CtlT.Any), NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: Parameter) Type* (): SHORTINT, NEW;
        (* Returns the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809347)
    END Type;

    PROCEDURE (this: Parameter) PUTType* (p1: SHORTINT), NEW;
        (* Returns the data type of an object. *)
    BEGIN
        CtlC.PutSInt(this, 1610809347, p1)
    END PUTType;

    PROCEDURE (this: Parameter) Direction* (): SHORTINT, NEW;
        (* Indicates whether a Parameter is for input, output, or returned values *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809349)
    END Direction;

    PROCEDURE (this: Parameter) PUTDirection* (p1: SHORTINT), NEW;
        (* Indicates whether a Parameter is for input, output, or returned values *)
    BEGIN
        CtlC.PutSInt(this, 1610809349, p1)
    END PUTDirection;


    (* ---------- Parameters: Collection of Parameter objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Parameters) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Parameters) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Parameters) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Parameters) Item* (Index: CtlT.Any): Parameter, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisParameter(CtlC.VarAny(ret))
    END Item;


    (* ---------- _User: A user account., dual, nonextensible ---------- *)

    PROCEDURE (this: _User) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _User) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _User) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _User) PUTPID* (p1: ARRAY OF CHAR), NEW;
        (* Sets the personal identifier (PID) for a group or user account. *)
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTPID;

    PROCEDURE (this: _User) PUTPassword* (p1: ARRAY OF CHAR), NEW;
        (* Sets the password for a user account. *)
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTPassword;

    PROCEDURE (this: _User) Groups* (): Groups, NEW;
        (* Collection of Group objects in a Workspace or User object. *)
    BEGIN
        RETURN ThisGroups(CtlC.GetAny(this, 0))
    END Groups;

    PROCEDURE (this: _User) NewPassword* (bstrOld: ARRAY OF CHAR; bstrNew: ARRAY OF CHAR), NEW;
        (* Changes the password of an existing user account. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrOld, arg[1]);
        CtlC.StrVar(bstrNew, arg[0]);
        CtlC.CallParMethod(this, 1610809349, arg, NIL);
    END NewPassword;

    PROCEDURE (this: _User) CreateGroup* ((* optional *) Name: CtlT.Any; PID: CtlT.Any): Group, NEW;
        (* Creates a new Group object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(PID, arg[0]);
        CtlC.CallParMethod(this, 1610809350, arg, ret);
        RETURN This_Group(CtlC.VarAny(ret))
    END CreateGroup;


    (* ---------- Users: Collection of User objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Users) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Users) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Users) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Users) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Users) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Users) Item* (Index: CtlT.Any): User, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_User(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Group: A group of user accounts., dual, nonextensible ---------- *)

    PROCEDURE (this: _Group) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Group) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _Group) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _Group) PUTPID* (p1: ARRAY OF CHAR), NEW;
        (* Sets the personal identifier (PID) for a group or user account. *)
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTPID;

    PROCEDURE (this: _Group) Users* (): Users, NEW;
        (* Collection of User objects for a Workspace or Group object. *)
    BEGIN
        RETURN ThisUsers(CtlC.GetAny(this, 0))
    END Users;

    PROCEDURE (this: _Group) CreateUser* ((* optional *) Name: CtlT.Any; PID: CtlT.Any; Password: CtlT.Any): User, NEW;
        (* Creates a new User object. *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(PID, arg[1]);
        CtlC.AnyVar(Password, arg[0]);
        CtlC.CallParMethod(this, 1610809348, arg, ret);
        RETURN This_User(CtlC.VarAny(ret))
    END CreateUser;


    (* ---------- Groups: Collection of Group objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Groups) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Groups) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Groups) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Groups) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Groups) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Groups) Item* (Index: CtlT.Any): Group, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Group(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Relation: A relationship between fields in tables and queries., dual, nonextensible ---------- *)

    PROCEDURE (this: _Relation) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Relation) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _Relation) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _Relation) Table* (): CtlT.Strg, NEW;
        (* Sets or returns the name of a primary table. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Table;

    PROCEDURE (this: _Relation) PUTTable* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the name of a primary table. *)
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTTable;

    PROCEDURE (this: _Relation) ForeignTable* (): CtlT.Strg, NEW;
        (* Sets or returns the name of a foreign table. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809348)
    END ForeignTable;

    PROCEDURE (this: _Relation) PUTForeignTable* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the name of a foreign table. *)
    BEGIN
        CtlC.PutStr(this, 1610809348, p1)
    END PUTForeignTable;

    PROCEDURE (this: _Relation) Attributes* (): INTEGER, NEW;
        (* Sets or returns a value indicating characteristics of an object. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809350)
    END Attributes;

    PROCEDURE (this: _Relation) PUTAttributes* (p1: INTEGER), NEW;
        (* Sets or returns a value indicating characteristics of an object. *)
    BEGIN
        CtlC.PutInt(this, 1610809350, p1)
    END PUTAttributes;

    PROCEDURE (this: _Relation) Fields* (): Fields, NEW;
        (* Collection of Field objects in a Relation object. *)
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: _Relation) CreateField* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Size: CtlT.Any): Field, NEW;
        (* Creates a new Field object. *)
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Size, arg[0]);
        CtlC.CallParMethod(this, 1610809353, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END CreateField;

    PROCEDURE (this: _Relation) PartialReplica* (): BOOLEAN, NEW;
        (* Indicates whether a relation provides a partial replica's synchronizing rules *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809354)
    END PartialReplica;

    PROCEDURE (this: _Relation) PUTPartialReplica* (p1: BOOLEAN), NEW;
        (* Indicates whether a relation provides a partial replica's synchronizing rules *)
    BEGIN
        CtlC.PutBool(this, 1610809354, p1)
    END PUTPartialReplica;


    (* ---------- Relations: Collection of Relation objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Relations) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Relations) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Relations) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Relations) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Relations) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Relations) Item* (Index: CtlT.Any): Relation, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Relation(CtlC.VarAny(ret))
    END Item;


    (* ---------- Property: A built-in or user-defined property., dual, nonextensible ---------- *)

    PROCEDURE (this: Property) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Property) Value* (): CtlT.Any, NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: Property) PUTValue* (p1: CtlT.Any), NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: Property) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Name;

    PROCEDURE (this: Property) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTName;

    PROCEDURE (this: Property) Type* (): SHORTINT, NEW;
        (* Returns the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809348)
    END Type;

    PROCEDURE (this: Property) PUTType* (p1: SHORTINT), NEW;
        (* Returns the data type of an object. *)
    BEGIN
        CtlC.PutSInt(this, 1610809348, p1)
    END PUTType;

    PROCEDURE (this: Property) Inherited* (): BOOLEAN, NEW;
        (* Returns whether a property is inherited from an underlying object. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809350)
    END Inherited;


    (* ---------- Properties: Collection of Property objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Properties) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Properties) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Properties) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Properties) Append* (Object: CtlT.Object), NEW;
        (* Appends an object to the collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Properties) Delete* (Name: ARRAY OF CHAR), NEW;
        (* Deletes an object from a collection. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Properties) Item* (Index: CtlT.Any): Property, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END Item;


    (* ---------- Container: Storage for information about a predefined object type., dual, nonextensible ---------- *)

    PROCEDURE (this: Container) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Container) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Container) Owner* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating the owner of the object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Owner;

    PROCEDURE (this: Container) PUTOwner* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating the owner of the object. *)
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTOwner;

    PROCEDURE (this: Container) UserName* (): CtlT.Strg, NEW;
        (* Sets or returns a user or group. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END UserName;

    PROCEDURE (this: Container) PUTUserName* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a user or group. *)
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTUserName;

    PROCEDURE (this: Container) Permissions* (): INTEGER, NEW;
        (* Sets or returns the permissions for a user or group accessing an object. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END Permissions;

    PROCEDURE (this: Container) PUTPermissions* (p1: INTEGER), NEW;
        (* Sets or returns the permissions for a user or group accessing an object. *)
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTPermissions;

    PROCEDURE (this: Container) Inherit* (): BOOLEAN, NEW;
        (* Returns whether new Document objects inherit a default permissions property sett *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809351)
    END Inherit;

    PROCEDURE (this: Container) PUTInherit* (p1: BOOLEAN), NEW;
        (* Returns whether new Document objects inherit a default permissions property sett *)
    BEGIN
        CtlC.PutBool(this, 1610809351, p1)
    END PUTInherit;

    PROCEDURE (this: Container) Documents* (): Documents, NEW;
        (* Collection of Document objects for a specific type of object. *)
    BEGIN
        RETURN ThisDocuments(CtlC.GetAny(this, 0))
    END Documents;

    PROCEDURE (this: Container) AllPermissions* (): INTEGER, NEW;
        (* Returns all the permissions that apply to the current user name. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809354)
    END AllPermissions;


    (* ---------- Containers: Collection of Container objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Containers) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Containers) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Containers) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Containers) Item* (Index: CtlT.Any): Container, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisContainer(CtlC.VarAny(ret))
    END Item;


    (* ---------- Document: Information about a saved, predefined object., dual, nonextensible ---------- *)

    PROCEDURE (this: Document) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Document) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Document) Owner* (): CtlT.Strg, NEW;
        (* Sets or returns a value specifying the owner of the object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Owner;

    PROCEDURE (this: Document) PUTOwner* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value specifying the owner of the object. *)
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTOwner;

    PROCEDURE (this: Document) Container* (): CtlT.Strg, NEW;
        (* Returns the name of the Container object this Document object belongs to. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END Container;

    PROCEDURE (this: Document) UserName* (): CtlT.Strg, NEW;
        (* Sets or returns a user or group. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809348)
    END UserName;

    PROCEDURE (this: Document) PUTUserName* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a user or group. *)
    BEGIN
        CtlC.PutStr(this, 1610809348, p1)
    END PUTUserName;

    PROCEDURE (this: Document) Permissions* (): INTEGER, NEW;
        (* Sets or returns the permissions for a user or group accessing an object. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809350)
    END Permissions;

    PROCEDURE (this: Document) PUTPermissions* (p1: INTEGER), NEW;
        (* Sets or returns the permissions for a user or group accessing an object. *)
    BEGIN
        CtlC.PutInt(this, 1610809350, p1)
    END PUTPermissions;

    PROCEDURE (this: Document) DateCreated* (): CtlT.Any, NEW;
        (* Returns the date and time when the Document was created. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809352)
    END DateCreated;

    PROCEDURE (this: Document) LastUpdated* (): CtlT.Any, NEW;
        (* Returns the date and time of the most recent change to an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 1610809353)
    END LastUpdated;

    PROCEDURE (this: Document) AllPermissions* (): INTEGER, NEW;
        (* Returns all the permissions that apply to the current user name. *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610809354)
    END AllPermissions;

    PROCEDURE (this: Document) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        (* Creates a new user-defined Property object. *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809355, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;


    (* ---------- Documents: Collection of Document objects., dual, nonextensible ---------- *)

    PROCEDURE (this: Documents) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Documents) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Documents) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Documents) Item* (Index: CtlT.Any): Document, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisDocument(CtlC.VarAny(ret))
    END Item;


    (* ---------- Connection: An open ODBCDirect connection., dual, nonextensible ---------- *)

    PROCEDURE (this: Connection) Name* (): CtlT.Strg, NEW;
        (* The name of this object *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610743808)
    END Name;

    PROCEDURE (this: Connection) Connect* (): CtlT.Strg, NEW;
        (* Information saved from the Connect argument of the OpenDatabase *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610743809)
    END Connect;

    PROCEDURE (this: Connection) Database* (): Database, NEW;
        (* Returns a Database reference to this Connection object *)
    BEGIN
        RETURN ThisDatabase(CtlC.GetAny(this, 1610743810))
    END Database;

    PROCEDURE (this: Connection) hDbc* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END hDbc;

    PROCEDURE (this: Connection) QueryTimeout* (): SHORTINT, NEW;
        (* Number of seconds before timeout occurs when executing an ODBC query *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743812)
    END QueryTimeout;

    PROCEDURE (this: Connection) PUTQueryTimeout* (p1: SHORTINT), NEW;
        (* Number of seconds before timeout occurs when executing an ODBC query *)
    BEGIN
        CtlC.PutSInt(this, 1610743812, p1)
    END PUTQueryTimeout;

    PROCEDURE (this: Connection) Transactions* (): BOOLEAN, NEW;
        (* Indicates whether the DAO object supports transactions. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610743814)
    END Transactions;

    PROCEDURE (this: Connection) RecordsAffected* (): INTEGER, NEW;
        (* Number of records affected by the last Execute method *)
    BEGIN
        RETURN CtlC.GetInt(this, 1610743815)
    END RecordsAffected;

    PROCEDURE (this: Connection) StillExecuting* (): BOOLEAN, NEW;
        (* Indicates whether an asynchronous method call is still executing *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610743816)
    END StillExecuting;

    PROCEDURE (this: Connection) Updatable* (): BOOLEAN, NEW;
        (* Indicates whether the connection allows data to be updated *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610743817)
    END Updatable;

    PROCEDURE (this: Connection) QueryDefs* (): QueryDefs, NEW;
        (* Collection of QueryDef objects for this database *)
    BEGIN
        RETURN ThisQueryDefs(CtlC.GetAny(this, 0))
    END QueryDefs;

    PROCEDURE (this: Connection) Recordsets* (): Recordsets, NEW;
        (* Collection of recordset objects open in this connection *)
    BEGIN
        RETURN ThisRecordsets(CtlC.GetAny(this, 1610743819))
    END Recordsets;

    PROCEDURE (this: Connection) Cancel* (), NEW;
        (* Cancels execution of an asynchronous Execute or OpenRecordset method. *)
    BEGIN
        CtlC.CallMethod(this, 1610743820, NIL);
    END Cancel;

    PROCEDURE (this: Connection) Close* (), NEW;
        (* Close the Connection object and everything it contains *)
    BEGIN
        CtlC.CallMethod(this, 1610743821, NIL);
    END Close;

    PROCEDURE (this: Connection) CreateQueryDef* ((* optional *) Name: CtlT.Any; SQLText: CtlT.Any): QueryDef, NEW;
        (* Creates a new QueryDef object *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(SQLText, arg[0]);
        CtlC.CallParMethod(this, 1610743822, arg, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CreateQueryDef;

    PROCEDURE (this: Connection) Execute* (Query: ARRAY OF CHAR; (* optional *) Options: CtlT.Any), NEW;
        (* Execute an SQL statement *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Query, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610743823, arg, NIL);
    END Execute;

    PROCEDURE (this: Connection) OpenRecordset* (Name: ARRAY OF CHAR; (* optional *) Type: CtlT.Any; Options: CtlT.Any; LockEdit: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object *)
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(LockEdit, arg[0]);
        CtlC.CallParMethod(this, 1610743824, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;


    (* ---------- Connections: Collection of Connection objects, dual, nonextensible ---------- *)

    PROCEDURE (this: Connections) Count* (): SHORTINT, NEW;
        (* Returns the number of objects in the collection. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Connections) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Connections) Refresh* (), NEW;
        (* Updates the collection to reflect recent changes. *)
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Connections) Item* (Index: CtlT.Any): Connection, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisConnection(CtlC.VarAny(ret))
    END Item;


    (* ---------- Snapshot: (obsolete) Snapshot object - Use Recordset object instead, hidden, dual ---------- *)

    PROCEDURE (this: Snapshot) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Snapshot) BOF* (): BOOLEAN, NEW;
        (* Indicates whether the current record position is before the first record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 101)
    END BOF;

    PROCEDURE (this: Snapshot) Bookmark* (): CtlT.Any, NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        RETURN CtlC.GetAny(this, 102)
    END Bookmark;

    PROCEDURE (this: Snapshot) PUTBookmark* (p1: CtlT.Any), NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        CtlC.PutAny(this, 102, p1)
    END PUTBookmark;

    PROCEDURE (this: Snapshot) Bookmarkable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset supports bookmarks. *)
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Bookmarkable;

    PROCEDURE (this: Snapshot) DateCreated* (): CtlT.Any, NEW;
        (* Returns the date and time when the underlying base table was created. *)
    BEGIN
        RETURN CtlC.GetAny(this, 104)
    END DateCreated;

    PROCEDURE (this: Snapshot) EOF* (): BOOLEAN, NEW;
        (* Indicates whether the the current record position is after the last record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 105)
    END EOF;

    PROCEDURE (this: Snapshot) Filter* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END Filter;

    PROCEDURE (this: Snapshot) PUTFilter* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTFilter;

    PROCEDURE (this: Snapshot) Index* (): CtlT.Strg, NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        RETURN CtlC.GetStr(this, 107)
    END Index;

    PROCEDURE (this: Snapshot) PUTIndex* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        CtlC.PutStr(this, 107, p1)
    END PUTIndex;

    PROCEDURE (this: Snapshot) LastModified* (): CtlT.Any, NEW;
        (* Returns a bookmark indicating the most recently added or changed record. *)
    BEGIN
        RETURN CtlC.GetAny(this, 108)
    END LastModified;

    PROCEDURE (this: Snapshot) LastUpdated* (): CtlT.Any, NEW;
        (* Returns the date and time of the most recent change to an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 109)
    END LastUpdated;

    PROCEDURE (this: Snapshot) LockEdits* (): BOOLEAN, NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        RETURN CtlC.GetBool(this, 110)
    END LockEdits;

    PROCEDURE (this: Snapshot) PUTLockEdits* (p1: BOOLEAN), NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        CtlC.PutBool(this, 110, p1)
    END PUTLockEdits;

    PROCEDURE (this: Snapshot) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END Name;

    PROCEDURE (this: Snapshot) NoMatch* (): BOOLEAN, NEW;
        (* Indicates whether a record was found with the Seek or Find methods. *)
    BEGIN
        RETURN CtlC.GetBool(this, 112)
    END NoMatch;

    PROCEDURE (this: Snapshot) Sort* (): CtlT.Strg, NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END Sort;

    PROCEDURE (this: Snapshot) PUTSort* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTSort;

    PROCEDURE (this: Snapshot) Transactions* (): BOOLEAN, NEW;
        (* Indicates whether the Recordset object supports transactions. *)
    BEGIN
        RETURN CtlC.GetBool(this, 114)
    END Transactions;

    PROCEDURE (this: Snapshot) Type* (): SHORTINT, NEW;
        (* Returns the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 115)
    END Type;

    PROCEDURE (this: Snapshot) RecordCount* (): INTEGER, NEW;
        (* Returns the number of records accessed in a Recordset. *)
    BEGIN
        RETURN CtlC.GetInt(this, 116)
    END RecordCount;

    PROCEDURE (this: Snapshot) Updatable* (): BOOLEAN, NEW;
        (* Returns whether records in the Recordset can be updated. *)
    BEGIN
        RETURN CtlC.GetBool(this, 117)
    END Updatable;

    PROCEDURE (this: Snapshot) Restartable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset object supports the Requery method. *)
    BEGIN
        RETURN CtlC.GetBool(this, 118)
    END Restartable;

    PROCEDURE (this: Snapshot) ValidationText* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        RETURN CtlC.GetStr(this, 119)
    END ValidationText;

    PROCEDURE (this: Snapshot) ValidationRule* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        RETURN CtlC.GetStr(this, 120)
    END ValidationRule;

    PROCEDURE (this: Snapshot) CacheStart* (): CtlT.Any, NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        RETURN CtlC.GetAny(this, 121)
    END CacheStart;

    PROCEDURE (this: Snapshot) PUTCacheStart* (p1: CtlT.Any), NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        CtlC.PutAny(this, 121, p1)
    END PUTCacheStart;

    PROCEDURE (this: Snapshot) CacheSize* (): INTEGER, NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        RETURN CtlC.GetInt(this, 122)
    END CacheSize;

    PROCEDURE (this: Snapshot) PUTCacheSize* (p1: INTEGER), NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        CtlC.PutInt(this, 122, p1)
    END PUTCacheSize;

    PROCEDURE (this: Snapshot) PercentPosition* (): SHORTREAL, NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        RETURN CtlC.GetSReal(this, 123)
    END PercentPosition;

    PROCEDURE (this: Snapshot) PUTPercentPosition* (p1: SHORTREAL), NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        CtlC.PutSReal(this, 123, p1)
    END PUTPercentPosition;

    PROCEDURE (this: Snapshot) AbsolutePosition* (): INTEGER, NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END AbsolutePosition;

    PROCEDURE (this: Snapshot) PUTAbsolutePosition* (p1: INTEGER), NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        CtlC.PutInt(this, 124, p1)
    END PUTAbsolutePosition;

    PROCEDURE (this: Snapshot) EditMode* (): SHORTINT, NEW;
        (* Returns the state of editing for the current record. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 125)
    END EditMode;

    PROCEDURE (this: Snapshot) ODBCFetchCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 126)
    END ODBCFetchCount;

    PROCEDURE (this: Snapshot) ODBCFetchDelay* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END ODBCFetchDelay;

    PROCEDURE (this: Snapshot) Parent* (): Database, NEW;
    BEGIN
        RETURN ThisDatabase(CtlC.GetAny(this, 128))
    END Parent;

    PROCEDURE (this: Snapshot) Fields* (): Fields, NEW;
        (* Collection of Field objects in a Recordset object. *)
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: Snapshot) Indexes* (): Indexes, NEW;
    BEGIN
        RETURN ThisIndexes(CtlC.GetAny(this, 130))
    END Indexes;

    PROCEDURE (this: Snapshot) AddNew* (), NEW;
        (* Creates a new record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 132, NIL);
    END AddNew;

    PROCEDURE (this: Snapshot) Close* (), NEW;
        (* Closes an open DAO object. *)
    BEGIN
        CtlC.CallMethod(this, 133, NIL);
    END Close;

    PROCEDURE (this: Snapshot) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 134, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: Snapshot) Delete* (), NEW;
        (* Deletes a record from a Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 135, NIL);
    END Delete;

    PROCEDURE (this: Snapshot) Edit* (), NEW;
        (* Prepares a row of a Recordset for editing. *)
    BEGIN
        CtlC.CallMethod(this, 136, NIL);
    END Edit;

    PROCEDURE (this: Snapshot) FindFirst* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the first record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 137, arg, NIL);
    END FindFirst;

    PROCEDURE (this: Snapshot) FindLast* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the last record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 138, arg, NIL);
    END FindLast;

    PROCEDURE (this: Snapshot) FindNext* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the next record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 139, arg, NIL);
    END FindNext;

    PROCEDURE (this: Snapshot) FindPrevious* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the previous record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 140, arg, NIL);
    END FindPrevious;

    PROCEDURE (this: Snapshot) MoveFirst* (), NEW;
        (* Moves to the first record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 141, NIL);
    END MoveFirst;

    PROCEDURE (this: Snapshot) MoveNext* (), NEW;
        (* Moves to the next record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 143, NIL);
    END MoveNext;

    PROCEDURE (this: Snapshot) MovePrevious* (), NEW;
        (* Moves to the previous record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 144, NIL);
    END MovePrevious;

    PROCEDURE (this: Snapshot) Seek* (Comparison: ARRAY OF CHAR; Key1: CtlT.Any; (* optional *) Key2: CtlT.Any; Key3: CtlT.Any; Key4: CtlT.Any; Key5: CtlT.Any; Key6: CtlT.Any; Key7: CtlT.Any; Key8: CtlT.Any; Key9: CtlT.Any; Key10: CtlT.Any; Key11: CtlT.Any; Key12: CtlT.Any; Key13: CtlT.Any), NEW;
        (* Locates a record in a table-type Recordset. *)
        VAR arg: ARRAY 14 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Comparison, arg[13]);
        CtlC.AnyVar(Key1, arg[12]);
        CtlC.AnyVar(Key2, arg[11]);
        CtlC.AnyVar(Key3, arg[10]);
        CtlC.AnyVar(Key4, arg[9]);
        CtlC.AnyVar(Key5, arg[8]);
        CtlC.AnyVar(Key6, arg[7]);
        CtlC.AnyVar(Key7, arg[6]);
        CtlC.AnyVar(Key8, arg[5]);
        CtlC.AnyVar(Key9, arg[4]);
        CtlC.AnyVar(Key10, arg[3]);
        CtlC.AnyVar(Key11, arg[2]);
        CtlC.AnyVar(Key12, arg[1]);
        CtlC.AnyVar(Key13, arg[0]);
        CtlC.CallParMethod(this, 145, arg, NIL);
    END Seek;

    PROCEDURE (this: Snapshot) Clone* (): Recordset, NEW;
        (* Creates a duplicate Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 147, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END Clone;

    PROCEDURE (this: Snapshot) Requery* ((* optional *) NewQueryDef: CtlT.Any), NEW;
        (* Re-executes the query the Recordset is based on. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NewQueryDef, arg[0]);
        CtlC.CallParMethod(this, 148, arg, NIL);
    END Requery;

    PROCEDURE (this: Snapshot) Move* (Rows: INTEGER; (* optional *) StartBookmark: CtlT.Any), NEW;
        (* Moves the position of the current record in a Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 149, arg, NIL);
    END Move;

    PROCEDURE (this: Snapshot) FillCache* ((* optional *) Rows: CtlT.Any; StartBookmark: CtlT.Any), NEW;
        (* Fills the cache for an ODBC-derived Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 150, arg, NIL);
    END FillCache;

    PROCEDURE (this: Snapshot) CreateDynaset* ((* optional *) Options: CtlT.Any; Inconsistent: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a Dynaset object *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(Inconsistent, arg[0]);
        CtlC.CallParMethod(this, 151, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateDynaset;

    PROCEDURE (this: Snapshot) CreateSnapshot* ((* optional *) Options: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 152, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateSnapshot;

    PROCEDURE (this: Snapshot) CopyQueryDef* (): QueryDef, NEW;
        (* Returns a copy of the QueryDef that created the Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 153, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CopyQueryDef;

    PROCEDURE (this: Snapshot) ListFields* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 154, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListFields;

    PROCEDURE (this: Snapshot) ListIndexes* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 155, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListIndexes;

    PROCEDURE (this: Snapshot) GetRows* ((* optional *) NumRows: CtlT.Any): CtlT.Any, NEW;
        (* Retrieves multiple records of a Recordset into an array. *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NumRows, arg[0]);
        CtlC.CallParMethod(this, 156, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetRows;

    PROCEDURE (this: Snapshot) Collect* (Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, -8, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Collect;

    PROCEDURE (this: Snapshot) PUTCollect* (Index: CtlT.Any; p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -8, arg, NIL);
    END PUTCollect;

    PROCEDURE (this: Snapshot) Cancel* (), NEW;
        (* Cancels execution of an asynchronous Execute, OpenRecordset, or OpenConnection m *)
    BEGIN
        CtlC.CallMethod(this, 157, NIL);
    END Cancel;

    PROCEDURE (this: Snapshot) NextRecordset* (): BOOLEAN, NEW;
        (* Fetches next recordset in a mutli-query Recordset *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 158, ret);
        RETURN CtlC.VarBool(ret)
    END NextRecordset;

    PROCEDURE (this: Snapshot) hStmt* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 159)
    END hStmt;

    PROCEDURE (this: Snapshot) StillExecuting* (): BOOLEAN, NEW;
        (* Indicates whether an asynchronous method call is still executing *)
    BEGIN
        RETURN CtlC.GetBool(this, 160)
    END StillExecuting;

    PROCEDURE (this: Snapshot) BatchSize* (): INTEGER, NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END BatchSize;

    PROCEDURE (this: Snapshot) PUTBatchSize* (p1: INTEGER), NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTBatchSize;

    PROCEDURE (this: Snapshot) BatchCollisionCount* (): INTEGER, NEW;
        (* Indicates how many rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END BatchCollisionCount;

    PROCEDURE (this: Snapshot) BatchCollisions* (): CtlT.Any, NEW;
        (* Indicates which rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetAny(this, 163)
    END BatchCollisions;

    PROCEDURE (this: Snapshot) Connection* (): Connection, NEW;
        (* Indicates which Connection owns the Recordset *)
    BEGIN
        RETURN ThisConnection(CtlC.GetAny(this, 164))
    END Connection;

    PROCEDURE (this: Snapshot) PUTREFConnection* (p1: Connection), NEW;
        (* Indicates which Connection owns the Recordset *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 164, arg, NIL);
    END PUTREFConnection;

    PROCEDURE (this: Snapshot) RecordStatus* (): SHORTINT, NEW;
        (* Indicating the batch-update status of the current record *)
    BEGIN
        RETURN CtlC.GetSInt(this, 165)
    END RecordStatus;

    PROCEDURE (this: Snapshot) UpdateOptions* (): INTEGER, NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        RETURN CtlC.GetInt(this, 166)
    END UpdateOptions;

    PROCEDURE (this: Snapshot) PUTUpdateOptions* (p1: INTEGER), NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        CtlC.PutInt(this, 166, p1)
    END PUTUpdateOptions;

    PROCEDURE (this: Snapshot) CancelUpdate* (UpdateType: INTEGER), NEW;
        (* Cancels any pending Update statements. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[0]);
        CtlC.CallParMethod(this, 167, arg, NIL);
    END CancelUpdate;

    PROCEDURE (this: Snapshot) Update* (UpdateType: INTEGER; Force: BOOLEAN), NEW;
        (* Saves changes made with the Edit or AddNew methods. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[1]);
        CtlC.BoolVar(Force, arg[0]);
        CtlC.CallParMethod(this, 168, arg, NIL);
    END Update;

    PROCEDURE (this: Snapshot) MoveLast* (Options: INTEGER), NEW;
        (* Moves to the last record in the Recordset. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 169, arg, NIL);
    END MoveLast;


    (* ---------- Table: (obsolete) Table Object - Use Recordset object instead, hidden, dual ---------- *)

    PROCEDURE (this: Table) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Table) BOF* (): BOOLEAN, NEW;
        (* Indicates whether the current record position is before the first record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 101)
    END BOF;

    PROCEDURE (this: Table) Bookmark* (): CtlT.Any, NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        RETURN CtlC.GetAny(this, 102)
    END Bookmark;

    PROCEDURE (this: Table) PUTBookmark* (p1: CtlT.Any), NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        CtlC.PutAny(this, 102, p1)
    END PUTBookmark;

    PROCEDURE (this: Table) Bookmarkable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset supports bookmarks. *)
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Bookmarkable;

    PROCEDURE (this: Table) DateCreated* (): CtlT.Any, NEW;
        (* Returns the date and time when the underlying base table was created. *)
    BEGIN
        RETURN CtlC.GetAny(this, 104)
    END DateCreated;

    PROCEDURE (this: Table) EOF* (): BOOLEAN, NEW;
        (* Indicates whether the the current record position is after the last record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 105)
    END EOF;

    PROCEDURE (this: Table) Filter* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END Filter;

    PROCEDURE (this: Table) PUTFilter* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTFilter;

    PROCEDURE (this: Table) Index* (): CtlT.Strg, NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        RETURN CtlC.GetStr(this, 107)
    END Index;

    PROCEDURE (this: Table) PUTIndex* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        CtlC.PutStr(this, 107, p1)
    END PUTIndex;

    PROCEDURE (this: Table) LastModified* (): CtlT.Any, NEW;
        (* Returns a bookmark indicating the most recently added or changed record. *)
    BEGIN
        RETURN CtlC.GetAny(this, 108)
    END LastModified;

    PROCEDURE (this: Table) LastUpdated* (): CtlT.Any, NEW;
        (* Returns the date and time of the most recent change to an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 109)
    END LastUpdated;

    PROCEDURE (this: Table) LockEdits* (): BOOLEAN, NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        RETURN CtlC.GetBool(this, 110)
    END LockEdits;

    PROCEDURE (this: Table) PUTLockEdits* (p1: BOOLEAN), NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        CtlC.PutBool(this, 110, p1)
    END PUTLockEdits;

    PROCEDURE (this: Table) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END Name;

    PROCEDURE (this: Table) NoMatch* (): BOOLEAN, NEW;
        (* Indicates whether a record was found with the Seek or Find methods. *)
    BEGIN
        RETURN CtlC.GetBool(this, 112)
    END NoMatch;

    PROCEDURE (this: Table) Sort* (): CtlT.Strg, NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END Sort;

    PROCEDURE (this: Table) PUTSort* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTSort;

    PROCEDURE (this: Table) Transactions* (): BOOLEAN, NEW;
        (* Indicates whether the Recordset object supports transactions. *)
    BEGIN
        RETURN CtlC.GetBool(this, 114)
    END Transactions;

    PROCEDURE (this: Table) Type* (): SHORTINT, NEW;
        (* Returns the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 115)
    END Type;

    PROCEDURE (this: Table) RecordCount* (): INTEGER, NEW;
        (* Returns the number of records accessed in a Recordset. *)
    BEGIN
        RETURN CtlC.GetInt(this, 116)
    END RecordCount;

    PROCEDURE (this: Table) Updatable* (): BOOLEAN, NEW;
        (* Returns whether records in the Recordset can be updated. *)
    BEGIN
        RETURN CtlC.GetBool(this, 117)
    END Updatable;

    PROCEDURE (this: Table) Restartable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset object supports the Requery method. *)
    BEGIN
        RETURN CtlC.GetBool(this, 118)
    END Restartable;

    PROCEDURE (this: Table) ValidationText* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        RETURN CtlC.GetStr(this, 119)
    END ValidationText;

    PROCEDURE (this: Table) ValidationRule* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        RETURN CtlC.GetStr(this, 120)
    END ValidationRule;

    PROCEDURE (this: Table) CacheStart* (): CtlT.Any, NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        RETURN CtlC.GetAny(this, 121)
    END CacheStart;

    PROCEDURE (this: Table) PUTCacheStart* (p1: CtlT.Any), NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        CtlC.PutAny(this, 121, p1)
    END PUTCacheStart;

    PROCEDURE (this: Table) CacheSize* (): INTEGER, NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        RETURN CtlC.GetInt(this, 122)
    END CacheSize;

    PROCEDURE (this: Table) PUTCacheSize* (p1: INTEGER), NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        CtlC.PutInt(this, 122, p1)
    END PUTCacheSize;

    PROCEDURE (this: Table) PercentPosition* (): SHORTREAL, NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        RETURN CtlC.GetSReal(this, 123)
    END PercentPosition;

    PROCEDURE (this: Table) PUTPercentPosition* (p1: SHORTREAL), NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        CtlC.PutSReal(this, 123, p1)
    END PUTPercentPosition;

    PROCEDURE (this: Table) AbsolutePosition* (): INTEGER, NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END AbsolutePosition;

    PROCEDURE (this: Table) PUTAbsolutePosition* (p1: INTEGER), NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        CtlC.PutInt(this, 124, p1)
    END PUTAbsolutePosition;

    PROCEDURE (this: Table) EditMode* (): SHORTINT, NEW;
        (* Returns the state of editing for the current record. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 125)
    END EditMode;

    PROCEDURE (this: Table) ODBCFetchCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 126)
    END ODBCFetchCount;

    PROCEDURE (this: Table) ODBCFetchDelay* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END ODBCFetchDelay;

    PROCEDURE (this: Table) Parent* (): Database, NEW;
    BEGIN
        RETURN ThisDatabase(CtlC.GetAny(this, 128))
    END Parent;

    PROCEDURE (this: Table) Fields* (): Fields, NEW;
        (* Collection of Field objects in a Recordset object. *)
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: Table) Indexes* (): Indexes, NEW;
    BEGIN
        RETURN ThisIndexes(CtlC.GetAny(this, 130))
    END Indexes;

    PROCEDURE (this: Table) AddNew* (), NEW;
        (* Creates a new record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 132, NIL);
    END AddNew;

    PROCEDURE (this: Table) Close* (), NEW;
        (* Closes an open DAO object. *)
    BEGIN
        CtlC.CallMethod(this, 133, NIL);
    END Close;

    PROCEDURE (this: Table) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 134, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: Table) Delete* (), NEW;
        (* Deletes a record from a Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 135, NIL);
    END Delete;

    PROCEDURE (this: Table) Edit* (), NEW;
        (* Prepares a row of a Recordset for editing. *)
    BEGIN
        CtlC.CallMethod(this, 136, NIL);
    END Edit;

    PROCEDURE (this: Table) FindFirst* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the first record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 137, arg, NIL);
    END FindFirst;

    PROCEDURE (this: Table) FindLast* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the last record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 138, arg, NIL);
    END FindLast;

    PROCEDURE (this: Table) FindNext* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the next record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 139, arg, NIL);
    END FindNext;

    PROCEDURE (this: Table) FindPrevious* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the previous record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 140, arg, NIL);
    END FindPrevious;

    PROCEDURE (this: Table) MoveFirst* (), NEW;
        (* Moves to the first record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 141, NIL);
    END MoveFirst;

    PROCEDURE (this: Table) MoveNext* (), NEW;
        (* Moves to the next record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 143, NIL);
    END MoveNext;

    PROCEDURE (this: Table) MovePrevious* (), NEW;
        (* Moves to the previous record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 144, NIL);
    END MovePrevious;

    PROCEDURE (this: Table) Seek* (Comparison: ARRAY OF CHAR; Key1: CtlT.Any; (* optional *) Key2: CtlT.Any; Key3: CtlT.Any; Key4: CtlT.Any; Key5: CtlT.Any; Key6: CtlT.Any; Key7: CtlT.Any; Key8: CtlT.Any; Key9: CtlT.Any; Key10: CtlT.Any; Key11: CtlT.Any; Key12: CtlT.Any; Key13: CtlT.Any), NEW;
        (* Locates a record in a table-type Recordset. *)
        VAR arg: ARRAY 14 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Comparison, arg[13]);
        CtlC.AnyVar(Key1, arg[12]);
        CtlC.AnyVar(Key2, arg[11]);
        CtlC.AnyVar(Key3, arg[10]);
        CtlC.AnyVar(Key4, arg[9]);
        CtlC.AnyVar(Key5, arg[8]);
        CtlC.AnyVar(Key6, arg[7]);
        CtlC.AnyVar(Key7, arg[6]);
        CtlC.AnyVar(Key8, arg[5]);
        CtlC.AnyVar(Key9, arg[4]);
        CtlC.AnyVar(Key10, arg[3]);
        CtlC.AnyVar(Key11, arg[2]);
        CtlC.AnyVar(Key12, arg[1]);
        CtlC.AnyVar(Key13, arg[0]);
        CtlC.CallParMethod(this, 145, arg, NIL);
    END Seek;

    PROCEDURE (this: Table) Clone* (): Recordset, NEW;
        (* Creates a duplicate Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 147, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END Clone;

    PROCEDURE (this: Table) Requery* ((* optional *) NewQueryDef: CtlT.Any), NEW;
        (* Re-executes the query the Recordset is based on. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NewQueryDef, arg[0]);
        CtlC.CallParMethod(this, 148, arg, NIL);
    END Requery;

    PROCEDURE (this: Table) Move* (Rows: INTEGER; (* optional *) StartBookmark: CtlT.Any), NEW;
        (* Moves the position of the current record in a Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 149, arg, NIL);
    END Move;

    PROCEDURE (this: Table) FillCache* ((* optional *) Rows: CtlT.Any; StartBookmark: CtlT.Any), NEW;
        (* Fills the cache for an ODBC-derived Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 150, arg, NIL);
    END FillCache;

    PROCEDURE (this: Table) CreateDynaset* ((* optional *) Options: CtlT.Any; Inconsistent: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a Dynaset object *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(Inconsistent, arg[0]);
        CtlC.CallParMethod(this, 151, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateDynaset;

    PROCEDURE (this: Table) CreateSnapshot* ((* optional *) Options: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 152, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateSnapshot;

    PROCEDURE (this: Table) CopyQueryDef* (): QueryDef, NEW;
        (* Returns a copy of the QueryDef that created the Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 153, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CopyQueryDef;

    PROCEDURE (this: Table) ListFields* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 154, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListFields;

    PROCEDURE (this: Table) ListIndexes* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 155, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListIndexes;

    PROCEDURE (this: Table) GetRows* ((* optional *) NumRows: CtlT.Any): CtlT.Any, NEW;
        (* Retrieves multiple records of a Recordset into an array. *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NumRows, arg[0]);
        CtlC.CallParMethod(this, 156, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetRows;

    PROCEDURE (this: Table) Collect* (Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, -8, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Collect;

    PROCEDURE (this: Table) PUTCollect* (Index: CtlT.Any; p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -8, arg, NIL);
    END PUTCollect;

    PROCEDURE (this: Table) Cancel* (), NEW;
        (* Cancels execution of an asynchronous Execute, OpenRecordset, or OpenConnection m *)
    BEGIN
        CtlC.CallMethod(this, 157, NIL);
    END Cancel;

    PROCEDURE (this: Table) NextRecordset* (): BOOLEAN, NEW;
        (* Fetches next recordset in a mutli-query Recordset *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 158, ret);
        RETURN CtlC.VarBool(ret)
    END NextRecordset;

    PROCEDURE (this: Table) hStmt* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 159)
    END hStmt;

    PROCEDURE (this: Table) StillExecuting* (): BOOLEAN, NEW;
        (* Indicates whether an asynchronous method call is still executing *)
    BEGIN
        RETURN CtlC.GetBool(this, 160)
    END StillExecuting;

    PROCEDURE (this: Table) BatchSize* (): INTEGER, NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END BatchSize;

    PROCEDURE (this: Table) PUTBatchSize* (p1: INTEGER), NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTBatchSize;

    PROCEDURE (this: Table) BatchCollisionCount* (): INTEGER, NEW;
        (* Indicates how many rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END BatchCollisionCount;

    PROCEDURE (this: Table) BatchCollisions* (): CtlT.Any, NEW;
        (* Indicates which rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetAny(this, 163)
    END BatchCollisions;

    PROCEDURE (this: Table) Connection* (): Connection, NEW;
        (* Indicates which Connection owns the Recordset *)
    BEGIN
        RETURN ThisConnection(CtlC.GetAny(this, 164))
    END Connection;

    PROCEDURE (this: Table) PUTREFConnection* (p1: Connection), NEW;
        (* Indicates which Connection owns the Recordset *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 164, arg, NIL);
    END PUTREFConnection;

    PROCEDURE (this: Table) RecordStatus* (): SHORTINT, NEW;
        (* Indicating the batch-update status of the current record *)
    BEGIN
        RETURN CtlC.GetSInt(this, 165)
    END RecordStatus;

    PROCEDURE (this: Table) UpdateOptions* (): INTEGER, NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        RETURN CtlC.GetInt(this, 166)
    END UpdateOptions;

    PROCEDURE (this: Table) PUTUpdateOptions* (p1: INTEGER), NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        CtlC.PutInt(this, 166, p1)
    END PUTUpdateOptions;

    PROCEDURE (this: Table) CancelUpdate* (UpdateType: INTEGER), NEW;
        (* Cancels any pending Update statements. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[0]);
        CtlC.CallParMethod(this, 167, arg, NIL);
    END CancelUpdate;

    PROCEDURE (this: Table) Update* (UpdateType: INTEGER; Force: BOOLEAN), NEW;
        (* Saves changes made with the Edit or AddNew methods. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[1]);
        CtlC.BoolVar(Force, arg[0]);
        CtlC.CallParMethod(this, 168, arg, NIL);
    END Update;

    PROCEDURE (this: Table) MoveLast* (Options: INTEGER), NEW;
        (* Moves to the last record in the Recordset. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 169, arg, NIL);
    END MoveLast;


    (* ---------- Dynaset: (obsolete) Dynaset object - Use Recordset object instead, hidden, dual ---------- *)

    PROCEDURE (this: Dynaset) Properties* (): Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Dynaset) BOF* (): BOOLEAN, NEW;
        (* Indicates whether the current record position is before the first record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 101)
    END BOF;

    PROCEDURE (this: Dynaset) Bookmark* (): CtlT.Any, NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        RETURN CtlC.GetAny(this, 102)
    END Bookmark;

    PROCEDURE (this: Dynaset) PUTBookmark* (p1: CtlT.Any), NEW;
        (* Uniquely identifies a particular record in a Recordset. *)
    BEGIN
        CtlC.PutAny(this, 102, p1)
    END PUTBookmark;

    PROCEDURE (this: Dynaset) Bookmarkable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset supports bookmarks. *)
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Bookmarkable;

    PROCEDURE (this: Dynaset) DateCreated* (): CtlT.Any, NEW;
        (* Returns the date and time when the underlying base table was created. *)
    BEGIN
        RETURN CtlC.GetAny(this, 104)
    END DateCreated;

    PROCEDURE (this: Dynaset) EOF* (): BOOLEAN, NEW;
        (* Indicates whether the the current record position is after the last record. *)
    BEGIN
        RETURN CtlC.GetBool(this, 105)
    END EOF;

    PROCEDURE (this: Dynaset) Filter* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END Filter;

    PROCEDURE (this: Dynaset) PUTFilter* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns a value indicating a filter to apply to a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTFilter;

    PROCEDURE (this: Dynaset) Index* (): CtlT.Strg, NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        RETURN CtlC.GetStr(this, 107)
    END Index;

    PROCEDURE (this: Dynaset) PUTIndex* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the name of the current Index object (table-type Recordset only) *)
    BEGIN
        CtlC.PutStr(this, 107, p1)
    END PUTIndex;

    PROCEDURE (this: Dynaset) LastModified* (): CtlT.Any, NEW;
        (* Returns a bookmark indicating the most recently added or changed record. *)
    BEGIN
        RETURN CtlC.GetAny(this, 108)
    END LastModified;

    PROCEDURE (this: Dynaset) LastUpdated* (): CtlT.Any, NEW;
        (* Returns the date and time of the most recent change to an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 109)
    END LastUpdated;

    PROCEDURE (this: Dynaset) LockEdits* (): BOOLEAN, NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        RETURN CtlC.GetBool(this, 110)
    END LockEdits;

    PROCEDURE (this: Dynaset) PUTLockEdits* (p1: BOOLEAN), NEW;
        (* Returns the type of locking in effect during editing. *)
    BEGIN
        CtlC.PutBool(this, 110, p1)
    END PUTLockEdits;

    PROCEDURE (this: Dynaset) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END Name;

    PROCEDURE (this: Dynaset) NoMatch* (): BOOLEAN, NEW;
        (* Indicates whether a record was found with the Seek or Find methods. *)
    BEGIN
        RETURN CtlC.GetBool(this, 112)
    END NoMatch;

    PROCEDURE (this: Dynaset) Sort* (): CtlT.Strg, NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END Sort;

    PROCEDURE (this: Dynaset) PUTSort* (p1: ARRAY OF CHAR), NEW;
        (* Sets or returns the sort order for records in a Recordset. *)
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTSort;

    PROCEDURE (this: Dynaset) Transactions* (): BOOLEAN, NEW;
        (* Indicates whether the Recordset object supports transactions. *)
    BEGIN
        RETURN CtlC.GetBool(this, 114)
    END Transactions;

    PROCEDURE (this: Dynaset) Type* (): SHORTINT, NEW;
        (* Returns the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 115)
    END Type;

    PROCEDURE (this: Dynaset) RecordCount* (): INTEGER, NEW;
        (* Returns the number of records accessed in a Recordset. *)
    BEGIN
        RETURN CtlC.GetInt(this, 116)
    END RecordCount;

    PROCEDURE (this: Dynaset) Updatable* (): BOOLEAN, NEW;
        (* Returns whether records in the Recordset can be updated. *)
    BEGIN
        RETURN CtlC.GetBool(this, 117)
    END Updatable;

    PROCEDURE (this: Dynaset) Restartable* (): BOOLEAN, NEW;
        (* Indicates whether a Recordset object supports the Requery method. *)
    BEGIN
        RETURN CtlC.GetBool(this, 118)
    END Restartable;

    PROCEDURE (this: Dynaset) ValidationText* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating a message if an entered value is invalid. *)
    BEGIN
        RETURN CtlC.GetStr(this, 119)
    END ValidationText;

    PROCEDURE (this: Dynaset) ValidationRule* (): CtlT.Strg, NEW;
        (* Sets or returns a value indicating whether a field contains valid data. *)
    BEGIN
        RETURN CtlC.GetStr(this, 120)
    END ValidationRule;

    PROCEDURE (this: Dynaset) CacheStart* (): CtlT.Any, NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        RETURN CtlC.GetAny(this, 121)
    END CacheStart;

    PROCEDURE (this: Dynaset) PUTCacheStart* (p1: CtlT.Any), NEW;
        (* Sets or returns the bookmark of the first record to be cached from an ODBC data  *)
    BEGIN
        CtlC.PutAny(this, 121, p1)
    END PUTCacheStart;

    PROCEDURE (this: Dynaset) CacheSize* (): INTEGER, NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        RETURN CtlC.GetInt(this, 122)
    END CacheSize;

    PROCEDURE (this: Dynaset) PUTCacheSize* (p1: INTEGER), NEW;
        (* Sets or returns the number of records to be locally cached from an ODBC data sou *)
    BEGIN
        CtlC.PutInt(this, 122, p1)
    END PUTCacheSize;

    PROCEDURE (this: Dynaset) PercentPosition* (): SHORTREAL, NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        RETURN CtlC.GetSReal(this, 123)
    END PercentPosition;

    PROCEDURE (this: Dynaset) PUTPercentPosition* (p1: SHORTREAL), NEW;
        (* Sets or returns the approximate location of the current record. *)
    BEGIN
        CtlC.PutSReal(this, 123, p1)
    END PUTPercentPosition;

    PROCEDURE (this: Dynaset) AbsolutePosition* (): INTEGER, NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END AbsolutePosition;

    PROCEDURE (this: Dynaset) PUTAbsolutePosition* (p1: INTEGER), NEW;
        (* Sets or returns the relative record number of the current record. *)
    BEGIN
        CtlC.PutInt(this, 124, p1)
    END PUTAbsolutePosition;

    PROCEDURE (this: Dynaset) EditMode* (): SHORTINT, NEW;
        (* Returns the state of editing for the current record. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 125)
    END EditMode;

    PROCEDURE (this: Dynaset) ODBCFetchCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 126)
    END ODBCFetchCount;

    PROCEDURE (this: Dynaset) ODBCFetchDelay* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END ODBCFetchDelay;

    PROCEDURE (this: Dynaset) Parent* (): Database, NEW;
    BEGIN
        RETURN ThisDatabase(CtlC.GetAny(this, 128))
    END Parent;

    PROCEDURE (this: Dynaset) Fields* (): Fields, NEW;
        (* Collection of Field objects in a Recordset object. *)
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: Dynaset) Indexes* (): Indexes, NEW;
    BEGIN
        RETURN ThisIndexes(CtlC.GetAny(this, 130))
    END Indexes;

    PROCEDURE (this: Dynaset) AddNew* (), NEW;
        (* Creates a new record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 132, NIL);
    END AddNew;

    PROCEDURE (this: Dynaset) Close* (), NEW;
        (* Closes an open DAO object. *)
    BEGIN
        CtlC.CallMethod(this, 133, NIL);
    END Close;

    PROCEDURE (this: Dynaset) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any): Recordset, NEW;
        (* Creates a new Recordset object. *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 134, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: Dynaset) Delete* (), NEW;
        (* Deletes a record from a Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 135, NIL);
    END Delete;

    PROCEDURE (this: Dynaset) Edit* (), NEW;
        (* Prepares a row of a Recordset for editing. *)
    BEGIN
        CtlC.CallMethod(this, 136, NIL);
    END Edit;

    PROCEDURE (this: Dynaset) FindFirst* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the first record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 137, arg, NIL);
    END FindFirst;

    PROCEDURE (this: Dynaset) FindLast* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the last record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 138, arg, NIL);
    END FindLast;

    PROCEDURE (this: Dynaset) FindNext* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the next record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 139, arg, NIL);
    END FindNext;

    PROCEDURE (this: Dynaset) FindPrevious* (Criteria: ARRAY OF CHAR), NEW;
        (* Locates the previous record that satisfies the criteria. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 140, arg, NIL);
    END FindPrevious;

    PROCEDURE (this: Dynaset) MoveFirst* (), NEW;
        (* Moves to the first record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 141, NIL);
    END MoveFirst;

    PROCEDURE (this: Dynaset) MoveNext* (), NEW;
        (* Moves to the next record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 143, NIL);
    END MoveNext;

    PROCEDURE (this: Dynaset) MovePrevious* (), NEW;
        (* Moves to the previous record in the Recordset. *)
    BEGIN
        CtlC.CallMethod(this, 144, NIL);
    END MovePrevious;

    PROCEDURE (this: Dynaset) Seek* (Comparison: ARRAY OF CHAR; Key1: CtlT.Any; (* optional *) Key2: CtlT.Any; Key3: CtlT.Any; Key4: CtlT.Any; Key5: CtlT.Any; Key6: CtlT.Any; Key7: CtlT.Any; Key8: CtlT.Any; Key9: CtlT.Any; Key10: CtlT.Any; Key11: CtlT.Any; Key12: CtlT.Any; Key13: CtlT.Any), NEW;
        (* Locates a record in a table-type Recordset. *)
        VAR arg: ARRAY 14 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Comparison, arg[13]);
        CtlC.AnyVar(Key1, arg[12]);
        CtlC.AnyVar(Key2, arg[11]);
        CtlC.AnyVar(Key3, arg[10]);
        CtlC.AnyVar(Key4, arg[9]);
        CtlC.AnyVar(Key5, arg[8]);
        CtlC.AnyVar(Key6, arg[7]);
        CtlC.AnyVar(Key7, arg[6]);
        CtlC.AnyVar(Key8, arg[5]);
        CtlC.AnyVar(Key9, arg[4]);
        CtlC.AnyVar(Key10, arg[3]);
        CtlC.AnyVar(Key11, arg[2]);
        CtlC.AnyVar(Key12, arg[1]);
        CtlC.AnyVar(Key13, arg[0]);
        CtlC.CallParMethod(this, 145, arg, NIL);
    END Seek;

    PROCEDURE (this: Dynaset) Clone* (): Recordset, NEW;
        (* Creates a duplicate Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 147, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END Clone;

    PROCEDURE (this: Dynaset) Requery* ((* optional *) NewQueryDef: CtlT.Any), NEW;
        (* Re-executes the query the Recordset is based on. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NewQueryDef, arg[0]);
        CtlC.CallParMethod(this, 148, arg, NIL);
    END Requery;

    PROCEDURE (this: Dynaset) Move* (Rows: INTEGER; (* optional *) StartBookmark: CtlT.Any), NEW;
        (* Moves the position of the current record in a Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 149, arg, NIL);
    END Move;

    PROCEDURE (this: Dynaset) FillCache* ((* optional *) Rows: CtlT.Any; StartBookmark: CtlT.Any), NEW;
        (* Fills the cache for an ODBC-derived Recordset. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 150, arg, NIL);
    END FillCache;

    PROCEDURE (this: Dynaset) CreateDynaset* ((* optional *) Options: CtlT.Any; Inconsistent: CtlT.Any): Recordset, NEW;
        (* (Obsolete) Creates a Dynaset object *)
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(Inconsistent, arg[0]);
        CtlC.CallParMethod(this, 151, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateDynaset;

    PROCEDURE (this: Dynaset) CreateSnapshot* ((* optional *) Options: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 152, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END CreateSnapshot;

    PROCEDURE (this: Dynaset) CopyQueryDef* (): QueryDef, NEW;
        (* Returns a copy of the QueryDef that created the Recordset. *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 153, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CopyQueryDef;

    PROCEDURE (this: Dynaset) ListFields* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 154, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListFields;

    PROCEDURE (this: Dynaset) ListIndexes* (): Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 155, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END ListIndexes;

    PROCEDURE (this: Dynaset) GetRows* ((* optional *) NumRows: CtlT.Any): CtlT.Any, NEW;
        (* Retrieves multiple records of a Recordset into an array. *)
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NumRows, arg[0]);
        CtlC.CallParMethod(this, 156, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetRows;

    PROCEDURE (this: Dynaset) Collect* (Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, -8, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Collect;

    PROCEDURE (this: Dynaset) PUTCollect* (Index: CtlT.Any; p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -8, arg, NIL);
    END PUTCollect;

    PROCEDURE (this: Dynaset) Cancel* (), NEW;
        (* Cancels execution of an asynchronous Execute, OpenRecordset, or OpenConnection m *)
    BEGIN
        CtlC.CallMethod(this, 157, NIL);
    END Cancel;

    PROCEDURE (this: Dynaset) NextRecordset* (): BOOLEAN, NEW;
        (* Fetches next recordset in a mutli-query Recordset *)
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 158, ret);
        RETURN CtlC.VarBool(ret)
    END NextRecordset;

    PROCEDURE (this: Dynaset) hStmt* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 159)
    END hStmt;

    PROCEDURE (this: Dynaset) StillExecuting* (): BOOLEAN, NEW;
        (* Indicates whether an asynchronous method call is still executing *)
    BEGIN
        RETURN CtlC.GetBool(this, 160)
    END StillExecuting;

    PROCEDURE (this: Dynaset) BatchSize* (): INTEGER, NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END BatchSize;

    PROCEDURE (this: Dynaset) PUTBatchSize* (p1: INTEGER), NEW;
        (* Determines how many updates to include in a batch *)
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTBatchSize;

    PROCEDURE (this: Dynaset) BatchCollisionCount* (): INTEGER, NEW;
        (* Indicates how many rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END BatchCollisionCount;

    PROCEDURE (this: Dynaset) BatchCollisions* (): CtlT.Any, NEW;
        (* Indicates which rows had collisions in the last batch update *)
    BEGIN
        RETURN CtlC.GetAny(this, 163)
    END BatchCollisions;

    PROCEDURE (this: Dynaset) Connection* (): Connection, NEW;
        (* Indicates which Connection owns the Recordset *)
    BEGIN
        RETURN ThisConnection(CtlC.GetAny(this, 164))
    END Connection;

    PROCEDURE (this: Dynaset) PUTREFConnection* (p1: Connection), NEW;
        (* Indicates which Connection owns the Recordset *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 164, arg, NIL);
    END PUTREFConnection;

    PROCEDURE (this: Dynaset) RecordStatus* (): SHORTINT, NEW;
        (* Indicating the batch-update status of the current record *)
    BEGIN
        RETURN CtlC.GetSInt(this, 165)
    END RecordStatus;

    PROCEDURE (this: Dynaset) UpdateOptions* (): INTEGER, NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        RETURN CtlC.GetInt(this, 166)
    END UpdateOptions;

    PROCEDURE (this: Dynaset) PUTUpdateOptions* (p1: INTEGER), NEW;
        (* Determines how a batch update query will be constructed. *)
    BEGIN
        CtlC.PutInt(this, 166, p1)
    END PUTUpdateOptions;

    PROCEDURE (this: Dynaset) CancelUpdate* (UpdateType: INTEGER), NEW;
        (* Cancels any pending Update statements. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[0]);
        CtlC.CallParMethod(this, 167, arg, NIL);
    END CancelUpdate;

    PROCEDURE (this: Dynaset) Update* (UpdateType: INTEGER; Force: BOOLEAN), NEW;
        (* Saves changes made with the Edit or AddNew methods. *)
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[1]);
        CtlC.BoolVar(Force, arg[0]);
        CtlC.CallParMethod(this, 168, arg, NIL);
    END Update;

    PROCEDURE (this: Dynaset) MoveLast* (Options: INTEGER), NEW;
        (* Moves to the last record in the Recordset. *)
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 169, arg, NIL);
    END MoveLast;


    PROCEDURE NewDBEngine* (): _DBEngine;
    BEGIN
        RETURN This_DBEngine(CtlC.NewObj("{00000010-0000-0010-8000-00AA006D2EA4}"))
    END NewDBEngine;

    PROCEDURE NewPrivDBEngine* (): _DBEngine;
    BEGIN
        RETURN This_DBEngine(CtlC.NewObj("{00000011-0000-0010-8000-00AA006D2EA4}"))
    END NewPrivDBEngine;

    PROCEDURE NewTableDef* (): _TableDef;
    BEGIN
        RETURN This_TableDef(CtlC.NewObj("{00000013-0000-0010-8000-00AA006D2EA4}"))
    END NewTableDef;

    PROCEDURE NewQueryDef* (): _QueryDef;
    BEGIN
        RETURN This_QueryDef(CtlC.NewObj("{00000018-0000-0010-8000-00AA006D2EA4}"))
    END NewQueryDef;

    PROCEDURE NewField* (): _Field;
    BEGIN
        RETURN This_Field(CtlC.NewObj("{00000014-0000-0010-8000-00AA006D2EA4}"))
    END NewField;

    PROCEDURE NewIndex* (): _Index;
    BEGIN
        RETURN This_Index(CtlC.NewObj("{00000015-0000-0010-8000-00AA006D2EA4}"))
    END NewIndex;

    PROCEDURE NewUser* (): _User;
    BEGIN
        RETURN This_User(CtlC.NewObj("{00000017-0000-0010-8000-00AA006D2EA4}"))
    END NewUser;

    PROCEDURE NewGroup* (): _Group;
    BEGIN
        RETURN This_Group(CtlC.NewObj("{00000016-0000-0010-8000-00AA006D2EA4}"))
    END NewGroup;

    PROCEDURE NewRelation* (): _Relation;
    BEGIN
        RETURN This_Relation(CtlC.NewObj("{00000019-0000-0010-8000-00AA006D2EA4}"))
    END NewRelation;

END CtlDAO35.
