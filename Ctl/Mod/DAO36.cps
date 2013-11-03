MODULE CtlDAO36;
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

    (* Microsoft DAO 3.6 Object Library, help: C:\Program Files\Common Files\Microsoft Shared\DAO\dao360.chm, id: 0 *)
    (* guid: {00025E01-0000-0000-C000-000000000046}, lcid: 0, syskind: win32, version: 5.0 *)

    IMPORT CtlT, CtlC;

    CONST
        (* RecordsetTypeEnum *)
            dbOpenTable* = 1;
            dbOpenDynaset* = 2;
            dbOpenSnapshot* = 4;
            dbOpenForwardOnly* = 8;
            dbOpenDynamic* = 16;
        (* EditModeEnum *)
            dbEditNone* = 0;
            dbEditInProgress* = 1;
            dbEditAdd* = 2;
        (* RecordsetOptionEnum *)
            dbDenyWrite* = 1;
            dbDenyRead* = 2;
            dbReadOnly* = 4;
            dbAppendOnly* = 8;
            dbInconsistent* = 16;
            dbConsistent* = 32;
            dbSQLPassThrough* = 64;
            dbFailOnError* = 128;
            dbForwardOnly* = 256;
            dbSeeChanges* = 512;
            dbRunAsync* = 1024;
            dbExecDirect* = 2048;
        (* LockTypeEnum *)
            dbPessimistic* = 2;
            dbOptimistic* = 3;
            dbOptimisticValue* = 1;
            dbOptimisticBatch* = 5;
        (* UpdateCriteriaEnum *)
            dbCriteriaKey* = 1;
            dbCriteriaModValues* = 2;
            dbCriteriaAllCols* = 4;
            dbCriteriaTimestamp* = 8;
            dbCriteriaDeleteInsert* = 16;
            dbCriteriaUpdate* = 32;
        (* FieldAttributeEnum *)
            dbFixedField* = 1;
            dbVariableField* = 2;
            dbAutoIncrField* = 16;
            dbUpdatableField* = 32;
            dbSystemField* = 8192;
            dbHyperlinkField* = 32768;
            dbDescending* = 1;
        (* DataTypeEnum *)
            dbBoolean* = 1;
            dbByte* = 2;
            dbInteger* = 3;
            dbLong* = 4;
            dbCurrency* = 5;
            dbSingle* = 6;
            dbDouble* = 7;
            dbDate* = 8;
            dbBinary* = 9;
            dbText* = 10;
            dbLongBinary* = 11;
            dbMemo* = 12;
            dbGUID* = 15;
            dbBigInt* = 16;
            dbVarBinary* = 17;
            dbChar* = 18;
            dbNumeric* = 19;
            dbDecimal* = 20;
            dbFloat* = 21;
            dbTime* = 22;
            dbTimeStamp* = 23;
        (* RelationAttributeEnum *)
            dbRelationUnique* = 1;
            dbRelationDontEnforce* = 2;
            dbRelationInherited* = 4;
            dbRelationUpdateCascade* = 256;
            dbRelationDeleteCascade* = 4096;
            dbRelationLeft* = 16777216;
            dbRelationRight* = 33554432;
        (* TableDefAttributeEnum *)
            dbAttachExclusive* = 65536;
            dbAttachSavePWD* = 131072;
            dbSystemObject* = -2147483646;
            dbAttachedTable* = 1073741824;
            dbAttachedODBC* = 536870912;
            dbHiddenObject* = 1;
        (* QueryDefTypeEnum *)
            dbQSelect* = 0;
            dbQProcedure* = 224;
            dbQAction* = 240;
            dbQCrosstab* = 16;
            dbQDelete* = 32;
            dbQUpdate* = 48;
            dbQAppend* = 64;
            dbQMakeTable* = 80;
            dbQDDL* = 96;
            dbQSQLPassThrough* = 112;
            dbQSetOperation* = 128;
            dbQSPTBulk* = 144;
            dbQCompound* = 160;
        (* QueryDefStateEnum *)
            dbQPrepare* = 1;
            dbQUnprepare* = 2;
        (* DatabaseTypeEnum *)
            dbVersion10* = 1;
            dbEncrypt* = 2;
            dbDecrypt* = 4;
            dbVersion11* = 8;
            dbVersion20* = 16;
            dbVersion30* = 32;
            dbVersion40* = 64;
        (* CollatingOrderEnum *)
            dbSortNeutral* = 1024;
            dbSortArabic* = 1025;
            dbSortCyrillic* = 1049;
            dbSortCzech* = 1029;
            dbSortDutch* = 1043;
            dbSortGeneral* = 1033;
            dbSortGreek* = 1032;
            dbSortHebrew* = 1037;
            dbSortHungarian* = 1038;
            dbSortIcelandic* = 1039;
            dbSortNorwdan* = 1030;
            dbSortPDXIntl* = 1033;
            dbSortPDXNor* = 1030;
            dbSortPDXSwe* = 1053;
            dbSortPolish* = 1045;
            dbSortSpanish* = 1034;
            dbSortSwedFin* = 1053;
            dbSortTurkish* = 1055;
            dbSortJapanese* = 1041;
            dbSortChineseSimplified* = 2052;
            dbSortChineseTraditional* = 1028;
            dbSortKorean* = 1042;
            dbSortThai* = 1054;
            dbSortSlovenian* = 1060;
            dbSortUndefined* = -1;
        (* IdleEnum *)
            dbFreeLocks* = 1;
            dbRefreshCache* = 8;
        (* PermissionEnum *)
            dbSecNoAccess* = 0;
            dbSecFullAccess* = 1048575;
            dbSecDelete* = 65536;
            dbSecReadSec* = 131072;
            dbSecWriteSec* = 262144;
            dbSecWriteOwner* = 524288;
            dbSecDBCreate* = 1;
            dbSecDBOpen* = 2;
            dbSecDBExclusive* = 4;
            dbSecDBAdmin* = 8;
            dbSecCreate* = 1;
            dbSecReadDef* = 4;
            dbSecWriteDef* = 65548;
            dbSecRetrieveData* = 20;
            dbSecInsertData* = 32;
            dbSecReplaceData* = 64;
            dbSecDeleteData* = 128;
        (* SynchronizeTypeEnum *)
            dbRepExportChanges* = 1;
            dbRepImportChanges* = 2;
            dbRepImpExpChanges* = 4;
            dbRepSyncInternet* = 16;
        (* ReplicaTypeEnum *)
            dbRepMakeReadOnly* = 2;
            dbRepMakePartial* = 1;
        (* WorkspaceTypeEnum *)
            dbUseODBC* = 1;
            dbUseJet* = 2;
        (* CursorDriverEnum *)
            dbUseDefaultCursor* = -1;
            dbUseODBCCursor* = 1;
            dbUseServerCursor* = 2;
            dbUseClientBatchCursor* = 3;
            dbUseNoCursor* = 4;
        (* DriverPromptEnum *)
            dbDriverPrompt* = 2;
            dbDriverNoPrompt* = 1;
            dbDriverComplete* = 0;
            dbDriverCompleteRequired* = 3;
        (* SetOptionEnum *)
            dbPageTimeout* = 6;
            dbLockRetry* = 57;
            dbMaxBufferSize* = 8;
            dbUserCommitSync* = 58;
            dbImplicitCommitSync* = 59;
            dbExclusiveAsyncDelay* = 60;
            dbSharedAsyncDelay* = 61;
            dbMaxLocksPerFile* = 62;
            dbLockDelay* = 63;
            dbRecycleLVs* = 65;
            dbFlushTransactionTimeout* = 66;
        (* ParameterDirectionEnum *)
            dbParamInput* = 1;
            dbParamOutput* = 2;
            dbParamInputOutput* = 3;
            dbParamReturnValue* = 4;
        (* UpdateTypeEnum *)
            dbUpdateBatch* = 4;
            dbUpdateRegular* = 1;
            dbUpdateCurrentRecord* = 2;
        (* RecordStatusEnum *)
            dbRecordUnmodified* = 0;
            dbRecordModified* = 1;
            dbRecordNew* = 2;
            dbRecordDeleted* = 3;
            dbRecordDBDeleted* = 4;
        (* CommitTransOptionsEnum *)
            dbForceOSFlush* = 1;
        (* _DAOSuppHelp *)
            LogMessages* = 0;
            KeepLocal* = 0;
            Replicable* = 0;
            ReplicableBool* = 0;
            V1xNullBehavior* = 0;
        (* LanguageConstants *)
            dbLangArabic* = ";LANGID=0x0401;CP=1256;COUNTRY=0";
            dbLangCzech* = ";LANGID=0x0405;CP=1250;COUNTRY=0";
            dbLangDutch* = ";LANGID=0x0413;CP=1252;COUNTRY=0";
            dbLangGeneral* = ";LANGID=0x0409;CP=1252;COUNTRY=0";
            dbLangGreek* = ";LANGID=0x0408;CP=1253;COUNTRY=0";
            dbLangHebrew* = ";LANGID=0x040D;CP=1255;COUNTRY=0";
            dbLangHungarian* = ";LANGID=0x040E;CP=1250;COUNTRY=0";
            dbLangIcelandic* = ";LANGID=0x040F;CP=1252;COUNTRY=0";
            dbLangNordic* = ";LANGID=0x041D;CP=1252;COUNTRY=0";
            dbLangNorwDan* = ";LANGID=0x0406;CP=1252;COUNTRY=0";
            dbLangPolish* = ";LANGID=0x0415;CP=1250;COUNTRY=0";
            dbLangCyrillic* = ";LANGID=0x0419;CP=1251;COUNTRY=0";
            dbLangSpanish* = ";LANGID=0x040A;CP=1252;COUNTRY=0";
            dbLangSwedFin* = ";LANGID=0x041D;CP=1252;COUNTRY=0";
            dbLangTurkish* = ";LANGID=0x041F;CP=1254;COUNTRY=0";
            dbLangJapanese* = ";LANGID=0x0411;CP=932;COUNTRY=0";
            dbLangChineseSimplified* = ";LANGID=0x0804;CP=936;COUNTRY=0";
            dbLangChineseTraditional* = ";LANGID=0x0404;CP=950;COUNTRY=0";
            dbLangKorean* = ";LANGID=0x0412;CP=949;COUNTRY=0";
            dbLangThai* = ";LANGID=0x041E;CP=874;COUNTRY=0";
            dbLangSlovenian* = ";LANGID=0x0424;CP=1250;COUNTRY=0";


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
        _DBEngine* = POINTER TO RECORD (CtlT.Object) END;
        _DAO* = POINTER TO RECORD (CtlT.Object) END;
        Properties* = POINTER TO RECORD (CtlT.Object) END;
        _DynaCollection* = POINTER TO RECORD (CtlT.Object) END;
        _Collection* = POINTER TO RECORD (CtlT.Object) END;
        Property* = POINTER TO RECORD (CtlT.Object) END;
        Workspaces* = POINTER TO RECORD (CtlT.Object) END;
        Workspace* = POINTER TO RECORD (CtlT.Object) END;
        Databases* = POINTER TO RECORD (CtlT.Object) END;
        Database* = POINTER TO RECORD (CtlT.Object) END;
        TableDefs* = POINTER TO RECORD (CtlT.Object) END;
        TableDef* = _TableDef;
        _TableDef* = POINTER TO RECORD (CtlT.Object) END;
        Fields* = POINTER TO RECORD (CtlT.Object) END;
        Field* = _Field;
        _Field* = POINTER TO RECORD (CtlT.Object) END;
        Indexes* = POINTER TO RECORD (CtlT.Object) END;
        Index* = _Index;
        _Index* = POINTER TO RECORD (CtlT.Object) END;
        Recordset* = POINTER TO RECORD (CtlT.Object) END;
        QueryDef* = _QueryDef;
        _QueryDef* = POINTER TO RECORD (CtlT.Object) END;
        Parameters* = POINTER TO RECORD (CtlT.Object) END;
        Parameter* = POINTER TO RECORD (CtlT.Object) END;
        Connection* = POINTER TO RECORD (CtlT.Object) END;
        QueryDefs* = POINTER TO RECORD (CtlT.Object) END;
        Recordsets* = POINTER TO RECORD (CtlT.Object) END;
        Relations* = POINTER TO RECORD (CtlT.Object) END;
        Relation* = _Relation;
        _Relation* = POINTER TO RECORD (CtlT.Object) END;
        Containers* = POINTER TO RECORD (CtlT.Object) END;
        Container* = POINTER TO RECORD (CtlT.Object) END;
        Documents* = POINTER TO RECORD (CtlT.Object) END;
        Document* = POINTER TO RECORD (CtlT.Object) END;
        Users* = POINTER TO RECORD (CtlT.Object) END;
        User* = _User;
        _User* = POINTER TO RECORD (CtlT.Object) END;
        Groups* = POINTER TO RECORD (CtlT.Object) END;
        Group* = _Group;
        _Group* = POINTER TO RECORD (CtlT.Object) END;
        Connections* = POINTER TO RECORD (CtlT.Object) END;
        Errors* = POINTER TO RECORD (CtlT.Object) END;
        Error* = POINTER TO RECORD (CtlT.Object) END;
        DBEngine* = _DBEngine;
        (* DAO 3.0 DBEngine (private) *)
        PrivDBEngine* = _DBEngine;
        IndexFields* = POINTER TO RECORD (CtlT.Object) END;


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



    (* ---------- _DBEngine, dual, nonextensible ---------- *)

    PROCEDURE (this: _DBEngine) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _DBEngine) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Version;

    PROCEDURE (this: _DBEngine) IniPath* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END IniPath;

    PROCEDURE (this: _DBEngine) PUTIniPath* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTIniPath;

    PROCEDURE (this: _DBEngine) PUTDefaultUser* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTDefaultUser;

    PROCEDURE (this: _DBEngine) PUTDefaultPassword* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809348, p1)
    END PUTDefaultPassword;

    PROCEDURE (this: _DBEngine) LoginTimeout* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809349)
    END LoginTimeout;

    PROCEDURE (this: _DBEngine) PUTLoginTimeout* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809349, p1)
    END PUTLoginTimeout;

    PROCEDURE (this: _DBEngine) Workspaces* (): Workspaces, NEW;
    BEGIN
        RETURN ThisWorkspaces(CtlC.GetAny(this, 0))
    END Workspaces;

    PROCEDURE (this: _DBEngine) Errors* (): Errors, NEW;
    BEGIN
        RETURN ThisErrors(CtlC.GetAny(this, 1610809352))
    END Errors;

    PROCEDURE (this: _DBEngine) Idle* ((* optional *) Action: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Action, arg[0]);
        CtlC.CallParMethod(this, 1610809353, arg, NIL);
    END Idle;

    PROCEDURE (this: _DBEngine) CompactDatabase* (SrcName: ARRAY OF CHAR; DstName: ARRAY OF CHAR; (* optional *) DstLocale: CtlT.Any; Options: CtlT.Any; SrcLocale: CtlT.Any), NEW;
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
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809355, arg, NIL);
    END RepairDatabase;

    PROCEDURE (this: _DBEngine) RegisterDatabase* (Dsn: ARRAY OF CHAR; Driver: ARRAY OF CHAR; Silent: BOOLEAN; Attributes: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Dsn, arg[3]);
        CtlC.StrVar(Driver, arg[2]);
        CtlC.BoolVar(Silent, arg[1]);
        CtlC.StrVar(Attributes, arg[0]);
        CtlC.CallParMethod(this, 1610809356, arg, NIL);
    END RegisterDatabase;

    PROCEDURE (this: _DBEngine) OpenDatabase* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; ReadOnly: CtlT.Any; Connect: CtlT.Any): Database, NEW;
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
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[2]);
        CtlC.StrVar(Locale, arg[1]);
        CtlC.AnyVar(Option, arg[0]);
        CtlC.CallParMethod(this, 1610809359, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END CreateDatabase;

    PROCEDURE (this: _DBEngine) BeginTrans* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809361, NIL);
    END BeginTrans;

    PROCEDURE (this: _DBEngine) CommitTrans* (Option: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Option, arg[0]);
        CtlC.CallParMethod(this, 1610809362, arg, NIL);
    END CommitTrans;

    PROCEDURE (this: _DBEngine) Rollback* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809363, NIL);
    END Rollback;

    PROCEDURE (this: _DBEngine) ISAMStats* (StatNum: INTEGER; (* optional *) Reset: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(StatNum, arg[1]);
        CtlC.AnyVar(Reset, arg[0]);
        CtlC.CallParMethod(this, 1610809366, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ISAMStats;

    PROCEDURE (this: _DBEngine) SystemDB* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809367)
    END SystemDB;

    PROCEDURE (this: _DBEngine) PUTSystemDB* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809367, p1)
    END PUTSystemDB;

    PROCEDURE (this: _DBEngine) CreateWorkspace* (Name: ARRAY OF CHAR; UserName: ARRAY OF CHAR; Password: ARRAY OF CHAR; (* optional *) UseType: CtlT.Any): Workspace, NEW;
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
    BEGIN
        RETURN CtlC.GetInt(this, 1610809371)
    END DefaultType;

    PROCEDURE (this: _DBEngine) PUTDefaultType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809371, p1)
    END PUTDefaultType;

    PROCEDURE (this: _DBEngine) SetOption* (Option: INTEGER; Value: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Option, arg[1]);
        CtlC.AnyVar(Value, arg[0]);
        CtlC.CallParMethod(this, 1610809373, arg, NIL);
    END SetOption;


    (* ---------- _DAO, dual, nonextensible ---------- *)

    PROCEDURE (this: _DAO) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;


    (* ---------- Properties, dual, nonextensible ---------- *)

    PROCEDURE (this: Properties) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Properties) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Properties) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Properties) Item* (Item: CtlT.Any): Property, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END Item;


    (* ---------- _DynaCollection, dual, nonextensible ---------- *)

    PROCEDURE (this: _DynaCollection) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: _DynaCollection) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: _DynaCollection) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;


    (* ---------- _Collection, dual, nonextensible ---------- *)

    PROCEDURE (this: _Collection) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;


    (* ---------- Property, dual, nonextensible ---------- *)

    PROCEDURE (this: Property) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Property) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: Property) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: Property) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Name;

    PROCEDURE (this: Property) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTName;

    PROCEDURE (this: Property) Type* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809348)
    END Type;

    PROCEDURE (this: Property) PUTType* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809348, p1)
    END PUTType;

    PROCEDURE (this: Property) Inherited* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809350)
    END Inherited;


    (* ---------- Workspaces, dual, nonextensible ---------- *)

    PROCEDURE (this: Workspaces) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Workspaces) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Workspaces) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Workspaces) Item* (Item: CtlT.Any): Workspace, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisWorkspace(CtlC.VarAny(ret))
    END Item;


    (* ---------- Workspace, dual, nonextensible ---------- *)

    PROCEDURE (this: Workspace) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Workspace) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Workspace) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: Workspace) UserName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END UserName;

    PROCEDURE (this: Workspace) IsolateODBCTrans* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809349)
    END IsolateODBCTrans;

    PROCEDURE (this: Workspace) PUTIsolateODBCTrans* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809349, p1)
    END PUTIsolateODBCTrans;

    PROCEDURE (this: Workspace) Databases* (): Databases, NEW;
    BEGIN
        RETURN ThisDatabases(CtlC.GetAny(this, 0))
    END Databases;

    PROCEDURE (this: Workspace) Users* (): Users, NEW;
    BEGIN
        RETURN ThisUsers(CtlC.GetAny(this, 1610809352))
    END Users;

    PROCEDURE (this: Workspace) Groups* (): Groups, NEW;
    BEGIN
        RETURN ThisGroups(CtlC.GetAny(this, 1610809353))
    END Groups;

    PROCEDURE (this: Workspace) BeginTrans* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809354, NIL);
    END BeginTrans;

    PROCEDURE (this: Workspace) CommitTrans* (Options: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809355, arg, NIL);
    END CommitTrans;

    PROCEDURE (this: Workspace) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809356, NIL);
    END Close;

    PROCEDURE (this: Workspace) Rollback* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809357, NIL);
    END Rollback;

    PROCEDURE (this: Workspace) OpenDatabase* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; ReadOnly: CtlT.Any; Connect: CtlT.Any): Database, NEW;
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
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[2]);
        CtlC.StrVar(Connect, arg[1]);
        CtlC.AnyVar(Option, arg[0]);
        CtlC.CallParMethod(this, 1610809359, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END CreateDatabase;

    PROCEDURE (this: Workspace) CreateUser* ((* optional *) Name: CtlT.Any; PID: CtlT.Any; Password: CtlT.Any): User, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(PID, arg[1]);
        CtlC.AnyVar(Password, arg[0]);
        CtlC.CallParMethod(this, 1610809360, arg, ret);
        RETURN This_User(CtlC.VarAny(ret))
    END CreateUser;

    PROCEDURE (this: Workspace) CreateGroup* ((* optional *) Name: CtlT.Any; PID: CtlT.Any): Group, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(PID, arg[0]);
        CtlC.CallParMethod(this, 1610809361, arg, ret);
        RETURN This_Group(CtlC.VarAny(ret))
    END CreateGroup;

    PROCEDURE (this: Workspace) OpenConnection* (Name: ARRAY OF CHAR; (* optional *) Options: CtlT.Any; ReadOnly: CtlT.Any; Connect: CtlT.Any): Connection, NEW;
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
    BEGIN
        RETURN CtlC.GetInt(this, 1610809363)
    END LoginTimeout;

    PROCEDURE (this: Workspace) PUTLoginTimeout* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809363, p1)
    END PUTLoginTimeout;

    PROCEDURE (this: Workspace) DefaultCursorDriver* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809365)
    END DefaultCursorDriver;

    PROCEDURE (this: Workspace) PUTDefaultCursorDriver* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809365, p1)
    END PUTDefaultCursorDriver;

    PROCEDURE (this: Workspace) hEnv* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809367)
    END hEnv;

    PROCEDURE (this: Workspace) Type* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809368)
    END Type;

    PROCEDURE (this: Workspace) Connections* (): Connections, NEW;
    BEGIN
        RETURN ThisConnections(CtlC.GetAny(this, 1610809369))
    END Connections;


    (* ---------- Databases, dual, nonextensible ---------- *)

    PROCEDURE (this: Databases) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Databases) Item* (Item: CtlT.Any): Database, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisDatabase(CtlC.VarAny(ret))
    END Item;


    (* ---------- Database, dual, nonextensible ---------- *)

    PROCEDURE (this: Database) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Database) CollatingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809344)
    END CollatingOrder;

    PROCEDURE (this: Database) Connect* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Connect;

    PROCEDURE (this: Database) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Name;

    PROCEDURE (this: Database) QueryTimeout* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809347)
    END QueryTimeout;

    PROCEDURE (this: Database) PUTQueryTimeout* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809347, p1)
    END PUTQueryTimeout;

    PROCEDURE (this: Database) Transactions* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809349)
    END Transactions;

    PROCEDURE (this: Database) Updatable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809350)
    END Updatable;

    PROCEDURE (this: Database) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809351)
    END Version;

    PROCEDURE (this: Database) RecordsAffected* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809352)
    END RecordsAffected;

    PROCEDURE (this: Database) TableDefs* (): TableDefs, NEW;
    BEGIN
        RETURN ThisTableDefs(CtlC.GetAny(this, 0))
    END TableDefs;

    PROCEDURE (this: Database) QueryDefs* (): QueryDefs, NEW;
    BEGIN
        RETURN ThisQueryDefs(CtlC.GetAny(this, 1610809354))
    END QueryDefs;

    PROCEDURE (this: Database) Relations* (): Relations, NEW;
    BEGIN
        RETURN ThisRelations(CtlC.GetAny(this, 1610809355))
    END Relations;

    PROCEDURE (this: Database) Containers* (): Containers, NEW;
    BEGIN
        RETURN ThisContainers(CtlC.GetAny(this, 1610809356))
    END Containers;

    PROCEDURE (this: Database) Recordsets* (): Recordsets, NEW;
    BEGIN
        RETURN ThisRecordsets(CtlC.GetAny(this, 1610809357))
    END Recordsets;

    PROCEDURE (this: Database) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809358, NIL);
    END Close;

    PROCEDURE (this: Database) Execute* (Query: ARRAY OF CHAR; (* optional *) Options: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Query, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809359, arg, NIL);
    END Execute;

    PROCEDURE (this: Database) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
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
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Attributes, arg[2]);
        CtlC.AnyVar(SourceTableName, arg[1]);
        CtlC.AnyVar(Connect, arg[0]);
        CtlC.CallParMethod(this, 1610809363, arg, ret);
        RETURN This_TableDef(CtlC.VarAny(ret))
    END CreateTableDef;

    PROCEDURE (this: Database) CreateQueryDef* ((* optional *) Name: CtlT.Any; SQLText: CtlT.Any): QueryDef, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(SQLText, arg[0]);
        CtlC.CallParMethod(this, 1610809368, arg, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CreateQueryDef;

    PROCEDURE (this: Database) ReplicaID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809376)
    END ReplicaID;

    PROCEDURE (this: Database) DesignMasterID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809377)
    END DesignMasterID;

    PROCEDURE (this: Database) PUTDesignMasterID* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809377, p1)
    END PUTDesignMasterID;

    PROCEDURE (this: Database) Synchronize* (DbPathName: ARRAY OF CHAR; (* optional *) ExchangeType: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(DbPathName, arg[1]);
        CtlC.AnyVar(ExchangeType, arg[0]);
        CtlC.CallParMethod(this, 1610809379, arg, NIL);
    END Synchronize;

    PROCEDURE (this: Database) MakeReplica* (PathName: ARRAY OF CHAR; Description: ARRAY OF CHAR; (* optional *) Options: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PathName, arg[2]);
        CtlC.StrVar(Description, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809380, arg, NIL);
    END MakeReplica;

    PROCEDURE (this: Database) PUTConnect* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTConnect;

    PROCEDURE (this: Database) NewPassword* (bstrOld: ARRAY OF CHAR; bstrNew: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrOld, arg[1]);
        CtlC.StrVar(bstrNew, arg[0]);
        CtlC.CallParMethod(this, 1610809382, arg, NIL);
    END NewPassword;

    PROCEDURE (this: Database) OpenRecordset* (Name: ARRAY OF CHAR; (* optional *) Type: CtlT.Any; Options: CtlT.Any; LockEdit: CtlT.Any): Recordset, NEW;
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
    BEGIN
        RETURN ThisConnection(CtlC.GetAny(this, 1610809384))
    END Connection;

    PROCEDURE (this: Database) PopulatePartial* (DbPathName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(DbPathName, arg[0]);
        CtlC.CallParMethod(this, 1610809385, arg, NIL);
    END PopulatePartial;


    (* ---------- TableDefs, dual, nonextensible ---------- *)

    PROCEDURE (this: TableDefs) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: TableDefs) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: TableDefs) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: TableDefs) Item* (Item: CtlT.Any): TableDef, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_TableDef(CtlC.VarAny(ret))
    END Item;


    (* ---------- _TableDef, dual, nonextensible ---------- *)

    PROCEDURE (this: _TableDef) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _TableDef) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809344)
    END Attributes;

    PROCEDURE (this: _TableDef) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809344, p1)
    END PUTAttributes;

    PROCEDURE (this: _TableDef) Connect* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Connect;

    PROCEDURE (this: _TableDef) PUTConnect* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTConnect;

    PROCEDURE (this: _TableDef) DateCreated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809348)
    END DateCreated;

    PROCEDURE (this: _TableDef) LastUpdated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809349)
    END LastUpdated;

    PROCEDURE (this: _TableDef) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809350)
    END Name;

    PROCEDURE (this: _TableDef) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809350, p1)
    END PUTName;

    PROCEDURE (this: _TableDef) SourceTableName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809352)
    END SourceTableName;

    PROCEDURE (this: _TableDef) PUTSourceTableName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809352, p1)
    END PUTSourceTableName;

    PROCEDURE (this: _TableDef) Updatable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809354)
    END Updatable;

    PROCEDURE (this: _TableDef) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809355)
    END ValidationText;

    PROCEDURE (this: _TableDef) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809355, p1)
    END PUTValidationText;

    PROCEDURE (this: _TableDef) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809357)
    END ValidationRule;

    PROCEDURE (this: _TableDef) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809357, p1)
    END PUTValidationRule;

    PROCEDURE (this: _TableDef) RecordCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809359)
    END RecordCount;

    PROCEDURE (this: _TableDef) Fields* (): Fields, NEW;
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: _TableDef) Indexes* (): Indexes, NEW;
    BEGIN
        RETURN ThisIndexes(CtlC.GetAny(this, 1610809361))
    END Indexes;

    PROCEDURE (this: _TableDef) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809362, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: _TableDef) RefreshLink* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809363, NIL);
    END RefreshLink;

    PROCEDURE (this: _TableDef) CreateField* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Size: CtlT.Any): Field, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Size, arg[0]);
        CtlC.CallParMethod(this, 1610809364, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END CreateField;

    PROCEDURE (this: _TableDef) CreateIndex* ((* optional *) Name: CtlT.Any): Index, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, ret);
        RETURN This_Index(CtlC.VarAny(ret))
    END CreateIndex;

    PROCEDURE (this: _TableDef) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
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
    BEGIN
        RETURN CtlC.GetStr(this, 1610809367)
    END ConflictTable;

    PROCEDURE (this: _TableDef) ReplicaFilter* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809368)
    END ReplicaFilter;

    PROCEDURE (this: _TableDef) PUTReplicaFilter* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610809368, p1)
    END PUTReplicaFilter;


    (* ---------- Fields, dual, nonextensible ---------- *)

    PROCEDURE (this: Fields) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Fields) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Fields) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Fields) Item* (Item: CtlT.Any): Field, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Field, dual, nonextensible ---------- *)

    PROCEDURE (this: _Field) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Field) CollatingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809344)
    END CollatingOrder;

    PROCEDURE (this: _Field) Type* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809345)
    END Type;

    PROCEDURE (this: _Field) PUTType* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809345, p1)
    END PUTType;

    PROCEDURE (this: _Field) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END Name;

    PROCEDURE (this: _Field) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTName;

    PROCEDURE (this: _Field) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END Size;

    PROCEDURE (this: _Field) PUTSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTSize;

    PROCEDURE (this: _Field) SourceField* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809351)
    END SourceField;

    PROCEDURE (this: _Field) SourceTable* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809352)
    END SourceTable;

    PROCEDURE (this: _Field) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _Field) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _Field) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809355)
    END Attributes;

    PROCEDURE (this: _Field) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809355, p1)
    END PUTAttributes;

    PROCEDURE (this: _Field) OrdinalPosition* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809357)
    END OrdinalPosition;

    PROCEDURE (this: _Field) PUTOrdinalPosition* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809357, p1)
    END PUTOrdinalPosition;

    PROCEDURE (this: _Field) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809359)
    END ValidationText;

    PROCEDURE (this: _Field) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809359, p1)
    END PUTValidationText;

    PROCEDURE (this: _Field) ValidateOnSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809361)
    END ValidateOnSet;

    PROCEDURE (this: _Field) PUTValidateOnSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809361, p1)
    END PUTValidateOnSet;

    PROCEDURE (this: _Field) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809363)
    END ValidationRule;

    PROCEDURE (this: _Field) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809363, p1)
    END PUTValidationRule;

    PROCEDURE (this: _Field) DefaultValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809365)
    END DefaultValue;

    PROCEDURE (this: _Field) PUTDefaultValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610809365, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _Field) Required* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809367)
    END Required;

    PROCEDURE (this: _Field) PUTRequired* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809367, p1)
    END PUTRequired;

    PROCEDURE (this: _Field) AllowZeroLength* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809369)
    END AllowZeroLength;

    PROCEDURE (this: _Field) PUTAllowZeroLength* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809369, p1)
    END PUTAllowZeroLength;

    PROCEDURE (this: _Field) DataUpdatable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809371)
    END DataUpdatable;

    PROCEDURE (this: _Field) ForeignName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809372)
    END ForeignName;

    PROCEDURE (this: _Field) PUTForeignName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809372, p1)
    END PUTForeignName;

    PROCEDURE (this: _Field) AppendChunk* (Val: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Val, arg[0]);
        CtlC.CallParMethod(this, 1610809374, arg, NIL);
    END AppendChunk;

    PROCEDURE (this: _Field) GetChunk* (Offset: INTEGER; Bytes: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Offset, arg[1]);
        CtlC.IntVar(Bytes, arg[0]);
        CtlC.CallParMethod(this, 1610809375, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetChunk;

    PROCEDURE (this: _Field) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
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
    BEGIN
        RETURN CtlC.GetAny(this, 1610809379)
    END OriginalValue;

    PROCEDURE (this: _Field) VisibleValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809380)
    END VisibleValue;

    PROCEDURE (this: _Field) FieldSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809381)
    END FieldSize;


    (* ---------- Indexes, dual, nonextensible ---------- *)

    PROCEDURE (this: Indexes) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Indexes) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Indexes) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Indexes) Item* (Item: CtlT.Any): Index, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Index(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Index, dual, nonextensible ---------- *)

    PROCEDURE (this: _Index) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Index) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _Index) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _Index) Foreign* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809346)
    END Foreign;

    PROCEDURE (this: _Index) Unique* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809347)
    END Unique;

    PROCEDURE (this: _Index) PUTUnique* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809347, p1)
    END PUTUnique;

    PROCEDURE (this: _Index) Clustered* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809349)
    END Clustered;

    PROCEDURE (this: _Index) PUTClustered* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809349, p1)
    END PUTClustered;

    PROCEDURE (this: _Index) Required* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809351)
    END Required;

    PROCEDURE (this: _Index) PUTRequired* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809351, p1)
    END PUTRequired;

    PROCEDURE (this: _Index) IgnoreNulls* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809353)
    END IgnoreNulls;

    PROCEDURE (this: _Index) PUTIgnoreNulls* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809353, p1)
    END PUTIgnoreNulls;

    PROCEDURE (this: _Index) Primary* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809355)
    END Primary;

    PROCEDURE (this: _Index) PUTPrimary* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809355, p1)
    END PUTPrimary;

    PROCEDURE (this: _Index) DistinctCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809357)
    END DistinctCount;

    PROCEDURE (this: _Index) Fields* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809358)
    END Fields;

    PROCEDURE (this: _Index) PUTFields* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610809358, p1)
    END PUTFields;

    PROCEDURE (this: _Index) CreateField* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Size: CtlT.Any): Field, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Size, arg[0]);
        CtlC.CallParMethod(this, 1610809360, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END CreateField;

    PROCEDURE (this: _Index) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809361, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;


    (* ---------- Recordset, dual, nonextensible ---------- *)

    PROCEDURE (this: Recordset) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Recordset) BOF* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 101)
    END BOF;

    PROCEDURE (this: Recordset) Bookmark* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 102)
    END Bookmark;

    PROCEDURE (this: Recordset) PUTBookmark* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 102, p1)
    END PUTBookmark;

    PROCEDURE (this: Recordset) Bookmarkable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Bookmarkable;

    PROCEDURE (this: Recordset) DateCreated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 104)
    END DateCreated;

    PROCEDURE (this: Recordset) EOF* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 105)
    END EOF;

    PROCEDURE (this: Recordset) Filter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END Filter;

    PROCEDURE (this: Recordset) PUTFilter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTFilter;

    PROCEDURE (this: Recordset) Index* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 107)
    END Index;

    PROCEDURE (this: Recordset) PUTIndex* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 107, p1)
    END PUTIndex;

    PROCEDURE (this: Recordset) LastModified* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 108)
    END LastModified;

    PROCEDURE (this: Recordset) LastUpdated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 109)
    END LastUpdated;

    PROCEDURE (this: Recordset) LockEdits* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 110)
    END LockEdits;

    PROCEDURE (this: Recordset) PUTLockEdits* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 110, p1)
    END PUTLockEdits;

    PROCEDURE (this: Recordset) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END Name;

    PROCEDURE (this: Recordset) NoMatch* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 112)
    END NoMatch;

    PROCEDURE (this: Recordset) Sort* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END Sort;

    PROCEDURE (this: Recordset) PUTSort* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTSort;

    PROCEDURE (this: Recordset) Transactions* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 114)
    END Transactions;

    PROCEDURE (this: Recordset) Type* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 115)
    END Type;

    PROCEDURE (this: Recordset) RecordCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 116)
    END RecordCount;

    PROCEDURE (this: Recordset) Updatable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 117)
    END Updatable;

    PROCEDURE (this: Recordset) Restartable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 118)
    END Restartable;

    PROCEDURE (this: Recordset) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 119)
    END ValidationText;

    PROCEDURE (this: Recordset) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 120)
    END ValidationRule;

    PROCEDURE (this: Recordset) CacheStart* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 121)
    END CacheStart;

    PROCEDURE (this: Recordset) PUTCacheStart* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 121, p1)
    END PUTCacheStart;

    PROCEDURE (this: Recordset) CacheSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 122)
    END CacheSize;

    PROCEDURE (this: Recordset) PUTCacheSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 122, p1)
    END PUTCacheSize;

    PROCEDURE (this: Recordset) PercentPosition* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 123)
    END PercentPosition;

    PROCEDURE (this: Recordset) PUTPercentPosition* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 123, p1)
    END PUTPercentPosition;

    PROCEDURE (this: Recordset) AbsolutePosition* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END AbsolutePosition;

    PROCEDURE (this: Recordset) PUTAbsolutePosition* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 124, p1)
    END PUTAbsolutePosition;

    PROCEDURE (this: Recordset) EditMode* (): SHORTINT, NEW;
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
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: Recordset) AddNew* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 132, NIL);
    END AddNew;

    PROCEDURE (this: Recordset) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 133, NIL);
    END Close;

    PROCEDURE (this: Recordset) OpenRecordset* ((* optional *) Type: CtlT.Any; Options: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 134, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: Recordset) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 135, NIL);
    END Delete;

    PROCEDURE (this: Recordset) Edit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 136, NIL);
    END Edit;

    PROCEDURE (this: Recordset) FindFirst* (Criteria: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 137, arg, NIL);
    END FindFirst;

    PROCEDURE (this: Recordset) FindLast* (Criteria: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 138, arg, NIL);
    END FindLast;

    PROCEDURE (this: Recordset) FindNext* (Criteria: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 139, arg, NIL);
    END FindNext;

    PROCEDURE (this: Recordset) FindPrevious* (Criteria: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 140, arg, NIL);
    END FindPrevious;

    PROCEDURE (this: Recordset) MoveFirst* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 141, NIL);
    END MoveFirst;

    PROCEDURE (this: Recordset) MoveNext* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 143, NIL);
    END MoveNext;

    PROCEDURE (this: Recordset) MovePrevious* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 144, NIL);
    END MovePrevious;

    PROCEDURE (this: Recordset) Seek* (Comparison: ARRAY OF CHAR; Key1: CtlT.Any; (* optional *) Key2: CtlT.Any; Key3: CtlT.Any; Key4: CtlT.Any; Key5: CtlT.Any; Key6: CtlT.Any; Key7: CtlT.Any; Key8: CtlT.Any; Key9: CtlT.Any; Key10: CtlT.Any; Key11: CtlT.Any; Key12: CtlT.Any; Key13: CtlT.Any), NEW;
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
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 147, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END Clone;

    PROCEDURE (this: Recordset) Requery* ((* optional *) NewQueryDef: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NewQueryDef, arg[0]);
        CtlC.CallParMethod(this, 148, arg, NIL);
    END Requery;

    PROCEDURE (this: Recordset) Move* (Rows: INTEGER; (* optional *) StartBookmark: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 149, arg, NIL);
    END Move;

    PROCEDURE (this: Recordset) FillCache* ((* optional *) Rows: CtlT.Any; StartBookmark: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Rows, arg[1]);
        CtlC.AnyVar(StartBookmark, arg[0]);
        CtlC.CallParMethod(this, 150, arg, NIL);
    END FillCache;

    PROCEDURE (this: Recordset) CopyQueryDef* (): QueryDef, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 153, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CopyQueryDef;

    PROCEDURE (this: Recordset) GetRows* ((* optional *) NumRows: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NumRows, arg[0]);
        CtlC.CallParMethod(this, 156, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetRows;

    PROCEDURE (this: Recordset) Collect* (Item: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, -8, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Collect;

    PROCEDURE (this: Recordset) PUTCollect* (Item: CtlT.Any; p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -8, arg, NIL);
    END PUTCollect;

    PROCEDURE (this: Recordset) Cancel* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 157, NIL);
    END Cancel;

    PROCEDURE (this: Recordset) NextRecordset* (): BOOLEAN, NEW;
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
    BEGIN
        RETURN CtlC.GetBool(this, 160)
    END StillExecuting;

    PROCEDURE (this: Recordset) BatchSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END BatchSize;

    PROCEDURE (this: Recordset) PUTBatchSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTBatchSize;

    PROCEDURE (this: Recordset) BatchCollisionCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END BatchCollisionCount;

    PROCEDURE (this: Recordset) BatchCollisions* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 163)
    END BatchCollisions;

    PROCEDURE (this: Recordset) Connection* (): Connection, NEW;
    BEGIN
        RETURN ThisConnection(CtlC.GetAny(this, 164))
    END Connection;

    PROCEDURE (this: Recordset) PUTREFConnection* (p1: Connection), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 164, arg, NIL);
    END PUTREFConnection;

    PROCEDURE (this: Recordset) RecordStatus* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 165)
    END RecordStatus;

    PROCEDURE (this: Recordset) UpdateOptions* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 166)
    END UpdateOptions;

    PROCEDURE (this: Recordset) PUTUpdateOptions* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 166, p1)
    END PUTUpdateOptions;

    PROCEDURE (this: Recordset) CancelUpdate* (UpdateType: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[0]);
        CtlC.CallParMethod(this, 167, arg, NIL);
    END CancelUpdate;

    PROCEDURE (this: Recordset) Update* (UpdateType: INTEGER; Force: BOOLEAN), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(UpdateType, arg[1]);
        CtlC.BoolVar(Force, arg[0]);
        CtlC.CallParMethod(this, 168, arg, NIL);
    END Update;

    PROCEDURE (this: Recordset) MoveLast* (Options: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 169, arg, NIL);
    END MoveLast;


    (* ---------- _QueryDef, dual, nonextensible ---------- *)

    PROCEDURE (this: _QueryDef) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _QueryDef) DateCreated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809344)
    END DateCreated;

    PROCEDURE (this: _QueryDef) LastUpdated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809345)
    END LastUpdated;

    PROCEDURE (this: _QueryDef) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Name;

    PROCEDURE (this: _QueryDef) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTName;

    PROCEDURE (this: _QueryDef) ODBCTimeout* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809348)
    END ODBCTimeout;

    PROCEDURE (this: _QueryDef) PUTODBCTimeout* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809348, p1)
    END PUTODBCTimeout;

    PROCEDURE (this: _QueryDef) Type* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809350)
    END Type;

    PROCEDURE (this: _QueryDef) SQL* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809351)
    END SQL;

    PROCEDURE (this: _QueryDef) PUTSQL* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809351, p1)
    END PUTSQL;

    PROCEDURE (this: _QueryDef) Updatable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809353)
    END Updatable;

    PROCEDURE (this: _QueryDef) Connect* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809354)
    END Connect;

    PROCEDURE (this: _QueryDef) PUTConnect* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809354, p1)
    END PUTConnect;

    PROCEDURE (this: _QueryDef) ReturnsRecords* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809356)
    END ReturnsRecords;

    PROCEDURE (this: _QueryDef) PUTReturnsRecords* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809356, p1)
    END PUTReturnsRecords;

    PROCEDURE (this: _QueryDef) RecordsAffected* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809358)
    END RecordsAffected;

    PROCEDURE (this: _QueryDef) Fields* (): Fields, NEW;
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 1610809359))
    END Fields;

    PROCEDURE (this: _QueryDef) Parameters* (): Parameters, NEW;
    BEGIN
        RETURN ThisParameters(CtlC.GetAny(this, 0))
    END Parameters;

    PROCEDURE (this: _QueryDef) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809361, NIL);
    END Close;

    PROCEDURE (this: _QueryDef) Execute* ((* optional *) Options: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, NIL);
    END Execute;

    PROCEDURE (this: _QueryDef) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
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
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(LockEdit, arg[0]);
        CtlC.CallParMethod(this, 1610809371, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;

    PROCEDURE (this: _QueryDef) Cancel* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809373, NIL);
    END Cancel;

    PROCEDURE (this: _QueryDef) hStmt* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809374)
    END hStmt;

    PROCEDURE (this: _QueryDef) MaxRecords* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809375)
    END MaxRecords;

    PROCEDURE (this: _QueryDef) PUTMaxRecords* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809375, p1)
    END PUTMaxRecords;

    PROCEDURE (this: _QueryDef) StillExecuting* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809377)
    END StillExecuting;

    PROCEDURE (this: _QueryDef) CacheSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809378)
    END CacheSize;

    PROCEDURE (this: _QueryDef) PUTCacheSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809378, p1)
    END PUTCacheSize;

    PROCEDURE (this: _QueryDef) Prepare* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809380)
    END Prepare;

    PROCEDURE (this: _QueryDef) PUTPrepare* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610809380, p1)
    END PUTPrepare;


    (* ---------- Parameters, dual, nonextensible ---------- *)

    PROCEDURE (this: Parameters) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Parameters) Item* (Item: CtlT.Any): Parameter, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisParameter(CtlC.VarAny(ret))
    END Item;


    (* ---------- Parameter, dual, nonextensible ---------- *)

    PROCEDURE (this: Parameter) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Parameter) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Parameter) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: Parameter) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: Parameter) Type* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809347)
    END Type;

    PROCEDURE (this: Parameter) PUTType* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809347, p1)
    END PUTType;

    PROCEDURE (this: Parameter) Direction* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809349)
    END Direction;

    PROCEDURE (this: Parameter) PUTDirection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610809349, p1)
    END PUTDirection;


    (* ---------- Connection, dual, nonextensible ---------- *)

    PROCEDURE (this: Connection) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743808)
    END Name;

    PROCEDURE (this: Connection) Connect* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743809)
    END Connect;

    PROCEDURE (this: Connection) Database* (): Database, NEW;
    BEGIN
        RETURN ThisDatabase(CtlC.GetAny(this, 1610743810))
    END Database;

    PROCEDURE (this: Connection) hDbc* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END hDbc;

    PROCEDURE (this: Connection) QueryTimeout* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 1610743812)
    END QueryTimeout;

    PROCEDURE (this: Connection) PUTQueryTimeout* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 1610743812, p1)
    END PUTQueryTimeout;

    PROCEDURE (this: Connection) Transactions* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743814)
    END Transactions;

    PROCEDURE (this: Connection) RecordsAffected* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743815)
    END RecordsAffected;

    PROCEDURE (this: Connection) StillExecuting* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743816)
    END StillExecuting;

    PROCEDURE (this: Connection) Updatable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743817)
    END Updatable;

    PROCEDURE (this: Connection) QueryDefs* (): QueryDefs, NEW;
    BEGIN
        RETURN ThisQueryDefs(CtlC.GetAny(this, 0))
    END QueryDefs;

    PROCEDURE (this: Connection) Recordsets* (): Recordsets, NEW;
    BEGIN
        RETURN ThisRecordsets(CtlC.GetAny(this, 1610743819))
    END Recordsets;

    PROCEDURE (this: Connection) Cancel* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743820, NIL);
    END Cancel;

    PROCEDURE (this: Connection) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743821, NIL);
    END Close;

    PROCEDURE (this: Connection) CreateQueryDef* ((* optional *) Name: CtlT.Any; SQLText: CtlT.Any): QueryDef, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(SQLText, arg[0]);
        CtlC.CallParMethod(this, 1610743822, arg, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END CreateQueryDef;

    PROCEDURE (this: Connection) Execute* (Query: ARRAY OF CHAR; (* optional *) Options: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Query, arg[1]);
        CtlC.AnyVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610743823, arg, NIL);
    END Execute;

    PROCEDURE (this: Connection) OpenRecordset* (Name: ARRAY OF CHAR; (* optional *) Type: CtlT.Any; Options: CtlT.Any; LockEdit: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Options, arg[1]);
        CtlC.AnyVar(LockEdit, arg[0]);
        CtlC.CallParMethod(this, 1610743824, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END OpenRecordset;


    (* ---------- QueryDefs, dual, nonextensible ---------- *)

    PROCEDURE (this: QueryDefs) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: QueryDefs) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: QueryDefs) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: QueryDefs) Item* (Item: CtlT.Any): QueryDef, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_QueryDef(CtlC.VarAny(ret))
    END Item;


    (* ---------- Recordsets, dual, nonextensible ---------- *)

    PROCEDURE (this: Recordsets) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Recordsets) Item* (Item: CtlT.Any): Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisRecordset(CtlC.VarAny(ret))
    END Item;


    (* ---------- Relations, dual, nonextensible ---------- *)

    PROCEDURE (this: Relations) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Relations) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Relations) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Relations) Item* (Item: CtlT.Any): Relation, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Relation(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Relation, dual, nonextensible ---------- *)

    PROCEDURE (this: _Relation) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Relation) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _Relation) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _Relation) Table* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Table;

    PROCEDURE (this: _Relation) PUTTable* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTTable;

    PROCEDURE (this: _Relation) ForeignTable* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809348)
    END ForeignTable;

    PROCEDURE (this: _Relation) PUTForeignTable* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809348, p1)
    END PUTForeignTable;

    PROCEDURE (this: _Relation) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809350)
    END Attributes;

    PROCEDURE (this: _Relation) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809350, p1)
    END PUTAttributes;

    PROCEDURE (this: _Relation) Fields* (): Fields, NEW;
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: _Relation) CreateField* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Size: CtlT.Any): Field, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(Size, arg[0]);
        CtlC.CallParMethod(this, 1610809353, arg, ret);
        RETURN This_Field(CtlC.VarAny(ret))
    END CreateField;

    PROCEDURE (this: _Relation) PartialReplica* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809354)
    END PartialReplica;

    PROCEDURE (this: _Relation) PUTPartialReplica* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809354, p1)
    END PUTPartialReplica;


    (* ---------- Containers, dual, nonextensible ---------- *)

    PROCEDURE (this: Containers) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Containers) Item* (Item: CtlT.Any): Container, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisContainer(CtlC.VarAny(ret))
    END Item;


    (* ---------- Container, dual, nonextensible ---------- *)

    PROCEDURE (this: Container) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Container) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Container) Owner* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Owner;

    PROCEDURE (this: Container) PUTOwner* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTOwner;

    PROCEDURE (this: Container) UserName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END UserName;

    PROCEDURE (this: Container) PUTUserName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTUserName;

    PROCEDURE (this: Container) Permissions* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END Permissions;

    PROCEDURE (this: Container) PUTPermissions* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTPermissions;

    PROCEDURE (this: Container) Inherit* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809351)
    END Inherit;

    PROCEDURE (this: Container) PUTInherit* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809351, p1)
    END PUTInherit;

    PROCEDURE (this: Container) Documents* (): Documents, NEW;
    BEGIN
        RETURN ThisDocuments(CtlC.GetAny(this, 0))
    END Documents;

    PROCEDURE (this: Container) AllPermissions* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809354)
    END AllPermissions;


    (* ---------- Documents, dual, nonextensible ---------- *)

    PROCEDURE (this: Documents) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Documents) Item* (Item: CtlT.Any): Document, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisDocument(CtlC.VarAny(ret))
    END Item;


    (* ---------- Document, dual, nonextensible ---------- *)

    PROCEDURE (this: Document) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: Document) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: Document) Owner* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Owner;

    PROCEDURE (this: Document) PUTOwner* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTOwner;

    PROCEDURE (this: Document) Container* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END Container;

    PROCEDURE (this: Document) UserName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809348)
    END UserName;

    PROCEDURE (this: Document) PUTUserName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809348, p1)
    END PUTUserName;

    PROCEDURE (this: Document) Permissions* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809350)
    END Permissions;

    PROCEDURE (this: Document) PUTPermissions* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809350, p1)
    END PUTPermissions;

    PROCEDURE (this: Document) DateCreated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809352)
    END DateCreated;

    PROCEDURE (this: Document) LastUpdated* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610809353)
    END LastUpdated;

    PROCEDURE (this: Document) AllPermissions* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809354)
    END AllPermissions;

    PROCEDURE (this: Document) CreateProperty* ((* optional *) Name: CtlT.Any; Type: CtlT.Any; Value: CtlT.Any; DDL: CtlT.Any): Property, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(DDL, arg[0]);
        CtlC.CallParMethod(this, 1610809355, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END CreateProperty;


    (* ---------- Users, dual, nonextensible ---------- *)

    PROCEDURE (this: Users) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Users) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Users) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Users) Item* (Item: CtlT.Any): User, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_User(CtlC.VarAny(ret))
    END Item;


    (* ---------- _User, dual, nonextensible ---------- *)

    PROCEDURE (this: _User) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _User) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _User) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _User) PUTPID* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTPID;

    PROCEDURE (this: _User) PUTPassword* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTPassword;

    PROCEDURE (this: _User) Groups* (): Groups, NEW;
    BEGIN
        RETURN ThisGroups(CtlC.GetAny(this, 0))
    END Groups;

    PROCEDURE (this: _User) NewPassword* (bstrOld: ARRAY OF CHAR; bstrNew: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrOld, arg[1]);
        CtlC.StrVar(bstrNew, arg[0]);
        CtlC.CallParMethod(this, 1610809349, arg, NIL);
    END NewPassword;

    PROCEDURE (this: _User) CreateGroup* ((* optional *) Name: CtlT.Any; PID: CtlT.Any): Group, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(PID, arg[0]);
        CtlC.CallParMethod(this, 1610809350, arg, ret);
        RETURN This_Group(CtlC.VarAny(ret))
    END CreateGroup;


    (* ---------- Groups, dual, nonextensible ---------- *)

    PROCEDURE (this: Groups) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Groups) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Groups) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Groups) Item* (Item: CtlT.Any): Group, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Group(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Group, dual, nonextensible ---------- *)

    PROCEDURE (this: _Group) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _Group) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _Group) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _Group) PUTPID* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTPID;

    PROCEDURE (this: _Group) Users* (): Users, NEW;
    BEGIN
        RETURN ThisUsers(CtlC.GetAny(this, 0))
    END Users;

    PROCEDURE (this: _Group) CreateUser* ((* optional *) Name: CtlT.Any; PID: CtlT.Any; Password: CtlT.Any): User, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[2]);
        CtlC.AnyVar(PID, arg[1]);
        CtlC.AnyVar(Password, arg[0]);
        CtlC.CallParMethod(this, 1610809348, arg, ret);
        RETURN This_User(CtlC.VarAny(ret))
    END CreateUser;


    (* ---------- Connections, dual, nonextensible ---------- *)

    PROCEDURE (this: Connections) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Connections) Item* (Item: CtlT.Any): Connection, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisConnection(CtlC.VarAny(ret))
    END Item;


    (* ---------- Errors, dual, nonextensible ---------- *)

    PROCEDURE (this: Errors) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Errors) Item* (Item: CtlT.Any): Error, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisError(CtlC.VarAny(ret))
    END Item;


    (* ---------- Error, dual, nonextensible ---------- *)

    PROCEDURE (this: Error) Number* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
    END Number;

    PROCEDURE (this: Error) Source* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743809)
    END Source;

    PROCEDURE (this: Error) Description* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Description;

    PROCEDURE (this: Error) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743811)
    END HelpFile;

    PROCEDURE (this: Error) HelpContext* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743812)
    END HelpContext;


    (* ---------- IndexFields, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IndexFields) Count* (): SHORTINT, NEW;
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
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: IndexFields) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: IndexFields) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: IndexFields) Item* ((* optional *) Item: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Item;


    PROCEDURE NewTableDef* (): _TableDef;
    BEGIN
        RETURN This_TableDef(CtlC.NewObj("{00000103-0000-0010-8000-00AA006D2EA4}"))
    END NewTableDef;

    PROCEDURE NewField* (): _Field;
    BEGIN
        RETURN This_Field(CtlC.NewObj("{00000104-0000-0010-8000-00AA006D2EA4}"))
    END NewField;

    PROCEDURE NewIndex* (): _Index;
    BEGIN
        RETURN This_Index(CtlC.NewObj("{00000105-0000-0010-8000-00AA006D2EA4}"))
    END NewIndex;

    PROCEDURE NewQueryDef* (): _QueryDef;
    BEGIN
        RETURN This_QueryDef(CtlC.NewObj("{00000108-0000-0010-8000-00AA006D2EA4}"))
    END NewQueryDef;

    PROCEDURE NewRelation* (): _Relation;
    BEGIN
        RETURN This_Relation(CtlC.NewObj("{00000109-0000-0010-8000-00AA006D2EA4}"))
    END NewRelation;

    PROCEDURE NewUser* (): _User;
    BEGIN
        RETURN This_User(CtlC.NewObj("{00000107-0000-0010-8000-00AA006D2EA4}"))
    END NewUser;

    PROCEDURE NewGroup* (): _Group;
    BEGIN
        RETURN This_Group(CtlC.NewObj("{00000106-0000-0010-8000-00AA006D2EA4}"))
    END NewGroup;

    PROCEDURE NewDBEngine* (): _DBEngine;
    BEGIN
        RETURN This_DBEngine(CtlC.NewObj("{00000100-0000-0010-8000-00AA006D2EA4}"))
    END NewDBEngine;

    PROCEDURE NewPrivDBEngine* (): _DBEngine;
    BEGIN
        RETURN This_DBEngine(CtlC.NewObj("{00000101-0000-0010-8000-00AA006D2EA4}"))
    END NewPrivDBEngine;

END CtlDAO36.
