﻿MODULE WinSql ["ODBC32.dll"];
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

    CONST (* macros *)
        ODBCVER* = 528;
        SQL_SPEC_MAJOR* = 2;
        SQL_SPEC_MINOR* = 10;
        SQL_SPEC_STRING* = "02.10";
        SQL_SQLSTATE_SIZE* = 5;
        SQL_MAX_MESSAGE_LENGTH* = 512;
        SQL_MAX_DSN_LENGTH* = 32;
        SQL_INVALID_HANDLE* = -2;
        SQL_ERROR* = -1;
        SQL_SUCCESS* = 0;
        SQL_SUCCESS_WITH_INFO* = 1;
        SQL_NO_DATA_FOUND* = 100;
        SQL_NO_DATA* = 100;
        SQL_CHAR* = 1;
        SQL_WCHAR* = -8;
        SQL_NUMERIC* = 2;
        SQL_DECIMAL* = 3;
        SQL_INTEGER* = 4;
        SQL_SMALLINT* = 5;
        SQL_FLOAT* = 6;
        SQL_REAL* = 7;
        SQL_DOUBLE* = 8;
        SQL_VARCHAR* = 12;
        SQL_WVARCHAR* = -9;
        SQL_TYPE_NULL* = 0;
        SQL_TYPE_MAX* = 12;
        SQL_C_CHAR* = 1;
        SQL_C_WCHAR* = -8;
        SQL_C_LONG* = 4;
        SQL_C_SHORT* = 5;
        SQL_C_FLOAT* = 7;
        SQL_C_DOUBLE* = 8;
        SQL_C_DEFAULT* = 99;
        SQL_NO_NULLS* = 0;
        SQL_NULLABLE* = 1;
        SQL_NULLABLE_UNKNOWN* = 2;
        SQL_NULL_DATA* = -1;
        SQL_DATA_AT_EXEC* = -2;
        SQL_NTS* = -3;
        SQL_CLOSE* = 0;
        SQL_DROP* = 1;
        SQL_UNBIND* = 2;
        SQL_RESET_PARAMS* = 3;
        SQL_COMMIT* = 0;
        SQL_ROLLBACK* = 1;
        SQL_CD_TRUE* = 1;
        SQL_CD_FALSE* = 0;
        SQL_COLUMN_COUNT* = 0;
        SQL_COLUMN_NAME* = 1;
        SQL_COLUMN_TYPE* = 2;
        SQL_COLUMN_LENGTH* = 3;
        SQL_COLUMN_PRECISION* = 4;
        SQL_COLUMN_SCALE* = 5;
        SQL_COLUMN_DISPLAY_SIZE* = 6;
        SQL_COLUMN_NULLABLE* = 7;
        SQL_COLUMN_UNSIGNED* = 8;
        SQL_COLUMN_MONEY* = 9;
        SQL_COLUMN_UPDATABLE* = 10;
        SQL_COLUMN_AUTO_INCREMENT* = 11;
        SQL_COLUMN_CASE_SENSITIVE* = 12;
        SQL_COLUMN_SEARCHABLE* = 13;
        SQL_COLUMN_TYPE_NAME* = 14;
        SQL_COLUMN_TABLE_NAME* = 15;
        SQL_COLUMN_OWNER_NAME* = 16;
        SQL_COLUMN_QUALIFIER_NAME* = 17;
        SQL_COLUMN_LABEL* = 18;
        SQL_COLATT_OPT_MAX* = 18;
        SQL_COLUMN_DRIVER_START* = 1000;
        SQL_COLATT_OPT_MIN* = 0;
        SQL_ATTR_CONNECTION_DEAD* = 1209;
        SQL_ATTR_READONLY* = 0;
        SQL_ATTR_WRITE* = 1;
        SQL_ATTR_READWRITE_UNKNOWN* = 2;
        SQL_UNSEARCHABLE* = 0;
        SQL_LIKE_ONLY* = 1;
        SQL_ALL_EXCEPT_LIKE* = 2;
        SQL_SEARCHABLE* = 3;
        SQL_NULL_HENV* = 0;
        SQL_NULL_HDBC* = 0;
        SQL_NULL_HSTMT* = 0;
        SQL_MAX_OPTION_STRING_LENGTH* = 256;
        SQL_STILL_EXECUTING* = 2;
        SQL_NEED_DATA* = 99;
        SQL_DATE* = 9;
        SQL_TIME* = 10;
        SQL_TIMESTAMP* = 11;
        SQL_LONGVARCHAR* = -1;
        SQL_WLONGVARCHAR* = -10;
        SQL_BINARY* = -2;
        SQL_VARBINARY* = -3;
        SQL_LONGVARBINARY* = -4;
        SQL_BIGINT* = -5;
        SQL_TINYINT* = -6;
        SQL_BIT* = -7;
        SQL_INTERVAL_YEAR* = -80;
        SQL_INTERVAL_MONTH* = -81;
        SQL_INTERVAL_YEAR_TO_MONTH* = -82;
        SQL_INTERVAL_DAY* = -83;
        SQL_INTERVAL_HOUR* = -84;
        SQL_INTERVAL_MINUTE* = -85;
        SQL_INTERVAL_SECOND* = -86;
        SQL_INTERVAL_DAY_TO_HOUR* = -87;
        SQL_INTERVAL_DAY_TO_MINUTE* = -88;
        SQL_INTERVAL_DAY_TO_SECOND* = -89;
        SQL_INTERVAL_HOUR_TO_MINUTE* = -90;
        SQL_INTERVAL_HOUR_TO_SECOND* = -91;
        SQL_INTERVAL_MINUTE_TO_SECOND* = -92;
        SQL_UNICODE* = -95;
        SQL_TYPE_DATE* = 91;
        SQL_TYPE_DRIVER_START* = -80;
        SQL_TYPE_DRIVER_END* = -95;
        SQL_TYPE_TIME* = 92;
        SQL_TYPE_TIMESTAMP* = 93;
        SQL_SIGNED_OFFSET* = -20;
        SQL_UNSIGNED_OFFSET* = -22;
        SQL_C_DATE* = 9;
        SQL_C_TIME* = 10;
        SQL_C_TIMESTAMP* = 11;
        SQL_C_BINARY* = -2;
        SQL_C_BIT* = -7;
        SQL_C_TINYINT* = -6;
        SQL_C_SLONG* = -16;
        SQL_C_SSHORT* = -15;
        SQL_C_STINYINT* = -26;
        SQL_C_ULONG* = -18;
        SQL_C_USHORT* = -17;
        SQL_C_UTINYINT* = -28;
        SQL_C_BOOKMARK* = -18;
        SQL_TYPE_MIN* = -7;
        SQL_ALL_TYPES* = 0;
        SQL_DRIVER_NOPROMPT* = 0;
        SQL_DRIVER_COMPLETE* = 1;
        SQL_DRIVER_PROMPT* = 2;
        SQL_DRIVER_COMPLETE_REQUIRED* = 3;
        SQL_NO_TOTAL* = -4;
        SQL_DEFAULT_PARAM* = -5;
        SQL_IGNORE* = -6;
        SQL_LEN_DATA_AT_EXEC_OFFSET* = -100;
        SQL_API_SQLALLOCCONNECT* = 1;
        SQL_API_SQLALLOCENV* = 2;
        SQL_API_SQLALLOCSTMT* = 3;
        SQL_API_SQLBINDCOL* = 4;
        SQL_API_SQLCANCEL* = 5;
        SQL_API_SQLCOLATTRIBUTES* = 6;
        SQL_API_SQLCONNECT* = 7;
        SQL_API_SQLDESCRIBECOL* = 8;
        SQL_API_SQLDISCONNECT* = 9;
        SQL_API_SQLERROR* = 10;
        SQL_API_SQLEXECDIRECT* = 11;
        SQL_API_SQLEXECUTE* = 12;
        SQL_API_SQLFETCH* = 13;
        SQL_API_SQLFREECONNECT* = 14;
        SQL_API_SQLFREEENV* = 15;
        SQL_API_SQLFREESTMT* = 16;
        SQL_API_SQLGETCURSORNAME* = 17;
        SQL_API_SQLNUMRESULTCOLS* = 18;
        SQL_API_SQLPREPARE* = 19;
        SQL_API_SQLROWCOUNT* = 20;
        SQL_API_SQLSETCURSORNAME* = 21;
        SQL_API_SQLSETPARAM* = 22;
        SQL_API_SQLTRANSACT* = 23;
        SQL_NUM_FUNCTIONS* = 23;
        SQL_EXT_API_START* = 40;
        SQL_API_SQLCOLUMNS* = 40;
        SQL_API_SQLDRIVERCONNECT* = 41;
        SQL_API_SQLGETCONNECTOPTION* = 42;
        SQL_API_SQLGETDATA* = 43;
        SQL_API_SQLGETFUNCTIONS* = 44;
        SQL_API_SQLGETINFO* = 45;
        SQL_API_SQLGETSTMTOPTION* = 46;
        SQL_API_SQLGETTYPEINFO* = 47;
        SQL_API_SQLPARAMDATA* = 48;
        SQL_API_SQLPUTDATA* = 49;
        SQL_API_SQLSETCONNECTOPTION* = 50;
        SQL_API_SQLSETSTMTOPTION* = 51;
        SQL_API_SQLSPECIALCOLUMNS* = 52;
        SQL_API_SQLSTATISTICS* = 53;
        SQL_API_SQLTABLES* = 54;
        SQL_API_SQLBROWSECONNECT* = 55;
        SQL_API_SQLCOLUMNPRIVILEGES* = 56;
        SQL_API_SQLDATASOURCES* = 57;
        SQL_API_SQLDESCRIBEPARAM* = 58;
        SQL_API_SQLEXTENDEDFETCH* = 59;
        SQL_API_SQLFOREIGNKEYS* = 60;
        SQL_API_SQLMORERESULTS* = 61;
        SQL_API_SQLNATIVESQL* = 62;
        SQL_API_SQLNUMPARAMS* = 63;
        SQL_API_SQLPARAMOPTIONS* = 64;
        SQL_API_SQLPRIMARYKEYS* = 65;
        SQL_API_SQLPROCEDURECOLUMNS* = 66;
        SQL_API_SQLPROCEDURES* = 67;
        SQL_API_SQLSETPOS* = 68;
        SQL_API_SQLSETSCROLLOPTIONS* = 69;
        SQL_API_SQLTABLEPRIVILEGES* = 70;
        SQL_API_SQLDRIVERS* = 71;
        SQL_API_SQLBINDPARAMETER* = 72;
        SQL_EXT_API_LAST* = 72;
        SQL_API_ALL_FUNCTIONS* = 0;
        SQL_NUM_EXTENSIONS* = 33;
        SQL_API_LOADBYORDINAL* = 199;
        SQL_INFO_FIRST* = 0;
        SQL_ACTIVE_CONNECTIONS* = 0;
        SQL_ACTIVE_STATEMENTS* = 1;
        SQL_DATA_SOURCE_NAME* = 2;
        SQL_DRIVER_HDBC* = 3;
        SQL_DRIVER_HENV* = 4;
        SQL_DRIVER_HSTMT* = 5;
        SQL_DRIVER_NAME* = 6;
        SQL_DRIVER_VER* = 7;
        SQL_FETCH_DIRECTION* = 8;
        SQL_ODBC_API_CONFORMANCE* = 9;
        SQL_ODBC_VER* = 10;
        SQL_ROW_UPDATES* = 11;
        SQL_ODBC_SAG_CLI_CONFORMANCE* = 12;
        SQL_SERVER_NAME* = 13;
        SQL_SEARCH_PATTERN_ESCAPE* = 14;
        SQL_ODBC_SQL_CONFORMANCE* = 15;
        SQL_DBMS_NAME* = 17;
        SQL_DBMS_VER* = 18;
        SQL_ACCESSIBLE_TABLES* = 19;
        SQL_ACCESSIBLE_PROCEDURES* = 20;
        SQL_PROCEDURES* = 21;
        SQL_CONCAT_NULL_BEHAVIOR* = 22;
        SQL_CURSOR_COMMIT_BEHAVIOR* = 23;
        SQL_CURSOR_ROLLBACK_BEHAVIOR* = 24;
        SQL_DATA_SOURCE_READ_ONLY* = 25;
        SQL_DEFAULT_TXN_ISOLATION* = 26;
        SQL_EXPRESSIONS_IN_ORDERBY* = 27;
        SQL_IDENTIFIER_CASE* = 28;
        SQL_IDENTIFIER_QUOTE_CHAR* = 29;
        SQL_MAX_COLUMN_NAME_LEN* = 30;
        SQL_MAX_CURSOR_NAME_LEN* = 31;
        SQL_MAX_OWNER_NAME_LEN* = 32;
        SQL_MAX_PROCEDURE_NAME_LEN* = 33;
        SQL_MAX_QUALIFIER_NAME_LEN* = 34;
        SQL_MAX_TABLE_NAME_LEN* = 35;
        SQL_MULT_RESULT_SETS* = 36;
        SQL_MULTIPLE_ACTIVE_TXN* = 37;
        SQL_OUTER_JOINS* = 38;
        SQL_OWNER_TERM* = 39;
        SQL_PROCEDURE_TERM* = 40;
        SQL_QUALIFIER_NAME_SEPARATOR* = 41;
        SQL_QUALIFIER_TERM* = 42;
        SQL_SCROLL_CONCURRENCY* = 43;
        SQL_SCROLL_OPTIONS* = 44;
        SQL_TABLE_TERM* = 45;
        SQL_TXN_CAPABLE* = {1..3, 5};
        SQL_USER_NAME* = 47;
        SQL_CONVERT_FUNCTIONS* = 48;
        SQL_NUMERIC_FUNCTIONS* = 49;
        SQL_STRING_FUNCTIONS* = 50;
        SQL_SYSTEM_FUNCTIONS* = 51;
        SQL_TIMEDATE_FUNCTIONS* = 52;
        SQL_CONVERT_BIGINT* = 53;
        SQL_CONVERT_BINARY* = 54;
        SQL_CONVERT_BIT* = 55;
        SQL_CONVERT_CHAR* = 56;
        SQL_CONVERT_DATE* = 57;
        SQL_CONVERT_DECIMAL* = 58;
        SQL_CONVERT_DOUBLE* = 59;
        SQL_CONVERT_FLOAT* = 60;
        SQL_CONVERT_INTEGER* = 61;
        SQL_CONVERT_LONGVARCHAR* = 62;
        SQL_CONVERT_NUMERIC* = 63;
        SQL_CONVERT_REAL* = 64;
        SQL_CONVERT_SMALLINT* = 65;
        SQL_CONVERT_TIME* = 66;
        SQL_CONVERT_TIMESTAMP* = 67;
        SQL_CONVERT_TINYINT* = 68;
        SQL_CONVERT_VARBINARY* = 69;
        SQL_CONVERT_VARCHAR* = 70;
        SQL_CONVERT_LONGVARBINARY* = 71;
        SQL_TXN_ISOLATION_OPTION* = {3, 6};
        SQL_ODBC_SQL_OPT_IEF* = 73;
        SQL_CORRELATION_NAME* = 74;
        SQL_NON_NULLABLE_COLUMNS* = 75;
        SQL_DRIVER_HLIB* = 76;
        SQL_DRIVER_ODBC_VER* = 77;
        SQL_LOCK_TYPES* = 78;
        SQL_POS_OPERATIONS* = {0..3, 6};
        SQL_POSITIONED_STATEMENTS* = 80;
        SQL_GETDATA_EXTENSIONS* = 81;
        SQL_BOOKMARK_PERSISTENCE* = 82;
        SQL_STATIC_SENSITIVITY* = 83;
        SQL_FILE_USAGE* = 84;
        SQL_NULL_COLLATION* = 85;
        SQL_ALTER_TABLE* = 86;
        SQL_COLUMN_ALIAS* = 87;
        SQL_GROUP_BY* = 88;
        SQL_KEYWORDS* = 89;
        SQL_ORDER_BY_COLUMNS_IN_SELECT* = 90;
        SQL_OWNER_USAGE* = 91;
        SQL_QUALIFIER_USAGE* = 92;
        SQL_QUOTED_IDENTIFIER_CASE* = 93;
        SQL_SPECIAL_CHARACTERS* = 94;
        SQL_SUBQUERIES* = 95;
        SQL_UNION* = 96;
        SQL_MAX_COLUMNS_IN_GROUP_BY* = 97;
        SQL_MAX_COLUMNS_IN_INDEX* = 98;
        SQL_MAX_COLUMNS_IN_ORDER_BY* = 99;
        SQL_MAX_COLUMNS_IN_SELECT* = 100;
        SQL_MAX_COLUMNS_IN_TABLE* = 101;
        SQL_MAX_INDEX_SIZE* = 102;
        SQL_MAX_ROW_SIZE_INCLUDES_LONG* = 103;
        SQL_MAX_ROW_SIZE* = 104;
        SQL_MAX_STATEMENT_LEN* = 105;
        SQL_MAX_TABLES_IN_SELECT* = 106;
        SQL_MAX_USER_NAME_LEN* = 107;
        SQL_MAX_CHAR_LITERAL_LEN* = 108;
        SQL_TIMEDATE_ADD_INTERVALS* = 109;
        SQL_TIMEDATE_DIFF_INTERVALS* = 110;
        SQL_NEED_LONG_DATA_LEN* = 111;
        SQL_MAX_BINARY_LITERAL_LEN* = 112;
        SQL_LIKE_ESCAPE_CLAUSE* = 113;
        SQL_QUALIFIER_LOCATION* = 114;
        SQL_OJ_CAPABILITIES* = {0, 1, 3, 5..8, 10..15};
        SQL_INFO_LAST* = 114;
        SQL_INFO_DRIVER_START* = 1000;
        SQL_CVT_CHAR* = {0};
        SQL_CVT_NUMERIC* = {1};
        SQL_CVT_DECIMAL* = {2};
        SQL_CVT_INTEGER* = {3};
        SQL_CVT_SMALLINT* = {4};
        SQL_CVT_FLOAT* = {5};
        SQL_CVT_REAL* = {6};
        SQL_CVT_DOUBLE* = {7};
        SQL_CVT_VARCHAR* = {8};
        SQL_CVT_LONGVARCHAR* = {9};
        SQL_CVT_BINARY* = {10};
        SQL_CVT_VARBINARY* = {11};
        SQL_CVT_BIT* = {12};
        SQL_CVT_TINYINT* = {13};
        SQL_CVT_BIGINT* = {14};
        SQL_CVT_DATE* = {15};
        SQL_CVT_TIME* = {16};
        SQL_CVT_TIMESTAMP* = {17};
        SQL_CVT_LONGVARBINARY* = {18};
        SQL_FN_CVT_CONVERT* = {0};
        SQL_FN_STR_CONCAT* = {0};
        SQL_FN_STR_INSERT* = {1};
        SQL_FN_STR_LEFT* = {2};
        SQL_FN_STR_LTRIM* = {3};
        SQL_FN_STR_LENGTH* = {4};
        SQL_FN_STR_LOCATE* = {5};
        SQL_FN_STR_LCASE* = {6};
        SQL_FN_STR_REPEAT* = {7};
        SQL_FN_STR_REPLACE* = {8};
        SQL_FN_STR_RIGHT* = {9};
        SQL_FN_STR_RTRIM* = {10};
        SQL_FN_STR_SUBSTRING* = {11};
        SQL_FN_STR_UCASE* = {12};
        SQL_FN_STR_ASCII* = {13};
        SQL_FN_STR_CHAR* = {14};
        SQL_FN_STR_DIFFERENCE* = {15};
        SQL_FN_STR_LOCATE_2* = {16};
        SQL_FN_STR_SOUNDEX* = {17};
        SQL_FN_STR_SPACE* = {18};
        SQL_FN_NUM_ABS* = {0};
        SQL_FN_NUM_ACOS* = {1};
        SQL_FN_NUM_ASIN* = {2};
        SQL_FN_NUM_ATAN* = {3};
        SQL_FN_NUM_ATAN2* = {4};
        SQL_FN_NUM_CEILING* = {5};
        SQL_FN_NUM_COS* = {6};
        SQL_FN_NUM_COT* = {7};
        SQL_FN_NUM_EXP* = {8};
        SQL_FN_NUM_FLOOR* = {9};
        SQL_FN_NUM_LOG* = {10};
        SQL_FN_NUM_MOD* = {11};
        SQL_FN_NUM_SIGN* = {12};
        SQL_FN_NUM_SIN* = {13};
        SQL_FN_NUM_SQRT* = {14};
        SQL_FN_NUM_TAN* = {15};
        SQL_FN_NUM_PI* = {16};
        SQL_FN_NUM_RAND* = {17};
        SQL_FN_NUM_DEGREES* = {18};
        SQL_FN_NUM_LOG10* = {19};
        SQL_FN_NUM_POWER* = {20};
        SQL_FN_NUM_RADIANS* = {21};
        SQL_FN_NUM_ROUND* = {22};
        SQL_FN_NUM_TRUNCATE* = {23};
        SQL_FN_TD_NOW* = {0};
        SQL_FN_TD_CURDATE* = {1};
        SQL_FN_TD_DAYOFMONTH* = {2};
        SQL_FN_TD_DAYOFWEEK* = {3};
        SQL_FN_TD_DAYOFYEAR* = {4};
        SQL_FN_TD_MONTH* = {5};
        SQL_FN_TD_QUARTER* = {6};
        SQL_FN_TD_WEEK* = {7};
        SQL_FN_TD_YEAR* = {8};
        SQL_FN_TD_CURTIME* = {9};
        SQL_FN_TD_HOUR* = {10};
        SQL_FN_TD_MINUTE* = {11};
        SQL_FN_TD_SECOND* = {12};
        SQL_FN_TD_TIMESTAMPADD* = {13};
        SQL_FN_TD_TIMESTAMPDIFF* = {14};
        SQL_FN_TD_DAYNAME* = {15};
        SQL_FN_TD_MONTHNAME* = {16};
        SQL_FN_SYS_USERNAME* = {0};
        SQL_FN_SYS_DBNAME* = {1};
        SQL_FN_SYS_IFNULL* = {2};
        SQL_FN_TSI_FRAC_SECOND* = {0};
        SQL_FN_TSI_SECOND* = {1};
        SQL_FN_TSI_MINUTE* = {2};
        SQL_FN_TSI_HOUR* = {3};
        SQL_FN_TSI_DAY* = {4};
        SQL_FN_TSI_WEEK* = {5};
        SQL_FN_TSI_MONTH* = {6};
        SQL_FN_TSI_QUARTER* = {7};
        SQL_FN_TSI_YEAR* = {8};
        SQL_OAC_NONE* = 0;
        SQL_OAC_LEVEL1* = 1;
        SQL_OAC_LEVEL2* = 2;
        SQL_OSCC_NOT_COMPLIANT* = 0;
        SQL_OSCC_COMPLIANT* = 1;
        SQL_OSC_MINIMUM* = 0;
        SQL_OSC_CORE* = 1;
        SQL_OSC_EXTENDED* = 2;
        SQL_CB_NULL* = 0;
        SQL_CB_NON_NULL* = 1;
        SQL_CB_DELETE* = 0;
        SQL_CB_CLOSE* = 1;
        SQL_CB_PRESERVE* = 2;
        SQL_IC_UPPER* = 1;
        SQL_IC_LOWER* = 2;
        SQL_IC_SENSITIVE* = 3;
        SQL_IC_MIXED* = 4;
        SQL_TC_NONE* = 0;
        SQL_TC_DML* = 1;
        SQL_TC_ALL* = 2;
        SQL_TC_DDL_COMMIT* = 3;
        SQL_TC_DDL_IGNORE* = 4;
        SQL_SO_FORWARD_ONLY* = {0};
        SQL_SO_KEYSET_DRIVEN* = {1};
        SQL_SO_DYNAMIC* = {2};
        SQL_SO_MIXED* = {3};
        SQL_SO_STATIC* = {4};
        SQL_SCCO_READ_ONLY* = {0};
        SQL_SCCO_LOCK* = {1};
        SQL_SCCO_OPT_ROWVER* = {2};
        SQL_SCCO_OPT_VALUES* = {3};
        SQL_FD_FETCH_NEXT* = {0};
        SQL_FD_FETCH_FIRST* = {1};
        SQL_FD_FETCH_LAST* = {2};
        SQL_FD_FETCH_PRIOR* = {3};
        SQL_FD_FETCH_ABSOLUTE* = {4};
        SQL_FD_FETCH_RELATIVE* = {5};
        SQL_FD_FETCH_RESUME* = {6};
        SQL_FD_FETCH_BOOKMARK* = {7};
        SQL_TXN_READ_UNCOMMITTED* = {0};
        SQL_TXN_READ_COMMITTED* = {1};
        SQL_TXN_REPEATABLE_READ* = {2};
        SQL_TXN_SERIALIZABLE* = {3};
        SQL_TXN_VERSIONING* = {4};
        SQL_CN_NONE* = 0;
        SQL_CN_DIFFERENT* = 1;
        SQL_CN_ANY* = 2;
        SQL_NNC_NULL* = 0;
        SQL_NNC_NON_NULL* = 1;
        SQL_NC_HIGH* = 0;
        SQL_NC_LOW* = 1;
        SQL_NC_START* = 2;
        SQL_NC_END* = 4;
        SQL_FILE_NOT_SUPPORTED* = 0;
        SQL_FILE_TABLE* = 1;
        SQL_FILE_QUALIFIER* = 2;
        SQL_GD_ANY_COLUMN* = {0};
        SQL_GD_ANY_ORDER* = {1};
        SQL_GD_BLOCK* = {2};
        SQL_GD_BOUND* = {3};
        SQL_AT_ADD_COLUMN* = {0};
        SQL_AT_DROP_COLUMN* = {1};
        SQL_PS_POSITIONED_DELETE* = {0};
        SQL_PS_POSITIONED_UPDATE* = {1};
        SQL_PS_SELECT_FOR_UPDATE* = {2};
        SQL_GB_NOT_SUPPORTED* = 0;
        SQL_GB_GROUP_BY_EQUALS_SELECT* = 1;
        SQL_GB_GROUP_BY_CONTAINS_SELECT* = 2;
        SQL_GB_NO_RELATION* = 3;
        SQL_OU_DML_STATEMENTS* = {0};
        SQL_OU_PROCEDURE_INVOCATION* = {1};
        SQL_OU_TABLE_DEFINITION* = {2};
        SQL_OU_INDEX_DEFINITION* = {3};
        SQL_OU_PRIVILEGE_DEFINITION* = {4};
        SQL_QU_DML_STATEMENTS* = {0};
        SQL_QU_PROCEDURE_INVOCATION* = {1};
        SQL_QU_TABLE_DEFINITION* = {2};
        SQL_QU_INDEX_DEFINITION* = {3};
        SQL_QU_PRIVILEGE_DEFINITION* = {4};
        SQL_SQ_COMPARISON* = {0};
        SQL_SQ_EXISTS* = {1};
        SQL_SQ_IN* = {2};
        SQL_SQ_QUANTIFIED* = {3};
        SQL_SQ_CORRELATED_SUBQUERIES* = {4};
        SQL_U_UNION* = {0};
        SQL_U_UNION_ALL* = {1};
        SQL_BP_CLOSE* = {0};
        SQL_BP_DELETE* = {1};
        SQL_BP_DROP* = {2};
        SQL_BP_TRANSACTION* = {3};
        SQL_BP_UPDATE* = {4};
        SQL_BP_OTHER_HSTMT* = {5};
        SQL_BP_SCROLL* = {6};
        SQL_SS_ADDITIONS* = {0};
        SQL_SS_DELETIONS* = {1};
        SQL_SS_UPDATES* = {2};
        SQL_LCK_NO_CHANGE* = {0};
        SQL_LCK_EXCLUSIVE* = {1};
        SQL_LCK_UNLOCK* = {2};
        SQL_POS_POSITION* = {0};
        SQL_POS_REFRESH* = {1};
        SQL_POS_UPDATE* = {2};
        SQL_POS_DELETE* = {3};
        SQL_POS_ADD* = {4};
        SQL_QL_START* = {0};
        SQL_QL_END* = {1};
        SQL_OJ_LEFT* = {0};
        SQL_OJ_RIGHT* = {1};
        SQL_OJ_FULL* = {2};
        SQL_OJ_NESTED* = {3};
        SQL_OJ_NOT_ORDERED* = {4};
        SQL_OJ_INNER* = {5};
        SQL_OJ_ALL_COMPARISON_OPS* = {6};
        SQL_QUERY_TIMEOUT* = 0;
        SQL_MAX_ROWS* = 1;
        SQL_NOSCAN* = 2;
        SQL_MAX_LENGTH* = 3;
        SQL_ASYNC_ENABLE* = 4;
        SQL_BIND_TYPE* = 5;
        SQL_CURSOR_TYPE* = 6;
        SQL_CONCURRENCY* = 7;
        SQL_KEYSET_SIZE* = 8;
        SQL_ROWSET_SIZE* = 9;
        SQL_SIMULATE_CURSOR* = 10;
        SQL_RETRIEVE_DATA* = 11;
        SQL_USE_BOOKMARKS* = 12;
        SQL_GET_BOOKMARK* = 13;
        SQL_ROW_NUMBER* = 14;
        SQL_STMT_OPT_MAX* = 14;
        SQL_STMT_OPT_MIN* = 0;
        SQL_QUERY_TIMEOUT_DEFAULT* = 0;
        SQL_MAX_ROWS_DEFAULT* = 0;
        SQL_NOSCAN_OFF* = 0;
        SQL_NOSCAN_ON* = 1;
        SQL_NOSCAN_DEFAULT* = 0;
        SQL_MAX_LENGTH_DEFAULT* = 0;
        SQL_ASYNC_ENABLE_OFF* = 0;
        SQL_ASYNC_ENABLE_ON* = 1;
        SQL_ASYNC_ENABLE_DEFAULT* = 0;
        SQL_BIND_BY_COLUMN* = 0;
        SQL_BIND_TYPE_DEFAULT* = 0;
        SQL_CONCUR_READ_ONLY* = 1;
        SQL_CONCUR_LOCK* = 2;
        SQL_CONCUR_ROWVER* = 3;
        SQL_CONCUR_VALUES* = 4;
        SQL_CONCUR_DEFAULT* = 1;
        SQL_CURSOR_FORWARD_ONLY* = 0;
        SQL_CURSOR_KEYSET_DRIVEN* = 1;
        SQL_CURSOR_DYNAMIC* = 2;
        SQL_CURSOR_STATIC* = 3;
        SQL_CURSOR_TYPE_DEFAULT* = 0;
        SQL_ROWSET_SIZE_DEFAULT* = 1;
        SQL_KEYSET_SIZE_DEFAULT* = 0;
        SQL_SC_NON_UNIQUE* = 0;
        SQL_SC_TRY_UNIQUE* = 1;
        SQL_SC_UNIQUE* = 2;
        SQL_RD_OFF* = 0;
        SQL_RD_ON* = 1;
        SQL_RD_DEFAULT* = 1;
        SQL_UB_OFF* = 0;
        SQL_UB_ON* = 1;
        SQL_UB_DEFAULT* = 0;
        SQL_ACCESS_MODE* = 101;
        SQL_AUTOCOMMIT* = 102;
        SQL_LOGIN_TIMEOUT* = 103;
        SQL_OPT_TRACE* = 104;
        SQL_OPT_TRACEFILE* = 105;
        SQL_TRANSLATE_DLL* = 106;
        SQL_TRANSLATE_OPTION* = 107;
        SQL_TXN_ISOLATION* = {2, 3, 5, 6};
        SQL_CURRENT_QUALIFIER* = 109;
        SQL_ODBC_CURSORS* = 110;
        SQL_QUIET_MODE* = 111;
        SQL_PACKET_SIZE* = 112;
        SQL_CONN_OPT_MAX* = 112;
        SQL_CONNECT_OPT_DRVR_START* = 1000;
        SQL_CONN_OPT_MIN* = 101;
        SQL_MODE_READ_WRITE* = 0;
        SQL_MODE_READ_ONLY* = 1;
        SQL_MODE_DEFAULT* = 0;
        SQL_AUTOCOMMIT_OFF* = 0;
        SQL_AUTOCOMMIT_ON* = 1;
        SQL_AUTOCOMMIT_DEFAULT* = 1;
        SQL_LOGIN_TIMEOUT_DEFAULT* = 15;
        SQL_OPT_TRACE_OFF* = 0;
        SQL_OPT_TRACE_ON* = 1;
        SQL_OPT_TRACE_DEFAULT* = 0;
        SQL_OPT_TRACE_FILE_DEFAULT* = "\SQL.LOG";
        SQL_CUR_USE_IF_NEEDED* = 0;
        SQL_CUR_USE_ODBC* = 1;
        SQL_CUR_USE_DRIVER* = 2;
        SQL_CUR_DEFAULT* = 2;
        SQL_BEST_ROWID* = 1;
        SQL_ROWVER* = 2;
        SQL_SCOPE_CURROW* = 0;
        SQL_SCOPE_TRANSACTION* = 1;
        SQL_SCOPE_SESSION* = 2;
        SQL_ENTIRE_ROWSET* = 0;
        SQL_POSITION* = 0;
        SQL_REFRESH* = 1;
        SQL_UPDATE* = 2;
        SQL_DELETE* = 3;
        SQL_ADD* = 4;
        SQL_LOCK_NO_CHANGE* = 0;
        SQL_LOCK_EXCLUSIVE* = 1;
        SQL_LOCK_UNLOCK* = 2;
        SQL_FETCH_NEXT* = 1;
        SQL_FETCH_FIRST* = 2;
        SQL_FETCH_LAST* = 3;
        SQL_FETCH_PRIOR* = 4;
        SQL_FETCH_ABSOLUTE* = 5;
        SQL_FETCH_RELATIVE* = 6;
        SQL_FETCH_BOOKMARK* = 8;
        SQL_ROW_SUCCESS* = 0;
        SQL_ROW_DELETED* = 1;
        SQL_ROW_UPDATED* = 2;
        SQL_ROW_NOROW* = 3;
        SQL_ROW_ADDED* = 4;
        SQL_ROW_ERROR* = 5;
        SQL_CASCADE* = 0;
        SQL_RESTRICT* = 1;
        SQL_SET_NULL* = 2;
        SQL_PARAM_TYPE_UNKNOWN* = 0;
        SQL_PARAM_INPUT* = 1;
        SQL_PARAM_INPUT_OUTPUT* = 2;
        SQL_RESULT_COL* = 3;
        SQL_PARAM_OUTPUT* = 4;
        SQL_RETURN_VALUE* = 5;
        SQL_PARAM_TYPE_DEFAULT* = 2;
        SQL_SETPARAM_VALUE_MAX* = -1;
        SQL_INDEX_UNIQUE* = 0;
        SQL_INDEX_ALL* = 1;
        SQL_QUICK* = 0;
        SQL_ENSURE* = 1;
        SQL_TABLE_STAT* = 0;
        SQL_INDEX_CLUSTERED* = 1;
        SQL_INDEX_HASHED* = 2;
        SQL_INDEX_OTHER* = 3;
        SQL_PT_UNKNOWN* = 0;
        SQL_PT_PROCEDURE* = 1;
        SQL_PT_FUNCTION* = 2;
        SQL_PC_UNKNOWN* = 0;
        SQL_PC_NOT_PSEUDO* = 1;
        SQL_PC_PSEUDO* = 2;
        SQL_DATABASE_NAME* = 16;
        SQL_FD_FETCH_PREV* = {3};
        SQL_FETCH_PREV* = 4;
        SQL_CONCUR_TIMESTAMP* = 3;
        SQL_SCCO_OPT_TIMESTAMP* = {2};
        SQL_CC_DELETE* = 0;
        SQL_CR_DELETE* = 0;
        SQL_CC_CLOSE* = 1;
        SQL_CR_CLOSE* = 1;
        SQL_CC_PRESERVE* = 2;
        SQL_CR_PRESERVE* = 2;
        SQL_FETCH_RESUME* = 7;
        SQL_SCROLL_FORWARD_ONLY* = 0;
        SQL_SCROLL_KEYSET_DRIVEN* = -1;
        SQL_SCROLL_DYNAMIC* = -2;
        SQL_SCROLL_STATIC* = -3;
        SQL_PC_NON_PSEUDO* = 1;
        SQL_HANDLE_ENV* = 1;
        SQL_HANDLE_DBC* = 2;
        SQL_HANDLE_STMT* = 3;
        SQL_IS_INTEGER* = -6;
        SQL_NULL_HANDLE* = 0;
        SQL_ATTR_ODBC_VERSION* = 200;
        SQL_OV_ODBC3* = 3;
        SQL_PRESERVE_CURSORS* = 1204;
        SQL_PC_OFF* = 0;
        SQL_PC_ON* = 1;
        SQL_DYNAMIC_CURSOR_ATTRIBUTES1* = 144;
        SQL_DYNAMIC_CURSOR_ATTRIBUTES2* = 145;
        SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES1* = 146;
        SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES2* = 147;
        SQL_KEYSET_CURSOR_ATTRIBUTES1* = 150;
        SQL_KEYSET_CURSOR_ATTRIBUTES2* = 151;
        SQL_STATIC_CURSOR_ATTRIBUTES1* = 167;
        SQL_STATIC_CURSOR_ATTRIBUTES2* = 168;
        SQL_CA1_NEXT* = 0;
        SQL_CA1_ABSOLUTE* = 1;
        SQL_CA1_RELATIVE* = 2;
        SQL_CA1_BOOKMARK* = 3;
        SQL_CA1_LOCK_NO_CHANGE* = 6;
        SQL_CA1_LOCK_EXCLUSIVE* = 7;
        SQL_CA1_LOCK_UNLOCK* = 8;
        SQL_CA1_POS_POSITION* = 9;
        SQL_CA1_POS_UPDATE* = 10;
        SQL_CA1_POS_DELETE* = 11;
        SQL_CA1_POS_REFRESH* = 12;
        SQL_CA1_POS_POSITIONED_UPDATE* = 13;
        SQL_CA1_POS_POSITIONED_DELETE* = 14;
        SQL_CA1_POS_SELECT_FOR_UPDATE* = 15;
        SQL_CA1_POS_BULK_ADD* = 16;
        SQL_CA1_POS_BULK_UPDATE_BY_BOOKMARK* = 17;
        SQL_CA1_POS_BULK_DELETE_BY_BOOKMARK* = 18;
        SQL_CA1_POS_BULK_FETCH_BY_BOOKMARK* = 19;
        SQL_CA2_READ_ONLY_CONCURRENCY* = 0;
        SQL_CA2_LOCK_CONCURRENCY* = 1;
        SQL_CA2_OPT_ROWVER_CONCURRENCY* = 2;
        SQL_CA2_OPT_VALUES_CONCURRENCY* = 3;
        SQL_CA2_SENSITIVITY_ADDITIONS* = 4;
        SQL_CA2_SENSITIVITY_DELETIONS* = 5;
        SQL_CA2_SENSITIVITY_UPDATES* = 6;
        SQL_CA2_MAX_ROWS_SELECT* = 7;
        SQL_CA2_MAX_ROWS_INSERT* = 8;
        SQL_CA2_MAX_ROWS_DELETE* = 9;
        SQL_CA2_MAX_ROWS_UPDATE* = 10;
        SQL_CA2_MAX_ROWS_CATALOG* = 11;
        SQL_CA2_CRC_EXACT* = 12;
        SQL_CA2_CRC_APPROXIMATE* = 13;
        SQL_CA2_SIMULATE_NON_UNIQUE* = 14;
        SQL_CA2_SIMULATE_TRY_UNIQUE* = 15;
        SQL_CA2_SIMULATE_UNIQUE* = 16;

    TYPE
        PTR* = INTEGER;
        HENV* = INTEGER;
        HDBC* = INTEGER;
        HSTMT* = INTEGER;
        HWND* = INTEGER;
        PSTR* = POINTER TO ARRAY [untagged] OF SHORTCHAR;
        PWSTR* = POINTER TO ARRAY [untagged] OF CHAR;


    TYPE
        RETCODE* = SHORTINT;
        DATE_STRUCT* = RECORD [untagged]
            year*: SHORTINT;
            month*: SHORTINT;
            day*: SHORTINT;
        END;
        TIME_STRUCT* = RECORD [untagged]
            hour*: SHORTINT;
            minute*: SHORTINT;
            second*: SHORTINT;
        END;
        TIMESTAMP_STRUCT* = RECORD [align2]
            year*: SHORTINT;
            month*: SHORTINT;
            day*: SHORTINT;
            hour*: SHORTINT;
            minute*: SHORTINT;
            second*: SHORTINT;
            fraction*: INTEGER;
        END;
        BOOKMARK* = INTEGER;

    PROCEDURE SQLAllocConnect* (henv: HENV; VAR [nil] phdbc: HDBC): RETCODE;
    (*END SQLAllocConnect;*)
    
    (* To replace SQLAllocConnect in ODBC 3.0*)
    PROCEDURE SQLAllocHandle* (hadletype: SHORTINT; henv: HENV; VAR [nil] phdbc: HDBC): RETCODE;
    (*END SQLAllocHandle;*)

    PROCEDURE SQLAllocEnv* (VAR [nil] phenv: HENV): RETCODE;
    (*END SQLAllocEnv;*)

    PROCEDURE SQLAllocStmt* (hdbc: HDBC; VAR [nil] phstmt: HSTMT): RETCODE;
    (*END SQLAllocStmt;*)

    PROCEDURE SQLBindCol* (hstmt: HSTMT; icol: SHORTINT; fCType: SHORTINT; rgbValue: PTR; cbValueMax: INTEGER; VAR [nil] pcbValue: INTEGER): RETCODE;
    (*END SQLBindCol;*)

    PROCEDURE SQLCancel* (hstmt: HSTMT): RETCODE;
    (*END SQLCancel;*)

    PROCEDURE SQLColAttributes* (hstmt: HSTMT; icol: SHORTINT; fDescType: SHORTINT; rgbDesc: PTR; cbDescMax: SHORTINT; VAR [nil] pcbDesc: SHORTINT; VAR [nil] pfDesc: INTEGER): RETCODE;
    (*END SQLColAttributes;*)

    PROCEDURE SQLConnect* (hdbc: HDBC; szDSN: PSTR; cbDSN: SHORTINT; szUID: PSTR; cbUID: SHORTINT; szAuthStr: PSTR; cbAuthStr: SHORTINT): RETCODE;
    (*END SQLConnect;*)

    PROCEDURE SQLConnectW* (hdbc: HDBC; szDSN: PWSTR; cbDSN: SHORTINT; szUID: PWSTR; cbUID: SHORTINT; szAuthStr: PWSTR; cbAuthStr: SHORTINT): RETCODE;
    (*END SQLConnect;*)

    PROCEDURE SQLDescribeCol* (hstmt: HSTMT; icol: SHORTINT; szColName: PSTR; cbColNameMax: SHORTINT; VAR [nil] pcbColName: SHORTINT; VAR [nil] pfSqlType: SHORTINT; VAR [nil] pcbColDef: INTEGER; VAR [nil] pibScale: SHORTINT; VAR [nil] pfNullable: SHORTINT): RETCODE;
    (*END SQLDescribeCol;*)

    PROCEDURE SQLDescribeColW* (hstmt: HSTMT; icol: SHORTINT; szColName: PWSTR; cbColNameMax: SHORTINT; VAR [nil] pcbColName: SHORTINT; VAR [nil] pfSqlType: SHORTINT; VAR [nil] pcbColDef: INTEGER; VAR [nil] pibScale: SHORTINT; VAR [nil] pfNullable: SHORTINT): RETCODE;
    (*END SQLDescribeCol;*)

    PROCEDURE SQLDisconnect* (hdbc: HDBC): RETCODE;
    (*END SQLDisconnect;*)

    PROCEDURE SQLError* (henv: HENV; hdbc: HDBC; hstmt: HSTMT; szSqlState: PSTR; VAR [nil] pfNativeError: INTEGER; szErrorMsg: PSTR; cbErrorMsgMax: SHORTINT; VAR [nil] pcbErrorMsg: SHORTINT): RETCODE;
    (*END SQLError;*)
    
    PROCEDURE SQLErrorW* (henv: HENV; hdbc: HDBC; hstmt: HSTMT; szSqlState: PWSTR; VAR [nil] pfNativeError: INTEGER; szErrorMsg: PWSTR; cbErrorMsgMax: SHORTINT; VAR [nil] pcbErrorMsg: SHORTINT): RETCODE;
    (*END SQLError;*)
    
    (* Replaces SQLError in ODBC 3.0 *)
    PROCEDURE SQLGetDiagRec* (handletype: SHORTINT; hstmt: HSTMT; recnumber: SHORTINT; szSqlState: PSTR; VAR [nil] pfNativeError: INTEGER; szErrorMsg: PSTR; cbErrorMsgMax: SHORTINT; VAR [nil] pcbErrorMsg: SHORTINT): RETCODE;
    (*END SQLGetDiagRec;*)

    PROCEDURE SQLGetDiagRecW* (handletype: SHORTINT; hstmt: HSTMT; recnumber: SHORTINT; szSqlState: PWSTR; VAR [nil] pfNativeError: INTEGER; szErrorMsg: PWSTR; cbErrorMsgMax: SHORTINT; VAR [nil] pcbErrorMsg: SHORTINT): RETCODE;
    (*END SQLGetDiagRec;*)

    PROCEDURE SQLExecDirect* (hstmt: HSTMT; szSqlStr: PSTR; cbSqlStr: INTEGER): RETCODE;
    (*END SQLExecDirect;*)

    PROCEDURE SQLExecute* (hstmt: HSTMT): RETCODE;
    (*END SQLExecute;*)

    PROCEDURE SQLFetch* (hstmt: HSTMT): RETCODE;
    (*END SQLFetch;*)

    PROCEDURE SQLFreeConnect* (hdbc: HDBC): RETCODE;
    (*END SQLFreeConnect;*)

    PROCEDURE SQLFreeEnv* (henv: HENV): RETCODE;
    (*END SQLFreeEnv;*)
    
    PROCEDURE SQLFreeStmt* (hstmt: HSTMT; fOption: SHORTINT): RETCODE;
    (*END SQLFreeStmt;*)
    
    (* Replaces SQLFreeConnect, SQLFreeEnv and SQLFreeStmt in ODBC 3.0 *)
    PROCEDURE SQLFreeHandle* (handletype: SHORTINT; henv: HENV): RETCODE;
    (*END SQLFreeHandle;*)

    PROCEDURE SQLGetCursorName* (hstmt: HSTMT; szCursor: PSTR; cbCursorMax: SHORTINT; VAR [nil] pcbCursor: SHORTINT): RETCODE;
    (*END SQLGetCursorName;*)

    PROCEDURE SQLNumResultCols* (hstmt: HSTMT; VAR [nil] pccol: SHORTINT): RETCODE;
    (*END SQLNumResultCols;*)

    PROCEDURE SQLPrepare* (hstmt: HSTMT; szSqlStr: PSTR; cbSqlStr: INTEGER): RETCODE;
    (*END SQLPrepare;*)

    PROCEDURE SQLPrepareW* (hstmt: HSTMT; szSqlStr: PWSTR; cbSqlStr: INTEGER): RETCODE;
    (*END SQLPrepareW;*)

    PROCEDURE SQLRowCount* (hstmt: HSTMT; VAR [nil] pcrow: INTEGER): RETCODE;
    (*END SQLRowCount;*)

    PROCEDURE SQLSetCursorName* (hstmt: HSTMT; szCursor: PSTR; cbCursor: SHORTINT): RETCODE;
    (*END SQLSetCursorName;*)

    PROCEDURE SQLTransact* (henv: HENV; hdbc: HDBC; fType: SHORTINT): RETCODE;
    (*END SQLTransact;*)
    
    (* Replaces SQLTransact in ODBC 3 *)
    PROCEDURE SQLEndTran* (hadletype: SHORTINT; hdbc: HDBC; fType: SHORTINT): RETCODE;
    (*END SQLEndTran;*)

    PROCEDURE SQLSetParam* (hstmt: HSTMT; ipar: SHORTINT; fCType: SHORTINT; fSqlType: SHORTINT; cbColDef: INTEGER; ibScale: SHORTINT; rgbValue: PTR; VAR [nil] pcbValue: INTEGER): RETCODE;
    (*END SQLSetParam;*)

    PROCEDURE SQLColumns* (hstmt: HSTMT; szTableQualifier: PSTR; cbTableQualifier: SHORTINT; szTableOwner: PSTR; cbTableOwner: SHORTINT; szTableName: PSTR; cbTableName: SHORTINT; szColumnName: PSTR; cbColumnName: SHORTINT): RETCODE;
    (*END SQLColumns;*)

    PROCEDURE SQLDriverConnect* (hdbc: HDBC; hwnd: HWND; szConnStrIn: PSTR; cbConnStrIn: SHORTINT; szConnStrOut: PSTR; cbConnStrOutMax: SHORTINT; VAR [nil] pcbConnStrOut: SHORTINT; fDriverCompletion: SHORTINT): RETCODE;
    (*END SQLDriverConnect;*)
    
    PROCEDURE SQLGetConnectAttr* (connectionHandle: HDBC; attribute : INTEGER; valuePtr : PTR; bufferLength : INTEGER; VAR [nil] stringLengthPtr : INTEGER) : RETCODE;
    (*END SQLGetConnectAttr;*)

    PROCEDURE SQLGetConnectOption* (hdbc: HDBC; fOption: SHORTINT; pvParam: PTR): RETCODE;
    (*END SQLGetConnectOption;*)

    PROCEDURE SQLGetData* (hstmt: HSTMT; icol: SHORTINT; fCType: SHORTINT; rgbValue: PTR; cbValueMax: INTEGER; VAR [nil] pcbValue: INTEGER): RETCODE;
    (*END SQLGetData;*)

    PROCEDURE SQLGetFunctions* (hdbc: HDBC; fFunction: SHORTINT; VAR [nil] pfExists: SHORTINT): RETCODE;
    (*END SQLGetFunctions;*)

    PROCEDURE SQLGetInfo* (hdbc: HDBC; fInfoType: SHORTINT; rgbInfoValue: PTR; cbInfoValueMax: SHORTINT; VAR [nil] pcbInfoValue: SHORTINT): RETCODE;
    (*END SQLGetInfo;*)

    PROCEDURE SQLGetInfoW* (hdbc: HDBC; fInfoType: SHORTINT; rgbInfoValue: PTR; cbInfoValueMax: SHORTINT; VAR [nil] pcbInfoValue: SHORTINT): RETCODE;
    (*END SQLGetInfo;*)

    PROCEDURE SQLGetStmtOption* (hstmt: HSTMT; fOption: SHORTINT; pvParam: PTR): RETCODE;
    (*END SQLGetStmtOption;*)

    PROCEDURE SQLGetTypeInfo* (hstmt: HSTMT; fSqlType: SHORTINT): RETCODE;
    (*END SQLGetTypeInfo;*)

    PROCEDURE SQLParamData* (hstmt: HSTMT; VAR [nil] prgbValue: PTR): RETCODE;
    (*END SQLParamData;*)

    PROCEDURE SQLPutData* (hstmt: HSTMT; rgbValue: PTR; cbValue: INTEGER): RETCODE;
    (*END SQLPutData;*)

    PROCEDURE SQLSetConnectOption* (hdbc: HDBC; fOption: SHORTINT; vParam: INTEGER): RETCODE;
    (*END SQLSetConnectOption;*)
    
    PROCEDURE SQLSetConnectOptionW* (hdbc: HDBC; fOption: SHORTINT; vParam: INTEGER): RETCODE;
    (*END SQLSetConnectOption;*)
    
    (* To replace SQLSetConnectOption in ODBC 3.0 *)
    PROCEDURE SQLSetConnectAttr* (hdbc: HDBC; fOption: SHORTINT; vParam: INTEGER; stringlength: INTEGER): RETCODE;
    (*END SQLSetConnectAttr;*)

    PROCEDURE SQLSetStmtOption* (hstmt: HSTMT; fOption: SHORTINT; vParam: INTEGER): RETCODE;
    (*END SQLSetStmtOption;*)
    
    (* Replaces SQLSetStmtOption in ODBC 3.0 *)
    PROCEDURE SQLSetStmtAttr* (hstmt: HSTMT; fOption: SHORTINT; vParam: INTEGER; stringlength: INTEGER): RETCODE;
    (*END SQLSetStmtAttr;*)
    
    PROCEDURE SQLGetStmtAttr* (hstmt: HSTMT; attribute: SHORTINT; valuepointer: PTR; bufferlength: SHORTINT; 
                                            stringlengthptr: PSTR): RETCODE;
    (*END SQLGetStmtAttr;*)
    
    PROCEDURE SQLSetEnvAttr* (environment: HENV; attribute: SHORTINT; valuepointer: PTR; stringlength: SHORTINT): RETCODE;
    (*END SQLSetEnvAttr;*)

    PROCEDURE SQLSpecialColumns* (hstmt: HSTMT; fColType: SHORTINT; szTableQualifier: PSTR; cbTableQualifier: SHORTINT; szTableOwner: PSTR; cbTableOwner: SHORTINT; szTableName: PSTR; cbTableName: SHORTINT; fScope: SHORTINT; fNullable: SHORTINT): RETCODE;
    (*END SQLSpecialColumns;*)

    PROCEDURE SQLStatistics* (hstmt: HSTMT; szTableQualifier: PSTR; cbTableQualifier: SHORTINT; szTableOwner: PSTR; cbTableOwner: SHORTINT; szTableName: PSTR; cbTableName: SHORTINT; fUnique: SHORTINT; fAccuracy: SHORTINT): RETCODE;
    (*END SQLStatistics;*)

    PROCEDURE SQLTables* (hstmt: HSTMT; szTableQualifier: PSTR; cbTableQualifier: SHORTINT; szTableOwner: PSTR; cbTableOwner: SHORTINT; szTableName: PSTR; cbTableName: SHORTINT; szTableType: PSTR; cbTableType: SHORTINT): RETCODE;
    (*END SQLTables;*)

    PROCEDURE SQLBrowseConnect* (hdbc: HDBC; szConnStrIn: PSTR; cbConnStrIn: SHORTINT; szConnStrOut: PSTR; cbConnStrOutMax: SHORTINT; VAR [nil] pcbConnStrOut: SHORTINT): RETCODE;
    (*END SQLBrowseConnect;*)

    PROCEDURE SQLColumnPrivileges* (hstmt: HSTMT; szTableQualifier: PSTR; cbTableQualifier: SHORTINT; szTableOwner: PSTR; cbTableOwner: SHORTINT; szTableName: PSTR; cbTableName: SHORTINT; szColumnName: PSTR; cbColumnName: SHORTINT): RETCODE;
    (*END SQLColumnPrivileges;*)

    PROCEDURE SQLDataSources* (henv: HENV; fDirection: SHORTINT; szDSN: PSTR; cbDSNMax: SHORTINT; VAR [nil] pcbDSN: SHORTINT; szDescription: PSTR; cbDescriptionMax: SHORTINT; VAR [nil] pcbDescription: SHORTINT): RETCODE;
    (*END SQLDataSources;*)

    PROCEDURE SQLDescribeParam* (hstmt: HSTMT; ipar: SHORTINT; VAR [nil] pfSqlType: SHORTINT; VAR [nil] pcbColDef: INTEGER; VAR [nil] pibScale: SHORTINT; VAR [nil] pfNullable: SHORTINT): RETCODE;
    (*END SQLDescribeParam;*)

    PROCEDURE SQLExtendedFetch* (hstmt: HSTMT; fFetchType: SHORTINT; irow: INTEGER; VAR [nil] pcrow: INTEGER; VAR [nil] rgfRowStatus: SHORTINT): RETCODE;
    (*END SQLExtendedFetch;*)
    
    (* To replace SQLExtendedFetch in ODBC 3.0 *)
    PROCEDURE SQLFetchScroll* (hstmt: HSTMT; fetchOrientation: SHORTINT; fetchOffset: INTEGER): RETCODE;
    (*END SQLFetchScroll;*)

    PROCEDURE SQLForeignKeys* (hstmt: HSTMT; szPkTableQualifier: PSTR; cbPkTableQualifier: SHORTINT; szPkTableOwner: PSTR; cbPkTableOwner: SHORTINT; szPkTableName: PSTR; cbPkTableName: SHORTINT; szFkTableQualifier: PSTR; cbFkTableQualifier: SHORTINT; szFkTableOwner: PSTR; cbFkTableOwner: SHORTINT; szFkTableName: PSTR; cbFkTableName: SHORTINT): RETCODE;
    (*END SQLForeignKeys;*)

    PROCEDURE SQLMoreResults* (hstmt: HSTMT): RETCODE;
    (*END SQLMoreResults;*)

    PROCEDURE SQLNativeSql* (hdbc: HDBC; szSqlStrIn: PSTR; cbSqlStrIn: INTEGER; szSqlStr: PSTR; cbSqlStrMax: INTEGER; VAR [nil] pcbSqlStr: INTEGER): RETCODE;
    (*END SQLNativeSql;*)

    PROCEDURE SQLNumParams* (hstmt: HSTMT; VAR [nil] pcpar: SHORTINT): RETCODE;
    (*END SQLNumParams;*)

    PROCEDURE SQLParamOptions* (hstmt: HSTMT; crow: INTEGER; VAR [nil] pirow: INTEGER): RETCODE;
    (*END SQLParamOptions;*)

    PROCEDURE SQLPrimaryKeys* (hstmt: HSTMT; szTableQualifier: PSTR; cbTableQualifier: SHORTINT; szTableOwner: PSTR; cbTableOwner: SHORTINT; szTableName: PSTR; cbTableName: SHORTINT): RETCODE;
    (*END SQLPrimaryKeys;*)

    PROCEDURE SQLProcedureColumns* (hstmt: HSTMT; szProcQualifier: PSTR; cbProcQualifier: SHORTINT; szProcOwner: PSTR; cbProcOwner: SHORTINT; szProcName: PSTR; cbProcName: SHORTINT; szColumnName: PSTR; cbColumnName: SHORTINT): RETCODE;
    (*END SQLProcedureColumns;*)

    PROCEDURE SQLProcedures* (hstmt: HSTMT; szProcQualifier: PSTR; cbProcQualifier: SHORTINT; szProcOwner: PSTR; cbProcOwner: SHORTINT; szProcName: PSTR; cbProcName: SHORTINT): RETCODE;
    (*END SQLProcedures;*)

    PROCEDURE SQLSetPos* (hstmt: HSTMT; irow: SHORTINT; fOption: SHORTINT; fLock: SHORTINT): RETCODE;
    (*END SQLSetPos;*)

    PROCEDURE SQLTablePrivileges* (hstmt: HSTMT; szTableQualifier: PSTR; cbTableQualifier: SHORTINT; szTableOwner: PSTR; cbTableOwner: SHORTINT; szTableName: PSTR; cbTableName: SHORTINT): RETCODE;
    (*END SQLTablePrivileges;*)

    PROCEDURE SQLDrivers* (henv: HENV; fDirection: SHORTINT; szDriverDesc: PSTR; cbDriverDescMax: SHORTINT; VAR [nil] pcbDriverDesc: SHORTINT; szDriverAttributes: PSTR; cbDrvrAttrMax: SHORTINT; VAR [nil] pcbDrvrAttr: SHORTINT): RETCODE;
    (*END SQLDrivers;*)

    PROCEDURE SQLBindParameter* (hstmt: HSTMT; ipar: SHORTINT; fParamType: SHORTINT; fCType: SHORTINT; fSqlType: SHORTINT; cbColDef: INTEGER; ibScale: SHORTINT; rgbValue: PTR; cbValueMax: INTEGER; VAR [nil] pcbValue: INTEGER): RETCODE;
    (*END SQLBindParameter;*)

    PROCEDURE SQLSetScrollOptions* (hstmt: HSTMT; fConcurrency: SHORTINT; crowKeyset: INTEGER; crowRowset: SHORTINT): RETCODE;
    (*END SQLSetScrollOptions;*)

END WinSql.
