MODULE CtlADODB;
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

    (* Microsoft ActiveX Data Objects 2.0 Library, help: , id: 0 *)
    (* guid: {00000200-0000-0010-8000-00AA006D2EA4}, lcid: 0, syskind: win32, version: 2.0 *)

    IMPORT CtlT, CtlC;

    CONST
        (* CursorTypeEnum *)
            adOpenUnspecified* = -1;
            adOpenForwardOnly* = 0;
            adOpenKeyset* = 1;
            adOpenDynamic* = 2;
            adOpenStatic* = 3;
        (* CursorOptionEnum *)
            adHoldRecords* = 256;
            adMovePrevious* = 512;
            adAddNew* = 16778240;
            adDelete* = 16779264;
            adUpdate* = 16809984;
            adBookmark* = 8192;
            adApproxPosition* = 16384;
            adUpdateBatch* = 65536;
            adResync* = 131072;
            adNotify* = 262144;
            adFind* = 524288;
        (* LockTypeEnum *)
            adLockUnspecified* = -1;
            adLockReadOnly* = 1;
            adLockPessimistic* = 2;
            adLockOptimistic* = 3;
            adLockBatchOptimistic* = 4;
        (* ExecuteOptionEnum *)
            adOptionUnspecified* = -1;
            adAsyncExecute* = 16;
            adAsyncFetch* = 32;
            adAsyncFetchNonBlocking* = 64;
            adExecuteNoRecords* = 128;
        (* ConnectOptionEnum *)
            adConnectUnspecified* = -1;
            adAsyncConnect* = 16;
        (* ObjectStateEnum *)
            adStateClosed* = 0;
            adStateOpen* = 1;
            adStateConnecting* = 2;
            adStateExecuting* = 4;
            adStateFetching* = 8;
        (* CursorLocationEnum *)
            adUseNone* = 1;
            adUseServer* = 2;
            adUseClient* = 3;
            adUseClientBatch* = 3;
        (* DataTypeEnum *)
            adEmpty* = 0;
            adTinyInt* = 16;
            adSmallInt* = 2;
            adInteger* = 3;
            adBigInt* = 20;
            adUnsignedTinyInt* = 17;
            adUnsignedSmallInt* = 18;
            adUnsignedInt* = 19;
            adUnsignedBigInt* = 21;
            adSingle* = 4;
            adDouble* = 5;
            adCurrency* = 6;
            adDecimal* = 14;
            adNumeric* = 131;
            adBoolean* = 11;
            adError* = 10;
            adUserDefined* = 132;
            adVariant* = 12;
            adIDispatch* = 9;
            adIUnknown* = 13;
            adGUID* = 72;
            adDate* = 7;
            adDBDate* = 133;
            adDBTime* = 134;
            adDBTimeStamp* = 135;
            adBSTR* = 8;
            adChar* = 129;
            adVarChar* = 200;
            adLongVarChar* = 201;
            adWChar* = 130;
            adVarWChar* = 202;
            adLongVarWChar* = 203;
            adBinary* = 128;
            adVarBinary* = 204;
            adLongVarBinary* = 205;
            adChapter* = 136;
            adFileTime* = 64;
            adDBFileTime* = 137;
            adPropVariant* = 138;
            adVarNumeric* = 139;
        (* FieldAttributeEnum *)
            adFldUnspecified* = -1;
            adFldMayDefer* = 2;
            adFldUpdatable* = 4;
            adFldUnknownUpdatable* = 8;
            adFldFixed* = 16;
            adFldIsNullable* = 32;
            adFldMayBeNull* = 64;
            adFldLong* = 128;
            adFldRowID* = 256;
            adFldRowVersion* = 512;
            adFldCacheDeferred* = 4096;
            adFldNegativeScale* = 16384;
            adFldKeyColumn* = 32768;
        (* EditModeEnum *)
            adEditNone* = 0;
            adEditInProgress* = 1;
            adEditAdd* = 2;
            adEditDelete* = 4;
        (* RecordStatusEnum *)
            adRecOK* = 0;
            adRecNew* = 1;
            adRecModified* = 2;
            adRecDeleted* = 4;
            adRecUnmodified* = 8;
            adRecInvalid* = 16;
            adRecMultipleChanges* = 64;
            adRecPendingChanges* = 128;
            adRecCanceled* = 256;
            adRecCantRelease* = 1024;
            adRecConcurrencyViolation* = 2048;
            adRecIntegrityViolation* = 4096;
            adRecMaxChangesExceeded* = 8192;
            adRecObjectOpen* = 16384;
            adRecOutOfMemory* = 32768;
            adRecPermissionDenied* = 65536;
            adRecSchemaViolation* = 131072;
            adRecDBDeleted* = 262144;
        (* GetRowsOptionEnum *)
            adGetRowsRest* = -1;
        (* PositionEnum *)
            adPosUnknown* = -1;
            adPosBOF* = -2;
            adPosEOF* = -3;
        (* BookmarkEnum *)
            adBookmarkCurrent* = 0;
            adBookmarkFirst* = 1;
            adBookmarkLast* = 2;
        (* MarshalOptionsEnum *)
            adMarshalAll* = 0;
            adMarshalModifiedOnly* = 1;
        (* AffectEnum *)
            adAffectCurrent* = 1;
            adAffectGroup* = 2;
            adAffectAll* = 3;
            adAffectAllChapters* = 4;
        (* ResyncEnum *)
            adResyncUnderlyingValues* = 1;
            adResyncAllValues* = 2;
        (* CompareEnum *)
            adCompareLessThan* = 0;
            adCompareEqual* = 1;
            adCompareGreaterThan* = 2;
            adCompareNotEqual* = 3;
            adCompareNotComparable* = 4;
        (* FilterGroupEnum *)
            adFilterNone* = 0;
            adFilterPendingRecords* = 1;
            adFilterAffectedRecords* = 2;
            adFilterFetchedRecords* = 3;
            adFilterPredicate* = 4;
            adFilterConflictingRecords* = 5;
        (* SearchDirectionEnum *)
            adSearchForward* = 1;
            adSearchBackward* = -1;
        (* PersistFormatEnum *)
            adPersistADTG* = 0;
            adPersistXML* = 1;
        (* StringFormatEnum *)
            adClipString* = 2;
        (* ADCPROP_UPDATECRITERIA_ENUM *)
            adCriteriaKey* = 0;
            adCriteriaAllCols* = 1;
            adCriteriaUpdCols* = 2;
            adCriteriaTimeStamp* = 3;
        (* ADCPROP_ASYNCTHREADPRIORITY_ENUM *)
            adPriorityLowest* = 1;
            adPriorityBelowNormal* = 2;
            adPriorityNormal* = 3;
            adPriorityAboveNormal* = 4;
            adPriorityHighest* = 5;
        (* ConnectPromptEnum *)
            adPromptAlways* = 1;
            adPromptComplete* = 2;
            adPromptCompleteRequired* = 3;
            adPromptNever* = 4;
        (* ConnectModeEnum *)
            adModeUnknown* = 0;
            adModeRead* = 1;
            adModeWrite* = 2;
            adModeReadWrite* = 3;
            adModeShareDenyRead* = 4;
            adModeShareDenyWrite* = 8;
            adModeShareExclusive* = 12;
            adModeShareDenyNone* = 16;
        (* IsolationLevelEnum *)
            adXactUnspecified* = -1;
            adXactChaos* = 16;
            adXactReadUncommitted* = 256;
            adXactBrowse* = 256;
            adXactCursorStability* = 4096;
            adXactReadCommitted* = 4096;
            adXactRepeatableRead* = 65536;
            adXactSerializable* = 1048576;
            adXactIsolated* = 1048576;
        (* XactAttributeEnum *)
            adXactCommitRetaining* = 131072;
            adXactAbortRetaining* = 262144;
            adXactAsyncPhaseOne* = 524288;
            adXactSyncPhaseOne* = 1048576;
        (* PropertyAttributesEnum *)
            adPropNotSupported* = 0;
            adPropRequired* = 1;
            adPropOptional* = 2;
            adPropRead* = 512;
            adPropWrite* = 1024;
        (* ErrorValueEnum *)
            adErrInvalidArgument* = 3001;
            adErrNoCurrentRecord* = 3021;
            adErrIllegalOperation* = 3219;
            adErrInTransaction* = 3246;
            adErrFeatureNotAvailable* = 3251;
            adErrItemNotFound* = 3265;
            adErrObjectInCollection* = 3367;
            adErrObjectNotSet* = 3420;
            adErrDataConversion* = 3421;
            adErrObjectClosed* = 3704;
            adErrObjectOpen* = 3705;
            adErrProviderNotFound* = 3706;
            adErrBoundToCommand* = 3707;
            adErrInvalidParamInfo* = 3708;
            adErrInvalidConnection* = 3709;
            adErrNotReentrant* = 3710;
            adErrStillExecuting* = 3711;
            adErrOperationCancelled* = 3712;
            adErrStillConnecting* = 3713;
            adErrNotExecuting* = 3715;
            adErrUnsafeOperation* = 3716;
        (* ParameterAttributesEnum *)
            adParamSigned* = 16;
            adParamNullable* = 64;
            adParamLong* = 128;
        (* ParameterDirectionEnum *)
            adParamUnknown* = 0;
            adParamInput* = 1;
            adParamOutput* = 2;
            adParamInputOutput* = 3;
            adParamReturnValue* = 4;
        (* CommandTypeEnum *)
            adCmdUnspecified* = -1;
            adCmdUnknown* = 8;
            adCmdText* = 1;
            adCmdTable* = 2;
            adCmdStoredProc* = 4;
            adCmdFile* = 256;
            adCmdTableDirect* = 512;
        (* EventStatusEnum *)
            adStatusOK* = 1;
            adStatusErrorsOccurred* = 2;
            adStatusCantDeny* = 3;
            adStatusCancel* = 4;
            adStatusUnwantedEvent* = 5;
        (* EventReasonEnum *)
            adRsnAddNew* = 1;
            adRsnDelete* = 2;
            adRsnUpdate* = 3;
            adRsnUndoUpdate* = 4;
            adRsnUndoAddNew* = 5;
            adRsnUndoDelete* = 6;
            adRsnRequery* = 7;
            adRsnResynch* = 8;
            adRsnClose* = 9;
            adRsnMove* = 10;
            adRsnFirstChange* = 11;
            adRsnMoveFirst* = 12;
            adRsnMoveNext* = 13;
            adRsnMovePrevious* = 14;
            adRsnMoveLast* = 15;
        (* SchemaEnum *)
            adSchemaProviderSpecific* = -1;
            adSchemaAsserts* = 0;
            adSchemaCatalogs* = 1;
            adSchemaCharacterSets* = 2;
            adSchemaCollations* = 3;
            adSchemaColumns* = 4;
            adSchemaCheckConstraints* = 5;
            adSchemaConstraintColumnUsage* = 6;
            adSchemaConstraintTableUsage* = 7;
            adSchemaKeyColumnUsage* = 8;
            adSchemaReferentialContraints* = 9;
            adSchemaTableConstraints* = 10;
            adSchemaColumnsDomainUsage* = 11;
            adSchemaIndexes* = 12;
            adSchemaColumnPrivileges* = 13;
            adSchemaTablePrivileges* = 14;
            adSchemaUsagePrivileges* = 15;
            adSchemaProcedures* = 16;
            adSchemaSchemata* = 17;
            adSchemaSQLLanguages* = 18;
            adSchemaStatistics* = 19;
            adSchemaTables* = 20;
            adSchemaTranslations* = 21;
            adSchemaProviderTypes* = 22;
            adSchemaViews* = 23;
            adSchemaViewColumnUsage* = 24;
            adSchemaViewTableUsage* = 25;
            adSchemaProcedureParameters* = 26;
            adSchemaForeignKeys* = 27;
            adSchemaPrimaryKeys* = 28;
            adSchemaProcedureColumns* = 29;
            adSchemaDBInfoKeywords* = 30;
            adSchemaDBInfoLiterals* = 31;
            adSchemaCubes* = 32;
            adSchemaDimensions* = 33;
            adSchemaHierarchies* = 34;
            adSchemaLevels* = 35;
            adSchemaMeasures* = 36;
            adSchemaProperties* = 37;
            adSchemaMembers* = 38;


    TYPE
        CursorTypeEnum* = INTEGER;
        CursorOptionEnum* = INTEGER;
        LockTypeEnum* = INTEGER;
        ExecuteOptionEnum* = INTEGER;
        ConnectOptionEnum* = INTEGER;
        ObjectStateEnum* = INTEGER;
        CursorLocationEnum* = INTEGER;
        DataTypeEnum* = INTEGER;
        FieldAttributeEnum* = INTEGER;
        EditModeEnum* = INTEGER;
        RecordStatusEnum* = INTEGER;
        GetRowsOptionEnum* = INTEGER;
        PositionEnum* = INTEGER;
        BookmarkEnum* = INTEGER;
        MarshalOptionsEnum* = INTEGER;
        AffectEnum* = INTEGER;
        ResyncEnum* = INTEGER;
        CompareEnum* = INTEGER;
        FilterGroupEnum* = INTEGER;
        SearchDirectionEnum* = INTEGER;
        SearchDirection* = SearchDirectionEnum;
        PersistFormatEnum* = INTEGER;
        StringFormatEnum* = INTEGER;
        ADCPROP_UPDATECRITERIA_ENUM* = INTEGER;
        ADCPROP_ASYNCTHREADPRIORITY_ENUM* = INTEGER;
        ConnectPromptEnum* = INTEGER;
        ConnectModeEnum* = INTEGER;
        IsolationLevelEnum* = INTEGER;
        XactAttributeEnum* = INTEGER;
        PropertyAttributesEnum* = INTEGER;
        ErrorValueEnum* = INTEGER;
        ParameterAttributesEnum* = INTEGER;
        ParameterDirectionEnum* = INTEGER;
        CommandTypeEnum* = INTEGER;
        EventStatusEnum* = INTEGER;
        EventReasonEnum* = INTEGER;
        SchemaEnum* = INTEGER;
        _Collection* = POINTER TO RECORD (CtlT.Object) END;
        _DynaCollection* = POINTER TO RECORD (CtlT.Object) END;
        _ADO* = POINTER TO RECORD (CtlT.Object) END;
        Properties* = POINTER TO RECORD (CtlT.Object) END;
        Property* = POINTER TO RECORD (CtlT.Object) END;
        Error* = POINTER TO RECORD (CtlT.Object) END;
        Errors* = POINTER TO RECORD (CtlT.Object) END;
        _Command15* = POINTER TO RECORD (CtlT.Object) END;
        _Connection* = POINTER TO RECORD (CtlT.Object) END;
        _Connection15* = POINTER TO RECORD (CtlT.Object) END;
        _Recordset* = POINTER TO RECORD (CtlT.Object) END;
        _Recordset15* = POINTER TO RECORD (CtlT.Object) END;
        Fields* = POINTER TO RECORD (CtlT.Object) END;
        Fields15* = POINTER TO RECORD (CtlT.Object) END;
        Field* = POINTER TO RECORD (CtlT.Object) END;
        _Parameter* = POINTER TO RECORD (CtlT.Object) END;
        Parameters* = POINTER TO RECORD (CtlT.Object) END;
        _Command* = POINTER TO RECORD (CtlT.Object) END;
        ConnectionEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        RecordsetEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        Connection* = _Connection;
        Command* = _Command;
        Recordset* = _Recordset;
        Field15* = POINTER TO RECORD (CtlT.Object) END;
        Parameter* = _Parameter;


    PROCEDURE This_Collection* (v: CtlT.Any): _Collection;
        VAR new: _Collection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000512-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Collection;

    PROCEDURE Is_Collection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000512-0000-0010-8000-00AA006D2EA4}")
    END Is_Collection;

    PROCEDURE This_DynaCollection* (v: CtlT.Any): _DynaCollection;
        VAR new: _DynaCollection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000513-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DynaCollection;

    PROCEDURE Is_DynaCollection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000513-0000-0010-8000-00AA006D2EA4}")
    END Is_DynaCollection;

    PROCEDURE This_ADO* (v: CtlT.Any): _ADO;
        VAR new: _ADO;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000534-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ADO;

    PROCEDURE Is_ADO* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000534-0000-0010-8000-00AA006D2EA4}")
    END Is_ADO;

    PROCEDURE ThisProperties* (v: CtlT.Any): Properties;
        VAR new: Properties;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000504-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisProperties;

    PROCEDURE IsProperties* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000504-0000-0010-8000-00AA006D2EA4}")
    END IsProperties;

    PROCEDURE ThisProperty* (v: CtlT.Any): Property;
        VAR new: Property;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000503-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisProperty;

    PROCEDURE IsProperty* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000503-0000-0010-8000-00AA006D2EA4}")
    END IsProperty;

    PROCEDURE ThisError* (v: CtlT.Any): Error;
        VAR new: Error;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000500-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisError;

    PROCEDURE IsError* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000500-0000-0010-8000-00AA006D2EA4}")
    END IsError;

    PROCEDURE ThisErrors* (v: CtlT.Any): Errors;
        VAR new: Errors;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000501-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisErrors;

    PROCEDURE IsErrors* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000501-0000-0010-8000-00AA006D2EA4}")
    END IsErrors;

    PROCEDURE This_Command15* (v: CtlT.Any): _Command15;
        VAR new: _Command15;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000508-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Command15;

    PROCEDURE Is_Command15* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000508-0000-0010-8000-00AA006D2EA4}")
    END Is_Command15;

    PROCEDURE This_Connection* (v: CtlT.Any): _Connection;
        VAR new: _Connection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000550-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Connection;

    PROCEDURE Is_Connection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000550-0000-0010-8000-00AA006D2EA4}")
    END Is_Connection;

    PROCEDURE This_Connection15* (v: CtlT.Any): _Connection15;
        VAR new: _Connection15;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000515-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Connection15;

    PROCEDURE Is_Connection15* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000515-0000-0010-8000-00AA006D2EA4}")
    END Is_Connection15;

    PROCEDURE This_Recordset* (v: CtlT.Any): _Recordset;
        VAR new: _Recordset;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000054F-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Recordset;

    PROCEDURE Is_Recordset* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000054F-0000-0010-8000-00AA006D2EA4}")
    END Is_Recordset;

    PROCEDURE This_Recordset15* (v: CtlT.Any): _Recordset15;
        VAR new: _Recordset15;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000050E-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Recordset15;

    PROCEDURE Is_Recordset15* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000050E-0000-0010-8000-00AA006D2EA4}")
    END Is_Recordset15;

    PROCEDURE ThisFields* (v: CtlT.Any): Fields;
        VAR new: Fields;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000054D-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFields;

    PROCEDURE IsFields* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000054D-0000-0010-8000-00AA006D2EA4}")
    END IsFields;

    PROCEDURE ThisFields15* (v: CtlT.Any): Fields15;
        VAR new: Fields15;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000506-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFields15;

    PROCEDURE IsFields15* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000506-0000-0010-8000-00AA006D2EA4}")
    END IsFields15;

    PROCEDURE ThisField* (v: CtlT.Any): Field;
        VAR new: Field;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000054C-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisField;

    PROCEDURE IsField* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000054C-0000-0010-8000-00AA006D2EA4}")
    END IsField;

    PROCEDURE This_Parameter* (v: CtlT.Any): _Parameter;
        VAR new: _Parameter;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000050C-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Parameter;

    PROCEDURE Is_Parameter* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000050C-0000-0010-8000-00AA006D2EA4}")
    END Is_Parameter;

    PROCEDURE ThisParameters* (v: CtlT.Any): Parameters;
        VAR new: Parameters;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000050D-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisParameters;

    PROCEDURE IsParameters* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000050D-0000-0010-8000-00AA006D2EA4}")
    END IsParameters;

    PROCEDURE This_Command* (v: CtlT.Any): _Command;
        VAR new: _Command;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0000054E-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Command;

    PROCEDURE Is_Command* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0000054E-0000-0010-8000-00AA006D2EA4}")
    END Is_Command;

    PROCEDURE ThisField15* (v: CtlT.Any): Field15;
        VAR new: Field15;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00000505-0000-0010-8000-00AA006D2EA4}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisField15;

    PROCEDURE IsField15* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00000505-0000-0010-8000-00AA006D2EA4}")
    END IsField15;



    (* ---------- _Collection, dual, nonextensible ---------- *)

    PROCEDURE (this: _Collection) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
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


    (* ---------- _DynaCollection, dual, nonextensible ---------- *)

    PROCEDURE (this: _DynaCollection) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
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

    PROCEDURE (this: _DynaCollection) Delete* (Index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;


    (* ---------- _ADO, dual, nonextensible ---------- *)

    PROCEDURE (this: _ADO) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;


    (* ---------- Properties, dual, nonextensible ---------- *)

    PROCEDURE (this: Properties) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
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

    PROCEDURE (this: Properties) Item* (Index: CtlT.Any): Property, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisProperty(CtlC.VarAny(ret))
    END Item;


    (* ---------- Property, dual, nonextensible ---------- *)

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
        RETURN CtlC.GetStr(this, 1610743810)
    END Name;

    PROCEDURE (this: Property) Type* (): DataTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Type;

    PROCEDURE (this: Property) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743812)
    END Attributes;

    PROCEDURE (this: Property) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743812, p1)
    END PUTAttributes;


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

    PROCEDURE (this: Error) SQLState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743813)
    END SQLState;

    PROCEDURE (this: Error) NativeError* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743814)
    END NativeError;


    (* ---------- Errors, dual, nonextensible ---------- *)

    PROCEDURE (this: Errors) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
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

    PROCEDURE (this: Errors) Item* (Index: CtlT.Any): Error, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisError(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Errors) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809345, NIL);
    END Clear;


    (* ---------- _Command15, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Command15) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: _Command15) ActiveConnection* (): _Connection, NEW;
    BEGIN
        RETURN This_Connection(CtlC.GetAny(this, 1610809344))
    END ActiveConnection;

    PROCEDURE (this: _Command15) PUTREFActiveConnection* (p1: _Connection), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1610809344, arg, NIL);
    END PUTREFActiveConnection;

    PROCEDURE (this: _Command15) PUTActiveConnection* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610809344, p1)
    END PUTActiveConnection;

    PROCEDURE (this: _Command15) CommandText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END CommandText;

    PROCEDURE (this: _Command15) PUTCommandText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTCommandText;

    PROCEDURE (this: _Command15) CommandTimeout* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END CommandTimeout;

    PROCEDURE (this: _Command15) PUTCommandTimeout* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTCommandTimeout;

    PROCEDURE (this: _Command15) Prepared* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809351)
    END Prepared;

    PROCEDURE (this: _Command15) PUTPrepared* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809351, p1)
    END PUTPrepared;

    PROCEDURE (this: _Command15) Execute* (RecordsAffected: CtlT.Any; Parameters: CtlT.Any; Options: INTEGER): _Recordset, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RecordsAffected, arg[2]);
        CtlC.AnyVar(Parameters, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809353, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END Execute;

    PROCEDURE (this: _Command15) CreateParameter* (Name: ARRAY OF CHAR; Type: DataTypeEnum; Direction: ParameterDirectionEnum; Size: INTEGER; (* optional *) Value: CtlT.Any): _Parameter, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[4]);
        CtlC.IntVar(Type, arg[3]);
        CtlC.IntVar(Direction, arg[2]);
        CtlC.IntVar(Size, arg[1]);
        CtlC.AnyVar(Value, arg[0]);
        CtlC.CallParMethod(this, 1610809354, arg, ret);
        RETURN This_Parameter(CtlC.VarAny(ret))
    END CreateParameter;

    PROCEDURE (this: _Command15) Parameters* (): Parameters, NEW;
    BEGIN
        RETURN ThisParameters(CtlC.GetAny(this, 0))
    END Parameters;

    PROCEDURE (this: _Command15) PUTCommandType* (p1: CommandTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809356, p1)
    END PUTCommandType;

    PROCEDURE (this: _Command15) CommandType* (): CommandTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809356)
    END CommandType;

    PROCEDURE (this: _Command15) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809358)
    END Name;

    PROCEDURE (this: _Command15) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809358, p1)
    END PUTName;


    (* ---------- _Connection, dual ---------- *)

    PROCEDURE (this: _Connection) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: _Connection) ConnectionString* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END ConnectionString;

    PROCEDURE (this: _Connection) PUTConnectionString* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTConnectionString;

    PROCEDURE (this: _Connection) CommandTimeout* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END CommandTimeout;

    PROCEDURE (this: _Connection) PUTCommandTimeout* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2, p1)
    END PUTCommandTimeout;

    PROCEDURE (this: _Connection) ConnectionTimeout* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3)
    END ConnectionTimeout;

    PROCEDURE (this: _Connection) PUTConnectionTimeout* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 3, p1)
    END PUTConnectionTimeout;

    PROCEDURE (this: _Connection) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 4)
    END Version;

    PROCEDURE (this: _Connection) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 5, NIL);
    END Close;

    PROCEDURE (this: _Connection) Execute* (CommandText: ARRAY OF CHAR; RecordsAffected: CtlT.Any; Options: INTEGER): _Recordset, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(CommandText, arg[2]);
        CtlC.AnyVar(RecordsAffected, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 6, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END Execute;

    PROCEDURE (this: _Connection) BeginTrans* (): INTEGER, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 7, ret);
        RETURN CtlC.VarInt(ret)
    END BeginTrans;

    PROCEDURE (this: _Connection) CommitTrans* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8, NIL);
    END CommitTrans;

    PROCEDURE (this: _Connection) RollbackTrans* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 9, NIL);
    END RollbackTrans;

    PROCEDURE (this: _Connection) Open* (ConnectionString: ARRAY OF CHAR; UserID: ARRAY OF CHAR; Password: ARRAY OF CHAR; Options: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(ConnectionString, arg[3]);
        CtlC.StrVar(UserID, arg[2]);
        CtlC.StrVar(Password, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END Open;

    PROCEDURE (this: _Connection) Errors* (): Errors, NEW;
    BEGIN
        RETURN ThisErrors(CtlC.GetAny(this, 11))
    END Errors;

    PROCEDURE (this: _Connection) DefaultDatabase* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12)
    END DefaultDatabase;

    PROCEDURE (this: _Connection) PUTDefaultDatabase* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12, p1)
    END PUTDefaultDatabase;

    PROCEDURE (this: _Connection) IsolationLevel* (): IsolationLevelEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 13)
    END IsolationLevel;

    PROCEDURE (this: _Connection) PUTIsolationLevel* (p1: IsolationLevelEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 13, p1)
    END PUTIsolationLevel;

    PROCEDURE (this: _Connection) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 14)
    END Attributes;

    PROCEDURE (this: _Connection) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 14, p1)
    END PUTAttributes;

    PROCEDURE (this: _Connection) CursorLocation* (): CursorLocationEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 15)
    END CursorLocation;

    PROCEDURE (this: _Connection) PUTCursorLocation* (p1: CursorLocationEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 15, p1)
    END PUTCursorLocation;

    PROCEDURE (this: _Connection) Mode* (): ConnectModeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 16)
    END Mode;

    PROCEDURE (this: _Connection) PUTMode* (p1: ConnectModeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 16, p1)
    END PUTMode;

    PROCEDURE (this: _Connection) Provider* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Provider;

    PROCEDURE (this: _Connection) PUTProvider* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTProvider;

    PROCEDURE (this: _Connection) State* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 18)
    END State;

    PROCEDURE (this: _Connection) OpenSchema* (Schema: SchemaEnum; (* optional *) Restrictions: CtlT.Any; SchemaID: CtlT.Any): _Recordset, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Schema, arg[2]);
        CtlC.AnyVar(Restrictions, arg[1]);
        CtlC.AnyVar(SchemaID, arg[0]);
        CtlC.CallParMethod(this, 19, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END OpenSchema;

    PROCEDURE (this: _Connection) Cancel* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 21, NIL);
    END Cancel;


    (* ---------- _Connection15, hidden, dual ---------- *)

    PROCEDURE (this: _Connection15) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: _Connection15) ConnectionString* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END ConnectionString;

    PROCEDURE (this: _Connection15) PUTConnectionString* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTConnectionString;

    PROCEDURE (this: _Connection15) CommandTimeout* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END CommandTimeout;

    PROCEDURE (this: _Connection15) PUTCommandTimeout* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2, p1)
    END PUTCommandTimeout;

    PROCEDURE (this: _Connection15) ConnectionTimeout* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3)
    END ConnectionTimeout;

    PROCEDURE (this: _Connection15) PUTConnectionTimeout* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 3, p1)
    END PUTConnectionTimeout;

    PROCEDURE (this: _Connection15) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 4)
    END Version;

    PROCEDURE (this: _Connection15) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 5, NIL);
    END Close;

    PROCEDURE (this: _Connection15) Execute* (CommandText: ARRAY OF CHAR; RecordsAffected: CtlT.Any; Options: INTEGER): _Recordset, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(CommandText, arg[2]);
        CtlC.AnyVar(RecordsAffected, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 6, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END Execute;

    PROCEDURE (this: _Connection15) BeginTrans* (): INTEGER, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 7, ret);
        RETURN CtlC.VarInt(ret)
    END BeginTrans;

    PROCEDURE (this: _Connection15) CommitTrans* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8, NIL);
    END CommitTrans;

    PROCEDURE (this: _Connection15) RollbackTrans* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 9, NIL);
    END RollbackTrans;

    PROCEDURE (this: _Connection15) Open* (ConnectionString: ARRAY OF CHAR; UserID: ARRAY OF CHAR; Password: ARRAY OF CHAR; Options: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(ConnectionString, arg[3]);
        CtlC.StrVar(UserID, arg[2]);
        CtlC.StrVar(Password, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END Open;

    PROCEDURE (this: _Connection15) Errors* (): Errors, NEW;
    BEGIN
        RETURN ThisErrors(CtlC.GetAny(this, 11))
    END Errors;

    PROCEDURE (this: _Connection15) DefaultDatabase* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12)
    END DefaultDatabase;

    PROCEDURE (this: _Connection15) PUTDefaultDatabase* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12, p1)
    END PUTDefaultDatabase;

    PROCEDURE (this: _Connection15) IsolationLevel* (): IsolationLevelEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 13)
    END IsolationLevel;

    PROCEDURE (this: _Connection15) PUTIsolationLevel* (p1: IsolationLevelEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 13, p1)
    END PUTIsolationLevel;

    PROCEDURE (this: _Connection15) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 14)
    END Attributes;

    PROCEDURE (this: _Connection15) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 14, p1)
    END PUTAttributes;

    PROCEDURE (this: _Connection15) CursorLocation* (): CursorLocationEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 15)
    END CursorLocation;

    PROCEDURE (this: _Connection15) PUTCursorLocation* (p1: CursorLocationEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 15, p1)
    END PUTCursorLocation;

    PROCEDURE (this: _Connection15) Mode* (): ConnectModeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 16)
    END Mode;

    PROCEDURE (this: _Connection15) PUTMode* (p1: ConnectModeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 16, p1)
    END PUTMode;

    PROCEDURE (this: _Connection15) Provider* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Provider;

    PROCEDURE (this: _Connection15) PUTProvider* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTProvider;

    PROCEDURE (this: _Connection15) State* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 18)
    END State;

    PROCEDURE (this: _Connection15) OpenSchema* (Schema: SchemaEnum; (* optional *) Restrictions: CtlT.Any; SchemaID: CtlT.Any): _Recordset, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Schema, arg[2]);
        CtlC.AnyVar(Restrictions, arg[1]);
        CtlC.AnyVar(SchemaID, arg[0]);
        CtlC.CallParMethod(this, 19, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END OpenSchema;


    (* ---------- _Recordset, dual, nonextensible ---------- *)

    PROCEDURE (this: _Recordset) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: _Recordset) AbsolutePosition* (): PositionEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1000)
    END AbsolutePosition;

    PROCEDURE (this: _Recordset) PUTAbsolutePosition* (p1: PositionEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1000, p1)
    END PUTAbsolutePosition;

    PROCEDURE (this: _Recordset) PUTREFActiveConnection* (p1: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1001, arg, NIL);
    END PUTREFActiveConnection;

    PROCEDURE (this: _Recordset) PUTActiveConnection* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1001, p1)
    END PUTActiveConnection;

    PROCEDURE (this: _Recordset) ActiveConnection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1001)
    END ActiveConnection;

    PROCEDURE (this: _Recordset) BOF* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1002)
    END BOF;

    PROCEDURE (this: _Recordset) Bookmark* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1003)
    END Bookmark;

    PROCEDURE (this: _Recordset) PUTBookmark* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1003, p1)
    END PUTBookmark;

    PROCEDURE (this: _Recordset) CacheSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END CacheSize;

    PROCEDURE (this: _Recordset) PUTCacheSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTCacheSize;

    PROCEDURE (this: _Recordset) CursorType* (): CursorTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END CursorType;

    PROCEDURE (this: _Recordset) PUTCursorType* (p1: CursorTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTCursorType;

    PROCEDURE (this: _Recordset) EOF* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1006)
    END EOF;

    PROCEDURE (this: _Recordset) Fields* (): Fields, NEW;
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: _Recordset) LockType* (): LockTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1008)
    END LockType;

    PROCEDURE (this: _Recordset) PUTLockType* (p1: LockTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1008, p1)
    END PUTLockType;

    PROCEDURE (this: _Recordset) MaxRecords* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1009)
    END MaxRecords;

    PROCEDURE (this: _Recordset) PUTMaxRecords* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1009, p1)
    END PUTMaxRecords;

    PROCEDURE (this: _Recordset) RecordCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1010)
    END RecordCount;

    PROCEDURE (this: _Recordset) PUTREFSource* (p1: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1011, arg, NIL);
    END PUTREFSource;

    PROCEDURE (this: _Recordset) PUTSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1011, p1)
    END PUTSource;

    PROCEDURE (this: _Recordset) Source* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1011)
    END Source;

    PROCEDURE (this: _Recordset) AddNew* ((* optional *) FieldList: CtlT.Any; Values: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FieldList, arg[1]);
        CtlC.AnyVar(Values, arg[0]);
        CtlC.CallParMethod(this, 1012, arg, NIL);
    END AddNew;

    PROCEDURE (this: _Recordset) CancelUpdate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1013, NIL);
    END CancelUpdate;

    PROCEDURE (this: _Recordset) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1014, NIL);
    END Close;

    PROCEDURE (this: _Recordset) Delete* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1015, arg, NIL);
    END Delete;

    PROCEDURE (this: _Recordset) GetRows* (Rows: INTEGER; (* optional *) Start: CtlT.Any; Fields: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Rows, arg[2]);
        CtlC.AnyVar(Start, arg[1]);
        CtlC.AnyVar(Fields, arg[0]);
        CtlC.CallParMethod(this, 1016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetRows;

    PROCEDURE (this: _Recordset) Move* (NumRecords: INTEGER; (* optional *) Start: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(NumRecords, arg[1]);
        CtlC.AnyVar(Start, arg[0]);
        CtlC.CallParMethod(this, 1017, arg, NIL);
    END Move;

    PROCEDURE (this: _Recordset) MoveNext* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1018, NIL);
    END MoveNext;

    PROCEDURE (this: _Recordset) MovePrevious* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1019, NIL);
    END MovePrevious;

    PROCEDURE (this: _Recordset) MoveFirst* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1020, NIL);
    END MoveFirst;

    PROCEDURE (this: _Recordset) MoveLast* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1021, NIL);
    END MoveLast;

    PROCEDURE (this: _Recordset) Open* (Source: CtlT.Any; ActiveConnection: CtlT.Any; CursorType: CursorTypeEnum; LockType: LockTypeEnum; Options: INTEGER), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Source, arg[4]);
        CtlC.AnyVar(ActiveConnection, arg[3]);
        CtlC.IntVar(CursorType, arg[2]);
        CtlC.IntVar(LockType, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1022, arg, NIL);
    END Open;

    PROCEDURE (this: _Recordset) Requery* (Options: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1023, arg, NIL);
    END Requery;

    PROCEDURE (this: _Recordset) _xResync* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1610809378, arg, NIL);
    END _xResync;

    PROCEDURE (this: _Recordset) Update* ((* optional *) Fields: CtlT.Any; Values: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Fields, arg[1]);
        CtlC.AnyVar(Values, arg[0]);
        CtlC.CallParMethod(this, 1025, arg, NIL);
    END Update;

    PROCEDURE (this: _Recordset) AbsolutePage* (): PositionEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1047)
    END AbsolutePage;

    PROCEDURE (this: _Recordset) PUTAbsolutePage* (p1: PositionEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1047, p1)
    END PUTAbsolutePage;

    PROCEDURE (this: _Recordset) EditMode* (): EditModeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1026)
    END EditMode;

    PROCEDURE (this: _Recordset) Filter* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1030)
    END Filter;

    PROCEDURE (this: _Recordset) PUTFilter* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1030, p1)
    END PUTFilter;

    PROCEDURE (this: _Recordset) PageCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1050)
    END PageCount;

    PROCEDURE (this: _Recordset) PageSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1048)
    END PageSize;

    PROCEDURE (this: _Recordset) PUTPageSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1048, p1)
    END PUTPageSize;

    PROCEDURE (this: _Recordset) Sort* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1031)
    END Sort;

    PROCEDURE (this: _Recordset) PUTSort* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1031, p1)
    END PUTSort;

    PROCEDURE (this: _Recordset) Status* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1029)
    END Status;

    PROCEDURE (this: _Recordset) State* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1054)
    END State;

    PROCEDURE (this: _Recordset) _xClone* (): _Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610809392, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END _xClone;

    PROCEDURE (this: _Recordset) UpdateBatch* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1035, arg, NIL);
    END UpdateBatch;

    PROCEDURE (this: _Recordset) CancelBatch* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1049, arg, NIL);
    END CancelBatch;

    PROCEDURE (this: _Recordset) CursorLocation* (): CursorLocationEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1051)
    END CursorLocation;

    PROCEDURE (this: _Recordset) PUTCursorLocation* (p1: CursorLocationEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1051, p1)
    END PUTCursorLocation;

    PROCEDURE (this: _Recordset) NextRecordset* ((* optional *) RecordsAffected: CtlT.Any): _Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RecordsAffected, arg[0]);
        CtlC.CallParMethod(this, 1052, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END NextRecordset;

    PROCEDURE (this: _Recordset) Supports* (CursorOptions: CursorOptionEnum): BOOLEAN, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(CursorOptions, arg[0]);
        CtlC.CallParMethod(this, 1036, arg, ret);
        RETURN CtlC.VarBool(ret)
    END Supports;

    PROCEDURE (this: _Recordset) Collect* (Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, -8, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Collect;

    PROCEDURE (this: _Recordset) PUTCollect* (Index: CtlT.Any; p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -8, arg, NIL);
    END PUTCollect;

    PROCEDURE (this: _Recordset) MarshalOptions* (): MarshalOptionsEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1053)
    END MarshalOptions;

    PROCEDURE (this: _Recordset) PUTMarshalOptions* (p1: MarshalOptionsEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1053, p1)
    END PUTMarshalOptions;

    PROCEDURE (this: _Recordset) Find* (Criteria: ARRAY OF CHAR; SkipRecords: INTEGER; SearchDirection: SearchDirectionEnum; (* optional *) Start: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[3]);
        CtlC.IntVar(SkipRecords, arg[2]);
        CtlC.IntVar(SearchDirection, arg[1]);
        CtlC.AnyVar(Start, arg[0]);
        CtlC.CallParMethod(this, 1058, arg, NIL);
    END Find;

    PROCEDURE (this: _Recordset) Cancel* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1055, NIL);
    END Cancel;

    PROCEDURE (this: _Recordset) DataSource* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1056)
    END DataSource;

    PROCEDURE (this: _Recordset) PUTREFDataSource* (p1: CtlT.IUnknown), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntfceVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1056, arg, NIL);
    END PUTREFDataSource;

    PROCEDURE (this: _Recordset) Save* (FileName: ARRAY OF CHAR; PersistFormat: PersistFormatEnum), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[1]);
        CtlC.IntVar(PersistFormat, arg[0]);
        CtlC.CallParMethod(this, 1057, arg, NIL);
    END Save;

    PROCEDURE (this: _Recordset) ActiveCommand* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1061)
    END ActiveCommand;

    PROCEDURE (this: _Recordset) PUTStayInSync* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1063, p1)
    END PUTStayInSync;

    PROCEDURE (this: _Recordset) StayInSync* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1063)
    END StayInSync;

    PROCEDURE (this: _Recordset) GetString* (StringFormat: StringFormatEnum; NumRows: INTEGER; ColumnDelimeter: ARRAY OF CHAR; RowDelimeter: ARRAY OF CHAR; NullExpr: ARRAY OF CHAR): CtlT.Strg, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(StringFormat, arg[4]);
        CtlC.IntVar(NumRows, arg[3]);
        CtlC.StrVar(ColumnDelimeter, arg[2]);
        CtlC.StrVar(RowDelimeter, arg[1]);
        CtlC.StrVar(NullExpr, arg[0]);
        CtlC.CallParMethod(this, 1062, arg, ret);
        RETURN CtlC.VarStr(ret)
    END GetString;

    PROCEDURE (this: _Recordset) DataMember* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1064)
    END DataMember;

    PROCEDURE (this: _Recordset) PUTDataMember* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1064, p1)
    END PUTDataMember;

    PROCEDURE (this: _Recordset) CompareBookmarks* (Bookmark1: CtlT.Any; Bookmark2: CtlT.Any): CompareEnum, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bookmark1, arg[1]);
        CtlC.AnyVar(Bookmark2, arg[0]);
        CtlC.CallParMethod(this, 1065, arg, ret);
        RETURN CtlC.VarInt(ret)
    END CompareBookmarks;

    PROCEDURE (this: _Recordset) Clone* (LockType: LockTypeEnum): _Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(LockType, arg[0]);
        CtlC.CallParMethod(this, 1034, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END Clone;

    PROCEDURE (this: _Recordset) Resync* (AffectRecords: AffectEnum; ResyncValues: ResyncEnum), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[1]);
        CtlC.IntVar(ResyncValues, arg[0]);
        CtlC.CallParMethod(this, 1024, arg, NIL);
    END Resync;


    (* ---------- _Recordset15, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Recordset15) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: _Recordset15) AbsolutePosition* (): PositionEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1000)
    END AbsolutePosition;

    PROCEDURE (this: _Recordset15) PUTAbsolutePosition* (p1: PositionEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1000, p1)
    END PUTAbsolutePosition;

    PROCEDURE (this: _Recordset15) PUTREFActiveConnection* (p1: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1001, arg, NIL);
    END PUTREFActiveConnection;

    PROCEDURE (this: _Recordset15) PUTActiveConnection* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1001, p1)
    END PUTActiveConnection;

    PROCEDURE (this: _Recordset15) ActiveConnection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1001)
    END ActiveConnection;

    PROCEDURE (this: _Recordset15) BOF* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1002)
    END BOF;

    PROCEDURE (this: _Recordset15) Bookmark* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1003)
    END Bookmark;

    PROCEDURE (this: _Recordset15) PUTBookmark* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1003, p1)
    END PUTBookmark;

    PROCEDURE (this: _Recordset15) CacheSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END CacheSize;

    PROCEDURE (this: _Recordset15) PUTCacheSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTCacheSize;

    PROCEDURE (this: _Recordset15) CursorType* (): CursorTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END CursorType;

    PROCEDURE (this: _Recordset15) PUTCursorType* (p1: CursorTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTCursorType;

    PROCEDURE (this: _Recordset15) EOF* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1006)
    END EOF;

    PROCEDURE (this: _Recordset15) Fields* (): Fields, NEW;
    BEGIN
        RETURN ThisFields(CtlC.GetAny(this, 0))
    END Fields;

    PROCEDURE (this: _Recordset15) LockType* (): LockTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1008)
    END LockType;

    PROCEDURE (this: _Recordset15) PUTLockType* (p1: LockTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1008, p1)
    END PUTLockType;

    PROCEDURE (this: _Recordset15) MaxRecords* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1009)
    END MaxRecords;

    PROCEDURE (this: _Recordset15) PUTMaxRecords* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1009, p1)
    END PUTMaxRecords;

    PROCEDURE (this: _Recordset15) RecordCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1010)
    END RecordCount;

    PROCEDURE (this: _Recordset15) PUTREFSource* (p1: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1011, arg, NIL);
    END PUTREFSource;

    PROCEDURE (this: _Recordset15) PUTSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1011, p1)
    END PUTSource;

    PROCEDURE (this: _Recordset15) Source* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1011)
    END Source;

    PROCEDURE (this: _Recordset15) AddNew* ((* optional *) FieldList: CtlT.Any; Values: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FieldList, arg[1]);
        CtlC.AnyVar(Values, arg[0]);
        CtlC.CallParMethod(this, 1012, arg, NIL);
    END AddNew;

    PROCEDURE (this: _Recordset15) CancelUpdate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1013, NIL);
    END CancelUpdate;

    PROCEDURE (this: _Recordset15) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1014, NIL);
    END Close;

    PROCEDURE (this: _Recordset15) Delete* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1015, arg, NIL);
    END Delete;

    PROCEDURE (this: _Recordset15) GetRows* (Rows: INTEGER; (* optional *) Start: CtlT.Any; Fields: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Rows, arg[2]);
        CtlC.AnyVar(Start, arg[1]);
        CtlC.AnyVar(Fields, arg[0]);
        CtlC.CallParMethod(this, 1016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetRows;

    PROCEDURE (this: _Recordset15) Move* (NumRecords: INTEGER; (* optional *) Start: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(NumRecords, arg[1]);
        CtlC.AnyVar(Start, arg[0]);
        CtlC.CallParMethod(this, 1017, arg, NIL);
    END Move;

    PROCEDURE (this: _Recordset15) MoveNext* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1018, NIL);
    END MoveNext;

    PROCEDURE (this: _Recordset15) MovePrevious* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1019, NIL);
    END MovePrevious;

    PROCEDURE (this: _Recordset15) MoveFirst* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1020, NIL);
    END MoveFirst;

    PROCEDURE (this: _Recordset15) MoveLast* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1021, NIL);
    END MoveLast;

    PROCEDURE (this: _Recordset15) Open* (Source: CtlT.Any; ActiveConnection: CtlT.Any; CursorType: CursorTypeEnum; LockType: LockTypeEnum; Options: INTEGER), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Source, arg[4]);
        CtlC.AnyVar(ActiveConnection, arg[3]);
        CtlC.IntVar(CursorType, arg[2]);
        CtlC.IntVar(LockType, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1022, arg, NIL);
    END Open;

    PROCEDURE (this: _Recordset15) Requery* (Options: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1023, arg, NIL);
    END Requery;

    PROCEDURE (this: _Recordset15) _xResync* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1610809378, arg, NIL);
    END _xResync;

    PROCEDURE (this: _Recordset15) Update* ((* optional *) Fields: CtlT.Any; Values: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Fields, arg[1]);
        CtlC.AnyVar(Values, arg[0]);
        CtlC.CallParMethod(this, 1025, arg, NIL);
    END Update;

    PROCEDURE (this: _Recordset15) AbsolutePage* (): PositionEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1047)
    END AbsolutePage;

    PROCEDURE (this: _Recordset15) PUTAbsolutePage* (p1: PositionEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1047, p1)
    END PUTAbsolutePage;

    PROCEDURE (this: _Recordset15) EditMode* (): EditModeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1026)
    END EditMode;

    PROCEDURE (this: _Recordset15) Filter* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1030)
    END Filter;

    PROCEDURE (this: _Recordset15) PUTFilter* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1030, p1)
    END PUTFilter;

    PROCEDURE (this: _Recordset15) PageCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1050)
    END PageCount;

    PROCEDURE (this: _Recordset15) PageSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1048)
    END PageSize;

    PROCEDURE (this: _Recordset15) PUTPageSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1048, p1)
    END PUTPageSize;

    PROCEDURE (this: _Recordset15) Sort* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1031)
    END Sort;

    PROCEDURE (this: _Recordset15) PUTSort* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1031, p1)
    END PUTSort;

    PROCEDURE (this: _Recordset15) Status* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1029)
    END Status;

    PROCEDURE (this: _Recordset15) State* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1054)
    END State;

    PROCEDURE (this: _Recordset15) _xClone* (): _Recordset, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610809392, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END _xClone;

    PROCEDURE (this: _Recordset15) UpdateBatch* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1035, arg, NIL);
    END UpdateBatch;

    PROCEDURE (this: _Recordset15) CancelBatch* (AffectRecords: AffectEnum), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AffectRecords, arg[0]);
        CtlC.CallParMethod(this, 1049, arg, NIL);
    END CancelBatch;

    PROCEDURE (this: _Recordset15) CursorLocation* (): CursorLocationEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1051)
    END CursorLocation;

    PROCEDURE (this: _Recordset15) PUTCursorLocation* (p1: CursorLocationEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1051, p1)
    END PUTCursorLocation;

    PROCEDURE (this: _Recordset15) NextRecordset* ((* optional *) RecordsAffected: CtlT.Any): _Recordset, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RecordsAffected, arg[0]);
        CtlC.CallParMethod(this, 1052, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END NextRecordset;

    PROCEDURE (this: _Recordset15) Supports* (CursorOptions: CursorOptionEnum): BOOLEAN, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(CursorOptions, arg[0]);
        CtlC.CallParMethod(this, 1036, arg, ret);
        RETURN CtlC.VarBool(ret)
    END Supports;

    PROCEDURE (this: _Recordset15) Collect* (Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, -8, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Collect;

    PROCEDURE (this: _Recordset15) PUTCollect* (Index: CtlT.Any; p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -8, arg, NIL);
    END PUTCollect;

    PROCEDURE (this: _Recordset15) MarshalOptions* (): MarshalOptionsEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1053)
    END MarshalOptions;

    PROCEDURE (this: _Recordset15) PUTMarshalOptions* (p1: MarshalOptionsEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1053, p1)
    END PUTMarshalOptions;

    PROCEDURE (this: _Recordset15) Find* (Criteria: ARRAY OF CHAR; SkipRecords: INTEGER; SearchDirection: SearchDirectionEnum; (* optional *) Start: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Criteria, arg[3]);
        CtlC.IntVar(SkipRecords, arg[2]);
        CtlC.IntVar(SearchDirection, arg[1]);
        CtlC.AnyVar(Start, arg[0]);
        CtlC.CallParMethod(this, 1058, arg, NIL);
    END Find;


    (* ---------- Fields, dual, nonextensible ---------- *)

    PROCEDURE (this: Fields) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
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

    PROCEDURE (this: Fields) Item* (Index: CtlT.Any): Field, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisField(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Fields) Append* (Name: ARRAY OF CHAR; Type: DataTypeEnum; DefinedSize: INTEGER; Attrib: FieldAttributeEnum), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.IntVar(Type, arg[2]);
        CtlC.IntVar(DefinedSize, arg[1]);
        CtlC.IntVar(Attrib, arg[0]);
        CtlC.CallParMethod(this, 1610874880, arg, NIL);
    END Append;

    PROCEDURE (this: Fields) Delete* (Index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 1610874881, arg, NIL);
    END Delete;


    (* ---------- Fields15, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: Fields15) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
    END Count;

    PROCEDURE (this: Fields15) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Fields15) Refresh* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743810, NIL);
    END Refresh;

    PROCEDURE (this: Fields15) Item* (Index: CtlT.Any): Field, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisField(CtlC.VarAny(ret))
    END Item;


    (* ---------- Field, dual, nonextensible ---------- *)

    PROCEDURE (this: Field) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: Field) ActualSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1109)
    END ActualSize;

    PROCEDURE (this: Field) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1036)
    END Attributes;

    PROCEDURE (this: Field) DefinedSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1103)
    END DefinedSize;

    PROCEDURE (this: Field) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1100)
    END Name;

    PROCEDURE (this: Field) Type* (): DataTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1102)
    END Type;

    PROCEDURE (this: Field) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: Field) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: Field) Precision* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 1610809351)
    END Precision;

    PROCEDURE (this: Field) NumericScale* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 1610809352)
    END NumericScale;

    PROCEDURE (this: Field) AppendChunk* (Data: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Data, arg[0]);
        CtlC.CallParMethod(this, 1107, arg, NIL);
    END AppendChunk;

    PROCEDURE (this: Field) GetChunk* (Length: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 1108, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetChunk;

    PROCEDURE (this: Field) OriginalValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1104)
    END OriginalValue;

    PROCEDURE (this: Field) UnderlyingValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1105)
    END UnderlyingValue;

    PROCEDURE (this: Field) DataFormat* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610809357)
    END DataFormat;

    PROCEDURE (this: Field) PUTREFDataFormat* (p1: CtlT.IUnknown), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntfceVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1610809357, arg, NIL);
    END PUTREFDataFormat;

    PROCEDURE (this: Field) PUTPrecision* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 1610809351, p1)
    END PUTPrecision;

    PROCEDURE (this: Field) PUTNumericScale* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 1610809352, p1)
    END PUTNumericScale;

    PROCEDURE (this: Field) PUTType* (p1: DataTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1102, p1)
    END PUTType;

    PROCEDURE (this: Field) PUTDefinedSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1103, p1)
    END PUTDefinedSize;

    PROCEDURE (this: Field) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1036, p1)
    END PUTAttributes;


    (* ---------- _Parameter, dual, nonextensible ---------- *)

    PROCEDURE (this: _Parameter) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: _Parameter) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: _Parameter) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809344, p1)
    END PUTName;

    PROCEDURE (this: _Parameter) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _Parameter) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _Parameter) Type* (): DataTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809348)
    END Type;

    PROCEDURE (this: _Parameter) PUTType* (p1: DataTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809348, p1)
    END PUTType;

    PROCEDURE (this: _Parameter) PUTDirection* (p1: ParameterDirectionEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809350, p1)
    END PUTDirection;

    PROCEDURE (this: _Parameter) Direction* (): ParameterDirectionEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809350)
    END Direction;

    PROCEDURE (this: _Parameter) PUTPrecision* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 1610809352, p1)
    END PUTPrecision;

    PROCEDURE (this: _Parameter) Precision* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 1610809352)
    END Precision;

    PROCEDURE (this: _Parameter) PUTNumericScale* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 1610809354, p1)
    END PUTNumericScale;

    PROCEDURE (this: _Parameter) NumericScale* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 1610809354)
    END NumericScale;

    PROCEDURE (this: _Parameter) PUTSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809356, p1)
    END PUTSize;

    PROCEDURE (this: _Parameter) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809356)
    END Size;

    PROCEDURE (this: _Parameter) AppendChunk* (Val: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Val, arg[0]);
        CtlC.CallParMethod(this, 1610809358, arg, NIL);
    END AppendChunk;

    PROCEDURE (this: _Parameter) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809359)
    END Attributes;

    PROCEDURE (this: _Parameter) PUTAttributes* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809359, p1)
    END PUTAttributes;


    (* ---------- Parameters, dual, nonextensible ---------- *)

    PROCEDURE (this: Parameters) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743808)
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

    PROCEDURE (this: Parameters) Append* (Object: CtlT.Object), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Object, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, NIL);
    END Append;

    PROCEDURE (this: Parameters) Delete* (Index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Delete;

    PROCEDURE (this: Parameters) Item* (Index: CtlT.Any): _Parameter, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Parameter(CtlC.VarAny(ret))
    END Item;


    (* ---------- _Command, dual, nonextensible ---------- *)

    PROCEDURE (this: _Command) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: _Command) ActiveConnection* (): _Connection, NEW;
    BEGIN
        RETURN This_Connection(CtlC.GetAny(this, 1610809344))
    END ActiveConnection;

    PROCEDURE (this: _Command) PUTREFActiveConnection* (p1: _Connection), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1610809344, arg, NIL);
    END PUTREFActiveConnection;

    PROCEDURE (this: _Command) PUTActiveConnection* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610809344, p1)
    END PUTActiveConnection;

    PROCEDURE (this: _Command) CommandText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END CommandText;

    PROCEDURE (this: _Command) PUTCommandText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTCommandText;

    PROCEDURE (this: _Command) CommandTimeout* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END CommandTimeout;

    PROCEDURE (this: _Command) PUTCommandTimeout* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTCommandTimeout;

    PROCEDURE (this: _Command) Prepared* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809351)
    END Prepared;

    PROCEDURE (this: _Command) PUTPrepared* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809351, p1)
    END PUTPrepared;

    PROCEDURE (this: _Command) Execute* (RecordsAffected: CtlT.Any; Parameters: CtlT.Any; Options: INTEGER): _Recordset, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RecordsAffected, arg[2]);
        CtlC.AnyVar(Parameters, arg[1]);
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1610809353, arg, ret);
        RETURN This_Recordset(CtlC.VarAny(ret))
    END Execute;

    PROCEDURE (this: _Command) CreateParameter* (Name: ARRAY OF CHAR; Type: DataTypeEnum; Direction: ParameterDirectionEnum; Size: INTEGER; (* optional *) Value: CtlT.Any): _Parameter, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[4]);
        CtlC.IntVar(Type, arg[3]);
        CtlC.IntVar(Direction, arg[2]);
        CtlC.IntVar(Size, arg[1]);
        CtlC.AnyVar(Value, arg[0]);
        CtlC.CallParMethod(this, 1610809354, arg, ret);
        RETURN This_Parameter(CtlC.VarAny(ret))
    END CreateParameter;

    PROCEDURE (this: _Command) Parameters* (): Parameters, NEW;
    BEGIN
        RETURN ThisParameters(CtlC.GetAny(this, 0))
    END Parameters;

    PROCEDURE (this: _Command) PUTCommandType* (p1: CommandTypeEnum), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809356, p1)
    END PUTCommandType;

    PROCEDURE (this: _Command) CommandType* (): CommandTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809356)
    END CommandType;

    PROCEDURE (this: _Command) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809358)
    END Name;

    PROCEDURE (this: _Command) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809358, p1)
    END PUTName;

    PROCEDURE (this: _Command) State* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874880)
    END State;

    PROCEDURE (this: _Command) Cancel* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874881, NIL);
    END Cancel;


    (* ---------- ConnectionEvents ---------- *)

    PROCEDURE (this: ConnectionEvents) InfoMessage* (pError: Error; VAR adStatus: EventStatusEnum; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) BeginTransComplete* (TransactionLevel: INTEGER; pError: Error; VAR adStatus: EventStatusEnum; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) CommitTransComplete* (pError: Error; VAR adStatus: EventStatusEnum; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) RollbackTransComplete* (pError: Error; VAR adStatus: EventStatusEnum; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) WillExecute* (VAR Source: CtlT.Strg; VAR CursorType: CursorTypeEnum; VAR LockType: LockTypeEnum; VAR Options: INTEGER; VAR adStatus: EventStatusEnum; pCommand: _Command; pRecordset: _Recordset; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) ExecuteComplete* (RecordsAffected: INTEGER; pError: Error; VAR adStatus: EventStatusEnum; pCommand: _Command; pRecordset: _Recordset; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) WillConnect* (VAR ConnectionString: CtlT.Strg; VAR UserID: CtlT.Strg; VAR Password: CtlT.Strg; VAR Options: INTEGER; VAR adStatus: EventStatusEnum; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) ConnectComplete* (pError: Error; VAR adStatus: EventStatusEnum; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) Disconnect* (VAR adStatus: EventStatusEnum; pConnection: _Connection): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: ConnectionEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 0: ASSERT(n = 3, 11); CtlC.ResVar(this.InfoMessage(ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Connection(CtlC.VarAny(par[0]))), ret)
        | 1: ASSERT(n = 4, 11); CtlC.ResVar(this.BeginTransComplete(CtlC.VarInt(par[3]), ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Connection(CtlC.VarAny(par[0]))), ret)
        | 3: ASSERT(n = 3, 11); CtlC.ResVar(this.CommitTransComplete(ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Connection(CtlC.VarAny(par[0]))), ret)
        | 2: ASSERT(n = 3, 11); CtlC.ResVar(this.RollbackTransComplete(ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Connection(CtlC.VarAny(par[0]))), ret)
        | 4: ASSERT(n = 8, 11); CtlC.ResVar(this.WillExecute(CtlC.VarRefStr(par[7])[0], CtlC.VarRefInt(par[6])[0], CtlC.VarRefInt(par[5])[0], CtlC.VarRefInt(par[4])[0], CtlC.VarRefInt(par[3])[0], This_Command(CtlC.VarAny(par[2])), This_Recordset(CtlC.VarAny(par[1])), This_Connection(CtlC.VarAny(par[0]))), ret); CtlC.RetStr(par[7])
        | 5: ASSERT(n = 6, 11); CtlC.ResVar(this.ExecuteComplete(CtlC.VarInt(par[5]), ThisError(CtlC.VarAny(par[4])), CtlC.VarRefInt(par[3])[0], This_Command(CtlC.VarAny(par[2])), This_Recordset(CtlC.VarAny(par[1])), This_Connection(CtlC.VarAny(par[0]))), ret)
        | 6: ASSERT(n = 6, 11); CtlC.ResVar(this.WillConnect(CtlC.VarRefStr(par[5])[0], CtlC.VarRefStr(par[4])[0], CtlC.VarRefStr(par[3])[0], CtlC.VarRefInt(par[2])[0], CtlC.VarRefInt(par[1])[0], This_Connection(CtlC.VarAny(par[0]))), ret); CtlC.RetStr(par[5]); CtlC.RetStr(par[4]); CtlC.RetStr(par[3])
        | 7: ASSERT(n = 3, 11); CtlC.ResVar(this.ConnectComplete(ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Connection(CtlC.VarAny(par[0]))), ret)
        | 8: ASSERT(n = 2, 11); CtlC.ResVar(this.Disconnect(CtlC.VarRefInt(par[1])[0], This_Connection(CtlC.VarAny(par[0]))), ret)
        END
    END Invoke;

    PROCEDURE (this: ConnectionEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{00000400-0000-0010-8000-00AA006D2EA4}"
    END GetIID;


    (* ---------- RecordsetEvents ---------- *)

    PROCEDURE (this: RecordsetEvents) WillChangeField* (cFields: INTEGER; Fields: CtlT.Any; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) FieldChangeComplete* (cFields: INTEGER; Fields: CtlT.Any; pError: Error; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) WillChangeRecord* (adReason: EventReasonEnum; cRecords: INTEGER; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) RecordChangeComplete* (adReason: EventReasonEnum; cRecords: INTEGER; pError: Error; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) WillChangeRecordset* (adReason: EventReasonEnum; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) RecordsetChangeComplete* (adReason: EventReasonEnum; pError: Error; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) WillMove* (adReason: EventReasonEnum; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) MoveComplete* (adReason: EventReasonEnum; pError: Error; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) EndOfRecordset* (VAR fMoreData: BOOLEAN; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) FetchProgress* (Progress: INTEGER; MaxProgress: INTEGER; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) FetchComplete* (pError: Error; VAR adStatus: EventStatusEnum; pRecordset: _Recordset): CtlT.RESULT, NEW, ABSTRACT;

    PROCEDURE (this: RecordsetEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 9: ASSERT(n = 4, 11); CtlC.ResVar(this.WillChangeField(CtlC.VarInt(par[3]), CtlC.VarAny(par[2]), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 10: ASSERT(n = 5, 11); CtlC.ResVar(this.FieldChangeComplete(CtlC.VarInt(par[4]), CtlC.VarAny(par[3]), ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 11: ASSERT(n = 4, 11); CtlC.ResVar(this.WillChangeRecord(CtlC.VarInt(par[3]), CtlC.VarInt(par[2]), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 12: ASSERT(n = 5, 11); CtlC.ResVar(this.RecordChangeComplete(CtlC.VarInt(par[4]), CtlC.VarInt(par[3]), ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 13: ASSERT(n = 3, 11); CtlC.ResVar(this.WillChangeRecordset(CtlC.VarInt(par[2]), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 14: ASSERT(n = 4, 11); CtlC.ResVar(this.RecordsetChangeComplete(CtlC.VarInt(par[3]), ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 15: ASSERT(n = 3, 11); CtlC.ResVar(this.WillMove(CtlC.VarInt(par[2]), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 16: ASSERT(n = 4, 11); CtlC.ResVar(this.MoveComplete(CtlC.VarInt(par[3]), ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 17: ASSERT(n = 3, 11); CtlC.ResVar(this.EndOfRecordset(CtlC.VarRefBool(par[2])[0], CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret); CtlC.RetBool(par[2])
        | 18: ASSERT(n = 4, 11); CtlC.ResVar(this.FetchProgress(CtlC.VarInt(par[3]), CtlC.VarInt(par[2]), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        | 19: ASSERT(n = 3, 11); CtlC.ResVar(this.FetchComplete(ThisError(CtlC.VarAny(par[2])), CtlC.VarRefInt(par[1])[0], This_Recordset(CtlC.VarAny(par[0]))), ret)
        END
    END Invoke;

    PROCEDURE (this: RecordsetEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{00000266-0000-0010-8000-00AA006D2EA4}"
    END GetIID;


    (* ---------- Field15, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: Field15) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 500))
    END Properties;

    PROCEDURE (this: Field15) ActualSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1109)
    END ActualSize;

    PROCEDURE (this: Field15) Attributes* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1036)
    END Attributes;

    PROCEDURE (this: Field15) DefinedSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1103)
    END DefinedSize;

    PROCEDURE (this: Field15) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1100)
    END Name;

    PROCEDURE (this: Field15) Type* (): DataTypeEnum, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1102)
    END Type;

    PROCEDURE (this: Field15) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: Field15) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: Field15) Precision* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 1610809351)
    END Precision;

    PROCEDURE (this: Field15) NumericScale* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 1610809352)
    END NumericScale;

    PROCEDURE (this: Field15) AppendChunk* (Data: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Data, arg[0]);
        CtlC.CallParMethod(this, 1107, arg, NIL);
    END AppendChunk;

    PROCEDURE (this: Field15) GetChunk* (Length: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 1108, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetChunk;

    PROCEDURE (this: Field15) OriginalValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1104)
    END OriginalValue;

    PROCEDURE (this: Field15) UnderlyingValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1105)
    END UnderlyingValue;


    PROCEDURE NewConnection* (): _Connection;
    BEGIN
        RETURN This_Connection(CtlC.NewObj("{00000514-0000-0010-8000-00AA006D2EA4}"))
    END NewConnection;

    PROCEDURE NewCommand* (): _Command;
    BEGIN
        RETURN This_Command(CtlC.NewObj("{00000507-0000-0010-8000-00AA006D2EA4}"))
    END NewCommand;

    PROCEDURE NewRecordset* (): _Recordset;
    BEGIN
        RETURN This_Recordset(CtlC.NewObj("{00000535-0000-0010-8000-00AA006D2EA4}"))
    END NewRecordset;

    PROCEDURE NewParameter* (): _Parameter;
    BEGIN
        RETURN This_Parameter(CtlC.NewObj("{0000050B-0000-0010-8000-00AA006D2EA4}"))
    END NewParameter;

END CtlADODB.
