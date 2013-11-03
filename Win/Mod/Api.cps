﻿MODULE WinApi ["KERNEL32.dll"];
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

    IMPORT SYSTEM, COM;

    TYPE (* base types *)
        PtrVoid* = INTEGER;
        PtrSTR* = POINTER TO ARRAY [untagged] OF SHORTCHAR;
        PtrWSTR* = POINTER TO ARRAY [untagged] OF CHAR;
        DATE* = REAL;
        CY* = LONGINT;
        ACCESS_MASK* = SET;
        SECURITY_INFORMATION* = SET;

    CONST
        HKEY_CLASSES_ROOT* = 80000000H;
        HKEY_CURRENT_USER* = 80000001H;
        HKEY_LOCAL_MACHINE* = 80000002H;
        HKEY_USERS* = 80000003H;
        
    CONST (* macros *)
        INVALID_HANDLE_VALUE* = -1;
        MAX_PATH* = 260 (* {2, 8} *);
        NULL* = 0 (* {} *);
        FALSE* = 0 (* {} *);
        TRUE* = 1 (* {0} *);
        ANYSIZE_ARRAY* = 1 (* {0} *);
        APPLICATION_ERROR_MASK* = 536870912 (* {29} *);
        ERROR_SEVERITY_SUCCESS* = 0 (* {} *);
        ERROR_SEVERITY_INFORMATIONAL* = 1073741824 (* {30} *);
        ERROR_SEVERITY_WARNING* = 80000000H;
        ERROR_SEVERITY_ERROR* = -1073741824 (* {30, 31} *);
        CLASS_E_NOTLICENSED* = -2147221230;
        CONNECT_E_FIRST* = -2147220992;
        CONNECT_E_LAST* = -2147220977;
        CONNECT_S_FIRST* = 262656;
        CONNECT_S_LAST* = 262671;
        CONNECT_E_NOCONNECTION* = -2147220992;
        CONNECT_E_ADVISELIMIT* = -2147220991;
        CONNECT_E_CANNOTCONNECT* = -2147220990;
        CONNECT_E_OVERRIDDEN* = -2147220989;
        SELFREG_E_FIRST* = -2147220992;
        SELFREG_E_LAST* = -2147220977;
        SELFREG_S_FIRST* = 262656;
        SELFREG_S_LAST* = 262671;
        SELFREG_E_TYPELIB* = -2147220992;
        SELFREG_E_CLASS* = -2147220991;
        PERPROP_E_FIRST* = -2147220992;
        PERPROP_E_LAST* = -2147220977;
        PERPROP_S_FIRST* = 262656;
        PERPROP_S_LAST* = 262671;
        PERPROP_E_NOPAGEAVAILABLE* = -2147220992;
        UNICODE_NULL* = 0 (* {} *);
        MINCHAR* = 128 (* {7} *);
        MAXCHAR* = 127 (* {0..6} *);
        MINSHORT* = 32768 (* {15} *);
        MAXSHORT* = 32767 (* {0..14} *);
        MINLONG* = 80000000H;
        MAXLONG* = 2147483647 (* {0..30} *);
        MAXBYTE* = 255 (* {0..7} *);
        MAXWORD* = 65535 (* {0..15} *);
        MAXDWORD* = -1 (* {0..31} *);
        LANG_NEUTRAL* = 0 (* {} *);
        LANG_BULGARIAN* = 2 (* {1} *);
        LANG_CHINESE* = 4 (* {2} *);
        LANG_CROATIAN* = 26 (* {1, 3, 4} *);
        LANG_CZECH* = 5 (* {0, 2} *);
        LANG_DANISH* = 6 (* {1, 2} *);
        LANG_DUTCH* = 19 (* {0, 1, 4} *);
        LANG_ENGLISH* = 9 (* {0, 3} *);
        LANG_FINNISH* = 11 (* {0, 1, 3} *);
        LANG_FRENCH* = 12 (* {2, 3} *);
        LANG_GERMAN* = 7 (* {0..2} *);
        LANG_GREEK* = 8 (* {3} *);
        LANG_HUNGARIAN* = 14 (* {1..3} *);
        LANG_ICELANDIC* = 15 (* {0..3} *);
        LANG_ITALIAN* = 16 (* {4} *);
        LANG_JAPANESE* = 17 (* {0, 4} *);
        LANG_KOREAN* = 18 (* {1, 4} *);
        LANG_NORWEGIAN* = 20 (* {2, 4} *);
        LANG_POLISH* = 21 (* {0, 2, 4} *);
        LANG_PORTUGUESE* = 22 (* {1, 2, 4} *);
        LANG_ROMANIAN* = 24 (* {3, 4} *);
        LANG_RUSSIAN* = 25 (* {0, 3, 4} *);
        LANG_SLOVAK* = 27 (* {0, 1, 3, 4} *);
        LANG_SLOVENIAN* = 36 (* {2, 5} *);
        LANG_SPANISH* = 10 (* {1, 3} *);
        LANG_SWEDISH* = 29 (* {0, 2..4} *);
        LANG_TURKISH* = 31 (* {0..4} *);
        SUBLANG_NEUTRAL* = 0 (* {} *);
        SUBLANG_DEFAULT* = 1 (* {0} *);
        SUBLANG_SYS_DEFAULT* = 2 (* {1} *);
        SUBLANG_CHINESE_TRADITIONAL* = 1 (* {0} *);
        SUBLANG_CHINESE_SIMPLIFIED* = 2 (* {1} *);
        SUBLANG_CHINESE_HONGKONG* = 3 (* {0, 1} *);
        SUBLANG_CHINESE_SINGAPORE* = 4 (* {2} *);
        SUBLANG_DUTCH* = 1 (* {0} *);
        SUBLANG_DUTCH_BELGIAN* = 2 (* {1} *);
        SUBLANG_ENGLISH_US* = 1 (* {0} *);
        SUBLANG_ENGLISH_UK* = 2 (* {1} *);
        SUBLANG_ENGLISH_AUS* = 3 (* {0, 1} *);
        SUBLANG_ENGLISH_CAN* = 4 (* {2} *);
        SUBLANG_ENGLISH_NZ* = 5 (* {0, 2} *);
        SUBLANG_ENGLISH_EIRE* = 6 (* {1, 2} *);
        SUBLANG_FRENCH* = 1 (* {0} *);
        SUBLANG_FRENCH_BELGIAN* = 2 (* {1} *);
        SUBLANG_FRENCH_CANADIAN* = 3 (* {0, 1} *);
        SUBLANG_FRENCH_SWISS* = 4 (* {2} *);
        SUBLANG_GERMAN* = 1 (* {0} *);
        SUBLANG_GERMAN_SWISS* = 2 (* {1} *);
        SUBLANG_GERMAN_AUSTRIAN* = 3 (* {0, 1} *);
        SUBLANG_ITALIAN* = 1 (* {0} *);
        SUBLANG_ITALIAN_SWISS* = 2 (* {1} *);
        SUBLANG_NORWEGIAN_BOKMAL* = 1 (* {0} *);
        SUBLANG_NORWEGIAN_NYNORSK* = 2 (* {1} *);
        SUBLANG_PORTUGUESE* = 2 (* {1} *);
        SUBLANG_PORTUGUESE_BRAZILIAN* = 1 (* {0} *);
        SUBLANG_SPANISH* = 1 (* {0} *);
        SUBLANG_SPANISH_MEXICAN* = 2 (* {1} *);
        SUBLANG_SPANISH_MODERN* = 3 (* {0, 1} *);
        SORT_DEFAULT* = 0 (* {} *);
        SORT_JAPANESE_XJIS* = 0 (* {} *);
        SORT_JAPANESE_UNICODE* = 1 (* {0} *);
        SORT_CHINESE_BIG5* = 0 (* {} *);
        SORT_CHINESE_PRCP* = 0 (* {} *);
        SORT_CHINESE_UNICODE* = 1 (* {0} *);
        SORT_CHINESE_PRC* = 2 (* {1} *);
        SORT_KOREAN_KSC* = 0 (* {} *);
        SORT_KOREAN_UNICODE* = 1 (* {0} *);
        SORT_GERMAN_PHONE_BOOK* = 1 (* {0} *);
        NLS_VALID_LOCALE_MASK* = 1048575 (* {0..19} *);
        LANG_SYSTEM_DEFAULT* = 2048 (* {11} *);
        LANG_USER_DEFAULT* = 1024 (* {10} *);
        LOCALE_SYSTEM_DEFAULT* = 2048 (* {11} *);
        LOCALE_USER_DEFAULT* = 1024 (* {10} *);
        LOCALE_NEUTRAL* = 0 (* {} *);
        STATUS_WAIT_0* = 0 (* {} *);
        STATUS_ABANDONED_WAIT_0* = 128 (* {7} *);
        STATUS_USER_APC* = 192 (* {6, 7} *);
        STATUS_TIMEOUT* = 258 (* {1, 8} *);
        STATUS_PENDING* = 259 (* {0, 1, 8} *);
        STATUS_SEGMENT_NOTIFICATION* = 1073741829 (* {0, 2, 30} *);
        STATUS_GUARD_PAGE_VIOLATION* = -2147483647 (* {0, 31} *);
        STATUS_DATATYPE_MISALIGNMENT* = -2147483646 (* {1, 31} *);
        STATUS_BREAKPOINT* = -2147483645 (* {0, 1, 31} *);
        STATUS_SINGLE_STEP* = -2147483644 (* {2, 31} *);
        STATUS_ACCESS_VIOLATION* = -1073741819 (* {0, 2, 30, 31} *);
        STATUS_IN_PAGE_ERROR* = -1073741818 (* {1, 2, 30, 31} *);
        STATUS_NO_MEMORY* = -1073741801 (* {0..2, 4, 30, 31} *);
        STATUS_ILLEGAL_INSTRUCTION* = -1073741795 (* {0, 2..4, 30, 31} *);
        STATUS_NONCONTINUABLE_EXCEPTION* = -1073741787 (* {0, 2, 5, 30, 31} *);
        STATUS_INVALID_DISPOSITION* = -1073741786 (* {1, 2, 5, 30, 31} *);
        STATUS_ARRAY_BOUNDS_EXCEEDED* = -1073741684 (* {2, 3, 7, 30, 31} *);
        STATUS_FLOAT_DENORMAL_OPERAND* = -1073741683 (* {0, 2, 3, 7, 30, 31} *);
        STATUS_FLOAT_DIVIDE_BY_ZERO* = -1073741682 (* {1..3, 7, 30, 31} *);
        STATUS_FLOAT_INEXACT_RESULT* = -1073741681 (* {0..3, 7, 30, 31} *);
        STATUS_FLOAT_INVALID_OPERATION* = -1073741680 (* {4, 7, 30, 31} *);
        STATUS_FLOAT_OVERFLOW* = -1073741679 (* {0, 4, 7, 30, 31} *);
        STATUS_FLOAT_STACK_CHECK* = -1073741678 (* {1, 4, 7, 30, 31} *);
        STATUS_FLOAT_UNDERFLOW* = -1073741677 (* {0, 1, 4, 7, 30, 31} *);
        STATUS_INTEGER_DIVIDE_BY_ZERO* = -1073741676 (* {2, 4, 7, 30, 31} *);
        STATUS_INTEGER_OVERFLOW* = -1073741675 (* {0, 2, 4, 7, 30, 31} *);
        STATUS_PRIVILEGED_INSTRUCTION* = -1073741674 (* {1, 2, 4, 7, 30, 31} *);
        STATUS_STACK_OVERFLOW* = -1073741571 (* {0, 2..7, 30, 31} *);
        STATUS_CONTROL_C_EXIT* = -1073741510 (* {1, 3..5, 8, 30, 31} *);
        MAXIMUM_WAIT_OBJECTS* = 64 (* {6} *);
        MAXIMUM_SUSPEND_COUNT* = 127 (* {0..6} *);
        SIZE_OF_80387_REGISTERS* = 80 (* {4, 6} *);
        CONTEXT_i386* = {16};
        CONTEXT_i486* = {16};
        CONTEXT_CONTROL* = {0, 16};
        CONTEXT_INTEGER* = {1, 16};
        CONTEXT_SEGMENTS* = {2, 16};
        CONTEXT_FLOATING_POINT* = {3, 16};
        CONTEXT_DEBUG_REGISTERS* = {4, 16};
        CONTEXT_FULL* = {0..2, 16};
        EXCEPTION_NONCONTINUABLE* = {0};
        EXCEPTION_MAXIMUM_PARAMETERS* = 15 (* {0..3} *);
        PROCESS_TERMINATE* = {0};
        PROCESS_CREATE_THREAD* = {1};
        PROCESS_VM_OPERATION* = {3};
        PROCESS_VM_READ* = {4};
        PROCESS_VM_WRITE* = {5};
        PROCESS_DUP_HANDLE* = {6};
        PROCESS_CREATE_PROCESS* = {7};
        PROCESS_SET_QUOTA* = {8};
        PROCESS_SET_INFORMATION* = {9};
        PROCESS_QUERY_INFORMATION* = {10};
        PROCESS_ALL_ACCESS* = {0..11, 16..20};
        MAXIMUM_PROCESSORS* = 32 (* {5} *);
        THREAD_TERMINATE* = {0};
        THREAD_SUSPEND_RESUME* = {1};
        THREAD_GET_CONTEXT* = {3};
        THREAD_SET_CONTEXT* = {4};
        THREAD_SET_INFORMATION* = {5};
        THREAD_QUERY_INFORMATION* = {6};
        THREAD_SET_THREAD_TOKEN* = {7};
        THREAD_IMPERSONATE* = {8};
        THREAD_DIRECT_IMPERSONATION* = {9};
        THREAD_ALL_ACCESS* = 2032639 (* {0..9, 16..20} *);
        TLS_MINIMUM_AVAILABLE* = 64 (* {6} *);
        THREAD_BASE_PRIORITY_LOWRT* = 15 (* {0..3} *);
        THREAD_BASE_PRIORITY_MAX* = 2 (* {1} *);
        THREAD_BASE_PRIORITY_MIN* = -2 (* {1..31} *);
        THREAD_BASE_PRIORITY_IDLE* = -15 (* {0, 4..31} *);
        EVENT_MODIFY_STATE* = 2 (* {1} *);
        EVENT_ALL_ACCESS* = 2031619 (* {0, 1, 16..20} *);
        MUTANT_QUERY_STATE* = 1 (* {0} *);
        MUTANT_ALL_ACCESS* = 2031617 (* {0, 16..20} *);
        SEMAPHORE_MODIFY_STATE* = 2 (* {1} *);
        SEMAPHORE_ALL_ACCESS* = 2031619 (* {0, 1, 16..20} *);
        TIME_ZONE_ID_UNKNOWN* = {};
        TIME_ZONE_ID_STANDARD* = {0};
        TIME_ZONE_ID_DAYLIGHT* = {1};
        PROCESSOR_INTEL_386* = 386 (* {1, 7, 8} *);
        PROCESSOR_INTEL_486* = 486 (* {1, 2, 5..8} *);
        PROCESSOR_INTEL_PENTIUM* = 586 (* {1, 3, 6, 9} *);
        PROCESSOR_MIPS_R4000* = 4000 (* {5, 7..11} *);
        PROCESSOR_ALPHA_21064* = 21064 (* {3, 6, 9, 12, 14} *);
        PROCESSOR_ARCHITECTURE_INTEL* = 0 (* {} *);
        PROCESSOR_ARCHITECTURE_MIPS* = 1 (* {0} *);
        PROCESSOR_ARCHITECTURE_ALPHA* = 2 (* {1} *);
        PROCESSOR_ARCHITECTURE_PPC* = 3 (* {0, 1} *);
        PROCESSOR_ARCHITECTURE_UNKNOWN* = 65535 (* {0..15} *);
        SECTION_QUERY* = {0};
        SECTION_MAP_WRITE* = {1};
        SECTION_MAP_READ* = {2};
        SECTION_MAP_EXECUTE* = {3};
        SECTION_EXTEND_SIZE* = {4};
        SECTION_ALL_ACCESS* = {0..4, 16..19};
        PAGE_NOACCESS* = {0};
        PAGE_READONLY* = {1};
        PAGE_READWRITE* = {2};
        PAGE_WRITECOPY* = {3};
        PAGE_EXECUTE* = {4};
        PAGE_EXECUTE_READ* = {5};
        PAGE_EXECUTE_READWRITE* = {6};
        PAGE_EXECUTE_WRITECOPY* = {7};
        PAGE_GUARD* = {8};
        PAGE_NOCACHE* = {9};
        MEM_COMMIT* = {12};
        MEM_RESERVE* = {13};
        MEM_DECOMMIT* = {14};
        MEM_RELEASE* = {15};
        MEM_FREE* = {16};
        MEM_PRIVATE* = {17};
        MEM_MAPPED* = {18};
        MEM_RESET* = {19};
        MEM_TOP_DOWN* = {20};
        SEC_FILE* = {23};
        SEC_IMAGE* = {24};
        SEC_RESERVE* = {26};
        SEC_COMMIT* = {27};
        SEC_NOCACHE* = {28};
        MEM_IMAGE* = {24};
        FILE_READ_DATA* = {0};
        FILE_LIST_DIRECTORY* = {0};
        FILE_WRITE_DATA* = {1};
        FILE_ADD_FILE* = {1};
        FILE_APPEND_DATA* = {2};
        FILE_ADD_SUBDIRECTORY* = {2};
        FILE_CREATE_PIPE_INSTANCE* = {2};
        FILE_READ_EA* = {3};
        FILE_WRITE_EA* = {4};
        FILE_EXECUTE* = {5};
        FILE_TRAVERSE* = {5};
        FILE_DELETE_CHILD* = {6};
        FILE_READ_ATTRIBUTES* = {7};
        FILE_WRITE_ATTRIBUTES* = {8};
        FILE_ALL_ACCESS* = {0..8, 16..20};
        FILE_GENERIC_READ* = {0, 3, 7, 17, 20};
        FILE_GENERIC_WRITE* = {1, 2, 4, 8, 17, 20};
        FILE_GENERIC_EXECUTE* = {5, 7, 17, 20};
        FILE_SHARE_READ* = {0};
        FILE_SHARE_WRITE* = {1};
        FILE_SHARE_DELETE* = {2};
        FILE_ATTRIBUTE_READONLY* = {0};
        FILE_ATTRIBUTE_HIDDEN* = {1};
        FILE_ATTRIBUTE_SYSTEM* = {2};
        FILE_ATTRIBUTE_DIRECTORY* = {4};
        FILE_ATTRIBUTE_ARCHIVE* = {5};
        FILE_ATTRIBUTE_NORMAL* = {7};
        FILE_ATTRIBUTE_TEMPORARY* = {8};
        FILE_ATTRIBUTE_COMPRESSED* = {11};
        FILE_NOTIFY_CHANGE_FILE_NAME* = {0};
        FILE_NOTIFY_CHANGE_DIR_NAME* = {1};
        FILE_NOTIFY_CHANGE_ATTRIBUTES* = {2};
        FILE_NOTIFY_CHANGE_SIZE* = {3};
        FILE_NOTIFY_CHANGE_LAST_WRITE* = {4};
        FILE_NOTIFY_CHANGE_LAST_ACCESS* = {5};
        FILE_NOTIFY_CHANGE_CREATION* = {6};
        FILE_NOTIFY_CHANGE_SECURITY* = {8};
        FILE_ACTION_ADDED* = {0};
        FILE_ACTION_REMOVED* = {1};
        FILE_ACTION_MODIFIED* = {0, 1};
        FILE_ACTION_RENAMED_OLD_NAME* = {2};
        FILE_ACTION_RENAMED_NEW_NAME* = {0, 2};
        MAILSLOT_NO_MESSAGE* = -1 (* {0..31} *);
        MAILSLOT_WAIT_FOREVER* = -1 (* {0..31} *);
        FILE_CASE_SENSITIVE_SEARCH* = {0};
        FILE_CASE_PRESERVED_NAMES* = {1};
        FILE_UNICODE_ON_DISK* = {2};
        FILE_PERSISTENT_ACLS* = {3};
        FILE_FILE_COMPRESSION* = {4};
        FILE_VOLUME_IS_COMPRESSED* = {15};
        IO_COMPLETION_MODIFY_STATE* = 2 (* {1} *);
        IO_COMPLETION_ALL_ACCESS* = 2031619 (* {0, 1, 16..20} *);
        DUPLICATE_CLOSE_SOURCE* = 1 (* {0} *);
        DUPLICATE_SAME_ACCESS* = 2 (* {1} *);
        DELETE* = 65536 (* {16} *);
        READ_CONTROL* = 131072 (* {17} *);
        WRITE_DAC* = 262144 (* {18} *);
        WRITE_OWNER* = 524288 (* {19} *);
        SYNCHRONIZE* = {20};
        STANDARD_RIGHTS_REQUIRED* = 983040 (* {16..19} *);
        STANDARD_RIGHTS_READ* = 131072 (* {17} *);
        STANDARD_RIGHTS_WRITE* = 131072 (* {17} *);
        STANDARD_RIGHTS_EXECUTE* = 131072 (* {17} *);
        STANDARD_RIGHTS_ALL* = 2031616 (* {16..20} *);
        SPECIFIC_RIGHTS_ALL* = 65535 (* {0..15} *);
        ACCESS_SYSTEM_SECURITY* = 16777216 (* {24} *);
        MAXIMUM_ALLOWED* = 33554432 (* {25} *);
        GENERIC_READ* = {31};
        GENERIC_WRITE* = {30};
        GENERIC_EXECUTE* = {29};
        GENERIC_ALL* = {28};
        SID_REVISION* = 1 (* {0} *);
        SID_MAX_SUB_AUTHORITIES* = 15 (* {0..3} *);
        SID_RECOMMENDED_SUB_AUTHORITIES* = 1 (* {0} *);
        SECURITY_NULL_RID* = 0 (* {} *);
        SECURITY_WORLD_RID* = 0 (* {} *);
        SECURITY_LOCAL_RID* = 0 (* {} *);
        SECURITY_CREATOR_OWNER_RID* = 0 (* {} *);
        SECURITY_CREATOR_GROUP_RID* = 1 (* {0} *);
        SECURITY_CREATOR_OWNER_SERVER_RID* = 2 (* {1} *);
        SECURITY_CREATOR_GROUP_SERVER_RID* = 3 (* {0, 1} *);
        SECURITY_DIALUP_RID* = 1 (* {0} *);
        SECURITY_NETWORK_RID* = 2 (* {1} *);
        SECURITY_BATCH_RID* = 3 (* {0, 1} *);
        SECURITY_INTERACTIVE_RID* = 4 (* {2} *);
        SECURITY_SERVICE_RID* = 6 (* {1, 2} *);
        SECURITY_ANONYMOUS_LOGON_RID* = 7 (* {0..2} *);
        SECURITY_PROXY_RID* = 8 (* {3} *);
        SECURITY_LOGON_IDS_RID* = 5 (* {0, 2} *);
        SECURITY_LOGON_IDS_RID_COUNT* = 3 (* {0, 1} *);
        SECURITY_LOCAL_SYSTEM_RID* = 18 (* {1, 4} *);
        SECURITY_NT_NON_UNIQUE* = 21 (* {0, 2, 4} *);
        SECURITY_BUILTIN_DOMAIN_RID* = 32 (* {5} *);
        DOMAIN_USER_RID_ADMIN* = 500 (* {2, 4..8} *);
        DOMAIN_USER_RID_GUEST* = 501 (* {0, 2, 4..8} *);
        DOMAIN_GROUP_RID_ADMINS* = 512 (* {9} *);
        DOMAIN_GROUP_RID_USERS* = 513 (* {0, 9} *);
        DOMAIN_GROUP_RID_GUESTS* = 514 (* {1, 9} *);
        DOMAIN_ALIAS_RID_ADMINS* = 544 (* {5, 9} *);
        DOMAIN_ALIAS_RID_USERS* = 545 (* {0, 5, 9} *);
        DOMAIN_ALIAS_RID_GUESTS* = 546 (* {1, 5, 9} *);
        DOMAIN_ALIAS_RID_POWER_USERS* = 547 (* {0, 1, 5, 9} *);
        DOMAIN_ALIAS_RID_ACCOUNT_OPS* = 548 (* {2, 5, 9} *);
        DOMAIN_ALIAS_RID_SYSTEM_OPS* = 549 (* {0, 2, 5, 9} *);
        DOMAIN_ALIAS_RID_PRINT_OPS* = 550 (* {1, 2, 5, 9} *);
        DOMAIN_ALIAS_RID_BACKUP_OPS* = 551 (* {0..2, 5, 9} *);
        DOMAIN_ALIAS_RID_REPLICATOR* = 552 (* {3, 5, 9} *);
        SE_GROUP_MANDATORY* = {0};
        SE_GROUP_ENABLED_BY_DEFAULT* = {1};
        SE_GROUP_ENABLED* = {2};
        SE_GROUP_OWNER* = {3};
        SE_GROUP_LOGON_ID* = {30, 31};
        ACL_REVISION* = 2 (* {1} *);
        ACL_REVISION1* = 1 (* {0} *);
        ACL_REVISION2* = 2 (* {1} *);
        ACL_REVISION3* = 3 (* {0, 1} *);
        ACCESS_ALLOWED_ACE_TYPE* = 0 (* {} *);
        ACCESS_DENIED_ACE_TYPE* = 1 (* {0} *);
        SYSTEM_AUDIT_ACE_TYPE* = 2 (* {1} *);
        SYSTEM_ALARM_ACE_TYPE* = 3 (* {0, 1} *);
        ACCESS_ALLOWED_COMPOUND_ACE_TYPE* = 4 (* {2} *);
        OBJECT_INHERIT_ACE* = 1 (* {0} *);
        CONTAINER_INHERIT_ACE* = 2 (* {1} *);
        NO_PROPAGATE_INHERIT_ACE* = 4 (* {2} *);
        INHERIT_ONLY_ACE* = 8 (* {3} *);
        VALID_INHERIT_FLAGS* = 15 (* {0..3} *);
        SUCCESSFUL_ACCESS_ACE_FLAG* = 64 (* {6} *);
        FAILED_ACCESS_ACE_FLAG* = 128 (* {7} *);
        COMPOUND_ACE_IMPERSONATION* = 1 (* {0} *);
        SECURITY_DESCRIPTOR_REVISION* = 1 (* {0} *);
        SECURITY_DESCRIPTOR_REVISION1* = 1 (* {0} *);
        SECURITY_DESCRIPTOR_MIN_LENGTH* = 20 (* {2, 4} *);
        SE_OWNER_DEFAULTED* = 1 (* {0} *);
        SE_GROUP_DEFAULTED* = {1};
        SE_DACL_PRESENT* = 4 (* {2} *);
        SE_DACL_DEFAULTED* = 8 (* {3} *);
        SE_SACL_PRESENT* = 16 (* {4} *);
        SE_SACL_DEFAULTED* = 32 (* {5} *);
        SE_DACL_UNTRUSTED* = 64 (* {6} *);
        SE_SERVER_SECURITY* = 128 (* {7} *);
        SE_SELF_RELATIVE* = 32768 (* {15} *);
        SE_PRIVILEGE_ENABLED_BY_DEFAULT* = 1 (* {0} *);
        SE_PRIVILEGE_ENABLED* = 2 (* {1} *);
        SE_PRIVILEGE_USED_FOR_ACCESS* = 80000000H;
        PRIVILEGE_SET_ALL_NECESSARY* = 1 (* {0} *);
        SE_CREATE_TOKEN_NAME* = "SeCreateTokenPrivilege";
        SE_ASSIGNPRIMARYTOKEN_NAME* = "SeAssignPrimaryTokenPrivilege";
        SE_LOCK_MEMORY_NAME* = "SeLockMemoryPrivilege";
        SE_INCREASE_QUOTA_NAME* = "SeIncreaseQuotaPrivilege";
        SE_UNSOLICITED_INPUT_NAME* = "SeUnsolicitedInputPrivilege";
        SE_MACHINE_ACCOUNT_NAME* = "SeMachineAccountPrivilege";
        SE_TCB_NAME* = "SeTcbPrivilege";
        SE_SECURITY_NAME* = "SeSecurityPrivilege";
        SE_TAKE_OWNERSHIP_NAME* = "SeTakeOwnershipPrivilege";
        SE_LOAD_DRIVER_NAME* = "SeLoadDriverPrivilege";
        SE_SYSTEM_PROFILE_NAME* = "SeSystemProfilePrivilege";
        SE_SYSTEMTIME_NAME* = "SeSystemtimePrivilege";
        SE_PROF_SINGLE_PROCESS_NAME* = "SeProfileSingleProcessPrivilege";
        SE_INC_BASE_PRIORITY_NAME* = "SeIncreaseBasePriorityPrivilege";
        SE_CREATE_PAGEFILE_NAME* = "SeCreatePagefilePrivilege";
        SE_CREATE_PERMANENT_NAME* = "SeCreatePermanentPrivilege";
        SE_BACKUP_NAME* = "SeBackupPrivilege";
        SE_RESTORE_NAME* = "SeRestorePrivilege";
        SE_SHUTDOWN_NAME* = "SeShutdownPrivilege";
        SE_DEBUG_NAME* = "SeDebugPrivilege";
        SE_AUDIT_NAME* = "SeAuditPrivilege";
        SE_SYSTEM_ENVIRONMENT_NAME* = "SeSystemEnvironmentPrivilege";
        SE_CHANGE_NOTIFY_NAME* = "SeChangeNotifyPrivilege";
        SE_REMOTE_SHUTDOWN_NAME* = "SeRemoteShutdownPrivilege";
        SECURITY_MAX_IMPERSONATION_LEVEL* = 3 (* {0, 1} *);
        DEFAULT_IMPERSONATION_LEVEL* = 2 (* {1} *);
        TOKEN_ASSIGN_PRIMARY* = {0};
        TOKEN_DUPLICATE* = {1};
        TOKEN_IMPERSONATE* = {2};
        TOKEN_QUERY* = {3};
        TOKEN_QUERY_SOURCE* = {4};
        TOKEN_ADJUST_PRIVILEGES* = {5};
        TOKEN_ADJUST_GROUPS* = {6};
        TOKEN_ADJUST_DEFAULT* = {7};
        TOKEN_ALL_ACCESS* = {0..7, 16..19};
        TOKEN_READ* = {3, 17};
        TOKEN_WRITE* = {5..7, 17};
        TOKEN_EXECUTE* = {17};
        TOKEN_SOURCE_LENGTH* = {3};
        SECURITY_DYNAMIC_TRACKING* = 1 (* {0} *);
        SECURITY_STATIC_TRACKING* = 0 (* {} *);
        OWNER_SECURITY_INFORMATION* = {0};
        GROUP_SECURITY_INFORMATION* = {1};
        DACL_SECURITY_INFORMATION* = {2};
        SACL_SECURITY_INFORMATION* = {3};
        IMAGE_DOS_SIGNATURE* = 23117 (* {0, 2, 3, 6, 9, 11, 12, 14} *);
        IMAGE_OS2_SIGNATURE* = 17742 (* {1..3, 6, 8, 10, 14} *);
        IMAGE_OS2_SIGNATURE_LE* = 17740 (* {2, 3, 6, 8, 10, 14} *);
        IMAGE_VXD_SIGNATURE* = 17740 (* {2, 3, 6, 8, 10, 14} *);
        IMAGE_NT_SIGNATURE* = 17744 (* {4, 6, 8, 10, 14} *);
        IMAGE_SIZEOF_FILE_HEADER* = 20 (* {2, 4} *);
        IMAGE_FILE_RELOCS_STRIPPED* = {0};
        IMAGE_FILE_EXECUTABLE_IMAGE* = {1};
        IMAGE_FILE_LINE_NUMS_STRIPPED* = {2};
        IMAGE_FILE_LOCAL_SYMS_STRIPPED* = {3};
        IMAGE_FILE_BYTES_REVERSED_LO* = {7};
        IMAGE_FILE_32BIT_MACHINE* = {8};
        IMAGE_FILE_DEBUG_STRIPPED* = {9};
        IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP* = {10};
        IMAGE_FILE_NET_RUN_FROM_SWAP* = {11};
        IMAGE_FILE_SYSTEM* = {12};
        IMAGE_FILE_DLL* = {13};
        IMAGE_FILE_UP_SYSTEM_ONLY* = {14};
        IMAGE_FILE_BYTES_REVERSED_HI* = {15};
        IMAGE_FILE_MACHINE_UNKNOWN* = 0 (* {} *);
        IMAGE_FILE_MACHINE_I386* = 332 (* {2, 3, 6, 8} *);
        IMAGE_FILE_MACHINE_R3000* = 354 (* {1, 5, 6, 8} *);
        IMAGE_FILE_MACHINE_R4000* = 358 (* {1, 2, 5, 6, 8} *);
        IMAGE_FILE_MACHINE_R10000* = 360 (* {3, 5, 6, 8} *);
        IMAGE_FILE_MACHINE_ALPHA* = 388 (* {2, 7, 8} *);
        IMAGE_FILE_MACHINE_POWERPC* = 496 (* {4..8} *);
        IMAGE_NUMBEROF_DIRECTORY_ENTRIES* = 16 (* {4} *);
        IMAGE_SIZEOF_ROM_OPTIONAL_HEADER* = 56 (* {3..5} *);
        IMAGE_SIZEOF_STD_OPTIONAL_HEADER* = 28 (* {2..4} *);
        IMAGE_SIZEOF_NT_OPTIONAL_HEADER* = 224 (* {5..7} *);
        IMAGE_NT_OPTIONAL_HDR_MAGIC* = 267 (* {0, 1, 3, 8} *);
        IMAGE_ROM_OPTIONAL_HDR_MAGIC* = 263 (* {0..2, 8} *);
        IMAGE_SUBSYSTEM_UNKNOWN* = 0 (* {} *);
        IMAGE_SUBSYSTEM_NATIVE* = 1 (* {0} *);
        IMAGE_SUBSYSTEM_WINDOWS_GUI* = 2 (* {1} *);
        IMAGE_SUBSYSTEM_WINDOWS_CUI* = 3 (* {0, 1} *);
        IMAGE_SUBSYSTEM_OS2_CUI* = 5 (* {0, 2} *);
        IMAGE_SUBSYSTEM_POSIX_CUI* = 7 (* {0..2} *);
        IMAGE_SUBSYSTEM_RESERVED8* = 8 (* {3} *);
        IMAGE_DIRECTORY_ENTRY_EXPORT* = 0 (* {} *);
        IMAGE_DIRECTORY_ENTRY_IMPORT* = 1 (* {0} *);
        IMAGE_DIRECTORY_ENTRY_RESOURCE* = 2 (* {1} *);
        IMAGE_DIRECTORY_ENTRY_EXCEPTION* = 3 (* {0, 1} *);
        IMAGE_DIRECTORY_ENTRY_SECURITY* = 4 (* {2} *);
        IMAGE_DIRECTORY_ENTRY_BASERELOC* = 5 (* {0, 2} *);
        IMAGE_DIRECTORY_ENTRY_DEBUG* = 6 (* {1, 2} *);
        IMAGE_DIRECTORY_ENTRY_COPYRIGHT* = 7 (* {0..2} *);
        IMAGE_DIRECTORY_ENTRY_GLOBALPTR* = 8 (* {3} *);
        IMAGE_DIRECTORY_ENTRY_TLS* = 9 (* {0, 3} *);
        IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG* = 10 (* {1, 3} *);
        IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT* = 11 (* {0, 1, 3} *);
        IMAGE_DIRECTORY_ENTRY_IAT* = 12 (* {2, 3} *);
        IMAGE_SIZEOF_SHORT_NAME* = 8 (* {3} *);
        IMAGE_SIZEOF_SECTION_HEADER* = 40 (* {3, 5} *);
        IMAGE_SCN_TYPE_NO_PAD* = {3};
        IMAGE_SCN_CNT_CODE* = {5};
        IMAGE_SCN_CNT_INITIALIZED_DATA* = {6};
        IMAGE_SCN_CNT_UNINITIALIZED_DATA* = {7};
        IMAGE_SCN_LNK_OTHER* = {8};
        IMAGE_SCN_LNK_INFO* = {9};
        IMAGE_SCN_LNK_REMOVE* = {11};
        IMAGE_SCN_LNK_COMDAT* = {12};
        IMAGE_SCN_MEM_FARDATA* = {15};
        IMAGE_SCN_MEM_PURGEABLE* = {17};
        IMAGE_SCN_MEM_16BIT* = {17};
        IMAGE_SCN_MEM_LOCKED* = {18};
        IMAGE_SCN_MEM_PRELOAD* = {19};
        IMAGE_SCN_ALIGN_1BYTES* = {20};
        IMAGE_SCN_ALIGN_2BYTES* = {21};
        IMAGE_SCN_ALIGN_4BYTES* = {20, 21};
        IMAGE_SCN_ALIGN_8BYTES* = {22};
        IMAGE_SCN_ALIGN_16BYTES* = {20, 22};
        IMAGE_SCN_ALIGN_32BYTES* = {21, 22};
        IMAGE_SCN_ALIGN_64BYTES* = {20..22};
        IMAGE_SCN_LNK_NRELOC_OVFL* = {24};
        IMAGE_SCN_MEM_DISCARDABLE* = {25};
        IMAGE_SCN_MEM_NOT_CACHED* = {26};
        IMAGE_SCN_MEM_NOT_PAGED* = {27};
        IMAGE_SCN_MEM_SHARED* = {28};
        IMAGE_SCN_MEM_EXECUTE* = {29};
        IMAGE_SCN_MEM_READ* = {30};
        IMAGE_SCN_MEM_WRITE* = {31};
        IMAGE_SIZEOF_SYMBOL* = 18 (* {1, 4} *);
        IMAGE_SYM_UNDEFINED* = 0 (* {} *);
        IMAGE_SYM_ABSOLUTE* = -1 (* {0..31} *);
        IMAGE_SYM_DEBUG* = -2 (* {1..31} *);
        IMAGE_SYM_TYPE_NULL* = 0 (* {} *);
        IMAGE_SYM_TYPE_VOID* = 1 (* {0} *);
        IMAGE_SYM_TYPE_CHAR* = 2 (* {1} *);
        IMAGE_SYM_TYPE_SHORT* = 3 (* {0, 1} *);
        IMAGE_SYM_TYPE_INT* = 4 (* {2} *);
        IMAGE_SYM_TYPE_LONG* = 5 (* {0, 2} *);
        IMAGE_SYM_TYPE_FLOAT* = 6 (* {1, 2} *);
        IMAGE_SYM_TYPE_DOUBLE* = 7 (* {0..2} *);
        IMAGE_SYM_TYPE_STRUCT* = 8 (* {3} *);
        IMAGE_SYM_TYPE_UNION* = 9 (* {0, 3} *);
        IMAGE_SYM_TYPE_ENUM* = 10 (* {1, 3} *);
        IMAGE_SYM_TYPE_MOE* = 11 (* {0, 1, 3} *);
        IMAGE_SYM_TYPE_BYTE* = 12 (* {2, 3} *);
        IMAGE_SYM_TYPE_WORD* = 13 (* {0, 2, 3} *);
        IMAGE_SYM_TYPE_UINT* = 14 (* {1..3} *);
        IMAGE_SYM_TYPE_DWORD* = 15 (* {0..3} *);
        IMAGE_SYM_TYPE_PCODE* = 32768 (* {15} *);
        IMAGE_SYM_DTYPE_NULL* = 0 (* {} *);
        IMAGE_SYM_DTYPE_POINTER* = 1 (* {0} *);
        IMAGE_SYM_DTYPE_FUNCTION* = 2 (* {1} *);
        IMAGE_SYM_DTYPE_ARRAY* = 3 (* {0, 1} *);
        IMAGE_SYM_CLASS_END_OF_FUNCTION* = -1 (* {0..31} *);
        IMAGE_SYM_CLASS_NULL* = 0 (* {} *);
        IMAGE_SYM_CLASS_AUTOMATIC* = 1 (* {0} *);
        IMAGE_SYM_CLASS_EXTERNAL* = 2 (* {1} *);
        IMAGE_SYM_CLASS_STATIC* = 3 (* {0, 1} *);
        IMAGE_SYM_CLASS_REGISTER* = 4 (* {2} *);
        IMAGE_SYM_CLASS_EXTERNAL_DEF* = 5 (* {0, 2} *);
        IMAGE_SYM_CLASS_LABEL* = 6 (* {1, 2} *);
        IMAGE_SYM_CLASS_UNDEFINED_LABEL* = 7 (* {0..2} *);
        IMAGE_SYM_CLASS_MEMBER_OF_STRUCT* = 8 (* {3} *);
        IMAGE_SYM_CLASS_ARGUMENT* = 9 (* {0, 3} *);
        IMAGE_SYM_CLASS_STRUCT_TAG* = 10 (* {1, 3} *);
        IMAGE_SYM_CLASS_MEMBER_OF_UNION* = 11 (* {0, 1, 3} *);
        IMAGE_SYM_CLASS_UNION_TAG* = 12 (* {2, 3} *);
        IMAGE_SYM_CLASS_TYPE_DEFINITION* = 13 (* {0, 2, 3} *);
        IMAGE_SYM_CLASS_UNDEFINED_STATIC* = 14 (* {1..3} *);
        IMAGE_SYM_CLASS_ENUM_TAG* = 15 (* {0..3} *);
        IMAGE_SYM_CLASS_MEMBER_OF_ENUM* = 16 (* {4} *);
        IMAGE_SYM_CLASS_REGISTER_PARAM* = 17 (* {0, 4} *);
        IMAGE_SYM_CLASS_BIT_FIELD* = 18 (* {1, 4} *);
        IMAGE_SYM_CLASS_FAR_EXTERNAL* = 68 (* {2, 6} *);
        IMAGE_SYM_CLASS_BLOCK* = 100 (* {2, 5, 6} *);
        IMAGE_SYM_CLASS_FUNCTION* = 101 (* {0, 2, 5, 6} *);
        IMAGE_SYM_CLASS_END_OF_STRUCT* = 102 (* {1, 2, 5, 6} *);
        IMAGE_SYM_CLASS_FILE* = 103 (* {0..2, 5, 6} *);
        IMAGE_SYM_CLASS_SECTION* = 104 (* {3, 5, 6} *);
        IMAGE_SYM_CLASS_WEAK_EXTERNAL* = 105 (* {0, 3, 5, 6} *);
        N_BTMASK* = {0..3};
        N_TMASK* = {4, 5};
        N_TMASK1* = {6, 7};
        N_TMASK2* = {4..7};
        N_BTSHFT* = {2};
        N_TSHIFT* = {1};
        IMAGE_SIZEOF_AUX_SYMBOL* = 18 (* {1, 4} *);
        IMAGE_COMDAT_SELECT_NODUPLICATES* = 1 (* {0} *);
        IMAGE_COMDAT_SELECT_ANY* = 2 (* {1} *);
        IMAGE_COMDAT_SELECT_SAME_SIZE* = 3 (* {0, 1} *);
        IMAGE_COMDAT_SELECT_EXACT_MATCH* = 4 (* {2} *);
        IMAGE_COMDAT_SELECT_ASSOCIATIVE* = 5 (* {0, 2} *);
        IMAGE_COMDAT_SELECT_LARGEST* = 6 (* {1, 2} *);
        IMAGE_COMDAT_SELECT_NEWEST* = 7 (* {0..2} *);
        IMAGE_WEAK_EXTERN_SEARCH_NOLIBRARY* = 1 (* {0} *);
        IMAGE_WEAK_EXTERN_SEARCH_LIBRARY* = 2 (* {1} *);
        IMAGE_WEAK_EXTERN_SEARCH_ALIAS* = 3 (* {0, 1} *);
        IMAGE_SIZEOF_RELOCATION* = 10 (* {1, 3} *);
        IMAGE_REL_I386_ABSOLUTE* = 0 (* {} *);
        IMAGE_REL_I386_DIR16* = 1 (* {0} *);
        IMAGE_REL_I386_REL16* = 2 (* {1} *);
        IMAGE_REL_I386_DIR32* = 6 (* {1, 2} *);
        IMAGE_REL_I386_DIR32NB* = 7 (* {0..2} *);
        IMAGE_REL_I386_SEG12* = 9 (* {0, 3} *);
        IMAGE_REL_I386_SECTION* = 10 (* {1, 3} *);
        IMAGE_REL_I386_SECREL* = 11 (* {0, 1, 3} *);
        IMAGE_REL_I386_REL32* = 20 (* {2, 4} *);
        IMAGE_REL_MIPS_ABSOLUTE* = 0 (* {} *);
        IMAGE_REL_MIPS_REFHALF* = 1 (* {0} *);
        IMAGE_REL_MIPS_REFWORD* = 2 (* {1} *);
        IMAGE_REL_MIPS_JMPADDR* = 3 (* {0, 1} *);
        IMAGE_REL_MIPS_REFHI* = 4 (* {2} *);
        IMAGE_REL_MIPS_REFLO* = 5 (* {0, 2} *);
        IMAGE_REL_MIPS_GPREL* = 6 (* {1, 2} *);
        IMAGE_REL_MIPS_LITERAL* = 7 (* {0..2} *);
        IMAGE_REL_MIPS_SECTION* = 10 (* {1, 3} *);
        IMAGE_REL_MIPS_SECREL* = 11 (* {0, 1, 3} *);
        IMAGE_REL_MIPS_SECRELLO* = 12 (* {2, 3} *);
        IMAGE_REL_MIPS_SECRELHI* = 13 (* {0, 2, 3} *);
        IMAGE_REL_MIPS_REFWORDNB* = 34 (* {1, 5} *);
        IMAGE_REL_MIPS_PAIR* = 37 (* {0, 2, 5} *);
        IMAGE_REL_ALPHA_ABSOLUTE* = 0 (* {} *);
        IMAGE_REL_ALPHA_REFLONG* = 1 (* {0} *);
        IMAGE_REL_ALPHA_REFQUAD* = 2 (* {1} *);
        IMAGE_REL_ALPHA_GPREL32* = 3 (* {0, 1} *);
        IMAGE_REL_ALPHA_LITERAL* = 4 (* {2} *);
        IMAGE_REL_ALPHA_LITUSE* = 5 (* {0, 2} *);
        IMAGE_REL_ALPHA_GPDISP* = 6 (* {1, 2} *);
        IMAGE_REL_ALPHA_BRADDR* = 7 (* {0..2} *);
        IMAGE_REL_ALPHA_HINT* = 8 (* {3} *);
        IMAGE_REL_ALPHA_INLINE_REFLONG* = 9 (* {0, 3} *);
        IMAGE_REL_ALPHA_REFHI* = 10 (* {1, 3} *);
        IMAGE_REL_ALPHA_REFLO* = 11 (* {0, 1, 3} *);
        IMAGE_REL_ALPHA_PAIR* = 12 (* {2, 3} *);
        IMAGE_REL_ALPHA_MATCH* = 13 (* {0, 2, 3} *);
        IMAGE_REL_ALPHA_SECTION* = 14 (* {1..3} *);
        IMAGE_REL_ALPHA_SECREL* = 15 (* {0..3} *);
        IMAGE_REL_ALPHA_REFLONGNB* = 16 (* {4} *);
        IMAGE_REL_ALPHA_SECRELLO* = 17 (* {0, 4} *);
        IMAGE_REL_ALPHA_SECRELHI* = 18 (* {1, 4} *);
        IMAGE_REL_PPC_ABSOLUTE* = 0 (* {} *);
        IMAGE_REL_PPC_ADDR64* = 1 (* {0} *);
        IMAGE_REL_PPC_ADDR32* = 2 (* {1} *);
        IMAGE_REL_PPC_ADDR24* = 3 (* {0, 1} *);
        IMAGE_REL_PPC_ADDR16* = 4 (* {2} *);
        IMAGE_REL_PPC_ADDR14* = 5 (* {0, 2} *);
        IMAGE_REL_PPC_REL24* = 6 (* {1, 2} *);
        IMAGE_REL_PPC_REL14* = 7 (* {0..2} *);
        IMAGE_REL_PPC_TOCREL16* = 8 (* {3} *);
        IMAGE_REL_PPC_TOCREL14* = 9 (* {0, 3} *);
        IMAGE_REL_PPC_ADDR32NB* = 10 (* {1, 3} *);
        IMAGE_REL_PPC_SECREL* = 11 (* {0, 1, 3} *);
        IMAGE_REL_PPC_SECTION* = 12 (* {2, 3} *);
        IMAGE_REL_PPC_IFGLUE* = 13 (* {0, 2, 3} *);
        IMAGE_REL_PPC_IMGLUE* = 14 (* {1..3} *);
        IMAGE_REL_PPC_SECREL16* = 15 (* {0..3} *);
        IMAGE_REL_PPC_REFHI* = 16 (* {4} *);
        IMAGE_REL_PPC_REFLO* = 17 (* {0, 4} *);
        IMAGE_REL_PPC_PAIR* = 18 (* {1, 4} *);
        IMAGE_REL_PPC_TYPEMASK* = 255 (* {0..7} *);
        IMAGE_REL_PPC_NEG* = 256 (* {8} *);
        IMAGE_REL_PPC_BRTAKEN* = 512 (* {9} *);
        IMAGE_REL_PPC_BRNTAKEN* = 1024 (* {10} *);
        IMAGE_REL_PPC_TOCDEFN* = 2048 (* {11} *);
        IMAGE_SIZEOF_BASE_RELOCATION* = 8 (* {3} *);
        IMAGE_REL_BASED_ABSOLUTE* = 0 (* {} *);
        IMAGE_REL_BASED_HIGH* = 1 (* {0} *);
        IMAGE_REL_BASED_LOW* = 2 (* {1} *);
        IMAGE_REL_BASED_HIGHLOW* = 3 (* {0, 1} *);
        IMAGE_REL_BASED_HIGHADJ* = 4 (* {2} *);
        IMAGE_REL_BASED_MIPS_JMPADDR* = 5 (* {0, 2} *);
        IMAGE_SIZEOF_LINENUMBER* = 6 (* {1, 2} *);
        IMAGE_ARCHIVE_START_SIZE* = 8 (* {3} *);
        IMAGE_ARCHIVE_START* = "!<arch> 0AX ";
        IMAGE_ARCHIVE_END* = "` 0AX ";
        IMAGE_ARCHIVE_PAD* = " 0AX ";
        IMAGE_ARCHIVE_LINKER_MEMBER* = "/               ";
        IMAGE_ARCHIVE_LONGNAMES_MEMBER* = "//              ";
        IMAGE_SIZEOF_ARCHIVE_MEMBER_HDR* = 60 (* {2..5} *);
        IMAGE_ORDINAL_FLAG* = 80000000H;
        IMAGE_RESOURCE_NAME_IS_STRING* = 80000000H;
        IMAGE_RESOURCE_DATA_IS_DIRECTORY* = 80000000H;
        IMAGE_DEBUG_TYPE_UNKNOWN* = 0 (* {} *);
        IMAGE_DEBUG_TYPE_COFF* = 1 (* {0} *);
        IMAGE_DEBUG_TYPE_CODEVIEW* = 2 (* {1} *);
        IMAGE_DEBUG_TYPE_FPO* = 3 (* {0, 1} *);
        IMAGE_DEBUG_TYPE_MISC* = 4 (* {2} *);
        IMAGE_DEBUG_TYPE_EXCEPTION* = 5 (* {0, 2} *);
        IMAGE_DEBUG_TYPE_FIXUP* = 6 (* {1, 2} *);
        IMAGE_DEBUG_TYPE_OMAP_TO_SRC* = 7 (* {0..2} *);
        IMAGE_DEBUG_TYPE_OMAP_FROM_SRC* = 8 (* {3} *);
        IMAGE_DEBUG_TYPE_OMAP_MISC* = 9 (* {0, 3} *);
        FRAME_FPO* = 0 (* {} *);
        FRAME_TRAP* = 1 (* {0} *);
        FRAME_TSS* = 2 (* {1} *);
        FRAME_NONFPO* = 3 (* {0, 1} *);
        SIZEOF_RFPO_DATA* = 16 (* {4} *);
        IMAGE_DEBUG_MISC_EXENAME* = 1 (* {0} *);
        IMAGE_SEPARATE_DEBUG_SIGNATURE* = 18756 (* {2, 6, 8, 11, 14} *);
        IMAGE_SEPARATE_DEBUG_FLAGS_MASK* = 32768 (* {15} *);
        IMAGE_SEPARATE_DEBUG_MISMATCH* = 32768 (* {15} *);
        HEAP_NO_SERIALIZE* = {0};
        HEAP_GROWABLE* = {1};
        HEAP_GENERATE_EXCEPTIONS* = {2};
        HEAP_ZERO_MEMORY* = {3};
        HEAP_REALLOC_IN_PLACE_ONLY* = {4};
        HEAP_TAIL_CHECKING_ENABLED* = {5};
        HEAP_FREE_CHECKING_ENABLED* = {6};
        HEAP_DISABLE_COALESCE_ON_FREE* = {7};
        HEAP_CREATE_ALIGN_16* = {16};
        HEAP_CREATE_ENABLE_TRACING* = {17};
        HEAP_MAXIMUM_TAG* = {0..11};
        HEAP_PSEUDO_TAG_FLAG* = {15};
        HEAP_TAG_SHIFT* = {4};
        IS_TEXT_UNICODE_ASCII16* = {0};
        IS_TEXT_UNICODE_REVERSE_ASCII16* = {4};
        IS_TEXT_UNICODE_STATISTICS* = {1};
        IS_TEXT_UNICODE_REVERSE_STATISTICS* = {5};
        IS_TEXT_UNICODE_CONTROLS* = {2};
        IS_TEXT_UNICODE_REVERSE_CONTROLS* = {6};
        IS_TEXT_UNICODE_SIGNATURE* = {3};
        IS_TEXT_UNICODE_REVERSE_SIGNATURE* = {7};
        IS_TEXT_UNICODE_ILLEGAL_CHARS* = {8};
        IS_TEXT_UNICODE_ODD_LENGTH* = {9};
        IS_TEXT_UNICODE_DBCS_LEADBYTE* = {10};
        IS_TEXT_UNICODE_NULL_BYTES* = {12};
        IS_TEXT_UNICODE_UNICODE_MASK* = {0..3};
        IS_TEXT_UNICODE_REVERSE_MASK* = {4..7};
        IS_TEXT_UNICODE_NOT_UNICODE_MASK* = {8..11};
        IS_TEXT_UNICODE_NOT_ASCII_MASK* = {12..15};
        COMPRESSION_FORMAT_NONE* = 0 (* {} *);
        COMPRESSION_FORMAT_DEFAULT* = 1 (* {0} *);
        COMPRESSION_FORMAT_LZNT1* = 2 (* {1} *);
        COMPRESSION_ENGINE_STANDARD* = 0 (* {} *);
        COMPRESSION_ENGINE_MAXIMUM* = 256 (* {8} *);
        MESSAGE_RESOURCE_UNICODE* = 1 (* {0} *);
        RTL_CRITSECT_TYPE* = 0 (* {} *);
        RTL_RESOURCE_TYPE* = 1 (* {0} *);
        DLL_PROCESS_ATTACH* = {0};
        DLL_THREAD_ATTACH* = {1};
        DLL_THREAD_DETACH* = {0, 1};
        DLL_PROCESS_DETACH* = {};
        EVENTLOG_SEQUENTIAL_READ* = {0};
        EVENTLOG_SEEK_READ* = {1};
        EVENTLOG_FORWARDS_READ* = {2};
        EVENTLOG_BACKWARDS_READ* = {3};
        EVENTLOG_SUCCESS* = {};
        EVENTLOG_ERROR_TYPE* = {0};
        EVENTLOG_WARNING_TYPE* = {1};
        EVENTLOG_INFORMATION_TYPE* = {2};
        EVENTLOG_AUDIT_SUCCESS* = {3};
        EVENTLOG_AUDIT_FAILURE* = {4};
        EVENTLOG_START_PAIRED_EVENT* = {0};
        EVENTLOG_END_PAIRED_EVENT* = {1};
        EVENTLOG_END_ALL_PAIRED_EVENTS* = {2};
        EVENTLOG_PAIRED_EVENT_ACTIVE* = {3};
        EVENTLOG_PAIRED_EVENT_INACTIVE* = {4};
        DBG_CONTINUE* = {1, 16};
        DBG_TERMINATE_THREAD* = {0, 1, 16, 30};
        DBG_TERMINATE_PROCESS* = {2, 16, 30};
        DBG_CONTROL_C* = {0, 2, 16, 30};
        DBG_CONTROL_BREAK* = {3, 16, 30};
        DBG_EXCEPTION_NOT_HANDLED* = {0, 16, 31};
        KEY_QUERY_VALUE* = {0};
        KEY_SET_VALUE* = {1};
        KEY_CREATE_SUB_KEY* = {2};
        KEY_ENUMERATE_SUB_KEYS* = {3};
        KEY_NOTIFY* = {4};
        KEY_CREATE_LINK* = {5};
        KEY_READ* = {0, 3, 4, 17};
        KEY_WRITE* = {1, 2, 17};
        KEY_EXECUTE* = {0, 3, 4, 17};
        KEY_ALL_ACCESS* = {0..5, 16..19};
        REG_OPTION_RESERVED* = {};
        REG_OPTION_NON_VOLATILE* = {};
        REG_OPTION_VOLATILE* = {0};
        REG_OPTION_CREATE_LINK* = {1};
        REG_OPTION_BACKUP_RESTORE* = {2};
        REG_LEGAL_OPTION* = 7 (* {0..2} *);
        REG_CREATED_NEW_KEY* = 1 (* {0} *);
        REG_OPENED_EXISTING_KEY* = 2 (* {1} *);
        REG_WHOLE_HIVE_VOLATILE* = 1 (* {0} *);
        REG_REFRESH_HIVE* = 2 (* {1} *);
        REG_NOTIFY_CHANGE_NAME* = {0};
        REG_NOTIFY_CHANGE_ATTRIBUTES* = {1};
        REG_NOTIFY_CHANGE_LAST_SET* = {2};
        REG_NOTIFY_CHANGE_SECURITY* = {3};
        REG_LEGAL_CHANGE_FILTER* = {0..3};
        REG_NONE* = 0 (* {} *);
        REG_SZ* = 1 (* {0} *);
        REG_EXPAND_SZ* = 2 (* {1} *);
        REG_BINARY* = 3 (* {0, 1} *);
        REG_DWORD* = 4 (* {2} *);
        REG_DWORD_LITTLE_ENDIAN* = 4 (* {2} *);
        REG_DWORD_BIG_ENDIAN* = 5 (* {0, 2} *);
        REG_LINK* = 6 (* {1, 2} *);
        REG_MULTI_SZ* = 7 (* {0..2} *);
        REG_RESOURCE_LIST* = 8 (* {3} *);
        REG_FULL_RESOURCE_DESCRIPTOR* = 9 (* {0, 3} *);
        REG_RESOURCE_REQUIREMENTS_LIST* = 10 (* {1, 3} *);
        SERVICE_KERNEL_DRIVER* = {0};
        SERVICE_FILE_SYSTEM_DRIVER* = {1};
        SERVICE_ADAPTER* = {2};
        SERVICE_RECOGNIZER_DRIVER* = {3};
        SERVICE_DRIVER* = {0, 1, 3};
        SERVICE_WIN32_OWN_PROCESS* = {4};
        SERVICE_WIN32_SHARE_PROCESS* = {5};
        SERVICE_WIN32* = {4, 5};
        SERVICE_INTERACTIVE_PROCESS* = {8};
        SERVICE_TYPE_ALL* = {0..5, 8};
        SERVICE_BOOT_START* = 0 (* {} *);
        SERVICE_SYSTEM_START* = 1 (* {0} *);
        SERVICE_AUTO_START* = 2 (* {1} *);
        SERVICE_DEMAND_START* = 3 (* {0, 1} *);
        SERVICE_DISABLED* = 4 (* {2} *);
        SERVICE_ERROR_IGNORE* = 0 (* {} *);
        SERVICE_ERROR_NORMAL* = 1 (* {0} *);
        SERVICE_ERROR_SEVERE* = 2 (* {1} *);
        SERVICE_ERROR_CRITICAL* = 3 (* {0, 1} *);
        TAPE_ERASE_SHORT* = 0 (* {} *);
        TAPE_ERASE_LONG* = 1 (* {0} *);
        TAPE_LOAD* = 0 (* {} *);
        TAPE_UNLOAD* = 1 (* {0} *);
        TAPE_TENSION* = 2 (* {1} *);
        TAPE_LOCK* = 3 (* {0, 1} *);
        TAPE_UNLOCK* = 4 (* {2} *);
        TAPE_FORMAT* = 5 (* {0, 2} *);
        TAPE_SETMARKS* = 0 (* {} *);
        TAPE_FILEMARKS* = 1 (* {0} *);
        TAPE_SHORT_FILEMARKS* = 2 (* {1} *);
        TAPE_LONG_FILEMARKS* = 3 (* {0, 1} *);
        TAPE_ABSOLUTE_POSITION* = 0 (* {} *);
        TAPE_LOGICAL_POSITION* = 1 (* {0} *);
        TAPE_PSEUDO_LOGICAL_POSITION* = 2 (* {1} *);
        TAPE_REWIND* = 0 (* {} *);
        TAPE_ABSOLUTE_BLOCK* = 1 (* {0} *);
        TAPE_LOGICAL_BLOCK* = 2 (* {1} *);
        TAPE_PSEUDO_LOGICAL_BLOCK* = 3 (* {0, 1} *);
        TAPE_SPACE_END_OF_DATA* = 4 (* {2} *);
        TAPE_SPACE_RELATIVE_BLOCKS* = 5 (* {0, 2} *);
        TAPE_SPACE_FILEMARKS* = 6 (* {1, 2} *);
        TAPE_SPACE_SEQUENTIAL_FMKS* = 7 (* {0..2} *);
        TAPE_SPACE_SETMARKS* = 8 (* {3} *);
        TAPE_SPACE_SEQUENTIAL_SMKS* = 9 (* {0, 3} *);
        TAPE_DRIVE_FIXED* = {0};
        TAPE_DRIVE_SELECT* = {1};
        TAPE_DRIVE_INITIATOR* = {2};
        TAPE_DRIVE_ERASE_SHORT* = {4};
        TAPE_DRIVE_ERASE_LONG* = {5};
        TAPE_DRIVE_ERASE_BOP_ONLY* = {6};
        TAPE_DRIVE_ERASE_IMMEDIATE* = {7};
        TAPE_DRIVE_TAPE_CAPACITY* = {8};
        TAPE_DRIVE_TAPE_REMAINING* = {9};
        TAPE_DRIVE_FIXED_BLOCK* = {10};
        TAPE_DRIVE_VARIABLE_BLOCK* = {11};
        TAPE_DRIVE_WRITE_PROTECT* = {12};
        TAPE_DRIVE_EOT_WZ_SIZE* = {13};
        TAPE_DRIVE_ECC* = {16};
        TAPE_DRIVE_COMPRESSION* = {17};
        TAPE_DRIVE_PADDING* = {18};
        TAPE_DRIVE_REPORT_SMKS* = {19};
        TAPE_DRIVE_GET_ABSOLUTE_BLK* = {20};
        TAPE_DRIVE_GET_LOGICAL_BLK* = {21};
        TAPE_DRIVE_SET_EOT_WZ_SIZE* = {22};
        TAPE_DRIVE_RESERVED_BIT* = {31};
        TAPE_DRIVE_LOAD_UNLOAD* = {0, 31};
        TAPE_DRIVE_TENSION* = {1, 31};
        TAPE_DRIVE_LOCK_UNLOCK* = {2, 31};
        TAPE_DRIVE_REWIND_IMMEDIATE* = {3, 31};
        TAPE_DRIVE_SET_BLOCK_SIZE* = {4, 31};
        TAPE_DRIVE_LOAD_UNLD_IMMED* = {5, 31};
        TAPE_DRIVE_TENSION_IMMED* = {6, 31};
        TAPE_DRIVE_LOCK_UNLK_IMMED* = {7, 31};
        TAPE_DRIVE_SET_ECC* = {8, 31};
        TAPE_DRIVE_SET_COMPRESSION* = {9, 31};
        TAPE_DRIVE_SET_PADDING* = {10, 31};
        TAPE_DRIVE_SET_REPORT_SMKS* = {11, 31};
        TAPE_DRIVE_ABSOLUTE_BLK* = {12, 31};
        TAPE_DRIVE_ABS_BLK_IMMED* = {13, 31};
        TAPE_DRIVE_LOGICAL_BLK* = {14, 31};
        TAPE_DRIVE_LOG_BLK_IMMED* = {15, 31};
        TAPE_DRIVE_END_OF_DATA* = {16, 31};
        TAPE_DRIVE_RELATIVE_BLKS* = {17, 31};
        TAPE_DRIVE_FILEMARKS* = {18, 31};
        TAPE_DRIVE_SEQUENTIAL_FMKS* = {19, 31};
        TAPE_DRIVE_SETMARKS* = {20, 31};
        TAPE_DRIVE_SEQUENTIAL_SMKS* = {21, 31};
        TAPE_DRIVE_REVERSE_POSITION* = {22, 31};
        TAPE_DRIVE_SPACE_IMMEDIATE* = {23, 31};
        TAPE_DRIVE_WRITE_SETMARKS* = {24, 31};
        TAPE_DRIVE_WRITE_FILEMARKS* = {25, 31};
        TAPE_DRIVE_WRITE_SHORT_FMKS* = {26, 31};
        TAPE_DRIVE_WRITE_LONG_FMKS* = {27, 31};
        TAPE_DRIVE_WRITE_MARK_IMMED* = {28, 31};
        TAPE_DRIVE_FORMAT* = {29, 31};
        TAPE_DRIVE_FORMAT_IMMEDIATE* = {30, 31};
        TAPE_DRIVE_HIGH_FEATURES* = {31};
        TAPE_FIXED_PARTITIONS* = 0 (* {} *);
        TAPE_SELECT_PARTITIONS* = 1 (* {0} *);
        TAPE_INITIATOR_PARTITIONS* = 2 (* {1} *);
        DM_UPDATE* = {0};
        DM_COPY* = {1};
        DM_PROMPT* = {2};
        DM_MODIFY* = {3};
        DM_IN_BUFFER* = {3};
        DM_IN_PROMPT* = {2};
        DM_OUT_BUFFER* = {1};
        DM_OUT_DEFAULT* = {0};
        DC_FIELDS* = 1 (* {0} *);
        DC_PAPERS* = 2 (* {1} *);
        DC_PAPERSIZE* = 3 (* {0, 1} *);
        DC_MINEXTENT* = 4 (* {2} *);
        DC_MAXEXTENT* = 5 (* {0, 2} *);
        DC_BINS* = 6 (* {1, 2} *);
        DC_DUPLEX* = 7 (* {0..2} *);
        DC_SIZE* = 8 (* {3} *);
        DC_EXTRA* = 9 (* {0, 3} *);
        DC_VERSION* = 10 (* {1, 3} *);
        DC_DRIVER* = 11 (* {0, 1, 3} *);
        DC_BINNAMES* = 12 (* {2, 3} *);
        DC_ENUMRESOLUTIONS* = 13 (* {0, 2, 3} *);
        DC_FILEDEPENDENCIES* = 14 (* {1..3} *);
        DC_TRUETYPE* = 15 (* {0..3} *);
        DC_PAPERNAMES* = 16 (* {4} *);
        DC_ORIENTATION* = 17 (* {0, 4} *);
        DC_COPIES* = 18 (* {1, 4} *);
        INVALID_FILE_SIZE* = -1 (* {0..31} *);
        FILE_BEGIN* = 0 (* {} *);
        FILE_CURRENT* = 1 (* {0} *);
        FILE_END* = 2 (* {1} *);
        TIME_ZONE_ID_INVALID* = {0..31};
        WAIT_FAILED* = -1 (* {0..31} *);
        WAIT_OBJECT_0* = 0 (* {} *);
        WAIT_ABANDONED* = 128 (* {7} *);
        WAIT_ABANDONED_0* = 128 (* {7} *);
        WAIT_TIMEOUT* = 258 (* {1, 8} *);
        WAIT_IO_COMPLETION* = 192 (* {6, 7} *);
        STILL_ACTIVE* = 259 (* {0, 1, 8} *);
        EXCEPTION_ACCESS_VIOLATION* = -1073741819 (* {0, 2, 30, 31} *);
        EXCEPTION_DATATYPE_MISALIGNMENT* = -2147483646 (* {1, 31} *);
        EXCEPTION_BREAKPOINT* = -2147483645 (* {0, 1, 31} *);
        EXCEPTION_SINGLE_STEP* = -2147483644 (* {2, 31} *);
        EXCEPTION_ARRAY_BOUNDS_EXCEEDED* = -1073741684 (* {2, 3, 7, 30, 31} *);
        EXCEPTION_FLT_DENORMAL_OPERAND* = -1073741683 (* {0, 2, 3, 7, 30, 31} *);
        EXCEPTION_FLT_DIVIDE_BY_ZERO* = -1073741682 (* {1..3, 7, 30, 31} *);
        EXCEPTION_FLT_INEXACT_RESULT* = -1073741681 (* {0..3, 7, 30, 31} *);
        EXCEPTION_FLT_INVALID_OPERATION* = -1073741680 (* {4, 7, 30, 31} *);
        EXCEPTION_FLT_OVERFLOW* = -1073741679 (* {0, 4, 7, 30, 31} *);
        EXCEPTION_FLT_STACK_CHECK* = -1073741678 (* {1, 4, 7, 30, 31} *);
        EXCEPTION_FLT_UNDERFLOW* = -1073741677 (* {0, 1, 4, 7, 30, 31} *);
        EXCEPTION_INT_DIVIDE_BY_ZERO* = -1073741676 (* {2, 4, 7, 30, 31} *);
        EXCEPTION_INT_OVERFLOW* = -1073741675 (* {0, 2, 4, 7, 30, 31} *);
        EXCEPTION_PRIV_INSTRUCTION* = -1073741674 (* {1, 2, 4, 7, 30, 31} *);
        EXCEPTION_IN_PAGE_ERROR* = -1073741818 (* {1, 2, 30, 31} *);
        EXCEPTION_ILLEGAL_INSTRUCTION* = -1073741795 (* {0, 2..4, 30, 31} *);
        EXCEPTION_NONCONTINUABLE_EXCEPTION* = {0, 2, 5, 30, 31};
        EXCEPTION_STACK_OVERFLOW* = -1073741571 (* {0, 2..7, 30, 31} *);
        EXCEPTION_INVALID_DISPOSITION* = -1073741786 (* {1, 2, 5, 30, 31} *);
        EXCEPTION_GUARD_PAGE* = -2147483647 (* {0, 31} *);
        CONTROL_C_EXIT* = -1073741510 (* {1, 3..5, 8, 30, 31} *);
        FILE_FLAG_WRITE_THROUGH* = {31};
        FILE_FLAG_OVERLAPPED* = {30};
        FILE_FLAG_NO_BUFFERING* = {29};
        FILE_FLAG_RANDOM_ACCESS* = {28};
        FILE_FLAG_SEQUENTIAL_SCAN* = {27};
        FILE_FLAG_DELETE_ON_CLOSE* = {26};
        FILE_FLAG_BACKUP_SEMANTICS* = {25};
        FILE_FLAG_POSIX_SEMANTICS* = {24};
        CREATE_NEW* = 1 (* {0} *);
        CREATE_ALWAYS* = 2 (* {1} *);
        OPEN_EXISTING* = 3 (* {0, 1} *);
        OPEN_ALWAYS* = 4 (* {2} *);
        TRUNCATE_EXISTING* = 5 (* {0, 2} *);
        PROGRESS_CONTINUE* = 0 (* {} *);
        PROGRESS_CANCEL* = 1 (* {0} *);
        PROGRESS_STOP* = 2 (* {1} *);
        PROGRESS_QUIET* = 3 (* {0, 1} *);
        CALLBACK_CHUNK_FINISHED* = 0 (* {} *);
        CALLBACK_STREAM_SWITCH* = 1 (* {0} *);
        COPY_FILE_FAIL_IF_EXISTS* = 1 (* {0} *);
        COPY_FILE_RESTARTABLE* = 2 (* {1} *);
        PIPE_ACCESS_INBOUND* = 1 (* {0} *);
        PIPE_ACCESS_OUTBOUND* = 2 (* {1} *);
        PIPE_ACCESS_DUPLEX* = 3 (* {0, 1} *);
        PIPE_CLIENT_END* = 0 (* {} *);
        PIPE_SERVER_END* = 1 (* {0} *);
        PIPE_WAIT* = 0 (* {} *);
        PIPE_NOWAIT* = 1 (* {0} *);
        PIPE_READMODE_BYTE* = 0 (* {} *);
        PIPE_READMODE_MESSAGE* = 2 (* {1} *);
        PIPE_TYPE_BYTE* = 0 (* {} *);
        PIPE_TYPE_MESSAGE* = 4 (* {2} *);
        PIPE_UNLIMITED_INSTANCES* = 255 (* {0..7} *);
        SECURITY_ANONYMOUS* = {};
        SECURITY_IDENTIFICATION* = {16};
        SECURITY_IMPERSONATION* = {17};
        SECURITY_DELEGATION* = {16, 17};
        SECURITY_CONTEXT_TRACKING* = {18};
        SECURITY_EFFECTIVE_ONLY* = {19};
        SECURITY_SQOS_PRESENT* = {20};
        SECURITY_VALID_SQOS_FLAGS* = {16..20};
        MUTEX_MODIFY_STATE* = {0};
        MUTEX_ALL_ACCESS* = {0, 16..20};
        SP_SERIALCOMM* = {0};
        PST_UNSPECIFIED* = 0 (* {} *);
        PST_RS232* = 1 (* {0} *);
        PST_PARALLELPORT* = 2 (* {1} *);
        PST_RS422* = 3 (* {0, 1} *);
        PST_RS423* = 4 (* {2} *);
        PST_RS449* = 5 (* {0, 2} *);
        PST_MODEM* = 6 (* {1, 2} *);
        PST_FAX* = 33 (* {0, 5} *);
        PST_SCANNER* = 34 (* {1, 5} *);
        PST_NETWORK_BRIDGE* = 256 (* {8} *);
        PST_LAT* = 257 (* {0, 8} *);
        PST_TCPIP_TELNET* = 258 (* {1, 8} *);
        PST_X25* = 259 (* {0, 1, 8} *);
        PCF_DTRDSR* = {0};
        PCF_RTSCTS* = {1};
        PCF_RLSD* = {2};
        PCF_PARITY_CHECK* = {3};
        PCF_XONXOFF* = {4};
        PCF_SETXCHAR* = {5};
        PCF_TOTALTIMEOUTS* = {6};
        PCF_INTTIMEOUTS* = {7};
        PCF_SPECIALCHARS* = {8};
        PCF_16BITMODE* = {9};
        SP_PARITY* = {0};
        SP_BAUD* = {1};
        SP_DATABITS* = {2};
        SP_STOPBITS* = {3};
        SP_HANDSHAKING* = {4};
        SP_PARITY_CHECK* = {5};
        SP_RLSD* = {6};
        BAUD_075* = {0};
        BAUD_110* = {1};
        BAUD_134_5* = {2};
        BAUD_150* = {3};
        BAUD_300* = {4};
        BAUD_600* = {5};
        BAUD_1200* = {6};
        BAUD_1800* = {7};
        BAUD_2400* = {8};
        BAUD_4800* = {9};
        BAUD_7200* = {10};
        BAUD_9600* = {11};
        BAUD_14400* = {12};
        BAUD_19200* = {13};
        BAUD_38400* = {14};
        BAUD_56K* = {15};
        BAUD_128K* = {16};
        BAUD_115200* = {17};
        BAUD_57600* = {18};
        BAUD_USER* = {28};
        DATABITS_5* = 1 (* {0} *);
        DATABITS_6* = 2 (* {1} *);
        DATABITS_7* = 4 (* {2} *);
        DATABITS_8* = 8 (* {3} *);
        DATABITS_16* = 16 (* {4} *);
        DATABITS_16X* = 32 (* {5} *);
        STOPBITS_10* = 1 (* {0} *);
        STOPBITS_15* = 2 (* {1} *);
        STOPBITS_20* = 4 (* {2} *);
        PARITY_NONE* = 256 (* {8} *);
        PARITY_ODD* = 512 (* {9} *);
        PARITY_EVEN* = 1024 (* {10} *);
        PARITY_MARK* = 2048 (* {11} *);
        PARITY_SPACE* = 4096 (* {12} *);
        COMMPROP_INITIALIZED* = -415435474 (* {1..3, 5, 8, 10, 12..15, 18..21, 24..26, 29..31} *);
        DTR_CONTROL_DISABLE* = 0 (* {} *);
        DTR_CONTROL_ENABLE* = 1 (* {0} *);
        DTR_CONTROL_HANDSHAKE* = 2 (* {1} *);
        RTS_CONTROL_DISABLE* = 0 (* {} *);
        RTS_CONTROL_ENABLE* = 1 (* {0} *);
        RTS_CONTROL_HANDSHAKE* = 2 (* {1} *);
        RTS_CONTROL_TOGGLE* = 3 (* {0, 1} *);
        GMEM_FIXED* = {};
        GMEM_MOVEABLE* = {1};
        GMEM_NOCOMPACT* = {4};
        GMEM_NODISCARD* = {5};
        GMEM_ZEROINIT* = {6};
        GMEM_MODIFY* = {7};
        GMEM_DISCARDABLE* = {8};
        GMEM_NOT_BANKED* = {12};
        GMEM_SHARE* = {13};
        GMEM_DDESHARE* = {13};
        GMEM_NOTIFY* = {14};
        GMEM_LOWER* = {12};
        GMEM_VALID_FLAGS* = {1, 4..6, 8..14};
        GMEM_INVALID_HANDLE* = {15};
        GHND* = {1, 6};
        GPTR* = {6};
        GMEM_DISCARDED* = {14};
        GMEM_LOCKCOUNT* = {0..7};
        LMEM_FIXED* = {};
        LMEM_MOVEABLE* = {1};
        LMEM_NOCOMPACT* = {4};
        LMEM_NODISCARD* = {5};
        LMEM_ZEROINIT* = {6};
        LMEM_MODIFY* = {7};
        LMEM_DISCARDABLE* = {8..11};
        LMEM_VALID_FLAGS* = {1, 4..6, 8..11};
        LMEM_INVALID_HANDLE* = {15};
        LHND* = {1, 6};
        LPTR* = {6};
        NONZEROLHND* = {1};
        NONZEROLPTR* = {};
        LMEM_DISCARDED* = {14};
        LMEM_LOCKCOUNT* = {0..7};
        DEBUG_PROCESS* = {0};
        DEBUG_ONLY_THIS_PROCESS* = {1};
        CREATE_SUSPENDED* = {2};
        DETACHED_PROCESS* = {3};
        CREATE_NEW_CONSOLE* = {4};
        NORMAL_PRIORITY_CLASS* = {5};
        IDLE_PRIORITY_CLASS* = {6};
        HIGH_PRIORITY_CLASS* = {7};
        REALTIME_PRIORITY_CLASS* = {8};
        CREATE_NEW_PROCESS_GROUP* = {9};
        CREATE_UNICODE_ENVIRONMENT* = {10};
        CREATE_SEPARATE_WOW_VDM* = {11};
        CREATE_SHARED_WOW_VDM* = {12};
        CREATE_DEFAULT_ERROR_MODE* = {26};
        CREATE_NO_WINDOW* = {27};
        PROFILE_USER* = {28};
        PROFILE_KERNEL* = {29};
        PROFILE_SERVER* = {30};
        THREAD_PRIORITY_LOWEST* = -2 (* {1..31} *);
        THREAD_PRIORITY_BELOW_NORMAL* = -1 (* {0..31} *);
        THREAD_PRIORITY_NORMAL* = 0 (* {} *);
        THREAD_PRIORITY_HIGHEST* = 2 (* {1} *);
        THREAD_PRIORITY_ABOVE_NORMAL* = 1 (* {0} *);
        THREAD_PRIORITY_ERROR_RETURN* = 2147483647 (* {0..30} *);
        THREAD_PRIORITY_TIME_CRITICAL* = 15 (* {0..3} *);
        THREAD_PRIORITY_IDLE* = -15 (* {0, 4..31} *);
        EXCEPTION_DEBUG_EVENT* = 1 (* {0} *);
        CREATE_THREAD_DEBUG_EVENT* = 2 (* {1} *);
        CREATE_PROCESS_DEBUG_EVENT* = 3 (* {0, 1} *);
        EXIT_THREAD_DEBUG_EVENT* = 4 (* {2} *);
        EXIT_PROCESS_DEBUG_EVENT* = 5 (* {0, 2} *);
        LOAD_DLL_DEBUG_EVENT* = 6 (* {1, 2} *);
        UNLOAD_DLL_DEBUG_EVENT* = 7 (* {0..2} *);
        OUTPUT_DEBUG_STRING_EVENT* = 8 (* {3} *);
        RIP_EVENT* = 9 (* {0, 3} *);
        DRIVE_UNKNOWN* = 0 (* {} *);
        DRIVE_NO_ROOT_DIR* = 1 (* {0} *);
        DRIVE_REMOVABLE* = 2 (* {1} *);
        DRIVE_FIXED* = 3 (* {0, 1} *);
        DRIVE_REMOTE* = 4 (* {2} *);
        DRIVE_CDROM* = 5 (* {0, 2} *);
        DRIVE_RAMDISK* = 6 (* {1, 2} *);
        FILE_TYPE_UNKNOWN* = 0 (* {} *);
        FILE_TYPE_DISK* = 1 (* {0} *);
        FILE_TYPE_CHAR* = 2 (* {1} *);
        FILE_TYPE_PIPE* = 3 (* {0, 1} *);
        FILE_TYPE_REMOTE* = 32768 (* {15} *);
        STD_INPUT_HANDLE* = -10 (* {1, 2, 4..31} *);
        STD_OUTPUT_HANDLE* = -11 (* {0, 2, 4..31} *);
        STD_ERROR_HANDLE* = -12 (* {2, 4..31} *);
        NOPARITY* = 0 (* {} *);
        ODDPARITY* = 1 (* {0} *);
        EVENPARITY* = 2 (* {1} *);
        MARKPARITY* = 3 (* {0, 1} *);
        SPACEPARITY* = 4 (* {2} *);
        ONESTOPBIT* = 0 (* {} *);
        ONE5STOPBITS* = 1 (* {0} *);
        TWOSTOPBITS* = 2 (* {1} *);
        IGNORE* = 0 (* {} *);
        INFINITE* = -1 (* {0..31} *);
        CBR_110* = 110 (* {1..3, 5, 6} *);
        CBR_300* = 300 (* {2, 3, 5, 8} *);
        CBR_600* = 600 (* {3, 4, 6, 9} *);
        CBR_1200* = 1200 (* {4, 5, 7, 10} *);
        CBR_2400* = 2400 (* {5, 6, 8, 11} *);
        CBR_4800* = 4800 (* {6, 7, 9, 12} *);
        CBR_9600* = 9600 (* {7, 8, 10, 13} *);
        CBR_14400* = 14400 (* {6, 11..13} *);
        CBR_19200* = 19200 (* {8, 9, 11, 14} *);
        CBR_38400* = 38400 (* {9, 10, 12, 15} *);
        CBR_56000* = 56000 (* {6, 7, 9, 11, 12, 14, 15} *);
        CBR_57600* = 57600 (* {8, 13..15} *);
        CBR_115200* = 115200 (* {9, 14..16} *);
        CBR_128000* = 128000 (* {10, 12..16} *);
        CBR_256000* = 256000 (* {11, 13..17} *);
        CE_RXOVER* = {0};
        CE_OVERRUN* = {1};
        CE_RXPARITY* = {2};
        CE_FRAME* = {3};
        CE_BREAK* = {4};
        CE_TXFULL* = {8};
        CE_PTO* = {9};
        CE_IOE* = {10};
        CE_DNS* = {11};
        CE_OOP* = {12};
        CE_MODE* = {15};
        IE_BADID* = -1 (* {0..31} *);
        IE_OPEN* = -2 (* {1..31} *);
        IE_NOPEN* = -3 (* {0, 2..31} *);
        IE_MEMORY* = -4 (* {2..31} *);
        IE_DEFAULT* = -5 (* {0, 1, 3..31} *);
        IE_HARDWARE* = -10 (* {1, 2, 4..31} *);
        IE_BYTESIZE* = -11 (* {0, 2, 4..31} *);
        IE_BAUDRATE* = -12 (* {2, 4..31} *);
        EV_RXCHAR* = {0};
        EV_RXFLAG* = {1};
        EV_TXEMPTY* = {2};
        EV_CTS* = {3};
        EV_DSR* = {4};
        EV_RLSD* = {5};
        EV_BREAK* = {6};
        EV_ERR* = {7};
        EV_RING* = {8};
        EV_PERR* = {9};
        EV_RX80FULL* = {10};
        EV_EVENT1* = {11};
        EV_EVENT2* = {12};
        SETXOFF* = 1 (* {0} *);
        SETXON* = 2 (* {1} *);
        SETRTS* = 3 (* {0, 1} *);
        CLRRTS* = 4 (* {2} *);
        SETDTR* = 5 (* {0, 2} *);
        CLRDTR* = 6 (* {1, 2} *);
        RESETDEV* = 7 (* {0..2} *);
        SETBREAK* = 8 (* {3} *);
        CLRBREAK* = 9 (* {0, 3} *);
        PURGE_TXABORT* = {0};
        PURGE_RXABORT* = {1};
        PURGE_TXCLEAR* = {2};
        PURGE_RXCLEAR* = {3};
        LPTx* = {7};
        MS_CTS_ON* = {4};
        MS_DSR_ON* = {5};
        MS_RING_ON* = {6};
        MS_RLSD_ON* = {7};
        S_QUEUEEMPTY* = 0 (* {} *);
        S_THRESHOLD* = 1 (* {0} *);
        S_ALLTHRESHOLD* = 2 (* {1} *);
        S_NORMAL* = 0 (* {} *);
        S_LEGATO* = 1 (* {0} *);
        S_STACCATO* = 2 (* {1} *);
        S_PERIOD512* = 0 (* {} *);
        S_PERIOD1024* = 1 (* {0} *);
        S_PERIOD2048* = 2 (* {1} *);
        S_PERIODVOICE* = 3 (* {0, 1} *);
        S_WHITE512* = 4 (* {2} *);
        S_WHITE1024* = 5 (* {0, 2} *);
        S_WHITE2048* = 6 (* {1, 2} *);
        S_WHITEVOICE* = 7 (* {0..2} *);
        S_SERDVNA* = -1 (* {0..31} *);
        S_SEROFM* = -2 (* {1..31} *);
        S_SERMACT* = -3 (* {0, 2..31} *);
        S_SERQFUL* = -4 (* {2..31} *);
        S_SERBDNT* = -5 (* {0, 1, 3..31} *);
        S_SERDLN* = -6 (* {1, 3..31} *);
        S_SERDCC* = -7 (* {0, 3..31} *);
        S_SERDTP* = -8 (* {3..31} *);
        S_SERDVL* = -9 (* {0..2, 4..31} *);
        S_SERDMD* = -10 (* {1, 2, 4..31} *);
        S_SERDSH* = -11 (* {0, 2, 4..31} *);
        S_SERDPT* = -12 (* {2, 4..31} *);
        S_SERDFQ* = -13 (* {0, 1, 4..31} *);
        S_SERDDR* = -14 (* {1, 4..31} *);
        S_SERDSR* = -15 (* {0, 4..31} *);
        S_SERDST* = -16 (* {4..31} *);
        NMPWAIT_WAIT_FOREVER* = -1 (* {0..31} *);
        NMPWAIT_NOWAIT* = 1 (* {0} *);
        NMPWAIT_USE_DEFAULT_WAIT* = 0 (* {} *);
        FS_CASE_IS_PRESERVED* = {1};
        FS_CASE_SENSITIVE* = {0};
        FS_UNICODE_STORED_ON_DISK* = {2};
        FS_PERSISTENT_ACLS* = {3};
        FS_VOL_IS_COMPRESSED* = {15};
        FS_FILE_COMPRESSION* = {4};
        FILE_MAP_COPY* = {0};
        FILE_MAP_WRITE* = {1};
        FILE_MAP_READ* = {2};
        FILE_MAP_ALL_ACCESS* = {0..4, 16..19};
        OF_READ* = {};
        OF_WRITE* = {0};
        OF_READWRITE* = {1};
        OF_SHARE_COMPAT* = {};
        OF_SHARE_EXCLUSIVE* = {4};
        OF_SHARE_DENY_WRITE* = {5};
        OF_SHARE_DENY_READ* = {4, 5};
        OF_SHARE_DENY_NONE* = {6};
        OF_PARSE* = {8};
        OF_DELETE* = {9};
        OF_VERIFY* = {10};
        OF_CANCEL* = {11};
        OF_CREATE* = {12};
        OF_PROMPT* = {13};
        OF_EXIST* = {14};
        OF_REOPEN* = {15};
        OFS_MAXPATHNAME* = 128 (* {7} *);
        MAXINTATOM* = 49152 (* {14, 15} *);
        PROCESS_HEAP_REGION* = {0};
        PROCESS_HEAP_UNCOMMITTED_RANGE* = {1};
        PROCESS_HEAP_ENTRY_BUSY* = {2};
        PROCESS_HEAP_ENTRY_MOVEABLE* = {4};
        PROCESS_HEAP_ENTRY_DDESHARE* = {5};
        SCS_32BIT_BINARY* = 0 (* {} *);
        SCS_DOS_BINARY* = 1 (* {0} *);
        SCS_WOW_BINARY* = 2 (* {1} *);
        SCS_PIF_BINARY* = 3 (* {0, 1} *);
        SCS_POSIX_BINARY* = 4 (* {2} *);
        SCS_OS216_BINARY* = 5 (* {0, 2} *);
        SEM_FAILCRITICALERRORS* = {0};
        SEM_NOGPFAULTERRORBOX* = {1};
        SEM_NOALIGNMENTFAULTEXCEPT* = {2};
        SEM_NOOPENFILEERRORBOX* = {15};
        LOCKFILE_FAIL_IMMEDIATELY* = {0};
        LOCKFILE_EXCLUSIVE_LOCK* = {1};
        HANDLE_FLAG_INHERIT* = {0};
        HANDLE_FLAG_PROTECT_FROM_CLOSE* = {1};
        HINSTANCE_ERROR* = 32 (* {5} *);
        GET_TAPE_MEDIA_INFORMATION* = 0 (* {} *);
        GET_TAPE_DRIVE_INFORMATION* = 1 (* {0} *);
        SET_TAPE_MEDIA_INFORMATION* = 0 (* {} *);
        SET_TAPE_DRIVE_INFORMATION* = 1 (* {0} *);
        FORMAT_MESSAGE_ALLOCATE_BUFFER* = {8};
        FORMAT_MESSAGE_IGNORE_INSERTS* = {9};
        FORMAT_MESSAGE_FROM_STRING* = {10};
        FORMAT_MESSAGE_FROM_HMODULE* = {11};
        FORMAT_MESSAGE_FROM_SYSTEM* = {12};
        FORMAT_MESSAGE_ARGUMENT_ARRAY* = {13};
        FORMAT_MESSAGE_MAX_WIDTH_MASK* = {0..7};
        TLS_OUT_OF_INDEXES* = -1 (* {0..31} *);
        BACKUP_INVALID* = 0 (* {} *);
        BACKUP_DATA* = 1 (* {0} *);
        BACKUP_EA_DATA* = 2 (* {1} *);
        BACKUP_SECURITY_DATA* = 3 (* {0, 1} *);
        BACKUP_ALTERNATE_DATA* = 4 (* {2} *);
        BACKUP_LINK* = 5 (* {0, 2} *);
        BACKUP_PROPERTY_DATA* = 6 (* {1, 2} *);
        STREAM_NORMAL_ATTRIBUTE* = 0 (* {} *);
        STREAM_MODIFIED_WHEN_READ* = 1 (* {0} *);
        STREAM_CONTAINS_SECURITY* = 2 (* {1} *);
        STREAM_CONTAINS_PROPERTIES* = 4 (* {2} *);
        STARTF_USESHOWWINDOW* = {0};
        STARTF_USESIZE* = {1};
        STARTF_USEPOSITION* = {2};
        STARTF_USECOUNTCHARS* = {3};
        STARTF_USEFILLATTRIBUTE* = {4};
        STARTF_RUNFULLSCREEN* = {5};
        STARTF_FORCEONFEEDBACK* = {6};
        STARTF_FORCEOFFFEEDBACK* = {7};
        STARTF_USESTDHANDLES* = {8};
        STARTF_USEHOTKEY* = {9};
        SHUTDOWN_NORETRY* = 1 (* {0} *);
        DONT_RESOLVE_DLL_REFERENCES* = {0};
        LOAD_LIBRARY_AS_DATAFILE* = {1};
        LOAD_WITH_ALTERED_SEARCH_PATH* = {3};
        DDD_RAW_TARGET_PATH* = {0};
        DDD_REMOVE_DEFINITION* = {1};
        DDD_EXACT_MATCH_ON_REMOVE* = {2};
        DDD_NO_BROADCAST_SYSTEM* = {3};
        FIND_FIRST_EX_CASE_SENSITIVE* = {0};
        MOVEFILE_REPLACE_EXISTING* = {0};
        MOVEFILE_COPY_ALLOWED* = {1};
        MOVEFILE_DELAY_UNTIL_REBOOT* = {2};
        MOVEFILE_WRITE_THROUGH* = {3};
        MAX_COMPUTERNAME_LENGTH* = 15 (* {0..3} *);
        LOGON32_LOGON_INTERACTIVE* = 2 (* {1} *);
        LOGON32_LOGON_BATCH* = 4 (* {2} *);
        LOGON32_LOGON_SERVICE* = 5 (* {0, 2} *);
        LOGON32_PROVIDER_DEFAULT* = 0 (* {} *);
        LOGON32_PROVIDER_WINNT35* = 1 (* {0} *);
        LOGON32_PROVIDER_WINNT40* = 2 (* {1} *);
        HW_PROFILE_GUIDLEN* = 39 (* {0..2, 5} *);
        MAX_PROFILE_LEN* = 80 (* {4, 6} *);
        DOCKINFO_UNDOCKED* = 1 (* {0} *);
        DOCKINFO_DOCKED* = 2 (* {1} *);
        DOCKINFO_USER_SUPPLIED* = 4 (* {2} *);
        DOCKINFO_USER_UNDOCKED* = 5 (* {0, 2} *);
        DOCKINFO_USER_DOCKED* = 6 (* {1, 2} *);
        VER_PLATFORM_WIN32s* = 0 (* {} *);
        VER_PLATFORM_WIN32_WINDOWS* = 1 (* {0} *);
        VER_PLATFORM_WIN32_NT* = 2 (* {1} *);
        FACILITY_WINDOWS* = 8 (* {3} *);
        FACILITY_STORAGE* = 3 (* {0, 1} *);
        FACILITY_RPC* = 1 (* {0} *);
        FACILITY_WIN32* = 7 (* {0..2} *);
        FACILITY_CONTROL* = 10 (* {1, 3} *);
        FACILITY_NULL* = 0 (* {} *);
        FACILITY_ITF* = 4 (* {2} *);
        FACILITY_DISPATCH* = 2 (* {1} *);
        ERROR_SUCCESS* = 0 (* {} *);
        NO_ERROR* = 0 (* {} *);
        ERROR_INVALID_FUNCTION* = 1 (* {0} *);
        ERROR_FILE_NOT_FOUND* = 2 (* {1} *);
        ERROR_PATH_NOT_FOUND* = 3 (* {0, 1} *);
        ERROR_TOO_MANY_OPEN_FILES* = 4 (* {2} *);
        ERROR_ACCESS_DENIED* = 5 (* {0, 2} *);
        ERROR_INVALID_HANDLE* = 6 (* {1, 2} *);
        ERROR_ARENA_TRASHED* = 7 (* {0..2} *);
        ERROR_NOT_ENOUGH_MEMORY* = 8 (* {3} *);
        ERROR_INVALID_BLOCK* = 9 (* {0, 3} *);
        ERROR_BAD_ENVIRONMENT* = 10 (* {1, 3} *);
        ERROR_BAD_FORMAT* = 11 (* {0, 1, 3} *);
        ERROR_INVALID_ACCESS* = 12 (* {2, 3} *);
        ERROR_INVALID_DATA* = 13 (* {0, 2, 3} *);
        ERROR_OUTOFMEMORY* = 14 (* {1..3} *);
        ERROR_INVALID_DRIVE* = 15 (* {0..3} *);
        ERROR_CURRENT_DIRECTORY* = 16 (* {4} *);
        ERROR_NOT_SAME_DEVICE* = 17 (* {0, 4} *);
        ERROR_NO_MORE_FILES* = 18 (* {1, 4} *);
        ERROR_WRITE_PROTECT* = 19 (* {0, 1, 4} *);
        ERROR_BAD_UNIT* = 20 (* {2, 4} *);
        ERROR_NOT_READY* = 21 (* {0, 2, 4} *);
        ERROR_BAD_COMMAND* = 22 (* {1, 2, 4} *);
        ERROR_CRC* = 23 (* {0..2, 4} *);
        ERROR_BAD_LENGTH* = 24 (* {3, 4} *);
        ERROR_SEEK* = 25 (* {0, 3, 4} *);
        ERROR_NOT_DOS_DISK* = 26 (* {1, 3, 4} *);
        ERROR_SECTOR_NOT_FOUND* = 27 (* {0, 1, 3, 4} *);
        ERROR_OUT_OF_PAPER* = 28 (* {2..4} *);
        ERROR_WRITE_FAULT* = 29 (* {0, 2..4} *);
        ERROR_READ_FAULT* = 30 (* {1..4} *);
        ERROR_GEN_FAILURE* = 31 (* {0..4} *);
        ERROR_SHARING_VIOLATION* = 32 (* {5} *);
        ERROR_LOCK_VIOLATION* = 33 (* {0, 5} *);
        ERROR_WRONG_DISK* = 34 (* {1, 5} *);
        ERROR_SHARING_BUFFER_EXCEEDED* = 36 (* {2, 5} *);
        ERROR_HANDLE_EOF* = 38 (* {1, 2, 5} *);
        ERROR_HANDLE_DISK_FULL* = 39 (* {0..2, 5} *);
        ERROR_NOT_SUPPORTED* = 50 (* {1, 4, 5} *);
        ERROR_REM_NOT_LIST* = 51 (* {0, 1, 4, 5} *);
        ERROR_DUP_NAME* = 52 (* {2, 4, 5} *);
        ERROR_BAD_NETPATH* = 53 (* {0, 2, 4, 5} *);
        ERROR_NETWORK_BUSY* = 54 (* {1, 2, 4, 5} *);
        ERROR_DEV_NOT_EXIST* = 55 (* {0..2, 4, 5} *);
        ERROR_TOO_MANY_CMDS* = 56 (* {3..5} *);
        ERROR_ADAP_HDW_ERR* = 57 (* {0, 3..5} *);
        ERROR_BAD_NET_RESP* = 58 (* {1, 3..5} *);
        ERROR_UNEXP_NET_ERR* = 59 (* {0, 1, 3..5} *);
        ERROR_BAD_REM_ADAP* = 60 (* {2..5} *);
        ERROR_PRINTQ_FULL* = 61 (* {0, 2..5} *);
        ERROR_NO_SPOOL_SPACE* = 62 (* {1..5} *);
        ERROR_PRINT_CANCELLED* = 63 (* {0..5} *);
        ERROR_NETNAME_DELETED* = 64 (* {6} *);
        ERROR_NETWORK_ACCESS_DENIED* = 65 (* {0, 6} *);
        ERROR_BAD_DEV_TYPE* = 66 (* {1, 6} *);
        ERROR_BAD_NET_NAME* = 67 (* {0, 1, 6} *);
        ERROR_TOO_MANY_NAMES* = 68 (* {2, 6} *);
        ERROR_TOO_MANY_SESS* = 69 (* {0, 2, 6} *);
        ERROR_SHARING_PAUSED* = 70 (* {1, 2, 6} *);
        ERROR_REQ_NOT_ACCEP* = 71 (* {0..2, 6} *);
        ERROR_REDIR_PAUSED* = 72 (* {3, 6} *);
        ERROR_FILE_EXISTS* = 80 (* {4, 6} *);
        ERROR_CANNOT_MAKE* = 82 (* {1, 4, 6} *);
        ERROR_FAIL_I24* = 83 (* {0, 1, 4, 6} *);
        ERROR_OUT_OF_STRUCTURES* = 84 (* {2, 4, 6} *);
        ERROR_ALREADY_ASSIGNED* = 85 (* {0, 2, 4, 6} *);
        ERROR_INVALID_PASSWORD* = 86 (* {1, 2, 4, 6} *);
        ERROR_INVALID_PARAMETER* = 87 (* {0..2, 4, 6} *);
        ERROR_NET_WRITE_FAULT* = 88 (* {3, 4, 6} *);
        ERROR_NO_PROC_SLOTS* = 89 (* {0, 3, 4, 6} *);
        ERROR_TOO_MANY_SEMAPHORES* = 100 (* {2, 5, 6} *);
        ERROR_EXCL_SEM_ALREADY_OWNED* = 101 (* {0, 2, 5, 6} *);
        ERROR_SEM_IS_SET* = 102 (* {1, 2, 5, 6} *);
        ERROR_TOO_MANY_SEM_REQUESTS* = 103 (* {0..2, 5, 6} *);
        ERROR_INVALID_AT_INTERRUPT_TIME* = 104 (* {3, 5, 6} *);
        ERROR_SEM_OWNER_DIED* = 105 (* {0, 3, 5, 6} *);
        ERROR_SEM_USER_LIMIT* = 106 (* {1, 3, 5, 6} *);
        ERROR_DISK_CHANGE* = 107 (* {0, 1, 3, 5, 6} *);
        ERROR_DRIVE_LOCKED* = 108 (* {2, 3, 5, 6} *);
        ERROR_BROKEN_PIPE* = 109 (* {0, 2, 3, 5, 6} *);
        ERROR_OPEN_FAILED* = 110 (* {1..3, 5, 6} *);
        ERROR_BUFFER_OVERFLOW* = 111 (* {0..3, 5, 6} *);
        ERROR_DISK_FULL* = 112 (* {4..6} *);
        ERROR_NO_MORE_SEARCH_HANDLES* = 113 (* {0, 4..6} *);
        ERROR_INVALID_TARGET_HANDLE* = 114 (* {1, 4..6} *);
        ERROR_INVALID_CATEGORY* = 117 (* {0, 2, 4..6} *);
        ERROR_INVALID_VERIFY_SWITCH* = 118 (* {1, 2, 4..6} *);
        ERROR_BAD_DRIVER_LEVEL* = 119 (* {0..2, 4..6} *);
        ERROR_CALL_NOT_IMPLEMENTED* = 120 (* {3..6} *);
        ERROR_SEM_TIMEOUT* = 121 (* {0, 3..6} *);
        ERROR_INSUFFICIENT_BUFFER* = 122 (* {1, 3..6} *);
        ERROR_INVALID_NAME* = 123 (* {0, 1, 3..6} *);
        ERROR_INVALID_LEVEL* = 124 (* {2..6} *);
        ERROR_NO_VOLUME_LABEL* = 125 (* {0, 2..6} *);
        ERROR_MOD_NOT_FOUND* = 126 (* {1..6} *);
        ERROR_PROC_NOT_FOUND* = 127 (* {0..6} *);
        ERROR_WAIT_NO_CHILDREN* = 128 (* {7} *);
        ERROR_CHILD_NOT_COMPLETE* = 129 (* {0, 7} *);
        ERROR_DIRECT_ACCESS_HANDLE* = 130 (* {1, 7} *);
        ERROR_NEGATIVE_SEEK* = 131 (* {0, 1, 7} *);
        ERROR_SEEK_ON_DEVICE* = 132 (* {2, 7} *);
        ERROR_IS_JOIN_TARGET* = 133 (* {0, 2, 7} *);
        ERROR_IS_JOINED* = 134 (* {1, 2, 7} *);
        ERROR_IS_SUBSTED* = 135 (* {0..2, 7} *);
        ERROR_NOT_JOINED* = 136 (* {3, 7} *);
        ERROR_NOT_SUBSTED* = 137 (* {0, 3, 7} *);
        ERROR_JOIN_TO_JOIN* = 138 (* {1, 3, 7} *);
        ERROR_SUBST_TO_SUBST* = 139 (* {0, 1, 3, 7} *);
        ERROR_JOIN_TO_SUBST* = 140 (* {2, 3, 7} *);
        ERROR_SUBST_TO_JOIN* = 141 (* {0, 2, 3, 7} *);
        ERROR_BUSY_DRIVE* = 142 (* {1..3, 7} *);
        ERROR_SAME_DRIVE* = 143 (* {0..3, 7} *);
        ERROR_DIR_NOT_ROOT* = 144 (* {4, 7} *);
        ERROR_DIR_NOT_EMPTY* = 145 (* {0, 4, 7} *);
        ERROR_IS_SUBST_PATH* = 146 (* {1, 4, 7} *);
        ERROR_IS_JOIN_PATH* = 147 (* {0, 1, 4, 7} *);
        ERROR_PATH_BUSY* = 148 (* {2, 4, 7} *);
        ERROR_IS_SUBST_TARGET* = 149 (* {0, 2, 4, 7} *);
        ERROR_SYSTEM_TRACE* = 150 (* {1, 2, 4, 7} *);
        ERROR_INVALID_EVENT_COUNT* = 151 (* {0..2, 4, 7} *);
        ERROR_TOO_MANY_MUXWAITERS* = 152 (* {3, 4, 7} *);
        ERROR_INVALID_LIST_FORMAT* = 153 (* {0, 3, 4, 7} *);
        ERROR_LABEL_TOO_LONG* = 154 (* {1, 3, 4, 7} *);
        ERROR_TOO_MANY_TCBS* = 155 (* {0, 1, 3, 4, 7} *);
        ERROR_SIGNAL_REFUSED* = 156 (* {2..4, 7} *);
        ERROR_DISCARDED* = 157 (* {0, 2..4, 7} *);
        ERROR_NOT_LOCKED* = 158 (* {1..4, 7} *);
        ERROR_BAD_THREADID_ADDR* = 159 (* {0..4, 7} *);
        ERROR_BAD_ARGUMENTS* = 160 (* {5, 7} *);
        ERROR_BAD_PATHNAME* = 161 (* {0, 5, 7} *);
        ERROR_SIGNAL_PENDING* = 162 (* {1, 5, 7} *);
        ERROR_MAX_THRDS_REACHED* = 164 (* {2, 5, 7} *);
        ERROR_LOCK_FAILED* = 167 (* {0..2, 5, 7} *);
        ERROR_BUSY* = 170 (* {1, 3, 5, 7} *);
        ERROR_CANCEL_VIOLATION* = 173 (* {0, 2, 3, 5, 7} *);
        ERROR_ATOMIC_LOCKS_NOT_SUPPORTED* = 174 (* {1..3, 5, 7} *);
        ERROR_INVALID_SEGMENT_NUMBER* = 180 (* {2, 4, 5, 7} *);
        ERROR_INVALID_ORDINAL* = 182 (* {1, 2, 4, 5, 7} *);
        ERROR_ALREADY_EXISTS* = 183 (* {0..2, 4, 5, 7} *);
        ERROR_INVALID_FLAG_NUMBER* = 186 (* {1, 3..5, 7} *);
        ERROR_SEM_NOT_FOUND* = 187 (* {0, 1, 3..5, 7} *);
        ERROR_INVALID_STARTING_CODESEG* = 188 (* {2..5, 7} *);
        ERROR_INVALID_STACKSEG* = 189 (* {0, 2..5, 7} *);
        ERROR_INVALID_MODULETYPE* = 190 (* {1..5, 7} *);
        ERROR_INVALID_EXE_SIGNATURE* = 191 (* {0..5, 7} *);
        ERROR_EXE_MARKED_INVALID* = 192 (* {6, 7} *);
        ERROR_BAD_EXE_FORMAT* = 193 (* {0, 6, 7} *);
        ERROR_ITERATED_DATA_EXCEEDS_64k* = 194 (* {1, 6, 7} *);
        ERROR_INVALID_MINALLOCSIZE* = 195 (* {0, 1, 6, 7} *);
        ERROR_DYNLINK_FROM_INVALID_RING* = 196 (* {2, 6, 7} *);
        ERROR_IOPL_NOT_ENABLED* = 197 (* {0, 2, 6, 7} *);
        ERROR_INVALID_SEGDPL* = 198 (* {1, 2, 6, 7} *);
        ERROR_AUTODATASEG_EXCEEDS_64k* = 199 (* {0..2, 6, 7} *);
        ERROR_RING2SEG_MUST_BE_MOVABLE* = 200 (* {3, 6, 7} *);
        ERROR_RELOC_CHAIN_XEEDS_SEGLIM* = 201 (* {0, 3, 6, 7} *);
        ERROR_INFLOOP_IN_RELOC_CHAIN* = 202 (* {1, 3, 6, 7} *);
        ERROR_ENVVAR_NOT_FOUND* = 203 (* {0, 1, 3, 6, 7} *);
        ERROR_NO_SIGNAL_SENT* = 205 (* {0, 2, 3, 6, 7} *);
        ERROR_FILENAME_EXCED_RANGE* = 206 (* {1..3, 6, 7} *);
        ERROR_RING2_STACK_IN_USE* = 207 (* {0..3, 6, 7} *);
        ERROR_META_EXPANSION_TOO_LONG* = 208 (* {4, 6, 7} *);
        ERROR_INVALID_SIGNAL_NUMBER* = 209 (* {0, 4, 6, 7} *);
        ERROR_THREAD_1_INACTIVE* = 210 (* {1, 4, 6, 7} *);
        ERROR_LOCKED* = 212 (* {2, 4, 6, 7} *);
        ERROR_TOO_MANY_MODULES* = 214 (* {1, 2, 4, 6, 7} *);
        ERROR_NESTING_NOT_ALLOWED* = 215 (* {0..2, 4, 6, 7} *);
        ERROR_BAD_PIPE* = 230 (* {1, 2, 5..7} *);
        ERROR_PIPE_BUSY* = 231 (* {0..2, 5..7} *);
        ERROR_NO_DATA* = 232 (* {3, 5..7} *);
        ERROR_PIPE_NOT_CONNECTED* = 233 (* {0, 3, 5..7} *);
        ERROR_MORE_DATA* = 234 (* {1, 3, 5..7} *);
        ERROR_VC_DISCONNECTED* = 240 (* {4..7} *);
        ERROR_INVALID_EA_NAME* = 254 (* {1..7} *);
        ERROR_EA_LIST_INCONSISTENT* = 255 (* {0..7} *);
        ERROR_NO_MORE_ITEMS* = 259 (* {0, 1, 8} *);
        ERROR_CANNOT_COPY* = 266 (* {1, 3, 8} *);
        ERROR_DIRECTORY* = 267 (* {0, 1, 3, 8} *);
        ERROR_EAS_DIDNT_FIT* = 275 (* {0, 1, 4, 8} *);
        ERROR_EA_FILE_CORRUPT* = 276 (* {2, 4, 8} *);
        ERROR_EA_TABLE_FULL* = 277 (* {0, 2, 4, 8} *);
        ERROR_INVALID_EA_HANDLE* = 278 (* {1, 2, 4, 8} *);
        ERROR_EAS_NOT_SUPPORTED* = 282 (* {1, 3, 4, 8} *);
        ERROR_NOT_OWNER* = 288 (* {5, 8} *);
        ERROR_TOO_MANY_POSTS* = 298 (* {1, 3, 5, 8} *);
        ERROR_PARTIAL_COPY* = 299 (* {0, 1, 3, 5, 8} *);
        ERROR_MR_MID_NOT_FOUND* = 317 (* {0, 2..5, 8} *);
        ERROR_INVALID_ADDRESS* = 487 (* {0..2, 5..8} *);
        ERROR_ARITHMETIC_OVERFLOW* = 534 (* {1, 2, 4, 9} *);
        ERROR_PIPE_CONNECTED* = 535 (* {0..2, 4, 9} *);
        ERROR_PIPE_LISTENING* = 536 (* {3, 4, 9} *);
        ERROR_EA_ACCESS_DENIED* = 994 (* {1, 5..9} *);
        ERROR_OPERATION_ABORTED* = 995 (* {0, 1, 5..9} *);
        ERROR_IO_INCOMPLETE* = 996 (* {2, 5..9} *);
        ERROR_IO_PENDING* = 997 (* {0, 2, 5..9} *);
        ERROR_NOACCESS* = 998 (* {1, 2, 5..9} *);
        ERROR_SWAPERROR* = 999 (* {0..2, 5..9} *);
        ERROR_STACK_OVERFLOW* = 1001 (* {0, 3, 5..9} *);
        ERROR_INVALID_MESSAGE* = 1002 (* {1, 3, 5..9} *);
        ERROR_CAN_NOT_COMPLETE* = 1003 (* {0, 1, 3, 5..9} *);
        ERROR_INVALID_FLAGS* = 1004 (* {2, 3, 5..9} *);
        ERROR_UNRECOGNIZED_VOLUME* = 1005 (* {0, 2, 3, 5..9} *);
        ERROR_FILE_INVALID* = 1006 (* {1..3, 5..9} *);
        ERROR_FULLSCREEN_MODE* = 1007 (* {0..3, 5..9} *);
        ERROR_NO_TOKEN* = 1008 (* {4..9} *);
        ERROR_BADDB* = 1009 (* {0, 4..9} *);
        ERROR_BADKEY* = 1010 (* {1, 4..9} *);
        ERROR_CANTOPEN* = 1011 (* {0, 1, 4..9} *);
        ERROR_CANTREAD* = 1012 (* {2, 4..9} *);
        ERROR_CANTWRITE* = 1013 (* {0, 2, 4..9} *);
        ERROR_REGISTRY_RECOVERED* = 1014 (* {1, 2, 4..9} *);
        ERROR_REGISTRY_CORRUPT* = 1015 (* {0..2, 4..9} *);
        ERROR_REGISTRY_IO_FAILED* = 1016 (* {3..9} *);
        ERROR_NOT_REGISTRY_FILE* = 1017 (* {0, 3..9} *);
        ERROR_KEY_DELETED* = 1018 (* {1, 3..9} *);
        ERROR_NO_LOG_SPACE* = 1019 (* {0, 1, 3..9} *);
        ERROR_KEY_HAS_CHILDREN* = 1020 (* {2..9} *);
        ERROR_CHILD_MUST_BE_VOLATILE* = 1021 (* {0, 2..9} *);
        ERROR_NOTIFY_ENUM_DIR* = 1022 (* {1..9} *);
        ERROR_DEPENDENT_SERVICES_RUNNING* = 1051 (* {0, 1, 3, 4, 10} *);
        ERROR_INVALID_SERVICE_CONTROL* = 1052 (* {2..4, 10} *);
        ERROR_SERVICE_REQUEST_TIMEOUT* = 1053 (* {0, 2..4, 10} *);
        ERROR_SERVICE_NO_THREAD* = 1054 (* {1..4, 10} *);
        ERROR_SERVICE_DATABASE_LOCKED* = 1055 (* {0..4, 10} *);
        ERROR_SERVICE_ALREADY_RUNNING* = 1056 (* {5, 10} *);
        ERROR_INVALID_SERVICE_ACCOUNT* = 1057 (* {0, 5, 10} *);
        ERROR_SERVICE_DISABLED* = 1058 (* {1, 5, 10} *);
        ERROR_CIRCULAR_DEPENDENCY* = 1059 (* {0, 1, 5, 10} *);
        ERROR_SERVICE_DOES_NOT_EXIST* = 1060 (* {2, 5, 10} *);
        ERROR_SERVICE_CANNOT_ACCEPT_CTRL* = 1061 (* {0, 2, 5, 10} *);
        ERROR_SERVICE_NOT_ACTIVE* = 1062 (* {1, 2, 5, 10} *);
        ERROR_FAILED_SERVICE_CONTROLLER_CONNECT* = 1063 (* {0..2, 5, 10} *);
        ERROR_EXCEPTION_IN_SERVICE* = 1064 (* {3, 5, 10} *);
        ERROR_DATABASE_DOES_NOT_EXIST* = 1065 (* {0, 3, 5, 10} *);
        ERROR_SERVICE_SPECIFIC_ERROR* = 1066 (* {1, 3, 5, 10} *);
        ERROR_PROCESS_ABORTED* = 1067 (* {0, 1, 3, 5, 10} *);
        ERROR_SERVICE_DEPENDENCY_FAIL* = 1068 (* {2, 3, 5, 10} *);
        ERROR_SERVICE_LOGON_FAILED* = 1069 (* {0, 2, 3, 5, 10} *);
        ERROR_SERVICE_START_HANG* = 1070 (* {1..3, 5, 10} *);
        ERROR_INVALID_SERVICE_LOCK* = 1071 (* {0..3, 5, 10} *);
        ERROR_SERVICE_MARKED_FOR_DELETE* = 1072 (* {4, 5, 10} *);
        ERROR_SERVICE_EXISTS* = 1073 (* {0, 4, 5, 10} *);
        ERROR_ALREADY_RUNNING_LKG* = 1074 (* {1, 4, 5, 10} *);
        ERROR_SERVICE_DEPENDENCY_DELETED* = 1075 (* {0, 1, 4, 5, 10} *);
        ERROR_BOOT_ALREADY_ACCEPTED* = 1076 (* {2, 4, 5, 10} *);
        ERROR_SERVICE_NEVER_STARTED* = 1077 (* {0, 2, 4, 5, 10} *);
        ERROR_DUPLICATE_SERVICE_NAME* = 1078 (* {1, 2, 4, 5, 10} *);
        ERROR_END_OF_MEDIA* = 1100 (* {2, 3, 6, 10} *);
        ERROR_FILEMARK_DETECTED* = 1101 (* {0, 2, 3, 6, 10} *);
        ERROR_BEGINNING_OF_MEDIA* = 1102 (* {1..3, 6, 10} *);
        ERROR_SETMARK_DETECTED* = 1103 (* {0..3, 6, 10} *);
        ERROR_NO_DATA_DETECTED* = 1104 (* {4, 6, 10} *);
        ERROR_PARTITION_FAILURE* = 1105 (* {0, 4, 6, 10} *);
        ERROR_INVALID_BLOCK_LENGTH* = 1106 (* {1, 4, 6, 10} *);
        ERROR_DEVICE_NOT_PARTITIONED* = 1107 (* {0, 1, 4, 6, 10} *);
        ERROR_UNABLE_TO_LOCK_MEDIA* = 1108 (* {2, 4, 6, 10} *);
        ERROR_UNABLE_TO_UNLOAD_MEDIA* = 1109 (* {0, 2, 4, 6, 10} *);
        ERROR_MEDIA_CHANGED* = 1110 (* {1, 2, 4, 6, 10} *);
        ERROR_BUS_RESET* = 1111 (* {0..2, 4, 6, 10} *);
        ERROR_NO_MEDIA_IN_DRIVE* = 1112 (* {3, 4, 6, 10} *);
        ERROR_NO_UNICODE_TRANSLATION* = 1113 (* {0, 3, 4, 6, 10} *);
        ERROR_DLL_INIT_FAILED* = 1114 (* {1, 3, 4, 6, 10} *);
        ERROR_SHUTDOWN_IN_PROGRESS* = 1115 (* {0, 1, 3, 4, 6, 10} *);
        ERROR_NO_SHUTDOWN_IN_PROGRESS* = 1116 (* {2..4, 6, 10} *);
        ERROR_IO_DEVICE* = 1117 (* {0, 2..4, 6, 10} *);
        ERROR_SERIAL_NO_DEVICE* = 1118 (* {1..4, 6, 10} *);
        ERROR_IRQ_BUSY* = 1119 (* {0..4, 6, 10} *);
        ERROR_MORE_WRITES* = 1120 (* {5, 6, 10} *);
        ERROR_COUNTER_TIMEOUT* = 1121 (* {0, 5, 6, 10} *);
        ERROR_FLOPPY_ID_MARK_NOT_FOUND* = 1122 (* {1, 5, 6, 10} *);
        ERROR_FLOPPY_WRONG_CYLINDER* = 1123 (* {0, 1, 5, 6, 10} *);
        ERROR_FLOPPY_UNKNOWN_ERROR* = 1124 (* {2, 5, 6, 10} *);
        ERROR_FLOPPY_BAD_REGISTERS* = 1125 (* {0, 2, 5, 6, 10} *);
        ERROR_DISK_RECALIBRATE_FAILED* = 1126 (* {1, 2, 5, 6, 10} *);
        ERROR_DISK_OPERATION_FAILED* = 1127 (* {0..2, 5, 6, 10} *);
        ERROR_DISK_RESET_FAILED* = 1128 (* {3, 5, 6, 10} *);
        ERROR_EOM_OVERFLOW* = 1129 (* {0, 3, 5, 6, 10} *);
        ERROR_NOT_ENOUGH_SERVER_MEMORY* = 1130 (* {1, 3, 5, 6, 10} *);
        ERROR_POSSIBLE_DEADLOCK* = 1131 (* {0, 1, 3, 5, 6, 10} *);
        ERROR_MAPPED_ALIGNMENT* = 1132 (* {2, 3, 5, 6, 10} *);
        ERROR_SET_POWER_STATE_VETOED* = 1140 (* {2, 4..6, 10} *);
        ERROR_SET_POWER_STATE_FAILED* = 1141 (* {0, 2, 4..6, 10} *);
        ERROR_OLD_WIN_VERSION* = 1150 (* {1..6, 10} *);
        ERROR_APP_WRONG_OS* = 1151 (* {0..6, 10} *);
        ERROR_SINGLE_INSTANCE_APP* = 1152 (* {7, 10} *);
        ERROR_RMODE_APP* = 1153 (* {0, 7, 10} *);
        ERROR_INVALID_DLL* = 1154 (* {1, 7, 10} *);
        ERROR_NO_ASSOCIATION* = 1155 (* {0, 1, 7, 10} *);
        ERROR_DDE_FAIL* = 1156 (* {2, 7, 10} *);
        ERROR_DLL_NOT_FOUND* = 1157 (* {0, 2, 7, 10} *);
        ERROR_BAD_USERNAME* = 2202 (* {1, 3, 4, 7, 11} *);
        ERROR_NOT_CONNECTED* = 2250 (* {1, 3, 6, 7, 11} *);
        ERROR_OPEN_FILES* = 2401 (* {0, 5, 6, 8, 11} *);
        ERROR_ACTIVE_CONNECTIONS* = 2402 (* {1, 5, 6, 8, 11} *);
        ERROR_DEVICE_IN_USE* = 2404 (* {2, 5, 6, 8, 11} *);
        ERROR_BAD_DEVICE* = 1200 (* {4, 5, 7, 10} *);
        ERROR_CONNECTION_UNAVAIL* = 1201 (* {0, 4, 5, 7, 10} *);
        ERROR_DEVICE_ALREADY_REMEMBERED* = 1202 (* {1, 4, 5, 7, 10} *);
        ERROR_NO_NET_OR_BAD_PATH* = 1203 (* {0, 1, 4, 5, 7, 10} *);
        ERROR_BAD_PROVIDER* = 1204 (* {2, 4, 5, 7, 10} *);
        ERROR_CANNOT_OPEN_PROFILE* = 1205 (* {0, 2, 4, 5, 7, 10} *);
        ERROR_BAD_PROFILE* = 1206 (* {1, 2, 4, 5, 7, 10} *);
        ERROR_NOT_CONTAINER* = 1207 (* {0..2, 4, 5, 7, 10} *);
        ERROR_EXTENDED_ERROR* = 1208 (* {3..5, 7, 10} *);
        ERROR_INVALID_GROUPNAME* = 1209 (* {0, 3..5, 7, 10} *);
        ERROR_INVALID_COMPUTERNAME* = 1210 (* {1, 3..5, 7, 10} *);
        ERROR_INVALID_EVENTNAME* = 1211 (* {0, 1, 3..5, 7, 10} *);
        ERROR_INVALID_DOMAINNAME* = 1212 (* {2..5, 7, 10} *);
        ERROR_INVALID_SERVICENAME* = 1213 (* {0, 2..5, 7, 10} *);
        ERROR_INVALID_NETNAME* = 1214 (* {1..5, 7, 10} *);
        ERROR_INVALID_SHARENAME* = 1215 (* {0..5, 7, 10} *);
        ERROR_INVALID_PASSWORDNAME* = 1216 (* {6, 7, 10} *);
        ERROR_INVALID_MESSAGENAME* = 1217 (* {0, 6, 7, 10} *);
        ERROR_INVALID_MESSAGEDEST* = 1218 (* {1, 6, 7, 10} *);
        ERROR_SESSION_CREDENTIAL_CONFLICT* = 1219 (* {0, 1, 6, 7, 10} *);
        ERROR_REMOTE_SESSION_LIMIT_EXCEEDED* = 1220 (* {2, 6, 7, 10} *);
        ERROR_DUP_DOMAINNAME* = 1221 (* {0, 2, 6, 7, 10} *);
        ERROR_NO_NETWORK* = 1222 (* {1, 2, 6, 7, 10} *);
        ERROR_CANCELLED* = 1223 (* {0..2, 6, 7, 10} *);
        ERROR_USER_MAPPED_FILE* = 1224 (* {3, 6, 7, 10} *);
        ERROR_CONNECTION_REFUSED* = 1225 (* {0, 3, 6, 7, 10} *);
        ERROR_GRACEFUL_DISCONNECT* = 1226 (* {1, 3, 6, 7, 10} *);
        ERROR_ADDRESS_ALREADY_ASSOCIATED* = 1227 (* {0, 1, 3, 6, 7, 10} *);
        ERROR_ADDRESS_NOT_ASSOCIATED* = 1228 (* {2, 3, 6, 7, 10} *);
        ERROR_CONNECTION_INVALID* = 1229 (* {0, 2, 3, 6, 7, 10} *);
        ERROR_CONNECTION_ACTIVE* = 1230 (* {1..3, 6, 7, 10} *);
        ERROR_NETWORK_UNREACHABLE* = 1231 (* {0..3, 6, 7, 10} *);
        ERROR_HOST_UNREACHABLE* = 1232 (* {4, 6, 7, 10} *);
        ERROR_PROTOCOL_UNREACHABLE* = 1233 (* {0, 4, 6, 7, 10} *);
        ERROR_PORT_UNREACHABLE* = 1234 (* {1, 4, 6, 7, 10} *);
        ERROR_REQUEST_ABORTED* = 1235 (* {0, 1, 4, 6, 7, 10} *);
        ERROR_CONNECTION_ABORTED* = 1236 (* {2, 4, 6, 7, 10} *);
        ERROR_RETRY* = 1237 (* {0, 2, 4, 6, 7, 10} *);
        ERROR_CONNECTION_COUNT_LIMIT* = 1238 (* {1, 2, 4, 6, 7, 10} *);
        ERROR_LOGIN_TIME_RESTRICTION* = 1239 (* {0..2, 4, 6, 7, 10} *);
        ERROR_LOGIN_WKSTA_RESTRICTION* = 1240 (* {3, 4, 6, 7, 10} *);
        ERROR_INCORRECT_ADDRESS* = 1241 (* {0, 3, 4, 6, 7, 10} *);
        ERROR_ALREADY_REGISTERED* = 1242 (* {1, 3, 4, 6, 7, 10} *);
        ERROR_SERVICE_NOT_FOUND* = 1243 (* {0, 1, 3, 4, 6, 7, 10} *);
        ERROR_NOT_AUTHENTICATED* = 1244 (* {2..4, 6, 7, 10} *);
        ERROR_NOT_LOGGED_ON* = 1245 (* {0, 2..4, 6, 7, 10} *);
        ERROR_CONTINUE* = 1246 (* {1..4, 6, 7, 10} *);
        ERROR_ALREADY_INITIALIZED* = 1247 (* {0..4, 6, 7, 10} *);
        ERROR_NO_MORE_DEVICES* = 1248 (* {5..7, 10} *);
        ERROR_NOT_ALL_ASSIGNED* = 1300 (* {2, 4, 8, 10} *);
        ERROR_SOME_NOT_MAPPED* = 1301 (* {0, 2, 4, 8, 10} *);
        ERROR_NO_QUOTAS_FOR_ACCOUNT* = 1302 (* {1, 2, 4, 8, 10} *);
        ERROR_LOCAL_USER_SESSION_KEY* = 1303 (* {0..2, 4, 8, 10} *);
        ERROR_NULL_LM_PASSWORD* = 1304 (* {3, 4, 8, 10} *);
        ERROR_UNKNOWN_REVISION* = 1305 (* {0, 3, 4, 8, 10} *);
        ERROR_REVISION_MISMATCH* = 1306 (* {1, 3, 4, 8, 10} *);
        ERROR_INVALID_OWNER* = 1307 (* {0, 1, 3, 4, 8, 10} *);
        ERROR_INVALID_PRIMARY_GROUP* = 1308 (* {2..4, 8, 10} *);
        ERROR_NO_IMPERSONATION_TOKEN* = 1309 (* {0, 2..4, 8, 10} *);
        ERROR_CANT_DISABLE_MANDATORY* = 1310 (* {1..4, 8, 10} *);
        ERROR_NO_LOGON_SERVERS* = 1311 (* {0..4, 8, 10} *);
        ERROR_NO_SUCH_LOGON_SESSION* = 1312 (* {5, 8, 10} *);
        ERROR_NO_SUCH_PRIVILEGE* = 1313 (* {0, 5, 8, 10} *);
        ERROR_PRIVILEGE_NOT_HELD* = 1314 (* {1, 5, 8, 10} *);
        ERROR_INVALID_ACCOUNT_NAME* = 1315 (* {0, 1, 5, 8, 10} *);
        ERROR_USER_EXISTS* = 1316 (* {2, 5, 8, 10} *);
        ERROR_NO_SUCH_USER* = 1317 (* {0, 2, 5, 8, 10} *);
        ERROR_GROUP_EXISTS* = 1318 (* {1, 2, 5, 8, 10} *);
        ERROR_NO_SUCH_GROUP* = 1319 (* {0..2, 5, 8, 10} *);
        ERROR_MEMBER_IN_GROUP* = 1320 (* {3, 5, 8, 10} *);
        ERROR_MEMBER_NOT_IN_GROUP* = 1321 (* {0, 3, 5, 8, 10} *);
        ERROR_LAST_ADMIN* = 1322 (* {1, 3, 5, 8, 10} *);
        ERROR_WRONG_PASSWORD* = 1323 (* {0, 1, 3, 5, 8, 10} *);
        ERROR_ILL_FORMED_PASSWORD* = 1324 (* {2, 3, 5, 8, 10} *);
        ERROR_PASSWORD_RESTRICTION* = 1325 (* {0, 2, 3, 5, 8, 10} *);
        ERROR_LOGON_FAILURE* = 1326 (* {1..3, 5, 8, 10} *);
        ERROR_ACCOUNT_RESTRICTION* = 1327 (* {0..3, 5, 8, 10} *);
        ERROR_INVALID_LOGON_HOURS* = 1328 (* {4, 5, 8, 10} *);
        ERROR_INVALID_WORKSTATION* = 1329 (* {0, 4, 5, 8, 10} *);
        ERROR_PASSWORD_EXPIRED* = 1330 (* {1, 4, 5, 8, 10} *);
        ERROR_ACCOUNT_DISABLED* = 1331 (* {0, 1, 4, 5, 8, 10} *);
        ERROR_NONE_MAPPED* = 1332 (* {2, 4, 5, 8, 10} *);
        ERROR_TOO_MANY_LUIDS_REQUESTED* = 1333 (* {0, 2, 4, 5, 8, 10} *);
        ERROR_LUIDS_EXHAUSTED* = 1334 (* {1, 2, 4, 5, 8, 10} *);
        ERROR_INVALID_SUB_AUTHORITY* = 1335 (* {0..2, 4, 5, 8, 10} *);
        ERROR_INVALID_ACL* = 1336 (* {3..5, 8, 10} *);
        ERROR_INVALID_SID* = 1337 (* {0, 3..5, 8, 10} *);
        ERROR_INVALID_SECURITY_DESCR* = 1338 (* {1, 3..5, 8, 10} *);
        ERROR_BAD_INHERITANCE_ACL* = 1340 (* {2..5, 8, 10} *);
        ERROR_SERVER_DISABLED* = 1341 (* {0, 2..5, 8, 10} *);
        ERROR_SERVER_NOT_DISABLED* = 1342 (* {1..5, 8, 10} *);
        ERROR_INVALID_ID_AUTHORITY* = 1343 (* {0..5, 8, 10} *);
        ERROR_ALLOTTED_SPACE_EXCEEDED* = 1344 (* {6, 8, 10} *);
        ERROR_INVALID_GROUP_ATTRIBUTES* = 1345 (* {0, 6, 8, 10} *);
        ERROR_BAD_IMPERSONATION_LEVEL* = 1346 (* {1, 6, 8, 10} *);
        ERROR_CANT_OPEN_ANONYMOUS* = 1347 (* {0, 1, 6, 8, 10} *);
        ERROR_BAD_VALIDATION_CLASS* = 1348 (* {2, 6, 8, 10} *);
        ERROR_BAD_TOKEN_TYPE* = 1349 (* {0, 2, 6, 8, 10} *);
        ERROR_NO_SECURITY_ON_OBJECT* = 1350 (* {1, 2, 6, 8, 10} *);
        ERROR_CANT_ACCESS_DOMAIN_INFO* = 1351 (* {0..2, 6, 8, 10} *);
        ERROR_INVALID_SERVER_STATE* = 1352 (* {3, 6, 8, 10} *);
        ERROR_INVALID_DOMAIN_STATE* = 1353 (* {0, 3, 6, 8, 10} *);
        ERROR_INVALID_DOMAIN_ROLE* = 1354 (* {1, 3, 6, 8, 10} *);
        ERROR_NO_SUCH_DOMAIN* = 1355 (* {0, 1, 3, 6, 8, 10} *);
        ERROR_DOMAIN_EXISTS* = 1356 (* {2, 3, 6, 8, 10} *);
        ERROR_DOMAIN_LIMIT_EXCEEDED* = 1357 (* {0, 2, 3, 6, 8, 10} *);
        ERROR_INTERNAL_DB_CORRUPTION* = 1358 (* {1..3, 6, 8, 10} *);
        ERROR_INTERNAL_ERROR* = 1359 (* {0..3, 6, 8, 10} *);
        ERROR_GENERIC_NOT_MAPPED* = 1360 (* {4, 6, 8, 10} *);
        ERROR_BAD_DESCRIPTOR_FORMAT* = 1361 (* {0, 4, 6, 8, 10} *);
        ERROR_NOT_LOGON_PROCESS* = 1362 (* {1, 4, 6, 8, 10} *);
        ERROR_LOGON_SESSION_EXISTS* = 1363 (* {0, 1, 4, 6, 8, 10} *);
        ERROR_NO_SUCH_PACKAGE* = 1364 (* {2, 4, 6, 8, 10} *);
        ERROR_BAD_LOGON_SESSION_STATE* = 1365 (* {0, 2, 4, 6, 8, 10} *);
        ERROR_LOGON_SESSION_COLLISION* = 1366 (* {1, 2, 4, 6, 8, 10} *);
        ERROR_INVALID_LOGON_TYPE* = 1367 (* {0..2, 4, 6, 8, 10} *);
        ERROR_CANNOT_IMPERSONATE* = 1368 (* {3, 4, 6, 8, 10} *);
        ERROR_RXACT_INVALID_STATE* = 1369 (* {0, 3, 4, 6, 8, 10} *);
        ERROR_RXACT_COMMIT_FAILURE* = 1370 (* {1, 3, 4, 6, 8, 10} *);
        ERROR_SPECIAL_ACCOUNT* = 1371 (* {0, 1, 3, 4, 6, 8, 10} *);
        ERROR_SPECIAL_GROUP* = 1372 (* {2..4, 6, 8, 10} *);
        ERROR_SPECIAL_USER* = 1373 (* {0, 2..4, 6, 8, 10} *);
        ERROR_MEMBERS_PRIMARY_GROUP* = 1374 (* {1..4, 6, 8, 10} *);
        ERROR_TOKEN_ALREADY_IN_USE* = 1375 (* {0..4, 6, 8, 10} *);
        ERROR_NO_SUCH_ALIAS* = 1376 (* {5, 6, 8, 10} *);
        ERROR_MEMBER_NOT_IN_ALIAS* = 1377 (* {0, 5, 6, 8, 10} *);
        ERROR_MEMBER_IN_ALIAS* = 1378 (* {1, 5, 6, 8, 10} *);
        ERROR_ALIAS_EXISTS* = 1379 (* {0, 1, 5, 6, 8, 10} *);
        ERROR_LOGON_NOT_GRANTED* = 1380 (* {2, 5, 6, 8, 10} *);
        ERROR_TOO_MANY_SECRETS* = 1381 (* {0, 2, 5, 6, 8, 10} *);
        ERROR_SECRET_TOO_LONG* = 1382 (* {1, 2, 5, 6, 8, 10} *);
        ERROR_INTERNAL_DB_ERROR* = 1383 (* {0..2, 5, 6, 8, 10} *);
        ERROR_TOO_MANY_CONTEXT_IDS* = 1384 (* {3, 5, 6, 8, 10} *);
        ERROR_LOGON_TYPE_NOT_GRANTED* = 1385 (* {0, 3, 5, 6, 8, 10} *);
        ERROR_NT_CROSS_ENCRYPTION_REQUIRED* = 1386 (* {1, 3, 5, 6, 8, 10} *);
        ERROR_NO_SUCH_MEMBER* = 1387 (* {0, 1, 3, 5, 6, 8, 10} *);
        ERROR_INVALID_MEMBER* = 1388 (* {2, 3, 5, 6, 8, 10} *);
        ERROR_TOO_MANY_SIDS* = 1389 (* {0, 2, 3, 5, 6, 8, 10} *);
        ERROR_LM_CROSS_ENCRYPTION_REQUIRED* = 1390 (* {1..3, 5, 6, 8, 10} *);
        ERROR_NO_INHERITANCE* = 1391 (* {0..3, 5, 6, 8, 10} *);
        ERROR_FILE_CORRUPT* = 1392 (* {4..6, 8, 10} *);
        ERROR_DISK_CORRUPT* = 1393 (* {0, 4..6, 8, 10} *);
        ERROR_NO_USER_SESSION_KEY* = 1394 (* {1, 4..6, 8, 10} *);
        ERROR_LICENSE_QUOTA_EXCEEDED* = 1395 (* {0, 1, 4..6, 8, 10} *);
        ERROR_INVALID_WINDOW_HANDLE* = 1400 (* {3..6, 8, 10} *);
        ERROR_INVALID_MENU_HANDLE* = 1401 (* {0, 3..6, 8, 10} *);
        ERROR_INVALID_CURSOR_HANDLE* = 1402 (* {1, 3..6, 8, 10} *);
        ERROR_INVALID_ACCEL_HANDLE* = 1403 (* {0, 1, 3..6, 8, 10} *);
        ERROR_INVALID_HOOK_HANDLE* = 1404 (* {2..6, 8, 10} *);
        ERROR_INVALID_DWP_HANDLE* = 1405 (* {0, 2..6, 8, 10} *);
        ERROR_TLW_WITH_WSCHILD* = 1406 (* {1..6, 8, 10} *);
        ERROR_CANNOT_FIND_WND_CLASS* = 1407 (* {0..6, 8, 10} *);
        ERROR_WINDOW_OF_OTHER_THREAD* = 1408 (* {7, 8, 10} *);
        ERROR_HOTKEY_ALREADY_REGISTERED* = 1409 (* {0, 7, 8, 10} *);
        ERROR_CLASS_ALREADY_EXISTS* = 1410 (* {1, 7, 8, 10} *);
        ERROR_CLASS_DOES_NOT_EXIST* = 1411 (* {0, 1, 7, 8, 10} *);
        ERROR_CLASS_HAS_WINDOWS* = 1412 (* {2, 7, 8, 10} *);
        ERROR_INVALID_INDEX* = 1413 (* {0, 2, 7, 8, 10} *);
        ERROR_INVALID_ICON_HANDLE* = 1414 (* {1, 2, 7, 8, 10} *);
        ERROR_PRIVATE_DIALOG_INDEX* = 1415 (* {0..2, 7, 8, 10} *);
        ERROR_LISTBOX_ID_NOT_FOUND* = 1416 (* {3, 7, 8, 10} *);
        ERROR_NO_WILDCARD_CHARACTERS* = 1417 (* {0, 3, 7, 8, 10} *);
        ERROR_CLIPBOARD_NOT_OPEN* = 1418 (* {1, 3, 7, 8, 10} *);
        ERROR_HOTKEY_NOT_REGISTERED* = 1419 (* {0, 1, 3, 7, 8, 10} *);
        ERROR_WINDOW_NOT_DIALOG* = 1420 (* {2, 3, 7, 8, 10} *);
        ERROR_CONTROL_ID_NOT_FOUND* = 1421 (* {0, 2, 3, 7, 8, 10} *);
        ERROR_INVALID_COMBOBOX_MESSAGE* = 1422 (* {1..3, 7, 8, 10} *);
        ERROR_WINDOW_NOT_COMBOBOX* = 1423 (* {0..3, 7, 8, 10} *);
        ERROR_INVALID_EDIT_HEIGHT* = 1424 (* {4, 7, 8, 10} *);
        ERROR_DC_NOT_FOUND* = 1425 (* {0, 4, 7, 8, 10} *);
        ERROR_INVALID_HOOK_FILTER* = 1426 (* {1, 4, 7, 8, 10} *);
        ERROR_INVALID_FILTER_PROC* = 1427 (* {0, 1, 4, 7, 8, 10} *);
        ERROR_HOOK_NEEDS_HMOD* = 1428 (* {2, 4, 7, 8, 10} *);
        ERROR_GLOBAL_ONLY_HOOK* = 1429 (* {0, 2, 4, 7, 8, 10} *);
        ERROR_JOURNAL_HOOK_SET* = 1430 (* {1, 2, 4, 7, 8, 10} *);
        ERROR_HOOK_NOT_INSTALLED* = 1431 (* {0..2, 4, 7, 8, 10} *);
        ERROR_INVALID_LB_MESSAGE* = 1432 (* {3, 4, 7, 8, 10} *);
        ERROR_SETCOUNT_ON_BAD_LB* = 1433 (* {0, 3, 4, 7, 8, 10} *);
        ERROR_LB_WITHOUT_TABSTOPS* = 1434 (* {1, 3, 4, 7, 8, 10} *);
        ERROR_DESTROY_OBJECT_OF_OTHER_THREAD* = 1435 (* {0, 1, 3, 4, 7, 8, 10} *);
        ERROR_CHILD_WINDOW_MENU* = 1436 (* {2..4, 7, 8, 10} *);
        ERROR_NO_SYSTEM_MENU* = 1437 (* {0, 2..4, 7, 8, 10} *);
        ERROR_INVALID_MSGBOX_STYLE* = 1438 (* {1..4, 7, 8, 10} *);
        ERROR_INVALID_SPI_VALUE* = 1439 (* {0..4, 7, 8, 10} *);
        ERROR_SCREEN_ALREADY_LOCKED* = 1440 (* {5, 7, 8, 10} *);
        ERROR_HWNDS_HAVE_DIFF_PARENT* = 1441 (* {0, 5, 7, 8, 10} *);
        ERROR_NOT_CHILD_WINDOW* = 1442 (* {1, 5, 7, 8, 10} *);
        ERROR_INVALID_GW_COMMAND* = 1443 (* {0, 1, 5, 7, 8, 10} *);
        ERROR_INVALID_THREAD_ID* = 1444 (* {2, 5, 7, 8, 10} *);
        ERROR_NON_MDICHILD_WINDOW* = 1445 (* {0, 2, 5, 7, 8, 10} *);
        ERROR_POPUP_ALREADY_ACTIVE* = 1446 (* {1, 2, 5, 7, 8, 10} *);
        ERROR_NO_SCROLLBARS* = 1447 (* {0..2, 5, 7, 8, 10} *);
        ERROR_INVALID_SCROLLBAR_RANGE* = 1448 (* {3, 5, 7, 8, 10} *);
        ERROR_INVALID_SHOWWIN_COMMAND* = 1449 (* {0, 3, 5, 7, 8, 10} *);
        ERROR_NO_SYSTEM_RESOURCES* = 1450 (* {1, 3, 5, 7, 8, 10} *);
        ERROR_NONPAGED_SYSTEM_RESOURCES* = 1451 (* {0, 1, 3, 5, 7, 8, 10} *);
        ERROR_PAGED_SYSTEM_RESOURCES* = 1452 (* {2, 3, 5, 7, 8, 10} *);
        ERROR_WORKING_SET_QUOTA* = 1453 (* {0, 2, 3, 5, 7, 8, 10} *);
        ERROR_PAGEFILE_QUOTA* = 1454 (* {1..3, 5, 7, 8, 10} *);
        ERROR_COMMITMENT_LIMIT* = 1455 (* {0..3, 5, 7, 8, 10} *);
        ERROR_MENU_ITEM_NOT_FOUND* = 1456 (* {4, 5, 7, 8, 10} *);
        ERROR_EVENTLOG_FILE_CORRUPT* = 1500 (* {2..4, 6..8, 10} *);
        ERROR_EVENTLOG_CANT_START* = 1501 (* {0, 2..4, 6..8, 10} *);
        ERROR_LOG_FILE_FULL* = 1502 (* {1..4, 6..8, 10} *);
        ERROR_EVENTLOG_FILE_CHANGED* = 1503 (* {0..4, 6..8, 10} *);
        RPC_S_INVALID_STRING_BINDING* = 1700 (* {2, 5, 7, 9, 10} *);
        RPC_S_WRONG_KIND_OF_BINDING* = 1701 (* {0, 2, 5, 7, 9, 10} *);
        RPC_S_INVALID_BINDING* = 1702 (* {1, 2, 5, 7, 9, 10} *);
        RPC_S_PROTSEQ_NOT_SUPPORTED* = 1703 (* {0..2, 5, 7, 9, 10} *);
        RPC_S_INVALID_RPC_PROTSEQ* = 1704 (* {3, 5, 7, 9, 10} *);
        RPC_S_INVALID_STRING_UUID* = 1705 (* {0, 3, 5, 7, 9, 10} *);
        RPC_S_INVALID_ENDPOINT_FORMAT* = 1706 (* {1, 3, 5, 7, 9, 10} *);
        RPC_S_INVALID_NET_ADDR* = 1707 (* {0, 1, 3, 5, 7, 9, 10} *);
        RPC_S_NO_ENDPOINT_FOUND* = 1708 (* {2, 3, 5, 7, 9, 10} *);
        RPC_S_INVALID_TIMEOUT* = 1709 (* {0, 2, 3, 5, 7, 9, 10} *);
        RPC_S_OBJECT_NOT_FOUND* = 1710 (* {1..3, 5, 7, 9, 10} *);
        RPC_S_ALREADY_REGISTERED* = 1711 (* {0..3, 5, 7, 9, 10} *);
        RPC_S_TYPE_ALREADY_REGISTERED* = 1712 (* {4, 5, 7, 9, 10} *);
        RPC_S_ALREADY_LISTENING* = 1713 (* {0, 4, 5, 7, 9, 10} *);
        RPC_S_NO_PROTSEQS_REGISTERED* = 1714 (* {1, 4, 5, 7, 9, 10} *);
        RPC_S_NOT_LISTENING* = 1715 (* {0, 1, 4, 5, 7, 9, 10} *);
        RPC_S_UNKNOWN_MGR_TYPE* = 1716 (* {2, 4, 5, 7, 9, 10} *);
        RPC_S_UNKNOWN_IF* = 1717 (* {0, 2, 4, 5, 7, 9, 10} *);
        RPC_S_NO_BINDINGS* = 1718 (* {1, 2, 4, 5, 7, 9, 10} *);
        RPC_S_NO_PROTSEQS* = 1719 (* {0..2, 4, 5, 7, 9, 10} *);
        RPC_S_CANT_CREATE_ENDPOINT* = 1720 (* {3..5, 7, 9, 10} *);
        RPC_S_OUT_OF_RESOURCES* = 1721 (* {0, 3..5, 7, 9, 10} *);
        RPC_S_SERVER_UNAVAILABLE* = 1722 (* {1, 3..5, 7, 9, 10} *);
        RPC_S_SERVER_TOO_BUSY* = 1723 (* {0, 1, 3..5, 7, 9, 10} *);
        RPC_S_INVALID_NETWORK_OPTIONS* = 1724 (* {2..5, 7, 9, 10} *);
        RPC_S_NO_CALL_ACTIVE* = 1725 (* {0, 2..5, 7, 9, 10} *);
        RPC_S_CALL_FAILED* = 1726 (* {1..5, 7, 9, 10} *);
        RPC_S_CALL_FAILED_DNE* = 1727 (* {0..5, 7, 9, 10} *);
        RPC_S_PROTOCOL_ERROR* = 1728 (* {6, 7, 9, 10} *);
        RPC_S_UNSUPPORTED_TRANS_SYN* = 1730 (* {1, 6, 7, 9, 10} *);
        RPC_S_UNSUPPORTED_TYPE* = 1732 (* {2, 6, 7, 9, 10} *);
        RPC_S_INVALID_TAG* = 1733 (* {0, 2, 6, 7, 9, 10} *);
        RPC_S_INVALID_BOUND* = 1734 (* {1, 2, 6, 7, 9, 10} *);
        RPC_S_NO_ENTRY_NAME* = 1735 (* {0..2, 6, 7, 9, 10} *);
        RPC_S_INVALID_NAME_SYNTAX* = 1736 (* {3, 6, 7, 9, 10} *);
        RPC_S_UNSUPPORTED_NAME_SYNTAX* = 1737 (* {0, 3, 6, 7, 9, 10} *);
        RPC_S_UUID_NO_ADDRESS* = 1739 (* {0, 1, 3, 6, 7, 9, 10} *);
        RPC_S_DUPLICATE_ENDPOINT* = 1740 (* {2, 3, 6, 7, 9, 10} *);
        RPC_S_UNKNOWN_AUTHN_TYPE* = 1741 (* {0, 2, 3, 6, 7, 9, 10} *);
        RPC_S_MAX_CALLS_TOO_SMALL* = 1742 (* {1..3, 6, 7, 9, 10} *);
        RPC_S_STRING_TOO_LONG* = 1743 (* {0..3, 6, 7, 9, 10} *);
        RPC_S_PROTSEQ_NOT_FOUND* = 1744 (* {4, 6, 7, 9, 10} *);
        RPC_S_PROCNUM_OUT_OF_RANGE* = 1745 (* {0, 4, 6, 7, 9, 10} *);
        RPC_S_BINDING_HAS_NO_AUTH* = 1746 (* {1, 4, 6, 7, 9, 10} *);
        RPC_S_UNKNOWN_AUTHN_SERVICE* = 1747 (* {0, 1, 4, 6, 7, 9, 10} *);
        RPC_S_UNKNOWN_AUTHN_LEVEL* = 1748 (* {2, 4, 6, 7, 9, 10} *);
        RPC_S_INVALID_AUTH_IDENTITY* = 1749 (* {0, 2, 4, 6, 7, 9, 10} *);
        RPC_S_UNKNOWN_AUTHZ_SERVICE* = 1750 (* {1, 2, 4, 6, 7, 9, 10} *);
        EPT_S_INVALID_ENTRY* = 1751 (* {0..2, 4, 6, 7, 9, 10} *);
        EPT_S_CANT_PERFORM_OP* = 1752 (* {3, 4, 6, 7, 9, 10} *);
        EPT_S_NOT_REGISTERED* = 1753 (* {0, 3, 4, 6, 7, 9, 10} *);
        RPC_S_NOTHING_TO_EXPORT* = 1754 (* {1, 3, 4, 6, 7, 9, 10} *);
        RPC_S_INCOMPLETE_NAME* = 1755 (* {0, 1, 3, 4, 6, 7, 9, 10} *);
        RPC_S_INVALID_VERS_OPTION* = 1756 (* {2..4, 6, 7, 9, 10} *);
        RPC_S_NO_MORE_MEMBERS* = 1757 (* {0, 2..4, 6, 7, 9, 10} *);
        RPC_S_NOT_ALL_OBJS_UNEXPORTED* = 1758 (* {1..4, 6, 7, 9, 10} *);
        RPC_S_INTERFACE_NOT_FOUND* = 1759 (* {0..4, 6, 7, 9, 10} *);
        RPC_S_ENTRY_ALREADY_EXISTS* = 1760 (* {5..7, 9, 10} *);
        RPC_S_ENTRY_NOT_FOUND* = 1761 (* {0, 5..7, 9, 10} *);
        RPC_S_NAME_SERVICE_UNAVAILABLE* = 1762 (* {1, 5..7, 9, 10} *);
        RPC_S_INVALID_NAF_ID* = 1763 (* {0, 1, 5..7, 9, 10} *);
        RPC_S_CANNOT_SUPPORT* = 1764 (* {2, 5..7, 9, 10} *);
        RPC_S_NO_CONTEXT_AVAILABLE* = 1765 (* {0, 2, 5..7, 9, 10} *);
        RPC_S_INTERNAL_ERROR* = 1766 (* {1, 2, 5..7, 9, 10} *);
        RPC_S_ZERO_DIVIDE* = 1767 (* {0..2, 5..7, 9, 10} *);
        RPC_S_ADDRESS_ERROR* = 1768 (* {3, 5..7, 9, 10} *);
        RPC_S_FP_DIV_ZERO* = 1769 (* {0, 3, 5..7, 9, 10} *);
        RPC_S_FP_UNDERFLOW* = 1770 (* {1, 3, 5..7, 9, 10} *);
        RPC_S_FP_OVERFLOW* = 1771 (* {0, 1, 3, 5..7, 9, 10} *);
        RPC_X_NO_MORE_ENTRIES* = 1772 (* {2, 3, 5..7, 9, 10} *);
        RPC_X_SS_CHAR_TRANS_OPEN_FAIL* = 1773 (* {0, 2, 3, 5..7, 9, 10} *);
        RPC_X_SS_CHAR_TRANS_SHORT_FILE* = 1774 (* {1..3, 5..7, 9, 10} *);
        RPC_X_SS_IN_NULL_CONTEXT* = 1775 (* {0..3, 5..7, 9, 10} *);
        RPC_X_SS_CONTEXT_DAMAGED* = 1777 (* {0, 4..7, 9, 10} *);
        RPC_X_SS_HANDLES_MISMATCH* = 1778 (* {1, 4..7, 9, 10} *);
        RPC_X_SS_CANNOT_GET_CALL_HANDLE* = 1779 (* {0, 1, 4..7, 9, 10} *);
        RPC_X_NULL_REF_POINTER* = 1780 (* {2, 4..7, 9, 10} *);
        RPC_X_ENUM_VALUE_OUT_OF_RANGE* = 1781 (* {0, 2, 4..7, 9, 10} *);
        RPC_X_BYTE_COUNT_TOO_SMALL* = 1782 (* {1, 2, 4..7, 9, 10} *);
        RPC_X_BAD_STUB_DATA* = 1783 (* {0..2, 4..7, 9, 10} *);
        ERROR_INVALID_USER_BUFFER* = 1784 (* {3..7, 9, 10} *);
        ERROR_UNRECOGNIZED_MEDIA* = 1785 (* {0, 3..7, 9, 10} *);
        ERROR_NO_TRUST_LSA_SECRET* = 1786 (* {1, 3..7, 9, 10} *);
        ERROR_NO_TRUST_SAM_ACCOUNT* = 1787 (* {0, 1, 3..7, 9, 10} *);
        ERROR_TRUSTED_DOMAIN_FAILURE* = 1788 (* {2..7, 9, 10} *);
        ERROR_TRUSTED_RELATIONSHIP_FAILURE* = 1789 (* {0, 2..7, 9, 10} *);
        ERROR_TRUST_FAILURE* = 1790 (* {1..7, 9, 10} *);
        RPC_S_CALL_IN_PROGRESS* = 1791 (* {0..7, 9, 10} *);
        ERROR_NETLOGON_NOT_STARTED* = 1792 (* {8..10} *);
        ERROR_ACCOUNT_EXPIRED* = 1793 (* {0, 8..10} *);
        ERROR_REDIRECTOR_HAS_OPEN_HANDLES* = 1794 (* {1, 8..10} *);
        ERROR_PRINTER_DRIVER_ALREADY_INSTALLED* = 1795 (* {0, 1, 8..10} *);
        ERROR_UNKNOWN_PORT* = 1796 (* {2, 8..10} *);
        ERROR_UNKNOWN_PRINTER_DRIVER* = 1797 (* {0, 2, 8..10} *);
        ERROR_UNKNOWN_PRINTPROCESSOR* = 1798 (* {1, 2, 8..10} *);
        ERROR_INVALID_SEPARATOR_FILE* = 1799 (* {0..2, 8..10} *);
        ERROR_INVALID_PRIORITY* = 1800 (* {3, 8..10} *);
        ERROR_INVALID_PRINTER_NAME* = 1801 (* {0, 3, 8..10} *);
        ERROR_PRINTER_ALREADY_EXISTS* = 1802 (* {1, 3, 8..10} *);
        ERROR_INVALID_PRINTER_COMMAND* = 1803 (* {0, 1, 3, 8..10} *);
        ERROR_INVALID_DATATYPE* = 1804 (* {2, 3, 8..10} *);
        ERROR_INVALID_ENVIRONMENT* = 1805 (* {0, 2, 3, 8..10} *);
        RPC_S_NO_MORE_BINDINGS* = 1806 (* {1..3, 8..10} *);
        ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT* = 1807 (* {0..3, 8..10} *);
        ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT* = 1808 (* {4, 8..10} *);
        ERROR_NOLOGON_SERVER_TRUST_ACCOUNT* = 1809 (* {0, 4, 8..10} *);
        ERROR_DOMAIN_TRUST_INCONSISTENT* = 1810 (* {1, 4, 8..10} *);
        ERROR_SERVER_HAS_OPEN_HANDLES* = 1811 (* {0, 1, 4, 8..10} *);
        ERROR_RESOURCE_DATA_NOT_FOUND* = 1812 (* {2, 4, 8..10} *);
        ERROR_RESOURCE_TYPE_NOT_FOUND* = 1813 (* {0, 2, 4, 8..10} *);
        ERROR_RESOURCE_NAME_NOT_FOUND* = 1814 (* {1, 2, 4, 8..10} *);
        ERROR_RESOURCE_LANG_NOT_FOUND* = 1815 (* {0..2, 4, 8..10} *);
        ERROR_NOT_ENOUGH_QUOTA* = 1816 (* {3, 4, 8..10} *);
        RPC_S_NO_INTERFACES* = 1817 (* {0, 3, 4, 8..10} *);
        RPC_S_CALL_CANCELLED* = 1818 (* {1, 3, 4, 8..10} *);
        RPC_S_BINDING_INCOMPLETE* = 1819 (* {0, 1, 3, 4, 8..10} *);
        RPC_S_COMM_FAILURE* = 1820 (* {2..4, 8..10} *);
        RPC_S_UNSUPPORTED_AUTHN_LEVEL* = 1821 (* {0, 2..4, 8..10} *);
        RPC_S_NO_PRINC_NAME* = 1822 (* {1..4, 8..10} *);
        RPC_S_NOT_RPC_ERROR* = 1823 (* {0..4, 8..10} *);
        RPC_S_UUID_LOCAL_ONLY* = 1824 (* {5, 8..10} *);
        RPC_S_SEC_PKG_ERROR* = 1825 (* {0, 5, 8..10} *);
        RPC_S_NOT_CANCELLED* = 1826 (* {1, 5, 8..10} *);
        RPC_X_INVALID_ES_ACTION* = 1827 (* {0, 1, 5, 8..10} *);
        RPC_X_WRONG_ES_VERSION* = 1828 (* {2, 5, 8..10} *);
        RPC_X_WRONG_STUB_VERSION* = 1829 (* {0, 2, 5, 8..10} *);
        RPC_S_GROUP_MEMBER_NOT_FOUND* = 1898 (* {1, 3, 5, 6, 8..10} *);
        EPT_S_CANT_CREATE* = 1899 (* {0, 1, 3, 5, 6, 8..10} *);
        RPC_S_INVALID_OBJECT* = 1900 (* {2, 3, 5, 6, 8..10} *);
        ERROR_INVALID_TIME* = 1901 (* {0, 2, 3, 5, 6, 8..10} *);
        ERROR_INVALID_FORM_NAME* = 1902 (* {1..3, 5, 6, 8..10} *);
        ERROR_INVALID_FORM_SIZE* = 1903 (* {0..3, 5, 6, 8..10} *);
        ERROR_ALREADY_WAITING* = 1904 (* {4..6, 8..10} *);
        ERROR_PRINTER_DELETED* = 1905 (* {0, 4..6, 8..10} *);
        ERROR_INVALID_PRINTER_STATE* = 1906 (* {1, 4..6, 8..10} *);
        ERROR_PASSWORD_MUST_CHANGE* = 1907 (* {0, 1, 4..6, 8..10} *);
        ERROR_DOMAIN_CONTROLLER_NOT_FOUND* = 1908 (* {2, 4..6, 8..10} *);
        ERROR_ACCOUNT_LOCKED_OUT* = 1909 (* {0, 2, 4..6, 8..10} *);
        ERROR_NO_BROWSER_SERVERS_FOUND* = 6118 (* {1, 2, 5..10, 12} *);
        ERROR_INVALID_PIXEL_FORMAT* = 2000 (* {4, 6..10} *);
        ERROR_BAD_DRIVER* = 2001 (* {0, 4, 6..10} *);
        ERROR_INVALID_WINDOW_STYLE* = 2002 (* {1, 4, 6..10} *);
        ERROR_METAFILE_NOT_SUPPORTED* = 2003 (* {0, 1, 4, 6..10} *);
        ERROR_TRANSFORM_NOT_SUPPORTED* = 2004 (* {2, 4, 6..10} *);
        ERROR_CLIPPING_NOT_SUPPORTED* = 2005 (* {0, 2, 4, 6..10} *);
        ERROR_UNKNOWN_PRINT_MONITOR* = 3000 (* {3..5, 7..9, 11} *);
        ERROR_PRINTER_DRIVER_IN_USE* = 3001 (* {0, 3..5, 7..9, 11} *);
        ERROR_SPOOL_FILE_NOT_FOUND* = 3002 (* {1, 3..5, 7..9, 11} *);
        ERROR_SPL_NO_STARTDOC* = 3003 (* {0, 1, 3..5, 7..9, 11} *);
        ERROR_SPL_NO_ADDJOB* = 3004 (* {2..5, 7..9, 11} *);
        ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED* = 3005 (* {0, 2..5, 7..9, 11} *);
        ERROR_PRINT_MONITOR_ALREADY_INSTALLED* = 3006 (* {1..5, 7..9, 11} *);
        ERROR_WINS_INTERNAL* = 4000 (* {5, 7..11} *);
        ERROR_CAN_NOT_DEL_LOCAL_WINS* = 4001 (* {0, 5, 7..11} *);
        ERROR_STATIC_INIT* = 4002 (* {1, 5, 7..11} *);
        ERROR_INC_BACKUP* = 4003 (* {0, 1, 5, 7..11} *);
        ERROR_FULL_BACKUP* = 4004 (* {2, 5, 7..11} *);
        ERROR_REC_NON_EXISTENT* = 4005 (* {0, 2, 5, 7..11} *);
        ERROR_RPL_NOT_ALLOWED* = 4006 (* {1, 2, 5, 7..11} *);
        SEVERITY_SUCCESS* = 0 (* {} *);
        SEVERITY_ERROR* = 1 (* {0} *);
        FACILITY_NT_BIT* = 268435456 (* {28} *);
        NOERROR* = 0 (* {} *);
        E_UNEXPECTED* = -2147418113 (* {0..15, 31} *);
        E_NOTIMPL* = -2147467263 (* {0, 14, 31} *);
        E_OUTOFMEMORY* = -2147024882 (* {1..3, 16..18, 31} *);
        E_INVALIDARG* = -2147024809 (* {0..2, 4, 6, 16..18, 31} *);
        E_NOINTERFACE* = -2147467262 (* {1, 14, 31} *);
        E_POINTER* = -2147467261 (* {0, 1, 14, 31} *);
        E_HANDLE* = -2147024890 (* {1, 2, 16..18, 31} *);
        E_ABORT* = -2147467260 (* {2, 14, 31} *);
        E_FAIL* = -2147467259 (* {0, 2, 14, 31} *);
        E_ACCESSDENIED* = -2147024891 (* {0, 2, 16..18, 31} *);
        E_PENDING* = -2147024889 (* {0..2, 16..18, 31} *);
        CO_E_INIT_TLS* = -2147467258 (* {1, 2, 14, 31} *);
        CO_E_INIT_SHARED_ALLOCATOR* = -2147467257 (* {0..2, 14, 31} *);
        CO_E_INIT_MEMORY_ALLOCATOR* = -2147467256 (* {3, 14, 31} *);
        CO_E_INIT_CLASS_CACHE* = -2147467255 (* {0, 3, 14, 31} *);
        CO_E_INIT_RPC_CHANNEL* = -2147467254 (* {1, 3, 14, 31} *);
        CO_E_INIT_TLS_SET_CHANNEL_CONTROL* = -2147467253 (* {0, 1, 3, 14, 31} *);
        CO_E_INIT_TLS_CHANNEL_CONTROL* = -2147467252 (* {2, 3, 14, 31} *);
        CO_E_INIT_UNACCEPTED_USER_ALLOCATOR* = -2147467251 (* {0, 2, 3, 14, 31} *);
        CO_E_INIT_SCM_MUTEX_EXISTS* = -2147467250 (* {1..3, 14, 31} *);
        CO_E_INIT_SCM_FILE_MAPPING_EXISTS* = -2147467249 (* {0..3, 14, 31} *);
        CO_E_INIT_SCM_MAP_VIEW_OF_FILE* = -2147467248 (* {4, 14, 31} *);
        CO_E_INIT_SCM_EXEC_FAILURE* = -2147467247 (* {0, 4, 14, 31} *);
        CO_E_INIT_ONLY_SINGLE_THREADED* = -2147467246 (* {1, 4, 14, 31} *);
        S_OK* = 0 (* {} *);
        S_FALSE* = 1 (* {0} *);
        OLE_E_FIRST* = -2147221504 (* {18, 31} *);
        OLE_E_LAST* = -2147221249 (* {0..7, 18, 31} *);
        OLE_S_FIRST* = 262144 (* {18} *);
        OLE_S_LAST* = 262399 (* {0..7, 18} *);
        OLE_E_OLEVERB* = -2147221504 (* {18, 31} *);
        OLE_E_ADVF* = -2147221503 (* {0, 18, 31} *);
        OLE_E_ENUM_NOMORE* = -2147221502 (* {1, 18, 31} *);
        OLE_E_ADVISENOTSUPPORTED* = -2147221501 (* {0, 1, 18, 31} *);
        OLE_E_NOCONNECTION* = -2147221500 (* {2, 18, 31} *);
        OLE_E_NOTRUNNING* = -2147221499 (* {0, 2, 18, 31} *);
        OLE_E_NOCACHE* = -2147221498 (* {1, 2, 18, 31} *);
        OLE_E_BLANK* = -2147221497 (* {0..2, 18, 31} *);
        OLE_E_CLASSDIFF* = -2147221496 (* {3, 18, 31} *);
        OLE_E_CANT_GETMONIKER* = -2147221495 (* {0, 3, 18, 31} *);
        OLE_E_CANT_BINDTOSOURCE* = -2147221494 (* {1, 3, 18, 31} *);
        OLE_E_STATIC* = -2147221493 (* {0, 1, 3, 18, 31} *);
        OLE_E_PROMPTSAVECANCELLED* = -2147221492 (* {2, 3, 18, 31} *);
        OLE_E_INVALIDRECT* = -2147221491 (* {0, 2, 3, 18, 31} *);
        OLE_E_WRONGCOMPOBJ* = -2147221490 (* {1..3, 18, 31} *);
        OLE_E_INVALIDHWND* = -2147221489 (* {0..3, 18, 31} *);
        OLE_E_NOT_INPLACEACTIVE* = -2147221488 (* {4, 18, 31} *);
        OLE_E_CANTCONVERT* = -2147221487 (* {0, 4, 18, 31} *);
        OLE_E_NOSTORAGE* = -2147221486 (* {1, 4, 18, 31} *);
        DV_E_FORMATETC* = -2147221404 (* {2, 5, 6, 18, 31} *);
        DV_E_DVTARGETDEVICE* = -2147221403 (* {0, 2, 5, 6, 18, 31} *);
        DV_E_STGMEDIUM* = -2147221402 (* {1, 2, 5, 6, 18, 31} *);
        DV_E_STATDATA* = -2147221401 (* {0..2, 5, 6, 18, 31} *);
        DV_E_LINDEX* = -2147221400 (* {3, 5, 6, 18, 31} *);
        DV_E_TYMED* = -2147221399 (* {0, 3, 5, 6, 18, 31} *);
        DV_E_CLIPFORMAT* = -2147221398 (* {1, 3, 5, 6, 18, 31} *);
        DV_E_DVASPECT* = -2147221397 (* {0, 1, 3, 5, 6, 18, 31} *);
        DV_E_DVTARGETDEVICE_SIZE* = -2147221396 (* {2, 3, 5, 6, 18, 31} *);
        DV_E_NOIVIEWOBJECT* = -2147221395 (* {0, 2, 3, 5, 6, 18, 31} *);
        DRAGDROP_E_FIRST* = -2147221248 (* {8, 18, 31} *);
        DRAGDROP_E_LAST* = -2147221233 (* {0..3, 8, 18, 31} *);
        DRAGDROP_S_FIRST* = 262400 (* {8, 18} *);
        DRAGDROP_S_LAST* = 262415 (* {0..3, 8, 18} *);
        DRAGDROP_E_NOTREGISTERED* = -2147221248 (* {8, 18, 31} *);
        DRAGDROP_E_ALREADYREGISTERED* = -2147221247 (* {0, 8, 18, 31} *);
        DRAGDROP_E_INVALIDHWND* = -2147221246 (* {1, 8, 18, 31} *);
        CLASSFACTORY_E_FIRST* = -2147221232 (* {4, 8, 18, 31} *);
        CLASSFACTORY_E_LAST* = -2147221217 (* {0..4, 8, 18, 31} *);
        CLASSFACTORY_S_FIRST* = 262416 (* {4, 8, 18} *);
        CLASSFACTORY_S_LAST* = 262431 (* {0..4, 8, 18} *);
        CLASS_E_NOAGGREGATION* = -2147221232 (* {4, 8, 18, 31} *);
        CLASS_E_CLASSNOTAVAILABLE* = -2147221231 (* {0, 4, 8, 18, 31} *);
        MARSHAL_E_FIRST* = -2147221216 (* {5, 8, 18, 31} *);
        MARSHAL_E_LAST* = -2147221201 (* {0..3, 5, 8, 18, 31} *);
        MARSHAL_S_FIRST* = 262432 (* {5, 8, 18} *);
        MARSHAL_S_LAST* = 262447 (* {0..3, 5, 8, 18} *);
        DATA_E_FIRST* = -2147221200 (* {4, 5, 8, 18, 31} *);
        DATA_E_LAST* = -2147221185 (* {0..5, 8, 18, 31} *);
        DATA_S_FIRST* = 262448 (* {4, 5, 8, 18} *);
        DATA_S_LAST* = 262463 (* {0..5, 8, 18} *);
        VIEW_E_FIRST* = -2147221184 (* {6, 8, 18, 31} *);
        VIEW_E_LAST* = -2147221169 (* {0..3, 6, 8, 18, 31} *);
        VIEW_S_FIRST* = 262464 (* {6, 8, 18} *);
        VIEW_S_LAST* = 262479 (* {0..3, 6, 8, 18} *);
        VIEW_E_DRAW* = -2147221184 (* {6, 8, 18, 31} *);
        REGDB_E_FIRST* = -2147221168 (* {4, 6, 8, 18, 31} *);
        REGDB_E_LAST* = -2147221153 (* {0..4, 6, 8, 18, 31} *);
        REGDB_S_FIRST* = 262480 (* {4, 6, 8, 18} *);
        REGDB_S_LAST* = 262495 (* {0..4, 6, 8, 18} *);
        REGDB_E_READREGDB* = -2147221168 (* {4, 6, 8, 18, 31} *);
        REGDB_E_WRITEREGDB* = -2147221167 (* {0, 4, 6, 8, 18, 31} *);
        REGDB_E_KEYMISSING* = -2147221166 (* {1, 4, 6, 8, 18, 31} *);
        REGDB_E_INVALIDVALUE* = -2147221165 (* {0, 1, 4, 6, 8, 18, 31} *);
        REGDB_E_CLASSNOTREG* = -2147221164 (* {2, 4, 6, 8, 18, 31} *);
        REGDB_E_IIDNOTREG* = -2147221163 (* {0, 2, 4, 6, 8, 18, 31} *);
        CACHE_E_FIRST* = -2147221136 (* {4..6, 8, 18, 31} *);
        CACHE_E_LAST* = -2147221121 (* {0..6, 8, 18, 31} *);
        CACHE_S_FIRST* = 262512 (* {4..6, 8, 18} *);
        CACHE_S_LAST* = 262527 (* {0..6, 8, 18} *);
        CACHE_E_NOCACHE_UPDATED* = -2147221136 (* {4..6, 8, 18, 31} *);
        OLEOBJ_E_FIRST* = -2147221120 (* {7, 8, 18, 31} *);
        OLEOBJ_E_LAST* = -2147221105 (* {0..3, 7, 8, 18, 31} *);
        OLEOBJ_S_FIRST* = 262528 (* {7, 8, 18} *);
        OLEOBJ_S_LAST* = 262543 (* {0..3, 7, 8, 18} *);
        OLEOBJ_E_NOVERBS* = -2147221120 (* {7, 8, 18, 31} *);
        OLEOBJ_E_INVALIDVERB* = -2147221119 (* {0, 7, 8, 18, 31} *);
        CLIENTSITE_E_FIRST* = -2147221104 (* {4, 7, 8, 18, 31} *);
        CLIENTSITE_E_LAST* = -2147221089 (* {0..4, 7, 8, 18, 31} *);
        CLIENTSITE_S_FIRST* = 262544 (* {4, 7, 8, 18} *);
        CLIENTSITE_S_LAST* = 262559 (* {0..4, 7, 8, 18} *);
        INPLACE_E_NOTUNDOABLE* = -2147221088 (* {5, 7, 8, 18, 31} *);
        INPLACE_E_NOTOOLSPACE* = -2147221087 (* {0, 5, 7, 8, 18, 31} *);
        INPLACE_E_FIRST* = -2147221088 (* {5, 7, 8, 18, 31} *);
        INPLACE_E_LAST* = -2147221073 (* {0..3, 5, 7, 8, 18, 31} *);
        INPLACE_S_FIRST* = 262560 (* {5, 7, 8, 18} *);
        INPLACE_S_LAST* = 262575 (* {0..3, 5, 7, 8, 18} *);
        ENUM_E_FIRST* = -2147221072 (* {4, 5, 7, 8, 18, 31} *);
        ENUM_E_LAST* = -2147221057 (* {0..5, 7, 8, 18, 31} *);
        ENUM_S_FIRST* = 262576 (* {4, 5, 7, 8, 18} *);
        ENUM_S_LAST* = 262591 (* {0..5, 7, 8, 18} *);
        CONVERT10_E_FIRST* = -2147221056 (* {6..8, 18, 31} *);
        CONVERT10_E_LAST* = -2147221041 (* {0..3, 6..8, 18, 31} *);
        CONVERT10_S_FIRST* = 262592 (* {6..8, 18} *);
        CONVERT10_S_LAST* = 262607 (* {0..3, 6..8, 18} *);
        CONVERT10_E_OLESTREAM_GET* = -2147221056 (* {6..8, 18, 31} *);
        CONVERT10_E_OLESTREAM_PUT* = -2147221055 (* {0, 6..8, 18, 31} *);
        CONVERT10_E_OLESTREAM_FMT* = -2147221054 (* {1, 6..8, 18, 31} *);
        CONVERT10_E_OLESTREAM_BITMAP_TO_DIB* = -2147221053 (* {0, 1, 6..8, 18, 31} *);
        CONVERT10_E_STG_FMT* = -2147221052 (* {2, 6..8, 18, 31} *);
        CONVERT10_E_STG_NO_STD_STREAM* = -2147221051 (* {0, 2, 6..8, 18, 31} *);
        CONVERT10_E_STG_DIB_TO_BITMAP* = -2147221050 (* {1, 2, 6..8, 18, 31} *);
        CLIPBRD_E_FIRST* = -2147221040 (* {4, 6..8, 18, 31} *);
        CLIPBRD_E_LAST* = -2147221025 (* {0..4, 6..8, 18, 31} *);
        CLIPBRD_S_FIRST* = 262608 (* {4, 6..8, 18} *);
        CLIPBRD_S_LAST* = 262623 (* {0..4, 6..8, 18} *);
        CLIPBRD_E_CANT_OPEN* = -2147221040 (* {4, 6..8, 18, 31} *);
        CLIPBRD_E_CANT_EMPTY* = -2147221039 (* {0, 4, 6..8, 18, 31} *);
        CLIPBRD_E_CANT_SET* = -2147221038 (* {1, 4, 6..8, 18, 31} *);
        CLIPBRD_E_BAD_DATA* = -2147221037 (* {0, 1, 4, 6..8, 18, 31} *);
        CLIPBRD_E_CANT_CLOSE* = -2147221036 (* {2, 4, 6..8, 18, 31} *);
        MK_E_FIRST* = -2147221024 (* {5..8, 18, 31} *);
        MK_E_LAST* = -2147221009 (* {0..3, 5..8, 18, 31} *);
        MK_S_FIRST* = 262624 (* {5..8, 18} *);
        MK_S_LAST* = 262639 (* {0..3, 5..8, 18} *);
        MK_E_CONNECTMANUALLY* = -2147221024 (* {5..8, 18, 31} *);
        MK_E_EXCEEDEDDEADLINE* = -2147221023 (* {0, 5..8, 18, 31} *);
        MK_E_NEEDGENERIC* = -2147221022 (* {1, 5..8, 18, 31} *);
        MK_E_UNAVAILABLE* = -2147221021 (* {0, 1, 5..8, 18, 31} *);
        MK_E_SYNTAX* = -2147221020 (* {2, 5..8, 18, 31} *);
        MK_E_NOOBJECT* = -2147221019 (* {0, 2, 5..8, 18, 31} *);
        MK_E_INVALIDEXTENSION* = -2147221018 (* {1, 2, 5..8, 18, 31} *);
        MK_E_INTERMEDIATEINTERFACENOTSUPPORTED* = -2147221017 (* {0..2, 5..8, 18, 31} *);
        MK_E_NOTBINDABLE* = -2147221016 (* {3, 5..8, 18, 31} *);
        MK_E_NOTBOUND* = -2147221015 (* {0, 3, 5..8, 18, 31} *);
        MK_E_CANTOPENFILE* = -2147221014 (* {1, 3, 5..8, 18, 31} *);
        MK_E_MUSTBOTHERUSER* = -2147221013 (* {0, 1, 3, 5..8, 18, 31} *);
        MK_E_NOINVERSE* = -2147221012 (* {2, 3, 5..8, 18, 31} *);
        MK_E_NOSTORAGE* = -2147221011 (* {0, 2, 3, 5..8, 18, 31} *);
        MK_E_NOPREFIX* = -2147221010 (* {1..3, 5..8, 18, 31} *);
        MK_E_ENUMERATION_FAILED* = -2147221009 (* {0..3, 5..8, 18, 31} *);
        CO_E_FIRST* = -2147221008 (* {4..8, 18, 31} *);
        CO_E_LAST* = -2147220993 (* {0..8, 18, 31} *);
        CO_S_FIRST* = 262640 (* {4..8, 18} *);
        CO_S_LAST* = 262655 (* {0..8, 18} *);
        CO_E_NOTINITIALIZED* = -2147221008 (* {4..8, 18, 31} *);
        CO_E_ALREADYINITIALIZED* = -2147221007 (* {0, 4..8, 18, 31} *);
        CO_E_CANTDETERMINECLASS* = -2147221006 (* {1, 4..8, 18, 31} *);
        CO_E_CLASSSTRING* = -2147221005 (* {0, 1, 4..8, 18, 31} *);
        CO_E_IIDSTRING* = -2147221004 (* {2, 4..8, 18, 31} *);
        CO_E_APPNOTFOUND* = -2147221003 (* {0, 2, 4..8, 18, 31} *);
        CO_E_APPSINGLEUSE* = -2147221002 (* {1, 2, 4..8, 18, 31} *);
        CO_E_ERRORINAPP* = -2147221001 (* {0..2, 4..8, 18, 31} *);
        CO_E_DLLNOTFOUND* = -2147221000 (* {3..8, 18, 31} *);
        CO_E_ERRORINDLL* = -2147220999 (* {0, 3..8, 18, 31} *);
        CO_E_WRONGOSFORAPP* = -2147220998 (* {1, 3..8, 18, 31} *);
        CO_E_OBJNOTREG* = -2147220997 (* {0, 1, 3..8, 18, 31} *);
        CO_E_OBJISREG* = -2147220996 (* {2..8, 18, 31} *);
        CO_E_OBJNOTCONNECTED* = -2147220995 (* {0, 2..8, 18, 31} *);
        CO_E_APPDIDNTREG* = -2147220994 (* {1..8, 18, 31} *);
        CO_E_RELEASED* = -2147220993 (* {0..8, 18, 31} *);
        OLE_S_USEREG* = 262144 (* {18} *);
        OLE_S_STATIC* = 262145 (* {0, 18} *);
        OLE_S_MAC_CLIPFORMAT* = 262146 (* {1, 18} *);
        DRAGDROP_S_DROP* = 262400 (* {8, 18} *);
        DRAGDROP_S_CANCEL* = 262401 (* {0, 8, 18} *);
        DRAGDROP_S_USEDEFAULTCURSORS* = 262402 (* {1, 8, 18} *);
        DATA_S_SAMEFORMATETC* = 262448 (* {4, 5, 8, 18} *);
        VIEW_S_ALREADY_FROZEN* = 262464 (* {6, 8, 18} *);
        CACHE_S_FORMATETC_NOTSUPPORTED* = 262512 (* {4..6, 8, 18} *);
        CACHE_S_SAMECACHE* = 262513 (* {0, 4..6, 8, 18} *);
        CACHE_S_SOMECACHES_NOTUPDATED* = 262514 (* {1, 4..6, 8, 18} *);
        OLEOBJ_S_INVALIDVERB* = 262528 (* {7, 8, 18} *);
        OLEOBJ_S_CANNOT_DOVERB_NOW* = 262529 (* {0, 7, 8, 18} *);
        OLEOBJ_S_INVALIDHWND* = 262530 (* {1, 7, 8, 18} *);
        INPLACE_S_TRUNCATED* = 262560 (* {5, 7, 8, 18} *);
        CONVERT10_S_NO_PRESENTATION* = 262592 (* {6..8, 18} *);
        MK_S_REDUCED_TO_SELF* = 262626 (* {1, 5..8, 18} *);
        MK_S_ME* = 262628 (* {2, 5..8, 18} *);
        MK_S_HIM* = 262629 (* {0, 2, 5..8, 18} *);
        MK_S_US* = 262630 (* {1, 2, 5..8, 18} *);
        MK_S_MONIKERALREADYREGISTERED* = 262631 (* {0..2, 5..8, 18} *);
        CO_E_CLASS_CREATE_FAILED* = -2146959359 (* {0, 19, 31} *);
        CO_E_SCM_ERROR* = -2146959358 (* {1, 19, 31} *);
        CO_E_SCM_RPC_FAILURE* = -2146959357 (* {0, 1, 19, 31} *);
        CO_E_BAD_PATH* = -2146959356 (* {2, 19, 31} *);
        CO_E_SERVER_EXEC_FAILURE* = -2146959355 (* {0, 2, 19, 31} *);
        CO_E_OBJSRV_RPC_FAILURE* = -2146959354 (* {1, 2, 19, 31} *);
        MK_E_NO_NORMALIZED* = -2146959353 (* {0..2, 19, 31} *);
        CO_E_SERVER_STOPPING* = -2146959352 (* {3, 19, 31} *);
        MEM_E_INVALID_ROOT* = -2146959351 (* {0, 3, 19, 31} *);
        MEM_E_INVALID_LINK* = -2146959344 (* {4, 19, 31} *);
        MEM_E_INVALID_SIZE* = -2146959343 (* {0, 4, 19, 31} *);
        DISP_E_UNKNOWNINTERFACE* = -2147352575 (* {0, 17, 31} *);
        DISP_E_MEMBERNOTFOUND* = -2147352573 (* {0, 1, 17, 31} *);
        DISP_E_PARAMNOTFOUND* = -2147352572 (* {2, 17, 31} *);
        DISP_E_TYPEMISMATCH* = -2147352571 (* {0, 2, 17, 31} *);
        DISP_E_UNKNOWNNAME* = -2147352570 (* {1, 2, 17, 31} *);
        DISP_E_NONAMEDARGS* = -2147352569 (* {0..2, 17, 31} *);
        DISP_E_BADVARTYPE* = -2147352568 (* {3, 17, 31} *);
        DISP_E_EXCEPTION* = -2147352567 (* {0, 3, 17, 31} *);
        DISP_E_OVERFLOW* = -2147352566 (* {1, 3, 17, 31} *);
        DISP_E_BADINDEX* = -2147352565 (* {0, 1, 3, 17, 31} *);
        DISP_E_UNKNOWNLCID* = -2147352564 (* {2, 3, 17, 31} *);
        DISP_E_ARRAYISLOCKED* = -2147352563 (* {0, 2, 3, 17, 31} *);
        DISP_E_BADPARAMCOUNT* = -2147352562 (* {1..3, 17, 31} *);
        DISP_E_PARAMNOTOPTIONAL* = -2147352561 (* {0..3, 17, 31} *);
        DISP_E_BADCALLEE* = -2147352560 (* {4, 17, 31} *);
        DISP_E_NOTACOLLECTION* = -2147352559 (* {0, 4, 17, 31} *);
        TYPE_E_BUFFERTOOSMALL* = -2147319786 (* {1, 2, 4, 15, 17, 31} *);
        TYPE_E_INVDATAREAD* = -2147319784 (* {3, 4, 15, 17, 31} *);
        TYPE_E_UNSUPFORMAT* = -2147319783 (* {0, 3, 4, 15, 17, 31} *);
        TYPE_E_REGISTRYACCESS* = -2147319780 (* {2..4, 15, 17, 31} *);
        TYPE_E_LIBNOTREGISTERED* = -2147319779 (* {0, 2..4, 15, 17, 31} *);
        TYPE_E_UNDEFINEDTYPE* = -2147319769 (* {0..2, 5, 15, 17, 31} *);
        TYPE_E_QUALIFIEDNAMEDISALLOWED* = -2147319768 (* {3, 5, 15, 17, 31} *);
        TYPE_E_INVALIDSTATE* = -2147319767 (* {0, 3, 5, 15, 17, 31} *);
        TYPE_E_WRONGTYPEKIND* = -2147319766 (* {1, 3, 5, 15, 17, 31} *);
        TYPE_E_ELEMENTNOTFOUND* = -2147319765 (* {0, 1, 3, 5, 15, 17, 31} *);
        TYPE_E_AMBIGUOUSNAME* = -2147319764 (* {2, 3, 5, 15, 17, 31} *);
        TYPE_E_NAMECONFLICT* = -2147319763 (* {0, 2, 3, 5, 15, 17, 31} *);
        TYPE_E_UNKNOWNLCID* = -2147319762 (* {1..3, 5, 15, 17, 31} *);
        TYPE_E_DLLFUNCTIONNOTFOUND* = -2147319761 (* {0..3, 5, 15, 17, 31} *);
        TYPE_E_BADMODULEKIND* = -2147317571 (* {0, 2..5, 7, 11, 15, 17, 31} *);
        TYPE_E_SIZETOOBIG* = -2147317563 (* {0, 2, 6, 7, 11, 15, 17, 31} *);
        TYPE_E_DUPLICATEID* = -2147317562 (* {1, 2, 6, 7, 11, 15, 17, 31} *);
        TYPE_E_INVALIDID* = -2147317553 (* {0..3, 6, 7, 11, 15, 17, 31} *);
        TYPE_E_TYPEMISMATCH* = -2147316576 (* {5, 7, 10, 11, 15, 17, 31} *);
        TYPE_E_OUTOFBOUNDS* = -2147316575 (* {0, 5, 7, 10, 11, 15, 17, 31} *);
        TYPE_E_IOERROR* = -2147316574 (* {1, 5, 7, 10, 11, 15, 17, 31} *);
        TYPE_E_CANTCREATETMPFILE* = -2147316573 (* {0, 1, 5, 7, 10, 11, 15, 17, 31} *);
        TYPE_E_CANTLOADLIBRARY* = -2147312566 (* {1, 3, 6, 10..12, 15, 17, 31} *);
        TYPE_E_INCONSISTENTPROPFUNCS* = -2147312509 (* {0, 1, 7, 10..12, 15, 17, 31} *);
        TYPE_E_CIRCULARTYPE* = -2147312508 (* {2, 7, 10..12, 15, 17, 31} *);
        STG_E_INVALIDFUNCTION* = -2147287039 (* {0, 16, 17, 31} *);
        STG_E_FILENOTFOUND* = -2147287038 (* {1, 16, 17, 31} *);
        STG_E_PATHNOTFOUND* = -2147287037 (* {0, 1, 16, 17, 31} *);
        STG_E_TOOMANYOPENFILES* = -2147287036 (* {2, 16, 17, 31} *);
        STG_E_ACCESSDENIED* = -2147287035 (* {0, 2, 16, 17, 31} *);
        STG_E_INVALIDHANDLE* = -2147287034 (* {1, 2, 16, 17, 31} *);
        STG_E_INSUFFICIENTMEMORY* = -2147287032 (* {3, 16, 17, 31} *);
        STG_E_INVALIDPOINTER* = -2147287031 (* {0, 3, 16, 17, 31} *);
        STG_E_NOMOREFILES* = -2147287022 (* {1, 4, 16, 17, 31} *);
        STG_E_DISKISWRITEPROTECTED* = -2147287021 (* {0, 1, 4, 16, 17, 31} *);
        STG_E_SEEKERROR* = -2147287015 (* {0, 3, 4, 16, 17, 31} *);
        STG_E_WRITEFAULT* = -2147287011 (* {0, 2..4, 16, 17, 31} *);
        STG_E_READFAULT* = -2147287010 (* {1..4, 16, 17, 31} *);
        STG_E_SHAREVIOLATION* = -2147287008 (* {5, 16, 17, 31} *);
        STG_E_LOCKVIOLATION* = -2147287007 (* {0, 5, 16, 17, 31} *);
        STG_E_FILEALREADYEXISTS* = -2147286960 (* {4, 6, 16, 17, 31} *);
        STG_E_INVALIDPARAMETER* = -2147286953 (* {0..2, 4, 6, 16, 17, 31} *);
        STG_E_MEDIUMFULL* = -2147286928 (* {4..6, 16, 17, 31} *);
        STG_E_ABNORMALAPIEXIT* = -2147286790 (* {1, 3..7, 16, 17, 31} *);
        STG_E_INVALIDHEADER* = -2147286789 (* {0, 1, 3..7, 16, 17, 31} *);
        STG_E_INVALIDNAME* = -2147286788 (* {2..7, 16, 17, 31} *);
        STG_E_UNKNOWN* = -2147286787 (* {0, 2..7, 16, 17, 31} *);
        STG_E_UNIMPLEMENTEDFUNCTION* = -2147286786 (* {1..7, 16, 17, 31} *);
        STG_E_INVALIDFLAG* = -2147286785 (* {0..7, 16, 17, 31} *);
        STG_E_INUSE* = -2147286784 (* {8, 16, 17, 31} *);
        STG_E_NOTCURRENT* = -2147286783 (* {0, 8, 16, 17, 31} *);
        STG_E_REVERTED* = -2147286782 (* {1, 8, 16, 17, 31} *);
        STG_E_CANTSAVE* = -2147286781 (* {0, 1, 8, 16, 17, 31} *);
        STG_E_OLDFORMAT* = -2147286780 (* {2, 8, 16, 17, 31} *);
        STG_E_OLDDLL* = -2147286779 (* {0, 2, 8, 16, 17, 31} *);
        STG_E_SHAREREQUIRED* = -2147286778 (* {1, 2, 8, 16, 17, 31} *);
        STG_E_NOTFILEBASEDSTORAGE* = -2147286777 (* {0..2, 8, 16, 17, 31} *);
        STG_E_EXTANTMARSHALLINGS* = -2147286776 (* {3, 8, 16, 17, 31} *);
        STG_S_CONVERTED* = 197120 (* {9, 16, 17} *);
        RPC_E_CALL_REJECTED* = -2147418111 (* {0, 16, 31} *);
        RPC_E_CALL_CANCELED* = -2147418110 (* {1, 16, 31} *);
        RPC_E_CANTPOST_INSENDCALL* = -2147418109 (* {0, 1, 16, 31} *);
        RPC_E_CANTCALLOUT_INASYNCCALL* = -2147418108 (* {2, 16, 31} *);
        RPC_E_CANTCALLOUT_INEXTERNALCALL* = -2147418107 (* {0, 2, 16, 31} *);
        RPC_E_CONNECTION_TERMINATED* = -2147418106 (* {1, 2, 16, 31} *);
        RPC_E_SERVER_DIED* = -2147418105 (* {0..2, 16, 31} *);
        RPC_E_CLIENT_DIED* = -2147418104 (* {3, 16, 31} *);
        RPC_E_INVALID_DATAPACKET* = -2147418103 (* {0, 3, 16, 31} *);
        RPC_E_CANTTRANSMIT_CALL* = -2147418102 (* {1, 3, 16, 31} *);
        RPC_E_CLIENT_CANTMARSHAL_DATA* = -2147418101 (* {0, 1, 3, 16, 31} *);
        RPC_E_CLIENT_CANTUNMARSHAL_DATA* = -2147418100 (* {2, 3, 16, 31} *);
        RPC_E_SERVER_CANTMARSHAL_DATA* = -2147418099 (* {0, 2, 3, 16, 31} *);
        RPC_E_SERVER_CANTUNMARSHAL_DATA* = -2147418098 (* {1..3, 16, 31} *);
        RPC_E_INVALID_DATA* = -2147418097 (* {0..3, 16, 31} *);
        RPC_E_INVALID_PARAMETER* = -2147418096 (* {4, 16, 31} *);
        RPC_E_CANTCALLOUT_AGAIN* = -2147418095 (* {0, 4, 16, 31} *);
        RPC_E_SERVER_DIED_DNE* = -2147418094 (* {1, 4, 16, 31} *);
        RPC_E_SYS_CALL_FAILED* = -2147417856 (* {8, 16, 31} *);
        RPC_E_OUT_OF_RESOURCES* = -2147417855 (* {0, 8, 16, 31} *);
        RPC_E_ATTEMPTED_MULTITHREAD* = -2147417854 (* {1, 8, 16, 31} *);
        RPC_E_NOT_REGISTERED* = -2147417853 (* {0, 1, 8, 16, 31} *);
        RPC_E_FAULT* = -2147417852 (* {2, 8, 16, 31} *);
        RPC_E_SERVERFAULT* = -2147417851 (* {0, 2, 8, 16, 31} *);
        RPC_E_CHANGED_MODE* = -2147417850 (* {1, 2, 8, 16, 31} *);
        RPC_E_INVALIDMETHOD* = -2147417849 (* {0..2, 8, 16, 31} *);
        RPC_E_DISCONNECTED* = -2147417848 (* {3, 8, 16, 31} *);
        RPC_E_RETRY* = -2147417847 (* {0, 3, 8, 16, 31} *);
        RPC_E_SERVERCALL_RETRYLATER* = -2147417846 (* {1, 3, 8, 16, 31} *);
        RPC_E_SERVERCALL_REJECTED* = -2147417845 (* {0, 1, 3, 8, 16, 31} *);
        RPC_E_INVALID_CALLDATA* = -2147417844 (* {2, 3, 8, 16, 31} *);
        RPC_E_CANTCALLOUT_ININPUTSYNCCALL* = -2147417843 (* {0, 2, 3, 8, 16, 31} *);
        RPC_E_WRONG_THREAD* = -2147417842 (* {1..3, 8, 16, 31} *);
        RPC_E_THREAD_NOT_INIT* = -2147417841 (* {0..3, 8, 16, 31} *);
        RPC_E_UNEXPECTED* = -2147352577 (* {0..16, 31} *);
        TC_NORMAL* = 0 (* {} *);
        TC_HARDERR* = 1 (* {0} *);
        TC_GP_TRAP* = 2 (* {1} *);
        TC_SIGNAL* = 3 (* {0, 1} *);
        AC_LINE_OFFLINE* = 0 (* {} *);
        AC_LINE_ONLINE* = 1 (* {0} *);
        AC_LINE_BACKUP_POWER* = 2 (* {1} *);
        AC_LINE_UNKNOWN* = 255 (* {0..7} *);
        BATTERY_FLAG_HIGH* = 1 (* {0} *);
        BATTERY_FLAG_LOW* = 2 (* {1} *);
        BATTERY_FLAG_CRITICAL* = 4 (* {2} *);
        BATTERY_FLAG_CHARGING* = 8 (* {3} *);
        BATTERY_FLAG_NO_BATTERY* = 128 (* {7} *);
        BATTERY_FLAG_UNKNOWN* = 255 (* {0..7} *);
        BATTERY_PERCENTAGE_UNKNOWN* = 255 (* {0..7} *);
        BATTERY_LIFE_UNKNOWN* = -1 (* {0..31} *);
        WIN_CERT_REVISION_1_0* = 256 (* {8} *);
        WIN_CERT_TYPE_X509* = 1 (* {0} *);
        WIN_CERT_TYPE_PKCS_SIGNED_DATA* = 2 (* {1} *);
        WIN_CERT_TYPE_RESERVED_1* = 3 (* {0, 1} *);
        WIN_TRUST_PROVIDER_UNKNOWN* = 0 (* {} *);
        WIN_TRUST_SOFTWARE_PUBLISHER* = 1 (* {0} *);
        WIN_TRUST_WINDOWS_COMPATIBLE* = 2 (* {1} *);
        WIN_TRUST_CAPI_PROVIDER* = 3 (* {0, 1} *);
        WIN_TRUST_SUBJTYPE_RAW_FILE* = 0 (* {} *);
        WIN_TRUST_SUBJTYPE_PE_IMAGE* = 1 (* {0} *);
        WIN_TRUST_SUBJTYPE_OLE_STORAGE* = 2 (* {1} *);
        WIN_TRUST_SUBJTYPE_JAVA_CLASS* = 3 (* {0, 1} *);
        CAPI_TRUST_ACTION_VALID_CSP* = 1 (* {0} *);
        WIN_SPUB_ACTION_TRUSTED_PUBLISHER* = 2 (* {1} *);
        WIN_SPUB_ACTION_NT_ACTIVATE_IMAGE* = 3 (* {0, 1} *);
        WIN_SPUB_ACTION_PUBLISHED_SOFTWARE* = 4 (* {2} *);
        R2_BLACK* = 1 (* {0} *);
        R2_NOTMERGEPEN* = 2 (* {1} *);
        R2_MASKNOTPEN* = 3 (* {0, 1} *);
        R2_NOTCOPYPEN* = 4 (* {2} *);
        R2_MASKPENNOT* = 5 (* {0, 2} *);
        R2_NOT* = 6 (* {1, 2} *);
        R2_XORPEN* = 7 (* {0..2} *);
        R2_NOTMASKPEN* = 8 (* {3} *);
        R2_MASKPEN* = 9 (* {0, 3} *);
        R2_NOTXORPEN* = 10 (* {1, 3} *);
        R2_NOP* = 11 (* {0, 1, 3} *);
        R2_MERGENOTPEN* = 12 (* {2, 3} *);
        R2_COPYPEN* = 13 (* {0, 2, 3} *);
        R2_MERGEPENNOT* = 14 (* {1..3} *);
        R2_MERGEPEN* = 15 (* {0..3} *);
        R2_WHITE* = 16 (* {4} *);
        R2_LAST* = 16 (* {4} *);
        SRCCOPY* = 13369376 (* {5, 18, 19, 22, 23} *);
        SRCPAINT* = 15597702 (* {1, 2, 7, 17..19, 21..23} *);
        SRCAND* = 8913094 (* {1, 2, 6, 7, 19, 23} *);
        SRCINVERT* = 6684742 (* {1, 2, 6, 17, 18, 21, 22} *);
        SRCERASE* = 4457256 (* {3, 5, 8, 9, 18, 22} *);
        NOTSRCCOPY* = 3342344 (* {3, 16, 17, 20, 21} *);
        NOTSRCERASE* = 1114278 (* {1, 2, 5, 7, 16, 20} *);
        MERGECOPY* = 12583114 (* {1, 3, 6, 7, 22, 23} *);
        MERGEPAINT* = 12255782 (* {1, 2, 5, 9, 16, 17, 19..21, 23} *);
        PATCOPY* = 15728673 (* {0, 5, 20..23} *);
        PATPAINT* = 16452105 (* {0, 3, 9, 11, 16, 17, 19..23} *);
        PATINVERT* = 5898313 (* {0, 3, 6, 17, 19, 20, 22} *);
        DSTINVERT* = 5570569 (* {0, 3, 16, 18, 20, 22} *);
        BLACKNESS* = 66 (* {1, 6} *);
        WHITENESS* = 16711778 (* {1, 5, 6, 16..23} *);
        GDI_ERROR* = -1 (* {0..31} *);
        ERROR* = 0 (* {} *);
        NULLREGION* = 1 (* {0} *);
        SIMPLEREGION* = 2 (* {1} *);
        COMPLEXREGION* = 3 (* {0, 1} *);
        RGN_ERROR* = 0 (* {} *);
        RGN_AND* = 1 (* {0} *);
        RGN_OR* = 2 (* {1} *);
        RGN_XOR* = 3 (* {0, 1} *);
        RGN_DIFF* = 4 (* {2} *);
        RGN_COPY* = 5 (* {0, 2} *);
        RGN_MIN* = 1 (* {0} *);
        RGN_MAX* = 5 (* {0, 2} *);
        BLACKONWHITE* = 1 (* {0} *);
        WHITEONBLACK* = 2 (* {1} *);
        COLORONCOLOR* = 3 (* {0, 1} *);
        HALFTONE* = 4 (* {2} *);
        MAXSTRETCHBLTMODE* = 4 (* {2} *);
        STRETCH_ANDSCANS* = 1 (* {0} *);
        STRETCH_ORSCANS* = 2 (* {1} *);
        STRETCH_DELETESCANS* = 3 (* {0, 1} *);
        STRETCH_HALFTONE* = 4 (* {2} *);
        ALTERNATE* = 1 (* {0} *);
        WINDING* = 2 (* {1} *);
        POLYFILL_LAST* = 2 (* {1} *);
        TA_NOUPDATECP* = {};
        TA_UPDATECP* = {0};
        TA_LEFT* = {};
        TA_RIGHT* = {1};
        TA_CENTER* = {1, 2};
        TA_TOP* = {};
        TA_BOTTOM* = {3};
        TA_BASELINE* = {3, 4};
        TA_RTLREADING* = {8};
        TA_MASK* = {0..4, 8};
        VTA_BASELINE* = {3, 4};
        VTA_LEFT* = {3};
        VTA_RIGHT* = {};
        VTA_CENTER* = {1, 2};
        VTA_BOTTOM* = {1};
        VTA_TOP* = {};
        ETO_OPAQUE* = {1};
        ETO_CLIPPED* = {2};
        ETO_GLYPH_INDEX* = {4};
        ETO_RTLREADING* = {7};
        ASPECT_FILTERING* = 1 (* {0} *);
        DCB_RESET* = {0};
        DCB_ACCUMULATE* = {1};
        DCB_DIRTY* = {1};
        DCB_SET* = {0, 1};
        DCB_ENABLE* = {2};
        DCB_DISABLE* = {3};
        META_SETBKCOLOR* = 513 (* {0, 9} *);
        META_SETBKMODE* = 258 (* {1, 8} *);
        META_SETMAPMODE* = 259 (* {0, 1, 8} *);
        META_SETROP2* = 260 (* {2, 8} *);
        META_SETRELABS* = 261 (* {0, 2, 8} *);
        META_SETPOLYFILLMODE* = 262 (* {1, 2, 8} *);
        META_SETSTRETCHBLTMODE* = 263 (* {0..2, 8} *);
        META_SETTEXTCHAREXTRA* = 264 (* {3, 8} *);
        META_SETTEXTCOLOR* = 521 (* {0, 3, 9} *);
        META_SETTEXTJUSTIFICATION* = 522 (* {1, 3, 9} *);
        META_SETWINDOWORG* = 523 (* {0, 1, 3, 9} *);
        META_SETWINDOWEXT* = 524 (* {2, 3, 9} *);
        META_SETVIEWPORTORG* = 525 (* {0, 2, 3, 9} *);
        META_SETVIEWPORTEXT* = 526 (* {1..3, 9} *);
        META_OFFSETWINDOWORG* = 527 (* {0..3, 9} *);
        META_SCALEWINDOWEXT* = 1040 (* {4, 10} *);
        META_OFFSETVIEWPORTORG* = 529 (* {0, 4, 9} *);
        META_SCALEVIEWPORTEXT* = 1042 (* {1, 4, 10} *);
        META_LINETO* = 531 (* {0, 1, 4, 9} *);
        META_MOVETO* = 532 (* {2, 4, 9} *);
        META_EXCLUDECLIPRECT* = 1045 (* {0, 2, 4, 10} *);
        META_INTERSECTCLIPRECT* = 1046 (* {1, 2, 4, 10} *);
        META_ARC* = 2071 (* {0..2, 4, 11} *);
        META_ELLIPSE* = 1048 (* {3, 4, 10} *);
        META_FLOODFILL* = 1049 (* {0, 3, 4, 10} *);
        META_PIE* = 2074 (* {1, 3, 4, 11} *);
        META_RECTANGLE* = 1051 (* {0, 1, 3, 4, 10} *);
        META_ROUNDRECT* = 1564 (* {2..4, 9, 10} *);
        META_PATBLT* = 1565 (* {0, 2..4, 9, 10} *);
        META_SAVEDC* = 30 (* {1..4} *);
        META_SETPIXEL* = 1055 (* {0..4, 10} *);
        META_OFFSETCLIPRGN* = 544 (* {5, 9} *);
        META_TEXTOUT* = 1313 (* {0, 5, 8, 10} *);
        META_BITBLT* = 2338 (* {1, 5, 8, 11} *);
        META_STRETCHBLT* = 2851 (* {0, 1, 5, 8, 9, 11} *);
        META_POLYGON* = 804 (* {2, 5, 8, 9} *);
        META_POLYLINE* = 805 (* {0, 2, 5, 8, 9} *);
        META_ESCAPE* = 1574 (* {1, 2, 5, 9, 10} *);
        META_RESTOREDC* = 295 (* {0..2, 5, 8} *);
        META_FILLREGION* = 552 (* {3, 5, 9} *);
        META_FRAMEREGION* = 1065 (* {0, 3, 5, 10} *);
        META_INVERTREGION* = 298 (* {1, 3, 5, 8} *);
        META_PAINTREGION* = 299 (* {0, 1, 3, 5, 8} *);
        META_SELECTCLIPREGION* = 300 (* {2, 3, 5, 8} *);
        META_SELECTOBJECT* = 301 (* {0, 2, 3, 5, 8} *);
        META_SETTEXTALIGN* = 302 (* {1..3, 5, 8} *);
        META_CHORD* = 2096 (* {4, 5, 11} *);
        META_SETMAPPERFLAGS* = 561 (* {0, 4, 5, 9} *);
        META_EXTTEXTOUT* = 2610 (* {1, 4, 5, 9, 11} *);
        META_SETDIBTODEV* = 3379 (* {0, 1, 4, 5, 8, 10, 11} *);
        META_SELECTPALETTE* = 564 (* {2, 4, 5, 9} *);
        META_REALIZEPALETTE* = 53 (* {0, 2, 4, 5} *);
        META_ANIMATEPALETTE* = 1078 (* {1, 2, 4, 5, 10} *);
        META_SETPALENTRIES* = 55 (* {0..2, 4, 5} *);
        META_POLYPOLYGON* = 1336 (* {3..5, 8, 10} *);
        META_RESIZEPALETTE* = 313 (* {0, 3..5, 8} *);
        META_DIBBITBLT* = 2368 (* {6, 8, 11} *);
        META_DIBSTRETCHBLT* = 2881 (* {0, 6, 8, 9, 11} *);
        META_DIBCREATEPATTERNBRUSH* = 322 (* {1, 6, 8} *);
        META_STRETCHDIB* = 3907 (* {0, 1, 6, 8..11} *);
        META_EXTFLOODFILL* = 1352 (* {3, 6, 8, 10} *);
        META_DELETEOBJECT* = 496 (* {4..8} *);
        META_CREATEPALETTE* = 247 (* {0..2, 4..7} *);
        META_CREATEPATTERNBRUSH* = 505 (* {0, 3..8} *);
        META_CREATEPENINDIRECT* = 762 (* {1, 3..7, 9} *);
        META_CREATEFONTINDIRECT* = 763 (* {0, 1, 3..7, 9} *);
        META_CREATEBRUSHINDIRECT* = 764 (* {2..7, 9} *);
        META_CREATEREGION* = 1791 (* {0..7, 9, 10} *);
        NEWFRAME* = 1 (* {0} *);
        ABORTDOC* = 2 (* {1} *);
        NEXTBAND* = 3 (* {0, 1} *);
        SETCOLORTABLE* = 4 (* {2} *);
        GETCOLORTABLE* = 5 (* {0, 2} *);
        FLUSHOUTPUT* = 6 (* {1, 2} *);
        DRAFTMODE* = 7 (* {0..2} *);
        QUERYESCSUPPORT* = 8 (* {3} *);
        SETABORTPROC* = 9 (* {0, 3} *);
        STARTDOC* = 10 (* {1, 3} *);
        ENDDOC* = 11 (* {0, 1, 3} *);
        GETPHYSPAGESIZE* = 12 (* {2, 3} *);
        GETPRINTINGOFFSET* = 13 (* {0, 2, 3} *);
        GETSCALINGFACTOR* = 14 (* {1..3} *);
        MFCOMMENT* = 15 (* {0..3} *);
        GETPENWIDTH* = 16 (* {4} *);
        SETCOPYCOUNT* = 17 (* {0, 4} *);
        SELECTPAPERSOURCE* = 18 (* {1, 4} *);
        DEVICEDATA* = 19 (* {0, 1, 4} *);
        PASSTHROUGH* = 19 (* {0, 1, 4} *);
        GETTECHNOLGY* = 20 (* {2, 4} *);
        GETTECHNOLOGY* = 20 (* {2, 4} *);
        SETLINECAP* = 21 (* {0, 2, 4} *);
        SETLINEJOIN* = 22 (* {1, 2, 4} *);
        SETMITERLIMIT* = 23 (* {0..2, 4} *);
        BANDINFO* = 24 (* {3, 4} *);
        DRAWPATTERNRECT* = 25 (* {0, 3, 4} *);
        GETVECTORPENSIZE* = 26 (* {1, 3, 4} *);
        GETVECTORBRUSHSIZE* = 27 (* {0, 1, 3, 4} *);
        ENABLEDUPLEX* = 28 (* {2..4} *);
        GETSETPAPERBINS* = 29 (* {0, 2..4} *);
        GETSETPRINTORIENT* = 30 (* {1..4} *);
        ENUMPAPERBINS* = 31 (* {0..4} *);
        SETDIBSCALING* = 32 (* {5} *);
        EPSPRINTING* = 33 (* {0, 5} *);
        ENUMPAPERMETRICS* = 34 (* {1, 5} *);
        GETSETPAPERMETRICS* = 35 (* {0, 1, 5} *);
        POSTSCRIPT_DATA* = 37 (* {0, 2, 5} *);
        POSTSCRIPT_IGNORE* = 38 (* {1, 2, 5} *);
        MOUSETRAILS* = 39 (* {0..2, 5} *);
        GETDEVICEUNITS* = 42 (* {1, 3, 5} *);
        GETEXTENDEDTEXTMETRICS* = 256 (* {8} *);
        GETEXTENTTABLE* = 257 (* {0, 8} *);
        GETPAIRKERNTABLE* = 258 (* {1, 8} *);
        GETTRACKKERNTABLE* = 259 (* {0, 1, 8} *);
        EXTTEXTOUT* = 512 (* {9} *);
        GETFACENAME* = 513 (* {0, 9} *);
        DOWNLOADFACE* = 514 (* {1, 9} *);
        ENABLERELATIVEWIDTHS* = 768 (* {8, 9} *);
        ENABLEPAIRKERNING* = 769 (* {0, 8, 9} *);
        SETKERNTRACK* = 770 (* {1, 8, 9} *);
        SETALLJUSTVALUES* = 771 (* {0, 1, 8, 9} *);
        SETCHARSET* = 772 (* {2, 8, 9} *);
        STRETCHBLT* = 2048 (* {11} *);
        GETSETSCREENPARAMS* = 3072 (* {10, 11} *);
        QUERYDIBSUPPORT* = 3073 (* {0, 10, 11} *);
        BEGIN_PATH* = 4096 (* {12} *);
        CLIP_TO_PATH* = 4097 (* {0, 12} *);
        END_PATH* = 4098 (* {1, 12} *);
        EXT_DEVICE_CAPS* = 4099 (* {0, 1, 12} *);
        RESTORE_CTM* = 4100 (* {2, 12} *);
        SAVE_CTM* = 4101 (* {0, 2, 12} *);
        SET_ARC_DIRECTION* = 4102 (* {1, 2, 12} *);
        SET_BACKGROUND_COLOR* = 4103 (* {0..2, 12} *);
        SET_POLY_MODE* = 4104 (* {3, 12} *);
        SET_SCREEN_ANGLE* = 4105 (* {0, 3, 12} *);
        SET_SPREAD* = 4106 (* {1, 3, 12} *);
        TRANSFORM_CTM* = 4107 (* {0, 1, 3, 12} *);
        SET_CLIP_BOX* = 4108 (* {2, 3, 12} *);
        SET_BOUNDS* = 4109 (* {0, 2, 3, 12} *);
        SET_MIRROR_MODE* = 4110 (* {1..3, 12} *);
        OPENCHANNEL* = 4110 (* {1..3, 12} *);
        DOWNLOADHEADER* = 4111 (* {0..3, 12} *);
        CLOSECHANNEL* = 4112 (* {4, 12} *);
        POSTSCRIPT_PASSTHROUGH* = 4115 (* {0, 1, 4, 12} *);
        ENCAPSULATED_POSTSCRIPT* = 4116 (* {2, 4, 12} *);
        QDI_SETDIBITS* = {0};
        QDI_GETDIBITS* = {1};
        QDI_DIBTOSCREEN* = {2};
        QDI_STRETCHDIB* = {3};
        SP_NOTREPORTED* = {14};
        SP_ERROR* = {0..31};
        SP_APPABORT* = {1..31};
        SP_USERABORT* = {0, 2..31};
        SP_OUTOFDISK* = {2..31};
        SP_OUTOFMEMORY* = {0, 1, 3..31};
        PR_JOBSTATUS* = 0 (* {} *);
        OBJ_PEN* = 1 (* {0} *);
        OBJ_BRUSH* = 2 (* {1} *);
        OBJ_DC* = 3 (* {0, 1} *);
        OBJ_METADC* = 4 (* {2} *);
        OBJ_PAL* = 5 (* {0, 2} *);
        OBJ_FONT* = 6 (* {1, 2} *);
        OBJ_BITMAP* = 7 (* {0..2} *);
        OBJ_REGION* = 8 (* {3} *);
        OBJ_METAFILE* = 9 (* {0, 3} *);
        OBJ_MEMDC* = 10 (* {1, 3} *);
        OBJ_EXTPEN* = 11 (* {0, 1, 3} *);
        OBJ_ENHMETADC* = 12 (* {2, 3} *);
        OBJ_ENHMETAFILE* = 13 (* {0, 2, 3} *);
        MWT_IDENTITY* = 1 (* {0} *);
        MWT_LEFTMULTIPLY* = 2 (* {1} *);
        MWT_RIGHTMULTIPLY* = 3 (* {0, 1} *);
        MWT_MIN* = 1 (* {0} *);
        MWT_MAX* = 3 (* {0, 1} *);
        LCS_CALIBRATED_RGB* = 0 (* {} *);
        LCS_DEVICE_RGB* = 1 (* {0} *);
        LCS_DEVICE_CMYK* = 2 (* {1} *);
        LCS_GM_BUSINESS* = 1 (* {0} *);
        LCS_GM_GRAPHICS* = 2 (* {1} *);
        LCS_GM_IMAGES* = 4 (* {2} *);
        CM_OUT_OF_GAMUT* = 255 (* {0..7} *);
        CM_IN_GAMUT* = 0 (* {} *);
        BI_RGB* = 0 (* {} *);
        BI_RLE8* = 1 (* {0} *);
        BI_RLE4* = 2 (* {1} *);
        BI_BITFIELDS* = 3 (* {0, 1} *);
        TCI_SRCCHARSET* = 1 (* {0} *);
        TCI_SRCCODEPAGE* = 2 (* {1} *);
        TCI_SRCFONTSIG* = 3 (* {0, 1} *);
        TMPF_FIXED_PITCH* = 1 (* {0} *);
        TMPF_VECTOR* = 2 (* {1} *);
        TMPF_DEVICE* = 8 (* {3} *);
        TMPF_TRUETYPE* = 4 (* {2} *);
        NTM_REGULAR* = 64 (* {6} *);
        NTM_BOLD* = 32 (* {5} *);
        NTM_ITALIC* = 1 (* {0} *);
        LF_FACESIZE* = 32 (* {5} *);
        LF_FULLFACESIZE* = 64 (* {6} *);
        OUT_DEFAULT_PRECIS* = 0 (* {} *);
        OUT_STRING_PRECIS* = 1 (* {0} *);
        OUT_CHARACTER_PRECIS* = 2 (* {1} *);
        OUT_STROKE_PRECIS* = 3 (* {0, 1} *);
        OUT_TT_PRECIS* = 4 (* {2} *);
        OUT_DEVICE_PRECIS* = 5 (* {0, 2} *);
        OUT_RASTER_PRECIS* = 6 (* {1, 2} *);
        OUT_TT_ONLY_PRECIS* = 7 (* {0..2} *);
        OUT_OUTLINE_PRECIS* = 8 (* {3} *);
        CLIP_DEFAULT_PRECIS* = 0 (* {} *);
        CLIP_CHARACTER_PRECIS* = 1 (* {0} *);
        CLIP_STROKE_PRECIS* = 2 (* {1} *);
        CLIP_MASK* = 15 (* {0..3} *);
        CLIP_LH_ANGLES* = 16 (* {4} *);
        CLIP_TT_ALWAYS* = 32 (* {5} *);
        CLIP_EMBEDDED* = 128 (* {7} *);
        DEFAULT_QUALITY* = 0 (* {} *);
        DRAFT_QUALITY* = 1 (* {0} *);
        PROOF_QUALITY* = 2 (* {1} *);
        NONANTIALIASED_QUALITY* = 3 (* {0, 1} *);
        ANTIALIASED_QUALITY* = 4 (* {2} *);
        DEFAULT_PITCH* = 0 (* {} *);
        FIXED_PITCH* = 1 (* {0} *);
        VARIABLE_PITCH* = 2 (* {1} *);
        MONO_FONT* = 8 (* {3} *);
        ANSI_CHARSET* = 0 (* {} *);
        DEFAULT_CHARSET* = 1 (* {0} *);
        SYMBOL_CHARSET* = 2 (* {1} *);
        SHIFTJIS_CHARSET* = 128 (* {7} *);
        HANGEUL_CHARSET* = 129 (* {0, 7} *);
        GB2312_CHARSET* = 134 (* {1, 2, 7} *);
        CHINESEBIG5_CHARSET* = 136 (* {3, 7} *);
        OEM_CHARSET* = 255 (* {0..7} *);
        JOHAB_CHARSET* = 130 (* {1, 7} *);
        HEBREW_CHARSET* = 177 (* {0, 4, 5, 7} *);
        ARABIC_CHARSET* = 178 (* {1, 4, 5, 7} *);
        GREEK_CHARSET* = 161 (* {0, 5, 7} *);
        TURKISH_CHARSET* = 162 (* {1, 5, 7} *);
        THAI_CHARSET* = 222 (* {1..4, 6, 7} *);
        EASTEUROPE_CHARSET* = 238 (* {1..3, 5..7} *);
        RUSSIAN_CHARSET* = 204 (* {2, 3, 6, 7} *);
        MAC_CHARSET* = 77 (* {0, 2, 3, 6} *);
        BALTIC_CHARSET* = 186 (* {1, 3..5, 7} *);
        FS_LATIN1* = {0};
        FS_LATIN2* = {1};
        FS_CYRILLIC* = {2};
        FS_GREEK* = {3};
        FS_TURKISH* = {4};
        FS_HEBREW* = {5};
        FS_ARABIC* = {6};
        FS_BALTIC* = {7};
        FS_THAI* = {16};
        FS_JISJAPAN* = {17};
        FS_CHINESESIMP* = {18};
        FS_WANSUNG* = {19};
        FS_CHINESETRAD* = {20};
        FS_JOHAB* = {21};
        FS_SYMBOL* = {31};
        FF_DONTCARE* = 0 (* {} *);
        FF_ROMAN* = 16 (* {4} *);
        FF_SWISS* = 32 (* {5} *);
        FF_MODERN* = 48 (* {4, 5} *);
        FF_SCRIPT* = 64 (* {6} *);
        FF_DECORATIVE* = 80 (* {4, 6} *);
        FW_DONTCARE* = 0 (* {} *);
        FW_THIN* = 100 (* {2, 5, 6} *);
        FW_EXTRALIGHT* = 200 (* {3, 6, 7} *);
        FW_LIGHT* = 300 (* {2, 3, 5, 8} *);
        FW_NORMAL* = 400 (* {4, 7, 8} *);
        FW_MEDIUM* = 500 (* {2, 4..8} *);
        FW_SEMIBOLD* = 600 (* {3, 4, 6, 9} *);
        FW_BOLD* = 700 (* {2..5, 7, 9} *);
        FW_EXTRABOLD* = 800 (* {5, 8, 9} *);
        FW_HEAVY* = 900 (* {2, 7..9} *);
        FW_ULTRALIGHT* = 200 (* {3, 6, 7} *);
        FW_REGULAR* = 400 (* {4, 7, 8} *);
        FW_DEMIBOLD* = 600 (* {3, 4, 6, 9} *);
        FW_ULTRABOLD* = 800 (* {5, 8, 9} *);
        FW_BLACK* = 900 (* {2, 7..9} *);
        PANOSE_COUNT* = 10 (* {1, 3} *);
        PAN_FAMILYTYPE_INDEX* = 0 (* {} *);
        PAN_SERIFSTYLE_INDEX* = 1 (* {0} *);
        PAN_WEIGHT_INDEX* = 2 (* {1} *);
        PAN_PROPORTION_INDEX* = 3 (* {0, 1} *);
        PAN_CONTRAST_INDEX* = 4 (* {2} *);
        PAN_STROKEVARIATION_INDEX* = 5 (* {0, 2} *);
        PAN_ARMSTYLE_INDEX* = 6 (* {1, 2} *);
        PAN_LETTERFORM_INDEX* = 7 (* {0..2} *);
        PAN_MIDLINE_INDEX* = 8 (* {3} *);
        PAN_XHEIGHT_INDEX* = 9 (* {0, 3} *);
        PAN_CULTURE_LATIN* = 0 (* {} *);
        PAN_ANY* = 0 (* {} *);
        PAN_NO_FIT* = 1 (* {0} *);
        PAN_FAMILY_TEXT_DISPLAY* = 2 (* {1} *);
        PAN_FAMILY_SCRIPT* = 3 (* {0, 1} *);
        PAN_FAMILY_DECORATIVE* = 4 (* {2} *);
        PAN_FAMILY_PICTORIAL* = 5 (* {0, 2} *);
        PAN_SERIF_COVE* = 2 (* {1} *);
        PAN_SERIF_OBTUSE_COVE* = 3 (* {0, 1} *);
        PAN_SERIF_SQUARE_COVE* = 4 (* {2} *);
        PAN_SERIF_OBTUSE_SQUARE_COVE* = 5 (* {0, 2} *);
        PAN_SERIF_SQUARE* = 6 (* {1, 2} *);
        PAN_SERIF_THIN* = 7 (* {0..2} *);
        PAN_SERIF_BONE* = 8 (* {3} *);
        PAN_SERIF_EXAGGERATED* = 9 (* {0, 3} *);
        PAN_SERIF_TRIANGLE* = 10 (* {1, 3} *);
        PAN_SERIF_NORMAL_SANS* = 11 (* {0, 1, 3} *);
        PAN_SERIF_OBTUSE_SANS* = 12 (* {2, 3} *);
        PAN_SERIF_PERP_SANS* = 13 (* {0, 2, 3} *);
        PAN_SERIF_FLARED* = 14 (* {1..3} *);
        PAN_SERIF_ROUNDED* = 15 (* {0..3} *);
        PAN_WEIGHT_VERY_LIGHT* = 2 (* {1} *);
        PAN_WEIGHT_LIGHT* = 3 (* {0, 1} *);
        PAN_WEIGHT_THIN* = 4 (* {2} *);
        PAN_WEIGHT_BOOK* = 5 (* {0, 2} *);
        PAN_WEIGHT_MEDIUM* = 6 (* {1, 2} *);
        PAN_WEIGHT_DEMI* = 7 (* {0..2} *);
        PAN_WEIGHT_BOLD* = 8 (* {3} *);
        PAN_WEIGHT_HEAVY* = 9 (* {0, 3} *);
        PAN_WEIGHT_BLACK* = 10 (* {1, 3} *);
        PAN_WEIGHT_NORD* = 11 (* {0, 1, 3} *);
        PAN_PROP_OLD_STYLE* = 2 (* {1} *);
        PAN_PROP_MODERN* = 3 (* {0, 1} *);
        PAN_PROP_EVEN_WIDTH* = 4 (* {2} *);
        PAN_PROP_EXPANDED* = 5 (* {0, 2} *);
        PAN_PROP_CONDENSED* = 6 (* {1, 2} *);
        PAN_PROP_VERY_EXPANDED* = 7 (* {0..2} *);
        PAN_PROP_VERY_CONDENSED* = 8 (* {3} *);
        PAN_PROP_MONOSPACED* = 9 (* {0, 3} *);
        PAN_CONTRAST_NONE* = 2 (* {1} *);
        PAN_CONTRAST_VERY_LOW* = 3 (* {0, 1} *);
        PAN_CONTRAST_LOW* = 4 (* {2} *);
        PAN_CONTRAST_MEDIUM_LOW* = 5 (* {0, 2} *);
        PAN_CONTRAST_MEDIUM* = 6 (* {1, 2} *);
        PAN_CONTRAST_MEDIUM_HIGH* = 7 (* {0..2} *);
        PAN_CONTRAST_HIGH* = 8 (* {3} *);
        PAN_CONTRAST_VERY_HIGH* = 9 (* {0, 3} *);
        PAN_STROKE_GRADUAL_DIAG* = 2 (* {1} *);
        PAN_STROKE_GRADUAL_TRAN* = 3 (* {0, 1} *);
        PAN_STROKE_GRADUAL_VERT* = 4 (* {2} *);
        PAN_STROKE_GRADUAL_HORZ* = 5 (* {0, 2} *);
        PAN_STROKE_RAPID_VERT* = 6 (* {1, 2} *);
        PAN_STROKE_RAPID_HORZ* = 7 (* {0..2} *);
        PAN_STROKE_INSTANT_VERT* = 8 (* {3} *);
        PAN_STRAIGHT_ARMS_HORZ* = 2 (* {1} *);
        PAN_STRAIGHT_ARMS_WEDGE* = 3 (* {0, 1} *);
        PAN_STRAIGHT_ARMS_VERT* = 4 (* {2} *);
        PAN_STRAIGHT_ARMS_SINGLE_SERIF* = 5 (* {0, 2} *);
        PAN_STRAIGHT_ARMS_DOUBLE_SERIF* = 6 (* {1, 2} *);
        PAN_BENT_ARMS_HORZ* = 7 (* {0..2} *);
        PAN_BENT_ARMS_WEDGE* = 8 (* {3} *);
        PAN_BENT_ARMS_VERT* = 9 (* {0, 3} *);
        PAN_BENT_ARMS_SINGLE_SERIF* = 10 (* {1, 3} *);
        PAN_BENT_ARMS_DOUBLE_SERIF* = 11 (* {0, 1, 3} *);
        PAN_LETT_NORMAL_CONTACT* = 2 (* {1} *);
        PAN_LETT_NORMAL_WEIGHTED* = 3 (* {0, 1} *);
        PAN_LETT_NORMAL_BOXED* = 4 (* {2} *);
        PAN_LETT_NORMAL_FLATTENED* = 5 (* {0, 2} *);
        PAN_LETT_NORMAL_ROUNDED* = 6 (* {1, 2} *);
        PAN_LETT_NORMAL_OFF_CENTER* = 7 (* {0..2} *);
        PAN_LETT_NORMAL_SQUARE* = 8 (* {3} *);
        PAN_LETT_OBLIQUE_CONTACT* = 9 (* {0, 3} *);
        PAN_LETT_OBLIQUE_WEIGHTED* = 10 (* {1, 3} *);
        PAN_LETT_OBLIQUE_BOXED* = 11 (* {0, 1, 3} *);
        PAN_LETT_OBLIQUE_FLATTENED* = 12 (* {2, 3} *);
        PAN_LETT_OBLIQUE_ROUNDED* = 13 (* {0, 2, 3} *);
        PAN_LETT_OBLIQUE_OFF_CENTER* = 14 (* {1..3} *);
        PAN_LETT_OBLIQUE_SQUARE* = 15 (* {0..3} *);
        PAN_MIDLINE_STANDARD_TRIMMED* = 2 (* {1} *);
        PAN_MIDLINE_STANDARD_POINTED* = 3 (* {0, 1} *);
        PAN_MIDLINE_STANDARD_SERIFED* = 4 (* {2} *);
        PAN_MIDLINE_HIGH_TRIMMED* = 5 (* {0, 2} *);
        PAN_MIDLINE_HIGH_POINTED* = 6 (* {1, 2} *);
        PAN_MIDLINE_HIGH_SERIFED* = 7 (* {0..2} *);
        PAN_MIDLINE_CONSTANT_TRIMMED* = 8 (* {3} *);
        PAN_MIDLINE_CONSTANT_POINTED* = 9 (* {0, 3} *);
        PAN_MIDLINE_CONSTANT_SERIFED* = 10 (* {1, 3} *);
        PAN_MIDLINE_LOW_TRIMMED* = 11 (* {0, 1, 3} *);
        PAN_MIDLINE_LOW_POINTED* = 12 (* {2, 3} *);
        PAN_MIDLINE_LOW_SERIFED* = 13 (* {0, 2, 3} *);
        PAN_XHEIGHT_CONSTANT_SMALL* = 2 (* {1} *);
        PAN_XHEIGHT_CONSTANT_STD* = 3 (* {0, 1} *);
        PAN_XHEIGHT_CONSTANT_LARGE* = 4 (* {2} *);
        PAN_XHEIGHT_DUCKING_SMALL* = 5 (* {0, 2} *);
        PAN_XHEIGHT_DUCKING_STD* = 6 (* {1, 2} *);
        PAN_XHEIGHT_DUCKING_LARGE* = 7 (* {0..2} *);
        ELF_VENDOR_SIZE* = 4 (* {2} *);
        ELF_VERSION* = 0 (* {} *);
        ELF_CULTURE_LATIN* = 0 (* {} *);
        RASTER_FONTTYPE* = 1 (* {0} *);
        DEVICE_FONTTYPE* = 2 (* {1} *);
        TRUETYPE_FONTTYPE* = 4 (* {2} *);
        PC_RESERVED* = 1 (* {0} *);
        PC_EXPLICIT* = 2 (* {1} *);
        PC_NOCOLLAPSE* = 4 (* {2} *);
        TRANSPARENT* = 1 (* {0} *);
        OPAQUE* = 2 (* {1} *);
        BKMODE_LAST* = 2 (* {1} *);
        GM_COMPATIBLE* = 1 (* {0} *);
        GM_ADVANCED* = 2 (* {1} *);
        GM_LAST* = 2 (* {1} *);
        PT_CLOSEFIGURE* = 1 (* {0} *);
        PT_LINETO* = 2 (* {1} *);
        PT_BEZIERTO* = 4 (* {2} *);
        PT_MOVETO* = 6 (* {1, 2} *);
        MM_TEXT* = 1 (* {0} *);
        MM_LOMETRIC* = 2 (* {1} *);
        MM_HIMETRIC* = 3 (* {0, 1} *);
        MM_LOENGLISH* = 4 (* {2} *);
        MM_HIENGLISH* = 5 (* {0, 2} *);
        MM_TWIPS* = 6 (* {1, 2} *);
        MM_ISOTROPIC* = 7 (* {0..2} *);
        MM_ANISOTROPIC* = 8 (* {3} *);
        MM_MIN* = 1 (* {0} *);
        MM_MAX* = 8 (* {3} *);
        MM_MAX_FIXEDSCALE* = 6 (* {1, 2} *);
        ABSOLUTE* = 1 (* {0} *);
        RELATIVE* = 2 (* {1} *);
        WHITE_BRUSH* = 0 (* {} *);
        LTGRAY_BRUSH* = 1 (* {0} *);
        GRAY_BRUSH* = 2 (* {1} *);
        DKGRAY_BRUSH* = 3 (* {0, 1} *);
        BLACK_BRUSH* = 4 (* {2} *);
        NULL_BRUSH* = 5 (* {0, 2} *);
        HOLLOW_BRUSH* = 5 (* {0, 2} *);
        WHITE_PEN* = 6 (* {1, 2} *);
        BLACK_PEN* = 7 (* {0..2} *);
        NULL_PEN* = 8 (* {3} *);
        OEM_FIXED_FONT* = 10 (* {1, 3} *);
        ANSI_FIXED_FONT* = 11 (* {0, 1, 3} *);
        ANSI_VAR_FONT* = 12 (* {2, 3} *);
        SYSTEM_FONT* = 13 (* {0, 2, 3} *);
        DEVICE_DEFAULT_FONT* = 14 (* {1..3} *);
        DEFAULT_PALETTE* = 15 (* {0..3} *);
        SYSTEM_FIXED_FONT* = 16 (* {4} *);
        DEFAULT_GUI_FONT* = 17 (* {0, 4} *);
        STOCK_LAST* = 17 (* {0, 4} *);
        CLR_INVALID* = -1 (* {0..31} *);
        BS_SOLID* = 0 (* {} *);
        BS_NULL* = 1 (* {0} *);
        BS_HOLLOW* = 1 (* {0} *);
        BS_HATCHED* = 2 (* {1} *);
        BS_PATTERN* = 3 (* {0, 1} *);
        BS_INDEXED* = 4 (* {2} *);
        BS_DIBPATTERN* = 5 (* {0, 2} *);
        BS_DIBPATTERNPT* = 6 (* {1, 2} *);
        BS_PATTERN8X8* = 7 (* {0..2} *);
        BS_DIBPATTERN8X8* = 8 (* {3} *);
        HS_HORIZONTAL* = 0 (* {} *);
        HS_VERTICAL* = 1 (* {0} *);
        HS_FDIAGONAL* = 2 (* {1} *);
        HS_BDIAGONAL* = 3 (* {0, 1} *);
        HS_CROSS* = 4 (* {2} *);
        HS_DIAGCROSS* = 5 (* {0, 2} *);
        PS_SOLID* = 0 (* {} *);
        PS_DASH* = 1 (* {0} *);
        PS_DOT* = 2 (* {1} *);
        PS_DASHDOT* = 3 (* {0, 1} *);
        PS_DASHDOTDOT* = 4 (* {2} *);
        PS_NULL* = 5 (* {0, 2} *);
        PS_INSIDEFRAME* = 6 (* {1, 2} *);
        PS_USERSTYLE* = 7 (* {0..2} *);
        PS_ALTERNATE* = 8 (* {3} *);
        PS_STYLE_MASK* = 15 (* {0..3} *);
        PS_ENDCAP_ROUND* = 0 (* {} *);
        PS_ENDCAP_SQUARE* = 256 (* {8} *);
        PS_ENDCAP_FLAT* = 512 (* {9} *);
        PS_ENDCAP_MASK* = 3840 (* {8..11} *);
        PS_JOIN_ROUND* = 0 (* {} *);
        PS_JOIN_BEVEL* = 4096 (* {12} *);
        PS_JOIN_MITER* = 8192 (* {13} *);
        PS_JOIN_MASK* = 61440 (* {12..15} *);
        PS_COSMETIC* = 0 (* {} *);
        PS_GEOMETRIC* = 65536 (* {16} *);
        PS_TYPE_MASK* = 983040 (* {16..19} *);
        AD_COUNTERCLOCKWISE* = 1 (* {0} *);
        AD_CLOCKWISE* = 2 (* {1} *);
        DRIVERVERSION* = 0 (* {} *);
        TECHNOLOGY* = 2 (* {1} *);
        HORZSIZE* = 4 (* {2} *);
        VERTSIZE* = 6 (* {1, 2} *);
        HORZRES* = 8 (* {3} *);
        VERTRES* = 10 (* {1, 3} *);
        BITSPIXEL* = 12 (* {2, 3} *);
        PLANES* = 14 (* {1..3} *);
        NUMBRUSHES* = 16 (* {4} *);
        NUMPENS* = 18 (* {1, 4} *);
        NUMMARKERS* = 20 (* {2, 4} *);
        NUMFONTS* = 22 (* {1, 2, 4} *);
        NUMCOLORS* = 24 (* {3, 4} *);
        PDEVICESIZE* = 26 (* {1, 3, 4} *);
        CURVECAPS* = 28 (* {2..4} *);
        LINECAPS* = 30 (* {1..4} *);
        POLYGONALCAPS* = 32 (* {5} *);
        TEXTCAPS* = 34 (* {1, 5} *);
        CLIPCAPS* = 36 (* {2, 5} *);
        RASTERCAPS* = 38 (* {1, 2, 5} *);
        ASPECTX* = 40 (* {3, 5} *);
        ASPECTY* = 42 (* {1, 3, 5} *);
        ASPECTXY* = 44 (* {2, 3, 5} *);
        LOGPIXELSX* = 88 (* {3, 4, 6} *);
        LOGPIXELSY* = 90 (* {1, 3, 4, 6} *);
        SIZEPALETTE* = 104 (* {3, 5, 6} *);
        NUMRESERVED* = 106 (* {1, 3, 5, 6} *);
        COLORRES* = 108 (* {2, 3, 5, 6} *);
        PHYSICALWIDTH* = 110 (* {1..3, 5, 6} *);
        PHYSICALHEIGHT* = 111 (* {0..3, 5, 6} *);
        PHYSICALOFFSETX* = 112 (* {4..6} *);
        PHYSICALOFFSETY* = 113 (* {0, 4..6} *);
        SCALINGFACTORX* = 114 (* {1, 4..6} *);
        SCALINGFACTORY* = 115 (* {0, 1, 4..6} *);
        VREFRESH* = 116 (* {2, 4..6} *);
        DESKTOPVERTRES* = 117 (* {0, 2, 4..6} *);
        DESKTOPHORZRES* = 118 (* {1, 2, 4..6} *);
        BLTALIGNMENT* = 119 (* {0..2, 4..6} *);
        DT_PLOTTER* = 0 (* {} *);
        DT_RASDISPLAY* = 1 (* {0} *);
        DT_RASPRINTER* = 2 (* {1} *);
        DT_RASCAMERA* = 3 (* {0, 1} *);
        DT_CHARSTREAM* = 4 (* {2} *);
        DT_METAFILE* = 5 (* {0, 2} *);
        DT_DISPFILE* = 6 (* {1, 2} *);
        CC_NONE* = {};
        CC_CIRCLES* = {0};
        CC_PIE* = {1};
        CC_CHORD* = {2};
        CC_ELLIPSES* = {3};
        CC_WIDE* = {4};
        CC_STYLED* = {5};
        CC_WIDESTYLED* = {6};
        CC_INTERIORS* = {7};
        CC_ROUNDRECT* = {8};
        LC_NONE* = {};
        LC_POLYLINE* = {1};
        LC_MARKER* = {2};
        LC_POLYMARKER* = {3};
        LC_WIDE* = {4};
        LC_STYLED* = {5};
        LC_WIDESTYLED* = {6};
        LC_INTERIORS* = {7};
        PC_NONE* = {};
        PC_POLYGON* = {0};
        PC_RECTANGLE* = {1};
        PC_WINDPOLYGON* = {2};
        PC_TRAPEZOID* = {2};
        PC_SCANLINE* = {3};
        PC_WIDE* = {4};
        PC_STYLED* = {5};
        PC_WIDESTYLED* = {6};
        PC_INTERIORS* = {7};
        PC_POLYPOLYGON* = {8};
        PC_PATHS* = {9};
        CP_NONE* = 0 (* {} *);
        CP_RECTANGLE* = 1 (* {0} *);
        CP_REGION* = 2 (* {1} *);
        TC_OP_CHARACTER* = {0};
        TC_OP_STROKE* = {1};
        TC_CP_STROKE* = {2};
        TC_CR_90* = {3};
        TC_CR_ANY* = {4};
        TC_SF_X_YINDEP* = {5};
        TC_SA_DOUBLE* = {6};
        TC_SA_INTEGER* = {7};
        TC_SA_CONTIN* = {8};
        TC_EA_DOUBLE* = {9};
        TC_IA_ABLE* = {10};
        TC_UA_ABLE* = {11};
        TC_SO_ABLE* = {12};
        TC_RA_ABLE* = {13};
        TC_VA_ABLE* = {14};
        TC_RESERVED* = {15};
        TC_SCROLLBLT* = {16};
        RC_BITBLT* = {0};
        RC_BANDING* = {1};
        RC_SCALING* = {2};
        RC_BITMAP64* = {3};
        RC_GDI20_OUTPUT* = {4};
        RC_GDI20_STATE* = {5};
        RC_SAVEBITMAP* = {6};
        RC_DI_BITMAP* = {7};
        RC_PALETTE* = {8};
        RC_DIBTODEV* = {9};
        RC_BIGFONT* = {10};
        RC_STRETCHBLT* = {11};
        RC_FLOODFILL* = {12};
        RC_STRETCHDIB* = {13};
        RC_OP_DX_OUTPUT* = {14};
        RC_DEVBITS* = {15};
        DIB_RGB_COLORS* = 0 (* {} *);
        DIB_PAL_COLORS* = 1 (* {0} *);
        SYSPAL_ERROR* = 0 (* {} *);
        SYSPAL_STATIC* = 1 (* {0} *);
        SYSPAL_NOSTATIC* = 2 (* {1} *);
        CBM_INIT* = 4 (* {2} *);
        FLOODFILLBORDER* = 0 (* {} *);
        FLOODFILLSURFACE* = 1 (* {0} *);
        CCHDEVICENAME* = 32 (* {5} *);
        CCHFORMNAME* = 32 (* {5} *);
        DM_SPECVERSION* = {0, 10};
        DM_ORIENTATION* = {0};
        DM_PAPERSIZE* = {1};
        DM_PAPERLENGTH* = {2};
        DM_PAPERWIDTH* = {3};
        DM_SCALE* = {4};
        DM_COPIES* = {8};
        DM_DEFAULTSOURCE* = {9};
        DM_PRINTQUALITY* = {10};
        DM_COLOR* = {11};
        DM_DUPLEX* = {12};
        DM_YRESOLUTION* = {13};
        DM_TTOPTION* = {14};
        DM_COLLATE* = {15};
        DM_FORMNAME* = {16};
        DM_LOGPIXELS* = {17};
        DM_BITSPERPEL* = {18};
        DM_PELSWIDTH* = {19};
        DM_PELSHEIGHT* = {20};
        DM_DISPLAYFLAGS* = {21};
        DM_DISPLAYFREQUENCY* = {22};
        DM_PANNINGWIDTH* = {23};
        DM_PANNINGHEIGHT* = {24};
        DM_ICMMETHOD* = {25};
        DM_ICMINTENT* = {26};
        DM_MEDIATYPE* = {27};
        DM_DITHERTYPE* = {28};
        DM_ICCMANUFACTURER* = {29};
        DM_ICCMODEL* = {30};
        DMORIENT_PORTRAIT* = 1 (* {0} *);
        DMORIENT_LANDSCAPE* = 2 (* {1} *);
        DMPAPER_FIRST* = 1 (* {0} *);
        DMPAPER_LETTER* = 1 (* {0} *);
        DMPAPER_LETTERSMALL* = 2 (* {1} *);
        DMPAPER_TABLOID* = 3 (* {0, 1} *);
        DMPAPER_LEDGER* = 4 (* {2} *);
        DMPAPER_LEGAL* = 5 (* {0, 2} *);
        DMPAPER_STATEMENT* = 6 (* {1, 2} *);
        DMPAPER_EXECUTIVE* = 7 (* {0..2} *);
        DMPAPER_A3* = 8 (* {3} *);
        DMPAPER_A4* = 9 (* {0, 3} *);
        DMPAPER_A4SMALL* = 10 (* {1, 3} *);
        DMPAPER_A5* = 11 (* {0, 1, 3} *);
        DMPAPER_B4* = 12 (* {2, 3} *);
        DMPAPER_B5* = 13 (* {0, 2, 3} *);
        DMPAPER_FOLIO* = 14 (* {1..3} *);
        DMPAPER_QUARTO* = 15 (* {0..3} *);
        DMPAPER_10X14* = 16 (* {4} *);
        DMPAPER_11X17* = 17 (* {0, 4} *);
        DMPAPER_NOTE* = 18 (* {1, 4} *);
        DMPAPER_ENV_9* = 19 (* {0, 1, 4} *);
        DMPAPER_ENV_10* = 20 (* {2, 4} *);
        DMPAPER_ENV_11* = 21 (* {0, 2, 4} *);
        DMPAPER_ENV_12* = 22 (* {1, 2, 4} *);
        DMPAPER_ENV_14* = 23 (* {0..2, 4} *);
        DMPAPER_CSHEET* = 24 (* {3, 4} *);
        DMPAPER_DSHEET* = 25 (* {0, 3, 4} *);
        DMPAPER_ESHEET* = 26 (* {1, 3, 4} *);
        DMPAPER_ENV_DL* = 27 (* {0, 1, 3, 4} *);
        DMPAPER_ENV_C5* = 28 (* {2..4} *);
        DMPAPER_ENV_C3* = 29 (* {0, 2..4} *);
        DMPAPER_ENV_C4* = 30 (* {1..4} *);
        DMPAPER_ENV_C6* = 31 (* {0..4} *);
        DMPAPER_ENV_C65* = 32 (* {5} *);
        DMPAPER_ENV_B4* = 33 (* {0, 5} *);
        DMPAPER_ENV_B5* = 34 (* {1, 5} *);
        DMPAPER_ENV_B6* = 35 (* {0, 1, 5} *);
        DMPAPER_ENV_ITALY* = 36 (* {2, 5} *);
        DMPAPER_ENV_MONARCH* = 37 (* {0, 2, 5} *);
        DMPAPER_ENV_PERSONAL* = 38 (* {1, 2, 5} *);
        DMPAPER_FANFOLD_US* = 39 (* {0..2, 5} *);
        DMPAPER_FANFOLD_STD_GERMAN* = 40 (* {3, 5} *);
        DMPAPER_FANFOLD_LGL_GERMAN* = 41 (* {0, 3, 5} *);
        DMPAPER_ISO_B4* = 42 (* {1, 3, 5} *);
        DMPAPER_JAPANESE_POSTCARD* = 43 (* {0, 1, 3, 5} *);
        DMPAPER_9X11* = 44 (* {2, 3, 5} *);
        DMPAPER_10X11* = 45 (* {0, 2, 3, 5} *);
        DMPAPER_15X11* = 46 (* {1..3, 5} *);
        DMPAPER_ENV_INVITE* = 47 (* {0..3, 5} *);
        DMPAPER_RESERVED_48* = 48 (* {4, 5} *);
        DMPAPER_RESERVED_49* = 49 (* {0, 4, 5} *);
        DMPAPER_LETTER_EXTRA* = 50 (* {1, 4, 5} *);
        DMPAPER_LEGAL_EXTRA* = 51 (* {0, 1, 4, 5} *);
        DMPAPER_TABLOID_EXTRA* = 52 (* {2, 4, 5} *);
        DMPAPER_A4_EXTRA* = 53 (* {0, 2, 4, 5} *);
        DMPAPER_LETTER_TRANSVERSE* = 54 (* {1, 2, 4, 5} *);
        DMPAPER_A4_TRANSVERSE* = 55 (* {0..2, 4, 5} *);
        DMPAPER_LETTER_EXTRA_TRANSVERSE* = 56 (* {3..5} *);
        DMPAPER_A_PLUS* = 57 (* {0, 3..5} *);
        DMPAPER_B_PLUS* = 58 (* {1, 3..5} *);
        DMPAPER_LETTER_PLUS* = 59 (* {0, 1, 3..5} *);
        DMPAPER_A4_PLUS* = 60 (* {2..5} *);
        DMPAPER_A5_TRANSVERSE* = 61 (* {0, 2..5} *);
        DMPAPER_B5_TRANSVERSE* = 62 (* {1..5} *);
        DMPAPER_A3_EXTRA* = 63 (* {0..5} *);
        DMPAPER_A5_EXTRA* = 64 (* {6} *);
        DMPAPER_B5_EXTRA* = 65 (* {0, 6} *);
        DMPAPER_A2* = 66 (* {1, 6} *);
        DMPAPER_A3_TRANSVERSE* = 67 (* {0, 1, 6} *);
        DMPAPER_A3_EXTRA_TRANSVERSE* = 68 (* {2, 6} *);
        DMPAPER_LAST* = 68 (* {2, 6} *);
        DMPAPER_USER* = 256 (* {8} *);
        DMBIN_FIRST* = 1 (* {0} *);
        DMBIN_UPPER* = 1 (* {0} *);
        DMBIN_ONLYONE* = 1 (* {0} *);
        DMBIN_LOWER* = 2 (* {1} *);
        DMBIN_MIDDLE* = 3 (* {0, 1} *);
        DMBIN_MANUAL* = 4 (* {2} *);
        DMBIN_ENVELOPE* = 5 (* {0, 2} *);
        DMBIN_ENVMANUAL* = 6 (* {1, 2} *);
        DMBIN_AUTO* = 7 (* {0..2} *);
        DMBIN_TRACTOR* = 8 (* {3} *);
        DMBIN_SMALLFMT* = 9 (* {0, 3} *);
        DMBIN_LARGEFMT* = 10 (* {1, 3} *);
        DMBIN_LARGECAPACITY* = 11 (* {0, 1, 3} *);
        DMBIN_CASSETTE* = 14 (* {1..3} *);
        DMBIN_FORMSOURCE* = 15 (* {0..3} *);
        DMBIN_LAST* = 15 (* {0..3} *);
        DMBIN_USER* = 256 (* {8} *);
        DMRES_DRAFT* = -1 (* {0..31} *);
        DMRES_LOW* = -2 (* {1..31} *);
        DMRES_MEDIUM* = -3 (* {0, 2..31} *);
        DMRES_HIGH* = -4 (* {2..31} *);
        DMCOLOR_MONOCHROME* = 1 (* {0} *);
        DMCOLOR_COLOR* = 2 (* {1} *);
        DMDUP_SIMPLEX* = 1 (* {0} *);
        DMDUP_VERTICAL* = 2 (* {1} *);
        DMDUP_HORIZONTAL* = 3 (* {0, 1} *);
        DMTT_BITMAP* = 1 (* {0} *);
        DMTT_DOWNLOAD* = 2 (* {1} *);
        DMTT_SUBDEV* = 3 (* {0, 1} *);
        DMTT_DOWNLOAD_OUTLINE* = 4 (* {2} *);
        DMCOLLATE_FALSE* = 0 (* {} *);
        DMCOLLATE_TRUE* = 1 (* {0} *);
        DM_GRAYSCALE* = {0};
        DM_INTERLACED* = {1};
        DM_TEXTMODE* = {2};
        DMICMMETHOD_NONE* = 1 (* {0} *);
        DMICMMETHOD_SYSTEM* = 2 (* {1} *);
        DMICMMETHOD_DRIVER* = 3 (* {0, 1} *);
        DMICMMETHOD_DEVICE* = 4 (* {2} *);
        DMICMMETHOD_USER* = 256 (* {8} *);
        DMICM_SATURATE* = 1 (* {0} *);
        DMICM_CONTRAST* = 2 (* {1} *);
        DMICM_COLORMETRIC* = 3 (* {0, 1} *);
        DMICM_USER* = 256 (* {8} *);
        DMMEDIA_STANDARD* = 1 (* {0} *);
        DMMEDIA_TRANSPARENCY* = 2 (* {1} *);
        DMMEDIA_GLOSSY* = 3 (* {0, 1} *);
        DMMEDIA_USER* = 256 (* {8} *);
        DMDITHER_NONE* = 1 (* {0} *);
        DMDITHER_COARSE* = 2 (* {1} *);
        DMDITHER_FINE* = 3 (* {0, 1} *);
        DMDITHER_LINEART* = 4 (* {2} *);
        DMDITHER_GRAYSCALE* = 5 (* {0, 2} *);
        DMDITHER_USER* = 256 (* {8} *);
        RDH_RECTANGLES* = 1 (* {0} *);
        GGO_METRICS* = 0 (* {} *);
        GGO_BITMAP* = 1 (* {0} *);
        GGO_NATIVE* = 2 (* {1} *);
        GGO_GRAY2_BITMAP* = 4 (* {2} *);
        GGO_GRAY4_BITMAP* = 5 (* {0, 2} *);
        GGO_GRAY8_BITMAP* = 6 (* {1, 2} *);
        GGO_GLYPH_INDEX* = 128 (* {7} *);
        TT_POLYGON_TYPE* = 24 (* {3, 4} *);
        TT_PRIM_LINE* = 1 (* {0} *);
        TT_PRIM_QSPLINE* = 2 (* {1} *);
        GCP_DBCS* = {0};
        GCP_REORDER* = {1};
        GCP_USEKERNING* = {3};
        GCP_GLYPHSHAPE* = {4};
        GCP_LIGATE* = {5};
        GCP_DIACRITIC* = {8};
        GCP_KASHIDA* = {10};
        GCP_ERROR* = {15};
        FLI_MASK* = {0, 1, 3..5, 12};
        GCP_JUSTIFY* = {16};
        FLI_GLYPHS* = {18};
        GCP_CLASSIN* = {19};
        GCP_MAXEXTENT* = {20};
        GCP_JUSTIFYIN* = {21};
        GCP_DISPLAYZWG* = {22};
        GCP_SYMSWAPOFF* = {23};
        GCP_NUMERICOVERRIDE* = {24};
        GCP_NEUTRALOVERRIDE* = {25};
        GCP_NUMERICSLATIN* = {26};
        GCP_NUMERICSLOCAL* = {27};
        GCPCLASS_LATIN* = 1 (* {0} *);
        GCPCLASS_HEBREW* = 2 (* {1} *);
        GCPCLASS_ARABIC* = 2 (* {1} *);
        GCPCLASS_NEUTRAL* = 3 (* {0, 1} *);
        GCPCLASS_LOCALNUMBER* = 4 (* {2} *);
        GCPCLASS_LATINNUMBER* = 5 (* {0, 2} *);
        GCPCLASS_LATINNUMERICTERMINATOR* = 6 (* {1, 2} *);
        GCPCLASS_LATINNUMERICSEPARATOR* = 7 (* {0..2} *);
        GCPCLASS_NUMERICSEPARATOR* = 8 (* {3} *);
        GCPCLASS_PREBOUNDLTR* = 128 (* {7} *);
        GCPCLASS_PREBOUNDRTL* = 64 (* {6} *);
        GCPCLASS_POSTBOUNDLTR* = 32 (* {5} *);
        GCPCLASS_POSTBOUNDRTL* = 16 (* {4} *);
        GCPGLYPH_LINKBEFORE* = 32768 (* {15} *);
        GCPGLYPH_LINKAFTER* = 16384 (* {14} *);
        TT_AVAILABLE* = 1 (* {0} *);
        TT_ENABLED* = 2 (* {1} *);
        PFD_TYPE_RGBA* = 0 (* {} *);
        PFD_TYPE_COLORINDEX* = 1 (* {0} *);
        PFD_MAIN_PLANE* = 0 (* {} *);
        PFD_OVERLAY_PLANE* = 1 (* {0} *);
        PFD_UNDERLAY_PLANE* = -1 (* {0..31} *);
        PFD_DOUBLEBUFFER* = {0};
        PFD_STEREO* = {1};
        PFD_DRAW_TO_WINDOW* = {2};
        PFD_DRAW_TO_BITMAP* = {3};
        PFD_SUPPORT_GDI* = {4};
        PFD_SUPPORT_OPENGL* = {5};
        PFD_GENERIC_FORMAT* = {6};
        PFD_NEED_PALETTE* = {7};
        PFD_NEED_SYSTEM_PALETTE* = {8};
        PFD_SWAP_EXCHANGE* = {9};
        PFD_SWAP_COPY* = {10};
        PFD_SWAP_LAYER_BUFFERS* = {11};
        PFD_DOUBLEBUFFER_DONTCARE* = {30};
        PFD_STEREO_DONTCARE* = {31};
        DC_BINADJUST* = 19 (* {0, 1, 4} *);
        DC_EMF_COMPLIANT* = 20 (* {2, 4} *);
        DC_DATATYPE_PRODUCED* = 21 (* {0, 2, 4} *);
        DC_COLLATE* = 22 (* {1, 2, 4} *);
        DCTT_BITMAP* = {0};
        DCTT_DOWNLOAD* = {1};
        DCTT_SUBDEV* = {2};
        DCTT_DOWNLOAD_OUTLINE* = {3};
        DCBA_FACEUPNONE* = 0 (* {} *);
        DCBA_FACEUPCENTER* = 1 (* {0} *);
        DCBA_FACEUPLEFT* = 2 (* {1} *);
        DCBA_FACEUPRIGHT* = 3 (* {0, 1} *);
        DCBA_FACEDOWNNONE* = 256 (* {8} *);
        DCBA_FACEDOWNCENTER* = 257 (* {0, 8} *);
        DCBA_FACEDOWNLEFT* = 258 (* {1, 8} *);
        DCBA_FACEDOWNRIGHT* = 259 (* {0, 1, 8} *);
        CA_NEGATIVE* = 1 (* {0} *);
        CA_LOG_FILTER* = 2 (* {1} *);
        ILLUMINANT_DEVICE_DEFAULT* = 0 (* {} *);
        ILLUMINANT_A* = 1 (* {0} *);
        ILLUMINANT_B* = 2 (* {1} *);
        ILLUMINANT_C* = 3 (* {0, 1} *);
        ILLUMINANT_D50* = 4 (* {2} *);
        ILLUMINANT_D55* = 5 (* {0, 2} *);
        ILLUMINANT_D65* = 6 (* {1, 2} *);
        ILLUMINANT_D75* = 7 (* {0..2} *);
        ILLUMINANT_F2* = 8 (* {3} *);
        ILLUMINANT_MAX_INDEX* = 8 (* {3} *);
        ILLUMINANT_TUNGSTEN* = 1 (* {0} *);
        ILLUMINANT_DAYLIGHT* = 3 (* {0, 1} *);
        ILLUMINANT_FLUORESCENT* = 8 (* {3} *);
        ILLUMINANT_NTSC* = 3 (* {0, 1} *);
        RGB_GAMMA_MIN* = 1344 (* {6, 8, 10} *);
        RGB_GAMMA_MAX* = 65000 (* {3, 5..8, 10..15} *);
        REFERENCE_WHITE_MIN* = 6000 (* {4..6, 8..10, 12} *);
        REFERENCE_WHITE_MAX* = 10000 (* {4, 8..10, 13} *);
        REFERENCE_BLACK_MIN* = 0 (* {} *);
        REFERENCE_BLACK_MAX* = 4000 (* {5, 7..11} *);
        COLOR_ADJ_MIN* = -100 (* {2..4, 7..31} *);
        COLOR_ADJ_MAX* = 100 (* {2, 5, 6} *);
        DI_APPBANDING* = 1 (* {0} *);
        FONTMAPPER_MAX* = 10 (* {1, 3} *);
        ICM_OFF* = 1 (* {0} *);
        ICM_ON* = 2 (* {1} *);
        ICM_QUERY* = 3 (* {0, 1} *);
        ICM_ADDPROFILE* = 1 (* {0} *);
        ICM_DELETEPROFILE* = 2 (* {1} *);
        ICM_QUERYPROFILE* = 3 (* {0, 1} *);
        ICM_SETDEFAULTPROFILE* = 4 (* {2} *);
        ICM_REGISTERICMATCHER* = 5 (* {0, 2} *);
        ICM_UNREGISTERICMATCHER* = 6 (* {1, 2} *);
        ICM_QUERYMATCH* = 7 (* {0..2} *);
        ENHMETA_SIGNATURE* = 1179469088 (* {5, 8, 10, 14, 16, 18, 19, 22, 25, 26, 30} *);
        ENHMETA_STOCK_OBJECT* = 80000000H;
        EMR_HEADER* = 1 (* {0} *);
        EMR_POLYBEZIER* = 2 (* {1} *);
        EMR_POLYGON* = 3 (* {0, 1} *);
        EMR_POLYLINE* = 4 (* {2} *);
        EMR_POLYBEZIERTO* = 5 (* {0, 2} *);
        EMR_POLYLINETO* = 6 (* {1, 2} *);
        EMR_POLYPOLYLINE* = 7 (* {0..2} *);
        EMR_POLYPOLYGON* = 8 (* {3} *);
        EMR_SETWINDOWEXTEX* = 9 (* {0, 3} *);
        EMR_SETWINDOWORGEX* = 10 (* {1, 3} *);
        EMR_SETVIEWPORTEXTEX* = 11 (* {0, 1, 3} *);
        EMR_SETVIEWPORTORGEX* = 12 (* {2, 3} *);
        EMR_SETBRUSHORGEX* = 13 (* {0, 2, 3} *);
        EMR_EOF* = 14 (* {1..3} *);
        EMR_SETPIXELV* = 15 (* {0..3} *);
        EMR_SETMAPPERFLAGS* = 16 (* {4} *);
        EMR_SETMAPMODE* = 17 (* {0, 4} *);
        EMR_SETBKMODE* = 18 (* {1, 4} *);
        EMR_SETPOLYFILLMODE* = 19 (* {0, 1, 4} *);
        EMR_SETROP2* = 20 (* {2, 4} *);
        EMR_SETSTRETCHBLTMODE* = 21 (* {0, 2, 4} *);
        EMR_SETTEXTALIGN* = 22 (* {1, 2, 4} *);
        EMR_SETCOLORADJUSTMENT* = 23 (* {0..2, 4} *);
        EMR_SETTEXTCOLOR* = 24 (* {3, 4} *);
        EMR_SETBKCOLOR* = 25 (* {0, 3, 4} *);
        EMR_OFFSETCLIPRGN* = 26 (* {1, 3, 4} *);
        EMR_MOVETOEX* = 27 (* {0, 1, 3, 4} *);
        EMR_SETMETARGN* = 28 (* {2..4} *);
        EMR_EXCLUDECLIPRECT* = 29 (* {0, 2..4} *);
        EMR_INTERSECTCLIPRECT* = 30 (* {1..4} *);
        EMR_SCALEVIEWPORTEXTEX* = 31 (* {0..4} *);
        EMR_SCALEWINDOWEXTEX* = 32 (* {5} *);
        EMR_SAVEDC* = 33 (* {0, 5} *);
        EMR_RESTOREDC* = 34 (* {1, 5} *);
        EMR_SETWORLDTRANSFORM* = 35 (* {0, 1, 5} *);
        EMR_MODIFYWORLDTRANSFORM* = 36 (* {2, 5} *);
        EMR_SELECTOBJECT* = 37 (* {0, 2, 5} *);
        EMR_CREATEPEN* = 38 (* {1, 2, 5} *);
        EMR_CREATEBRUSHINDIRECT* = 39 (* {0..2, 5} *);
        EMR_DELETEOBJECT* = 40 (* {3, 5} *);
        EMR_ANGLEARC* = 41 (* {0, 3, 5} *);
        EMR_ELLIPSE* = 42 (* {1, 3, 5} *);
        EMR_RECTANGLE* = 43 (* {0, 1, 3, 5} *);
        EMR_ROUNDRECT* = 44 (* {2, 3, 5} *);
        EMR_ARC* = 45 (* {0, 2, 3, 5} *);
        EMR_CHORD* = 46 (* {1..3, 5} *);
        EMR_PIE* = 47 (* {0..3, 5} *);
        EMR_SELECTPALETTE* = 48 (* {4, 5} *);
        EMR_CREATEPALETTE* = 49 (* {0, 4, 5} *);
        EMR_SETPALETTEENTRIES* = 50 (* {1, 4, 5} *);
        EMR_RESIZEPALETTE* = 51 (* {0, 1, 4, 5} *);
        EMR_REALIZEPALETTE* = 52 (* {2, 4, 5} *);
        EMR_EXTFLOODFILL* = 53 (* {0, 2, 4, 5} *);
        EMR_LINETO* = 54 (* {1, 2, 4, 5} *);
        EMR_ARCTO* = 55 (* {0..2, 4, 5} *);
        EMR_POLYDRAW* = 56 (* {3..5} *);
        EMR_SETARCDIRECTION* = 57 (* {0, 3..5} *);
        EMR_SETMITERLIMIT* = 58 (* {1, 3..5} *);
        EMR_BEGINPATH* = 59 (* {0, 1, 3..5} *);
        EMR_ENDPATH* = 60 (* {2..5} *);
        EMR_CLOSEFIGURE* = 61 (* {0, 2..5} *);
        EMR_FILLPATH* = 62 (* {1..5} *);
        EMR_STROKEANDFILLPATH* = 63 (* {0..5} *);
        EMR_STROKEPATH* = 64 (* {6} *);
        EMR_FLATTENPATH* = 65 (* {0, 6} *);
        EMR_WIDENPATH* = 66 (* {1, 6} *);
        EMR_SELECTCLIPPATH* = 67 (* {0, 1, 6} *);
        EMR_ABORTPATH* = 68 (* {2, 6} *);
        EMR_GDICOMMENT* = 70 (* {1, 2, 6} *);
        EMR_FILLRGN* = 71 (* {0..2, 6} *);
        EMR_FRAMERGN* = 72 (* {3, 6} *);
        EMR_INVERTRGN* = 73 (* {0, 3, 6} *);
        EMR_PAINTRGN* = 74 (* {1, 3, 6} *);
        EMR_EXTSELECTCLIPRGN* = 75 (* {0, 1, 3, 6} *);
        EMR_BITBLT* = 76 (* {2, 3, 6} *);
        EMR_STRETCHBLT* = 77 (* {0, 2, 3, 6} *);
        EMR_MASKBLT* = 78 (* {1..3, 6} *);
        EMR_PLGBLT* = 79 (* {0..3, 6} *);
        EMR_SETDIBITSTODEVICE* = 80 (* {4, 6} *);
        EMR_STRETCHDIBITS* = 81 (* {0, 4, 6} *);
        EMR_EXTCREATEFONTINDIRECTW* = 82 (* {1, 4, 6} *);
        EMR_EXTTEXTOUTA* = 83 (* {0, 1, 4, 6} *);
        EMR_EXTTEXTOUTW* = 84 (* {2, 4, 6} *);
        EMR_POLYBEZIER16* = 85 (* {0, 2, 4, 6} *);
        EMR_POLYGON16* = 86 (* {1, 2, 4, 6} *);
        EMR_POLYLINE16* = 87 (* {0..2, 4, 6} *);
        EMR_POLYBEZIERTO16* = 88 (* {3, 4, 6} *);
        EMR_POLYLINETO16* = 89 (* {0, 3, 4, 6} *);
        EMR_POLYPOLYLINE16* = 90 (* {1, 3, 4, 6} *);
        EMR_POLYPOLYGON16* = 91 (* {0, 1, 3, 4, 6} *);
        EMR_POLYDRAW16* = 92 (* {2..4, 6} *);
        EMR_CREATEMONOBRUSH* = 93 (* {0, 2..4, 6} *);
        EMR_CREATEDIBPATTERNBRUSHPT* = 94 (* {1..4, 6} *);
        EMR_EXTCREATEPEN* = 95 (* {0..4, 6} *);
        EMR_POLYTEXTOUTA* = 96 (* {5, 6} *);
        EMR_POLYTEXTOUTW* = 97 (* {0, 5, 6} *);
        EMR_SETICMMODE* = 98 (* {1, 5, 6} *);
        EMR_CREATECOLORSPACE* = 99 (* {0, 1, 5, 6} *);
        EMR_SETCOLORSPACE* = 100 (* {2, 5, 6} *);
        EMR_DELETECOLORSPACE* = 101 (* {0, 2, 5, 6} *);
        EMR_GLSRECORD* = 102 (* {1, 2, 5, 6} *);
        EMR_GLSBOUNDEDRECORD* = 103 (* {0..2, 5, 6} *);
        EMR_PIXELFORMAT* = 104 (* {3, 5, 6} *);
        EMR_MIN* = 1 (* {0} *);
        EMR_MAX* = 104 (* {3, 5, 6} *);
        GDICOMMENT_IDENTIFIER* = 1128875079 (* {0..2, 6, 10, 14, 16, 19, 22, 24, 25, 30} *);
        GDICOMMENT_WINDOWS_METAFILE* = -2147483647 (* {0, 31} *);
        GDICOMMENT_BEGINGROUP* = 2 (* {1} *);
        GDICOMMENT_ENDGROUP* = 3 (* {0, 1} *);
        GDICOMMENT_MULTIFORMATS* = 1073741828 (* {2, 30} *);
        EPS_SIGNATURE* = 1179865157 (* {0, 2, 6, 12, 14, 16, 17, 20, 22, 25, 26, 30} *);
        WGL_FONT_LINES* = 0 (* {} *);
        WGL_FONT_POLYGONS* = 1 (* {0} *);
        LPD_DOUBLEBUFFER* = {0};
        LPD_STEREO* = {1};
        LPD_SUPPORT_GDI* = {4};
        LPD_SUPPORT_OPENGL* = {5};
        LPD_SHARE_DEPTH* = {6};
        LPD_SHARE_STENCIL* = {7};
        LPD_SHARE_ACCUM* = {8};
        LPD_SWAP_EXCHANGE* = {9};
        LPD_SWAP_COPY* = {10};
        LPD_TRANSPARENT* = {12};
        LPD_TYPE_RGBA* = {};
        LPD_TYPE_COLORINDEX* = {0};
        WGL_SWAP_MAIN_PLANE* = {0};
        WGL_SWAP_OVERLAY1* = {1};
        WGL_SWAP_OVERLAY2* = {2};
        WGL_SWAP_OVERLAY3* = {3};
        WGL_SWAP_OVERLAY4* = {4};
        WGL_SWAP_OVERLAY5* = {5};
        WGL_SWAP_OVERLAY6* = {6};
        WGL_SWAP_OVERLAY7* = {7};
        WGL_SWAP_OVERLAY8* = {8};
        WGL_SWAP_OVERLAY9* = {9};
        WGL_SWAP_OVERLAY10* = {10};
        WGL_SWAP_OVERLAY11* = {11};
        WGL_SWAP_OVERLAY12* = {12};
        WGL_SWAP_OVERLAY13* = {13};
        WGL_SWAP_OVERLAY14* = {14};
        WGL_SWAP_OVERLAY15* = {15};
        WGL_SWAP_UNDERLAY1* = {16};
        WGL_SWAP_UNDERLAY2* = {17};
        WGL_SWAP_UNDERLAY3* = {18};
        WGL_SWAP_UNDERLAY4* = {19};
        WGL_SWAP_UNDERLAY5* = {20};
        WGL_SWAP_UNDERLAY6* = {21};
        WGL_SWAP_UNDERLAY7* = {22};
        WGL_SWAP_UNDERLAY8* = {23};
        WGL_SWAP_UNDERLAY9* = {24};
        WGL_SWAP_UNDERLAY10* = {25};
        WGL_SWAP_UNDERLAY11* = {26};
        WGL_SWAP_UNDERLAY12* = {27};
        WGL_SWAP_UNDERLAY13* = {28};
        WGL_SWAP_UNDERLAY14* = {29};
        WGL_SWAP_UNDERLAY15* = {30};
        RT_CURSOR* = 1 (* {0} *);
        RT_BITMAP* = 2 (* {1} *);
        RT_ICON* = 3 (* {0, 1} *);
        RT_MENU* = 4 (* {2} *);
        RT_DIALOG* = 5 (* {0, 2} *);
        RT_STRING* = 6 (* {1, 2} *);
        RT_FONTDIR* = 7 (* {0..2} *);
        RT_FONT* = 8 (* {3} *);
        RT_ACCELERATOR* = 9 (* {0, 3} *);
        RT_RCDATA* = 10 (* {1, 3} *);
        RT_MESSAGETABLE* = 11 (* {0, 1, 3} *);
        DIFFERENCE* = 11 (* {0, 1, 3} *);
        RT_GROUP_CURSOR* = 12 (* {2, 3} *);
        RT_GROUP_ICON* = 14 (* {1..3} *);
        RT_VERSION* = 16 (* {4} *);
        RT_DLGINCLUDE* = 17 (* {0, 4} *);
        RT_PLUGPLAY* = 19 (* {0, 1, 4} *);
        RT_VXD* = 20 (* {2, 4} *);
        SB_HORZ* = 0 (* {} *);
        SB_VERT* = 1 (* {0} *);
        SB_CTL* = 2 (* {1} *);
        SB_BOTH* = 3 (* {0, 1} *);
        SB_LINEUP* = 0 (* {} *);
        SB_LINELEFT* = 0 (* {} *);
        SB_LINEDOWN* = 1 (* {0} *);
        SB_LINERIGHT* = 1 (* {0} *);
        SB_PAGEUP* = 2 (* {1} *);
        SB_PAGELEFT* = 2 (* {1} *);
        SB_PAGEDOWN* = 3 (* {0, 1} *);
        SB_PAGERIGHT* = 3 (* {0, 1} *);
        SB_THUMBPOSITION* = 4 (* {2} *);
        SB_THUMBTRACK* = 5 (* {0, 2} *);
        SB_TOP* = 6 (* {1, 2} *);
        SB_LEFT* = 6 (* {1, 2} *);
        SB_BOTTOM* = 7 (* {0..2} *);
        SB_RIGHT* = 7 (* {0..2} *);
        SB_ENDSCROLL* = 8 (* {3} *);
        SW_HIDE* = 0 (* {} *);
        SW_SHOWNORMAL* = 1 (* {0} *);
        SW_NORMAL* = 1 (* {0} *);
        SW_SHOWMINIMIZED* = 2 (* {1} *);
        SW_SHOWMAXIMIZED* = 3 (* {0, 1} *);
        SW_MAXIMIZE* = 3 (* {0, 1} *);
        SW_SHOWNOACTIVATE* = 4 (* {2} *);
        SW_SHOW* = 5 (* {0, 2} *);
        SW_MINIMIZE* = 6 (* {1, 2} *);
        SW_SHOWMINNOACTIVE* = 7 (* {0..2} *);
        SW_SHOWNA* = 8 (* {3} *);
        SW_RESTORE* = 9 (* {0, 3} *);
        SW_SHOWDEFAULT* = 10 (* {1, 3} *);
        SW_MAX* = 10 (* {1, 3} *);
        HIDE_WINDOW* = 0 (* {} *);
        SHOW_OPENWINDOW* = 1 (* {0} *);
        SHOW_ICONWINDOW* = 2 (* {1} *);
        SHOW_FULLSCREEN* = 3 (* {0, 1} *);
        SHOW_OPENNOACTIVATE* = 4 (* {2} *);
        SW_PARENTCLOSING* = 1 (* {0} *);
        SW_OTHERZOOM* = 2 (* {1} *);
        SW_PARENTOPENING* = 3 (* {0, 1} *);
        SW_OTHERUNZOOM* = 4 (* {2} *);
        KF_EXTENDED* = 256 (* {8} *);
        KF_DLGMODE* = 2048 (* {11} *);
        KF_MENUMODE* = 4096 (* {12} *);
        KF_ALTDOWN* = 8192 (* {13} *);
        KF_REPEAT* = 16384 (* {14} *);
        KF_UP* = 32768 (* {15} *);
        VK_LBUTTON* = 1 (* {0} *);
        VK_RBUTTON* = 2 (* {1} *);
        VK_CANCEL* = 3 (* {0, 1} *);
        VK_MBUTTON* = 4 (* {2} *);
        VK_BACK* = 8 (* {3} *);
        VK_TAB* = 9 (* {0, 3} *);
        VK_CLEAR* = 12 (* {2, 3} *);
        VK_RETURN* = 13 (* {0, 2, 3} *);
        VK_SHIFT* = 16 (* {4} *);
        VK_CONTROL* = 17 (* {0, 4} *);
        VK_MENU* = 18 (* {1, 4} *);
        VK_PAUSE* = 19 (* {0, 1, 4} *);
        VK_CAPITAL* = 20 (* {2, 4} *);
        VK_ESCAPE* = 27 (* {0, 1, 3, 4} *);
        VK_SPACE* = 32 (* {5} *);
        VK_PRIOR* = 33 (* {0, 5} *);
        VK_NEXT* = 34 (* {1, 5} *);
        VK_END* = 35 (* {0, 1, 5} *);
        VK_HOME* = 36 (* {2, 5} *);
        VK_LEFT* = 37 (* {0, 2, 5} *);
        VK_UP* = 38 (* {1, 2, 5} *);
        VK_RIGHT* = 39 (* {0..2, 5} *);
        VK_DOWN* = 40 (* {3, 5} *);
        VK_SELECT* = 41 (* {0, 3, 5} *);
        VK_PRINT* = 42 (* {1, 3, 5} *);
        VK_EXECUTE* = 43 (* {0, 1, 3, 5} *);
        VK_SNAPSHOT* = 44 (* {2, 3, 5} *);
        VK_INSERT* = 45 (* {0, 2, 3, 5} *);
        VK_DELETE* = 46 (* {1..3, 5} *);
        VK_HELP* = 47 (* {0..3, 5} *);
        VK_LWIN* = 91 (* {0, 1, 3, 4, 6} *);
        VK_RWIN* = 92 (* {2..4, 6} *);
        VK_APPS* = 93 (* {0, 2..4, 6} *);
        VK_NUMPAD0* = 96 (* {5, 6} *);
        VK_NUMPAD1* = 97 (* {0, 5, 6} *);
        VK_NUMPAD2* = 98 (* {1, 5, 6} *);
        VK_NUMPAD3* = 99 (* {0, 1, 5, 6} *);
        VK_NUMPAD4* = 100 (* {2, 5, 6} *);
        VK_NUMPAD5* = 101 (* {0, 2, 5, 6} *);
        VK_NUMPAD6* = 102 (* {1, 2, 5, 6} *);
        VK_NUMPAD7* = 103 (* {0..2, 5, 6} *);
        VK_NUMPAD8* = 104 (* {3, 5, 6} *);
        VK_NUMPAD9* = 105 (* {0, 3, 5, 6} *);
        VK_MULTIPLY* = 106 (* {1, 3, 5, 6} *);
        VK_ADD* = 107 (* {0, 1, 3, 5, 6} *);
        VK_SEPARATOR* = 108 (* {2, 3, 5, 6} *);
        VK_SUBTRACT* = 109 (* {0, 2, 3, 5, 6} *);
        VK_DECIMAL* = 110 (* {1..3, 5, 6} *);
        VK_DIVIDE* = 111 (* {0..3, 5, 6} *);
        VK_F1* = 112 (* {4..6} *);
        VK_F2* = 113 (* {0, 4..6} *);
        VK_F3* = 114 (* {1, 4..6} *);
        VK_F4* = 115 (* {0, 1, 4..6} *);
        VK_F5* = 116 (* {2, 4..6} *);
        VK_F6* = 117 (* {0, 2, 4..6} *);
        VK_F7* = 118 (* {1, 2, 4..6} *);
        VK_F8* = 119 (* {0..2, 4..6} *);
        VK_F9* = 120 (* {3..6} *);
        VK_F10* = 121 (* {0, 3..6} *);
        VK_F11* = 122 (* {1, 3..6} *);
        VK_F12* = 123 (* {0, 1, 3..6} *);
        VK_F13* = 124 (* {2..6} *);
        VK_F14* = 125 (* {0, 2..6} *);
        VK_F15* = 126 (* {1..6} *);
        VK_F16* = 127 (* {0..6} *);
        VK_F17* = 128 (* {7} *);
        VK_F18* = 129 (* {0, 7} *);
        VK_F19* = 130 (* {1, 7} *);
        VK_F20* = 131 (* {0, 1, 7} *);
        VK_F21* = 132 (* {2, 7} *);
        VK_F22* = 133 (* {0, 2, 7} *);
        VK_F23* = 134 (* {1, 2, 7} *);
        VK_F24* = 135 (* {0..2, 7} *);
        VK_NUMLOCK* = 144 (* {4, 7} *);
        VK_SCROLL* = 145 (* {0, 4, 7} *);
        VK_LSHIFT* = 160 (* {5, 7} *);
        VK_RSHIFT* = 161 (* {0, 5, 7} *);
        VK_LCONTROL* = 162 (* {1, 5, 7} *);
        VK_RCONTROL* = 163 (* {0, 1, 5, 7} *);
        VK_LMENU* = 164 (* {2, 5, 7} *);
        VK_RMENU* = 165 (* {0, 2, 5, 7} *);
        VK_PROCESSKEY* = 229 (* {0, 2, 5..7} *);
        VK_ATTN* = 246 (* {1, 2, 4..7} *);
        VK_CRSEL* = 247 (* {0..2, 4..7} *);
        VK_EXSEL* = 248 (* {3..7} *);
        VK_EREOF* = 249 (* {0, 3..7} *);
        VK_PLAY* = 250 (* {1, 3..7} *);
        VK_ZOOM* = 251 (* {0, 1, 3..7} *);
        VK_NONAME* = 252 (* {2..7} *);
        VK_PA1* = 253 (* {0, 2..7} *);
        VK_OEM_CLEAR* = 254 (* {1..7} *);
        WH_MIN* = -1 (* {0..31} *);
        WH_MSGFILTER* = -1 (* {0..31} *);
        WH_JOURNALRECORD* = 0 (* {} *);
        WH_JOURNALPLAYBACK* = 1 (* {0} *);
        WH_KEYBOARD* = 2 (* {1} *);
        WH_GETMESSAGE* = 3 (* {0, 1} *);
        WH_CALLWNDPROC* = 4 (* {2} *);
        WH_CBT* = 5 (* {0, 2} *);
        WH_SYSMSGFILTER* = 6 (* {1, 2} *);
        WH_MOUSE* = 7 (* {0..2} *);
        WH_HARDWARE* = 8 (* {3} *);
        WH_DEBUG* = 9 (* {0, 3} *);
        WH_SHELL* = 10 (* {1, 3} *);
        WH_FOREGROUNDIDLE* = 11 (* {0, 1, 3} *);
        WH_CALLWNDPROCRET* = 12 (* {2, 3} *);
        WH_MAX* = 12 (* {2, 3} *);
        WH_MINHOOK* = -1 (* {0..31} *);
        WH_MAXHOOK* = 12 (* {2, 3} *);
        HC_ACTION* = 0 (* {} *);
        HC_GETNEXT* = 1 (* {0} *);
        HC_SKIP* = 2 (* {1} *);
        HC_NOREMOVE* = 3 (* {0, 1} *);
        HC_NOREM* = 3 (* {0, 1} *);
        HC_SYSMODALON* = 4 (* {2} *);
        HC_SYSMODALOFF* = 5 (* {0, 2} *);
        HCBT_MOVESIZE* = 0 (* {} *);
        HCBT_MINMAX* = 1 (* {0} *);
        HCBT_QS* = 2 (* {1} *);
        HCBT_CREATEWND* = 3 (* {0, 1} *);
        HCBT_DESTROYWND* = 4 (* {2} *);
        HCBT_ACTIVATE* = 5 (* {0, 2} *);
        HCBT_CLICKSKIPPED* = 6 (* {1, 2} *);
        HCBT_KEYSKIPPED* = 7 (* {0..2} *);
        HCBT_SYSCOMMAND* = 8 (* {3} *);
        HCBT_SETFOCUS* = 9 (* {0, 3} *);
        MSGF_DIALOGBOX* = 0 (* {} *);
        MSGF_MESSAGEBOX* = 1 (* {0} *);
        MSGF_MENU* = 2 (* {1} *);
        MSGF_MOVE* = 3 (* {0, 1} *);
        MSGF_SIZE* = 4 (* {2} *);
        MSGF_SCROLLBAR* = 5 (* {0, 2} *);
        MSGF_NEXTWINDOW* = 6 (* {1, 2} *);
        MSGF_MAINLOOP* = 8 (* {3} *);
        MSGF_MAX* = 8 (* {3} *);
        MSGF_USER* = 4096 (* {12} *);
        HSHELL_WINDOWCREATED* = 1 (* {0} *);
        HSHELL_WINDOWDESTROYED* = 2 (* {1} *);
        HSHELL_ACTIVATESHELLWINDOW* = 3 (* {0, 1} *);
        HSHELL_WINDOWACTIVATED* = 4 (* {2} *);
        HSHELL_GETMINRECT* = 5 (* {0, 2} *);
        HSHELL_REDRAW* = 6 (* {1, 2} *);
        HSHELL_TASKMAN* = 7 (* {0..2} *);
        HSHELL_LANGUAGE* = 8 (* {3} *);
        HKL_PREV* = 0 (* {} *);
        HKL_NEXT* = 1 (* {0} *);
        KLF_ACTIVATE* = 1 (* {0} *);
        KLF_SUBSTITUTE_OK* = 2 (* {1} *);
        KLF_UNLOADPREVIOUS* = 4 (* {2} *);
        KLF_REORDER* = 8 (* {3} *);
        KLF_REPLACELANG* = 16 (* {4} *);
        KLF_NOTELLSHELL* = 128 (* {7} *);
        KL_NAMELENGTH* = 9 (* {0, 3} *);
        DESKTOP_READOBJECTS* = {0};
        DESKTOP_CREATEWINDOW* = {1};
        DESKTOP_CREATEMENU* = {2};
        DESKTOP_HOOKCONTROL* = {3};
        DESKTOP_JOURNALRECORD* = {4};
        DESKTOP_JOURNALPLAYBACK* = {5};
        DESKTOP_ENUMERATE* = {6};
        DESKTOP_WRITEOBJECTS* = {7};
        DESKTOP_SWITCHDESKTOP* = {8};
        DF_ALLOWOTHERACCOUNTHOOK* = {0};
        WINSTA_ENUMDESKTOPS* = {0};
        WINSTA_READATTRIBUTES* = {1};
        WINSTA_ACCESSCLIPBOARD* = {2};
        WINSTA_CREATEDESKTOP* = {3};
        WINSTA_WRITEATTRIBUTES* = {4};
        WINSTA_ACCESSGLOBALATOMS* = {5};
        WINSTA_EXITWINDOWS* = {6};
        WINSTA_ENUMERATE* = {8};
        WINSTA_READSCREEN* = {9};
        WSF_VISIBLE* = {0};
        UOI_FLAGS* = 1 (* {0} *);
        UOI_NAME* = 2 (* {1} *);
        UOI_TYPE* = 3 (* {0, 1} *);
        UOI_USER_SID* = 4 (* {2} *);
        GWL_WNDPROC* = -4 (* {2..31} *);
        GWL_HINSTANCE* = -6 (* {1, 3..31} *);
        GWL_HWNDPARENT* = -8 (* {3..31} *);
        GWL_STYLE* = -16 (* {4..31} *);
        GWL_EXSTYLE* = -20 (* {2, 3, 5..31} *);
        GWL_USERDATA* = -21 (* {0, 1, 3, 5..31} *);
        GWL_ID* = -12 (* {2, 4..31} *);
        GCL_MENUNAME* = -8 (* {3..31} *);
        GCL_HBRBACKGROUND* = -10 (* {1, 2, 4..31} *);
        GCL_HCURSOR* = -12 (* {2, 4..31} *);
        GCL_HICON* = -14 (* {1, 4..31} *);
        GCL_HMODULE* = -16 (* {4..31} *);
        GCL_CBWNDEXTRA* = -18 (* {1..3, 5..31} *);
        GCL_CBCLSEXTRA* = -20 (* {2, 3, 5..31} *);
        GCL_WNDPROC* = -24 (* {3, 5..31} *);
        GCL_STYLE* = -26 (* {1, 2, 5..31} *);
        GCW_ATOM* = -32 (* {5..31} *);
        GCL_HICONSM* = -34 (* {1..4, 6..31} *);
        WM_NULL* = 0 (* {} *);
        WM_CREATE* = 1 (* {0} *);
        WM_DESTROY* = 2 (* {1} *);
        WM_MOVE* = 3 (* {0, 1} *);
        WM_SIZE* = 5 (* {0, 2} *);
        WM_ACTIVATE* = 6 (* {1, 2} *);
        WA_INACTIVE* = 0 (* {} *);
        WA_ACTIVE* = 1 (* {0} *);
        WA_CLICKACTIVE* = 2 (* {1} *);
        WM_SETFOCUS* = 7 (* {0..2} *);
        WM_KILLFOCUS* = 8 (* {3} *);
        WM_ENABLE* = 10 (* {1, 3} *);
        WM_SETREDRAW* = 11 (* {0, 1, 3} *);
        WM_SETTEXT* = 12 (* {2, 3} *);
        WM_GETTEXT* = 13 (* {0, 2, 3} *);
        WM_GETTEXTLENGTH* = 14 (* {1..3} *);
        WM_PAINT* = 15 (* {0..3} *);
        WM_CLOSE* = 16 (* {4} *);
        WM_QUERYENDSESSION* = 17 (* {0, 4} *);
        WM_QUIT* = 18 (* {1, 4} *);
        WM_QUERYOPEN* = 19 (* {0, 1, 4} *);
        WM_ERASEBKGND* = 20 (* {2, 4} *);
        WM_SYSCOLORCHANGE* = 21 (* {0, 2, 4} *);
        WM_ENDSESSION* = 22 (* {1, 2, 4} *);
        WM_SHOWWINDOW* = 24 (* {3, 4} *);
        WM_WININICHANGE* = 26 (* {1, 3, 4} *);
        WM_SETTINGCHANGE* = 26 (* {1, 3, 4} *);
        WM_DEVMODECHANGE* = 27 (* {0, 1, 3, 4} *);
        WM_ACTIVATEAPP* = 28 (* {2..4} *);
        WM_FONTCHANGE* = 29 (* {0, 2..4} *);
        WM_TIMECHANGE* = 30 (* {1..4} *);
        WM_CANCELMODE* = 31 (* {0..4} *);
        WM_SETCURSOR* = 32 (* {5} *);
        WM_MOUSEACTIVATE* = 33 (* {0, 5} *);
        WM_CHILDACTIVATE* = 34 (* {1, 5} *);
        WM_QUEUESYNC* = 35 (* {0, 1, 5} *);
        WM_GETMINMAXINFO* = 36 (* {2, 5} *);
        WM_PAINTICON* = 38 (* {1, 2, 5} *);
        WM_ICONERASEBKGND* = 39 (* {0..2, 5} *);
        WM_NEXTDLGCTL* = 40 (* {3, 5} *);
        WM_SPOOLERSTATUS* = 42 (* {1, 3, 5} *);
        WM_DRAWITEM* = 43 (* {0, 1, 3, 5} *);
        WM_MEASUREITEM* = 44 (* {2, 3, 5} *);
        WM_DELETEITEM* = 45 (* {0, 2, 3, 5} *);
        WM_VKEYTOITEM* = 46 (* {1..3, 5} *);
        WM_CHARTOITEM* = 47 (* {0..3, 5} *);
        WM_SETFONT* = 48 (* {4, 5} *);
        WM_GETFONT* = 49 (* {0, 4, 5} *);
        WM_SETHOTKEY* = 50 (* {1, 4, 5} *);
        WM_GETHOTKEY* = 51 (* {0, 1, 4, 5} *);
        WM_QUERYDRAGICON* = 55 (* {0..2, 4, 5} *);
        WM_COMPAREITEM* = 57 (* {0, 3..5} *);
        WM_COMPACTING* = 65 (* {0, 6} *);
        WM_COMMNOTIFY* = 68 (* {2, 6} *);
        WM_WINDOWPOSCHANGING* = 70 (* {1, 2, 6} *);
        WM_WINDOWPOSCHANGED* = 71 (* {0..2, 6} *);
        WM_POWER* = 72 (* {3, 6} *);
        PWR_OK* = 1 (* {0} *);
        PWR_FAIL* = -1 (* {0..31} *);
        PWR_SUSPENDREQUEST* = 1 (* {0} *);
        PWR_SUSPENDRESUME* = 2 (* {1} *);
        PWR_CRITICALRESUME* = 3 (* {0, 1} *);
        WM_COPYDATA* = 74 (* {1, 3, 6} *);
        WM_CANCELJOURNAL* = 75 (* {0, 1, 3, 6} *);
        WM_NOTIFY* = 78 (* {1..3, 6} *);
        WM_INPUTLANGCHANGEREQUEST* = 80 (* {4, 6} *);
        WM_INPUTLANGCHANGE* = 81 (* {0, 4, 6} *);
        WM_TCARD* = 82 (* {1, 4, 6} *);
        WM_HELP* = 83 (* {0, 1, 4, 6} *);
        WM_USERCHANGED* = 84 (* {2, 4, 6} *);
        WM_NOTIFYFORMAT* = 85 (* {0, 2, 4, 6} *);
        NFR_ANSI* = 1 (* {0} *);
        NFR_UNICODE* = 2 (* {1} *);
        NF_QUERY* = 3 (* {0, 1} *);
        NF_REQUERY* = 4 (* {2} *);
        WM_CONTEXTMENU* = 123 (* {0, 1, 3..6} *);
        WM_STYLECHANGING* = 124 (* {2..6} *);
        WM_STYLECHANGED* = 125 (* {0, 2..6} *);
        WM_DISPLAYCHANGE* = 126 (* {1..6} *);
        WM_GETICON* = 127 (* {0..6} *);
        WM_SETICON* = 128 (* {7} *);
        WM_NCCREATE* = 129 (* {0, 7} *);
        WM_NCDESTROY* = 130 (* {1, 7} *);
        WM_NCCALCSIZE* = 131 (* {0, 1, 7} *);
        WM_NCHITTEST* = 132 (* {2, 7} *);
        WM_NCPAINT* = 133 (* {0, 2, 7} *);
        WM_NCACTIVATE* = 134 (* {1, 2, 7} *);
        WM_GETDLGCODE* = 135 (* {0..2, 7} *);
        WM_NCMOUSEMOVE* = 160 (* {5, 7} *);
        WM_NCLBUTTONDOWN* = 161 (* {0, 5, 7} *);
        WM_NCLBUTTONUP* = 162 (* {1, 5, 7} *);
        WM_NCLBUTTONDBLCLK* = 163 (* {0, 1, 5, 7} *);
        WM_NCRBUTTONDOWN* = 164 (* {2, 5, 7} *);
        WM_NCRBUTTONUP* = 165 (* {0, 2, 5, 7} *);
        WM_NCRBUTTONDBLCLK* = 166 (* {1, 2, 5, 7} *);
        WM_NCMBUTTONDOWN* = 167 (* {0..2, 5, 7} *);
        WM_NCMBUTTONUP* = 168 (* {3, 5, 7} *);
        WM_NCMBUTTONDBLCLK* = 169 (* {0, 3, 5, 7} *);
        WM_KEYFIRST* = 256 (* {8} *);
        WM_KEYDOWN* = 256 (* {8} *);
        WM_KEYUP* = 257 (* {0, 8} *);
        WM_CHAR* = 258 (* {1, 8} *);
        WM_DEADCHAR* = 259 (* {0, 1, 8} *);
        WM_SYSKEYDOWN* = 260 (* {2, 8} *);
        WM_SYSKEYUP* = 261 (* {0, 2, 8} *);
        WM_SYSCHAR* = 262 (* {1, 2, 8} *);
        WM_SYSDEADCHAR* = 263 (* {0..2, 8} *);
        WM_UNICHAR* = 265;
        WM_KEYLAST* = 265;
        WM_IME_STARTCOMPOSITION* = 269 (* {0, 2, 3, 8} *);
        WM_IME_ENDCOMPOSITION* = 270 (* {1..3, 8} *);
        WM_IME_COMPOSITION* = 271 (* {0..3, 8} *);
        WM_IME_KEYLAST* = 271 (* {0..3, 8} *);
        WM_INITDIALOG* = 272 (* {4, 8} *);
        WM_COMMAND* = 273 (* {0, 4, 8} *);
        WM_SYSCOMMAND* = 274 (* {1, 4, 8} *);
        WM_TIMER* = 275 (* {0, 1, 4, 8} *);
        WM_HSCROLL* = 276 (* {2, 4, 8} *);
        WM_VSCROLL* = 277 (* {0, 2, 4, 8} *);
        WM_INITMENU* = 278 (* {1, 2, 4, 8} *);
        WM_INITMENUPOPUP* = 279 (* {0..2, 4, 8} *);
        WM_MENUSELECT* = 287 (* {0..4, 8} *);
        WM_MENUCHAR* = 288 (* {5, 8} *);
        WM_ENTERIDLE* = 289 (* {0, 5, 8} *);
        WM_CTLCOLORMSGBOX* = 306 (* {1, 4, 5, 8} *);
        WM_CTLCOLOREDIT* = 307 (* {0, 1, 4, 5, 8} *);
        WM_CTLCOLORLISTBOX* = 308 (* {2, 4, 5, 8} *);
        WM_CTLCOLORBTN* = 309 (* {0, 2, 4, 5, 8} *);
        WM_CTLCOLORDLG* = 310 (* {1, 2, 4, 5, 8} *);
        WM_CTLCOLORSCROLLBAR* = 311 (* {0..2, 4, 5, 8} *);
        WM_CTLCOLORSTATIC* = 312 (* {3..5, 8} *);
        WM_MOUSEFIRST* = 512 (* {9} *);
        WM_MOUSEMOVE* = 512 (* {9} *);
        WM_LBUTTONDOWN* = 513 (* {0, 9} *);
        WM_LBUTTONUP* = 514 (* {1, 9} *);
        WM_LBUTTONDBLCLK* = 515 (* {0, 1, 9} *);
        WM_RBUTTONDOWN* = 516 (* {2, 9} *);
        WM_RBUTTONUP* = 517 (* {0, 2, 9} *);
        WM_RBUTTONDBLCLK* = 518 (* {1, 2, 9} *);
        WM_MBUTTONDOWN* = 519 (* {0..2, 9} *);
        WM_MBUTTONUP* = 520 (* {3, 9} *);
        WM_MBUTTONDBLCLK* = 521 (* {0, 3, 9} *);
        WM_MOUSELAST* = 521 (* {0, 3, 9} *);
        WM_MOUSEWHEEL* = 522;
        WM_PARENTNOTIFY* = 528 (* {4, 9} *);
        MENULOOP_WINDOW* = 0 (* {} *);
        MENULOOP_POPUP* = 1 (* {0} *);
        WM_ENTERMENULOOP* = 529 (* {0, 4, 9} *);
        WM_EXITMENULOOP* = 530 (* {1, 4, 9} *);
        WM_NEXTMENU* = 531 (* {0, 1, 4, 9} *);
        WM_SIZING* = 532 (* {2, 4, 9} *);
        WM_CAPTURECHANGED* = 533 (* {0, 2, 4, 9} *);
        WM_MOVING* = 534 (* {1, 2, 4, 9} *);
        WM_POWERBROADCAST* = 536 (* {3, 4, 9} *);
        WM_DEVICECHANGE* = 537 (* {0, 3, 4, 9} *);
        WM_IME_SETCONTEXT* = 641 (* {0, 7, 9} *);
        WM_IME_NOTIFY* = 642 (* {1, 7, 9} *);
        WM_IME_CONTROL* = 643 (* {0, 1, 7, 9} *);
        WM_IME_COMPOSITIONFULL* = 644 (* {2, 7, 9} *);
        WM_IME_SELECT* = 645 (* {0, 2, 7, 9} *);
        WM_IME_CHAR* = 646 (* {1, 2, 7, 9} *);
        WM_IME_KEYDOWN* = 656 (* {4, 7, 9} *);
        WM_IME_KEYUP* = 657 (* {0, 4, 7, 9} *);
        WM_MDICREATE* = 544 (* {5, 9} *);
        WM_MDIDESTROY* = 545 (* {0, 5, 9} *);
        WM_MDIACTIVATE* = 546 (* {1, 5, 9} *);
        WM_MDIRESTORE* = 547 (* {0, 1, 5, 9} *);
        WM_MDINEXT* = 548 (* {2, 5, 9} *);
        WM_MDIMAXIMIZE* = 549 (* {0, 2, 5, 9} *);
        WM_MDITILE* = 550 (* {1, 2, 5, 9} *);
        WM_MDICASCADE* = 551 (* {0..2, 5, 9} *);
        WM_MDIICONARRANGE* = 552 (* {3, 5, 9} *);
        WM_MDIGETACTIVE* = 553 (* {0, 3, 5, 9} *);
        WM_MDISETMENU* = 560 (* {4, 5, 9} *);
        WM_ENTERSIZEMOVE* = 561 (* {0, 4, 5, 9} *);
        WM_EXITSIZEMOVE* = 562 (* {1, 4, 5, 9} *);
        WM_DROPFILES* = 563 (* {0, 1, 4, 5, 9} *);
        WM_MDIREFRESHMENU* = 564 (* {2, 4, 5, 9} *);
        WM_CUT* = 768 (* {8, 9} *);
        WM_COPY* = 769 (* {0, 8, 9} *);
        WM_PASTE* = 770 (* {1, 8, 9} *);
        WM_CLEAR* = 771 (* {0, 1, 8, 9} *);
        WM_UNDO* = 772 (* {2, 8, 9} *);
        WM_RENDERFORMAT* = 773 (* {0, 2, 8, 9} *);
        WM_RENDERALLFORMATS* = 774 (* {1, 2, 8, 9} *);
        WM_DESTROYCLIPBOARD* = 775 (* {0..2, 8, 9} *);
        WM_DRAWCLIPBOARD* = 776 (* {3, 8, 9} *);
        WM_PAINTCLIPBOARD* = 777 (* {0, 3, 8, 9} *);
        WM_VSCROLLCLIPBOARD* = 778 (* {1, 3, 8, 9} *);
        WM_SIZECLIPBOARD* = 779 (* {0, 1, 3, 8, 9} *);
        WM_ASKCBFORMATNAME* = 780 (* {2, 3, 8, 9} *);
        WM_CHANGECBCHAIN* = 781 (* {0, 2, 3, 8, 9} *);
        WM_HSCROLLCLIPBOARD* = 782 (* {1..3, 8, 9} *);
        WM_QUERYNEWPALETTE* = 783 (* {0..3, 8, 9} *);
        WM_PALETTEISCHANGING* = 784 (* {4, 8, 9} *);
        WM_PALETTECHANGED* = 785 (* {0, 4, 8, 9} *);
        WM_HOTKEY* = 786 (* {1, 4, 8, 9} *);
        WM_PRINT* = 791 (* {0..2, 4, 8, 9} *);
        WM_PRINTCLIENT* = 792 (* {3, 4, 8, 9} *);
        WM_HANDHELDFIRST* = 856 (* {3, 4, 6, 8, 9} *);
        WM_HANDHELDLAST* = 863 (* {0..4, 6, 8, 9} *);
        WM_AFXFIRST* = 864 (* {5, 6, 8, 9} *);
        WM_AFXLAST* = 895 (* {0..6, 8, 9} *);
        WM_PENWINFIRST* = 896 (* {7..9} *);
        WM_PENWINLAST* = 911 (* {0..3, 7..9} *);
        WM_APP* = 32768 (* {15} *);
        WM_USER* = 1024 (* {10} *);
        WMSZ_LEFT* = 1 (* {0} *);
        WMSZ_RIGHT* = 2 (* {1} *);
        WMSZ_TOP* = 3 (* {0, 1} *);
        WMSZ_TOPLEFT* = 4 (* {2} *);
        WMSZ_TOPRIGHT* = 5 (* {0, 2} *);
        WMSZ_BOTTOM* = 6 (* {1, 2} *);
        WMSZ_BOTTOMLEFT* = 7 (* {0..2} *);
        WMSZ_BOTTOMRIGHT* = 8 (* {3} *);
        UNICODE_NOCHAR* = 0FFFFH;
        ST_BEGINSWP* = 0 (* {} *);
        ST_ENDSWP* = 1 (* {0} *);
        HTERROR* = -2 (* {1..31} *);
        HTTRANSPARENT* = -1 (* {0..31} *);
        HTNOWHERE* = 0 (* {} *);
        HTCLIENT* = 1 (* {0} *);
        HTCAPTION* = 2 (* {1} *);
        HTSYSMENU* = 3 (* {0, 1} *);
        HTGROWBOX* = 4 (* {2} *);
        HTSIZE* = 4 (* {2} *);
        HTMENU* = 5 (* {0, 2} *);
        HTHSCROLL* = 6 (* {1, 2} *);
        HTVSCROLL* = 7 (* {0..2} *);
        HTMINBUTTON* = 8 (* {3} *);
        HTMAXBUTTON* = 9 (* {0, 3} *);
        HTLEFT* = 10 (* {1, 3} *);
        HTRIGHT* = 11 (* {0, 1, 3} *);
        HTTOP* = 12 (* {2, 3} *);
        HTTOPLEFT* = 13 (* {0, 2, 3} *);
        HTTOPRIGHT* = 14 (* {1..3} *);
        HTBOTTOM* = 15 (* {0..3} *);
        HTBOTTOMLEFT* = 16 (* {4} *);
        HTBOTTOMRIGHT* = 17 (* {0, 4} *);
        HTBORDER* = 18 (* {1, 4} *);
        HTREDUCE* = 8 (* {3} *);
        HTZOOM* = 9 (* {0, 3} *);
        HTSIZEFIRST* = 10 (* {1, 3} *);
        HTSIZELAST* = 17 (* {0, 4} *);
        HTOBJECT* = 19 (* {0, 1, 4} *);
        HTCLOSE* = 20 (* {2, 4} *);
        HTHELP* = 21 (* {0, 2, 4} *);
        SMTO_NORMAL* = 0 (* {} *);
        SMTO_BLOCK* = 1 (* {0} *);
        SMTO_ABORTIFHUNG* = 2 (* {1} *);
        MA_ACTIVATE* = 1 (* {0} *);
        MA_ACTIVATEANDEAT* = 2 (* {1} *);
        MA_NOACTIVATE* = 3 (* {0, 1} *);
        MA_NOACTIVATEANDEAT* = 4 (* {2} *);
        ICON_SMALL* = 0 (* {} *);
        ICON_BIG* = 1 (* {0} *);
        SIZE_RESTORED* = 0 (* {} *);
        SIZE_MINIMIZED* = 1 (* {0} *);
        SIZE_MAXIMIZED* = 2 (* {1} *);
        SIZE_MAXSHOW* = 3 (* {0, 1} *);
        SIZE_MAXHIDE* = 4 (* {2} *);
        SIZENORMAL* = 0 (* {} *);
        SIZEICONIC* = 1 (* {0} *);
        SIZEFULLSCREEN* = 2 (* {1} *);
        SIZEZOOMSHOW* = 3 (* {0, 1} *);
        SIZEZOOMHIDE* = 4 (* {2} *);
        WVR_ALIGNTOP* = {4};
        WVR_ALIGNLEFT* = {5};
        WVR_ALIGNBOTTOM* = {6};
        WVR_ALIGNRIGHT* = {7};
        WVR_HREDRAW* = {8};
        WVR_VREDRAW* = {9};
        WVR_REDRAW* = {8, 9};
        WVR_VALIDRECTS* = {10};
        MK_LBUTTON* = {0};
        MK_RBUTTON* = {1};
        MK_SHIFT* = {2};
        MK_CONTROL* = {3};
        MK_MBUTTON* = {4};
        WS_OVERLAPPED* = {};
        WS_POPUP* = {31};
        WS_CHILD* = {30};
        WS_MINIMIZE* = {29};
        WS_VISIBLE* = {28};
        WS_DISABLED* = {27};
        WS_CLIPSIBLINGS* = {26};
        WS_CLIPCHILDREN* = {25};
        WS_MAXIMIZE* = {24};
        WS_CAPTION* = {22, 23};
        WS_BORDER* = {23};
        WS_DLGFRAME* = {22};
        WS_VSCROLL* = {21};
        WS_HSCROLL* = {20};
        WS_SYSMENU* = {19};
        WS_THICKFRAME* = {18};
        WS_GROUP* = {17};
        WS_TABSTOP* = {16};
        WS_MINIMIZEBOX* = {17};
        WS_MAXIMIZEBOX* = {16};
        WS_TILED* = {};
        WS_ICONIC* = {29};
        WS_SIZEBOX* = {18};
        WS_TILEDWINDOW* = {16..19, 22, 23};
        WS_OVERLAPPEDWINDOW* = {16..19, 22, 23};
        WS_POPUPWINDOW* = {19, 23, 31};
        WS_CHILDWINDOW* = {30};
        WS_EX_DLGMODALFRAME* = {0};
        WS_EX_NOPARENTNOTIFY* = {2};
        WS_EX_TOPMOST* = {3};
        WS_EX_ACCEPTFILES* = {4};
        WS_EX_TRANSPARENT* = {5};
        WS_EX_MDICHILD* = {6};
        WS_EX_TOOLWINDOW* = {7};
        WS_EX_WINDOWEDGE* = {8};
        WS_EX_CLIENTEDGE* = {9};
        WS_EX_CONTEXTHELP* = {10};
        WS_EX_RIGHT* = {12};
        WS_EX_LEFT* = {};
        WS_EX_RTLREADING* = {13};
        WS_EX_LTRREADING* = {};
        WS_EX_LEFTSCROLLBAR* = {14};
        WS_EX_RIGHTSCROLLBAR* = {};
        WS_EX_CONTROLPARENT* = {16};
        WS_EX_STATICEDGE* = {17};
        WS_EX_APPWINDOW* = {18};
        WS_EX_OVERLAPPEDWINDOW* = {8, 9};
        WS_EX_PALETTEWINDOW* = {3, 7, 8};
        CS_VREDRAW* = {0};
        CS_HREDRAW* = {1};
        CS_KEYCVTWINDOW* = {2};
        CS_DBLCLKS* = {3};
        CS_OWNDC* = {5};
        CS_CLASSDC* = {6};
        CS_PARENTDC* = {7};
        CS_NOKEYCVT* = {8};
        CS_NOCLOSE* = {9};
        CS_SAVEBITS* = {11};
        CS_BYTEALIGNCLIENT* = {12};
        CS_BYTEALIGNWINDOW* = {13};
        CS_GLOBALCLASS* = {14};
        CS_IME* = {16};
        PRF_CHECKVISIBLE* = {0};
        PRF_NONCLIENT* = {1};
        PRF_CLIENT* = {2};
        PRF_ERASEBKGND* = {3};
        PRF_CHILDREN* = {4};
        PRF_OWNED* = {5};
        BDR_RAISEDOUTER* = {0};
        BDR_SUNKENOUTER* = {1};
        BDR_RAISEDINNER* = {2};
        BDR_SUNKENINNER* = {3};
        BDR_OUTER* = {0, 1};
        BDR_INNER* = {2, 3};
        BDR_RAISED* = {0, 2};
        BDR_SUNKEN* = {1, 3};
        EDGE_RAISED* = {0, 2};
        EDGE_SUNKEN* = {1, 3};
        EDGE_ETCHED* = {1, 2};
        EDGE_BUMP* = {0, 3};
        BF_LEFT* = {0};
        BF_TOP* = {1};
        BF_RIGHT* = {2};
        BF_BOTTOM* = {3};
        BF_TOPLEFT* = {0, 1};
        BF_TOPRIGHT* = {1, 2};
        BF_BOTTOMLEFT* = {0, 3};
        BF_BOTTOMRIGHT* = {2, 3};
        BF_RECT* = {0..3};
        BF_DIAGONAL* = {4};
        BF_DIAGONAL_ENDTOPRIGHT* = {1, 2, 4};
        BF_DIAGONAL_ENDTOPLEFT* = {0, 1, 4};
        BF_DIAGONAL_ENDBOTTOMLEFT* = {0, 3, 4};
        BF_DIAGONAL_ENDBOTTOMRIGHT* = {2..4};
        BF_MIDDLE* = {11};
        BF_SOFT* = {12};
        BF_ADJUST* = {13};
        BF_FLAT* = {14};
        BF_MONO* = {15};
        DFC_CAPTION* = 1 (* {0} *);
        DFC_MENU* = 2 (* {1} *);
        DFC_SCROLL* = 3 (* {0, 1} *);
        DFC_BUTTON* = 4 (* {2} *);
        DFCS_CAPTIONCLOSE* = {};
        DFCS_CAPTIONMIN* = {0};
        DFCS_CAPTIONMAX* = {1};
        DFCS_CAPTIONRESTORE* = {0, 1};
        DFCS_CAPTIONHELP* = {2};
        DFCS_MENUARROW* = {};
        DFCS_MENUCHECK* = {0};
        DFCS_MENUBULLET* = {1};
        DFCS_MENUARROWRIGHT* = {2};
        DFCS_SCROLLUP* = {};
        DFCS_SCROLLDOWN* = {0};
        DFCS_SCROLLLEFT* = {1};
        DFCS_SCROLLRIGHT* = {0, 1};
        DFCS_SCROLLCOMBOBOX* = {0, 2};
        DFCS_SCROLLSIZEGRIP* = {3};
        DFCS_SCROLLSIZEGRIPRIGHT* = {4};
        DFCS_BUTTONCHECK* = {};
        DFCS_BUTTONRADIOIMAGE* = {0};
        DFCS_BUTTONRADIOMASK* = {1};
        DFCS_BUTTONRADIO* = {2};
        DFCS_BUTTON3STATE* = {3};
        DFCS_BUTTONPUSH* = {4};
        DFCS_INACTIVE* = {8};
        DFCS_PUSHED* = {9};
        DFCS_CHECKED* = {10};
        DFCS_ADJUSTRECT* = {13};
        DFCS_FLAT* = {14};
        DFCS_MONO* = {15};
        DC_ACTIVE* = 1 (* {0} *);
        DC_SMALLCAP* = 2 (* {1} *);
        DC_ICON* = 4 (* {2} *);
        DC_TEXT* = 8 (* {3} *);
        DC_INBUTTON* = 16 (* {4} *);
        IDANI_OPEN* = 1 (* {0} *);
        IDANI_CLOSE* = 2 (* {1} *);
        IDANI_CAPTION* = 3 (* {0, 1} *);
        CF_TEXT* = 1 (* {0} *);
        CF_BITMAP* = 2 (* {1} *);
        CF_METAFILEPICT* = 3 (* {0, 1} *);
        CF_SYLK* = 4 (* {2} *);
        CF_DIF* = 5 (* {0, 2} *);
        CF_TIFF* = 6 (* {1, 2} *);
        CF_OEMTEXT* = 7 (* {0..2} *);
        CF_DIB* = 8 (* {3} *);
        CF_PALETTE* = 9 (* {0, 3} *);
        CF_PENDATA* = 10 (* {1, 3} *);
        CF_RIFF* = 11 (* {0, 1, 3} *);
        CF_WAVE* = 12 (* {2, 3} *);
        CF_UNICODETEXT* = 13 (* {0, 2, 3} *);
        CF_ENHMETAFILE* = 14 (* {1..3} *);
        CF_HDROP* = 15 (* {0..3} *);
        CF_LOCALE* = 16 (* {4} *);
        CF_MAX* = 17 (* {0, 4} *);
        CF_OWNERDISPLAY* = 128 (* {7} *);
        CF_DSPTEXT* = 129 (* {0, 7} *);
        CF_DSPBITMAP* = 130 (* {1, 7} *);
        CF_DSPMETAFILEPICT* = 131 (* {0, 1, 7} *);
        CF_DSPENHMETAFILE* = 142 (* {1..3, 7} *);
        CF_PRIVATEFIRST* = 512 (* {9} *);
        CF_PRIVATELAST* = 767 (* {0..7, 9} *);
        CF_GDIOBJFIRST* = 768 (* {8, 9} *);
        CF_GDIOBJLAST* = 1023 (* {0..9} *);
        FVIRTKEY* = 1 (* {0} *);
        FNOINVERT* = 2 (* {1} *);
        FSHIFT* = 4 (* {2} *);
        FCONTROL* = 8 (* {3} *);
        FALT* = 16 (* {4} *);
        WPF_SETMINPOSITION* = {0};
        WPF_RESTORETOMAXIMIZED* = {1};
        ODT_MENU* = {0};
        ODT_LISTBOX* = {1};
        ODT_COMBOBOX* = {0, 1};
        ODT_BUTTON* = {2};
        ODT_STATIC* = {0, 2};
        ODA_DRAWENTIRE* = {0};
        ODA_SELECT* = {1};
        ODA_FOCUS* = {2};
        ODS_SELECTED* = {0};
        ODS_GRAYED* = {1};
        ODS_DISABLED* = {2};
        ODS_CHECKED* = {3};
        ODS_FOCUS* = {4};
        ODS_DEFAULT* = {5};
        ODS_COMBOBOXEDIT* = {12};
        PM_NOREMOVE* = 0 (* {} *);
        PM_REMOVE* = 1 (* {0} *);
        PM_NOYIELD* = 2 (* {1} *);
        MOD_ALT* = {0};
        MOD_CONTROL* = {1};
        MOD_SHIFT* = {2};
        MOD_WIN* = {3};
        IDHOT_SNAPWINDOW* = -1 (* {0..31} *);
        IDHOT_SNAPDESKTOP* = -2 (* {1..31} *);
        EW_RESTARTWINDOWS* = 66 (* {1, 6} *);
        EW_REBOOTSYSTEM* = 67 (* {0, 1, 6} *);
        EW_EXITANDEXECAPP* = 68 (* {2, 6} *);
        EWX_LOGOFF* = {};
        EWX_SHUTDOWN* = {0};
        EWX_REBOOT* = {1};
        EWX_FORCE* = {2};
        EWX_POWEROFF* = {3};
        BSM_ALLCOMPONENTS* = {};
        BSM_VXDS* = {0};
        BSM_NETDRIVER* = {1};
        BSM_INSTALLABLEDRIVERS* = {2};
        BSM_APPLICATIONS* = {3};
        BSM_ALLDESKTOPS* = {4};
        BSF_QUERY* = {0};
        BSF_IGNORECURRENTTASK* = {1};
        BSF_FLUSHDISK* = {2};
        BSF_NOHANG* = {3};
        BSF_POSTMESSAGE* = {4};
        BSF_FORCEIFHUNG* = {5};
        BSF_NOTIMEOUTIFNOTHUNG* = {6};
        DBWF_LPARAMPOINTER* = 32768 (* {15} *);
        BROADCAST_QUERY_DENY* = 1112363332 (* {2, 6, 8, 12, 14, 16, 18, 19, 22, 25, 30} *);
        CW_USEDEFAULT* = 80000000H;
        SWP_NOSIZE* = {0};
        SWP_NOMOVE* = {1};
        SWP_NOZORDER* = {2};
        SWP_NOREDRAW* = {3};
        SWP_NOACTIVATE* = {4};
        SWP_FRAMECHANGED* = {5};
        SWP_SHOWWINDOW* = {6};
        SWP_HIDEWINDOW* = {7};
        SWP_NOCOPYBITS* = {8};
        SWP_NOOWNERZORDER* = {9};
        SWP_NOSENDCHANGING* = {10};
        SWP_DRAWFRAME* = {5};
        SWP_NOREPOSITION* = {9};
        SWP_DEFERERASE* = {13};
        SWP_ASYNCWINDOWPOS* = {14};
        DLGWINDOWEXTRA* = 30 (* {1..4} *);
        KEYEVENTF_EXTENDEDKEY* = {0};
        KEYEVENTF_KEYUP* = {1};
        MOUSEEVENTF_MOVE* = {0};
        MOUSEEVENTF_LEFTDOWN* = {1};
        MOUSEEVENTF_LEFTUP* = {2};
        MOUSEEVENTF_RIGHTDOWN* = {3};
        MOUSEEVENTF_RIGHTUP* = {4};
        MOUSEEVENTF_MIDDLEDOWN* = {5};
        MOUSEEVENTF_MIDDLEUP* = {6};
        MOUSEEVENTF_ABSOLUTE* = {15};
        MWMO_WAITALL* = {0};
        MWMO_ALERTABLE* = {1};
        QS_KEY* = {0};
        QS_MOUSEMOVE* = {1};
        QS_MOUSEBUTTON* = {2};
        QS_POSTMESSAGE* = {3};
        QS_TIMER* = {4};
        QS_PAINT* = {5};
        QS_SENDMESSAGE* = {6};
        QS_HOTKEY* = {7};
        QS_MOUSE* = {1, 2};
        QS_INPUT* = {0..2};
        QS_ALLEVENTS* = {0..5, 7};
        QS_ALLINPUT* = {0..7};
        SM_CXSCREEN* = 0 (* {} *);
        SM_CYSCREEN* = 1 (* {0} *);
        SM_CXVSCROLL* = 2 (* {1} *);
        SM_CYHSCROLL* = 3 (* {0, 1} *);
        SM_CYCAPTION* = 4 (* {2} *);
        SM_CXBORDER* = 5 (* {0, 2} *);
        SM_CYBORDER* = 6 (* {1, 2} *);
        SM_CXDLGFRAME* = 7 (* {0..2} *);
        SM_CYDLGFRAME* = 8 (* {3} *);
        SM_CYVTHUMB* = 9 (* {0, 3} *);
        SM_CXHTHUMB* = 10 (* {1, 3} *);
        SM_CXICON* = 11 (* {0, 1, 3} *);
        SM_CYICON* = 12 (* {2, 3} *);
        SM_CXCURSOR* = 13 (* {0, 2, 3} *);
        SM_CYCURSOR* = 14 (* {1..3} *);
        SM_CYMENU* = 15 (* {0..3} *);
        SM_CXFULLSCREEN* = 16 (* {4} *);
        SM_CYFULLSCREEN* = 17 (* {0, 4} *);
        SM_CYKANJIWINDOW* = 18 (* {1, 4} *);
        SM_MOUSEPRESENT* = 19 (* {0, 1, 4} *);
        SM_CYVSCROLL* = 20 (* {2, 4} *);
        SM_CXHSCROLL* = 21 (* {0, 2, 4} *);
        SM_DEBUG* = 22 (* {1, 2, 4} *);
        SM_SWAPBUTTON* = 23 (* {0..2, 4} *);
        SM_RESERVED1* = 24 (* {3, 4} *);
        SM_RESERVED2* = 25 (* {0, 3, 4} *);
        SM_RESERVED3* = 26 (* {1, 3, 4} *);
        SM_RESERVED4* = 27 (* {0, 1, 3, 4} *);
        SM_CXMIN* = 28 (* {2..4} *);
        SM_CYMIN* = 29 (* {0, 2..4} *);
        SM_CXSIZE* = 30 (* {1..4} *);
        SM_CYSIZE* = 31 (* {0..4} *);
        SM_CXFRAME* = 32 (* {5} *);
        SM_CYFRAME* = 33 (* {0, 5} *);
        SM_CXMINTRACK* = 34 (* {1, 5} *);
        SM_CYMINTRACK* = 35 (* {0, 1, 5} *);
        SM_CXDOUBLECLK* = 36 (* {2, 5} *);
        SM_CYDOUBLECLK* = 37 (* {0, 2, 5} *);
        SM_CXICONSPACING* = 38 (* {1, 2, 5} *);
        SM_CYICONSPACING* = 39 (* {0..2, 5} *);
        SM_MENUDROPALIGNMENT* = 40 (* {3, 5} *);
        SM_PENWINDOWS* = 41 (* {0, 3, 5} *);
        SM_DBCSENABLED* = 42 (* {1, 3, 5} *);
        SM_CMOUSEBUTTONS* = 43 (* {0, 1, 3, 5} *);
        SM_CXFIXEDFRAME* = 7 (* {0..2} *);
        SM_CYFIXEDFRAME* = 8 (* {3} *);
        SM_CXSIZEFRAME* = 32 (* {5} *);
        SM_CYSIZEFRAME* = 33 (* {0, 5} *);
        SM_SECURE* = 44 (* {2, 3, 5} *);
        SM_CXEDGE* = 45 (* {0, 2, 3, 5} *);
        SM_CYEDGE* = 46 (* {1..3, 5} *);
        SM_CXMINSPACING* = 47 (* {0..3, 5} *);
        SM_CYMINSPACING* = 48 (* {4, 5} *);
        SM_CXSMICON* = 49 (* {0, 4, 5} *);
        SM_CYSMICON* = 50 (* {1, 4, 5} *);
        SM_CYSMCAPTION* = 51 (* {0, 1, 4, 5} *);
        SM_CXSMSIZE* = 52 (* {2, 4, 5} *);
        SM_CYSMSIZE* = 53 (* {0, 2, 4, 5} *);
        SM_CXMENUSIZE* = 54 (* {1, 2, 4, 5} *);
        SM_CYMENUSIZE* = 55 (* {0..2, 4, 5} *);
        SM_ARRANGE* = 56 (* {3..5} *);
        SM_CXMINIMIZED* = 57 (* {0, 3..5} *);
        SM_CYMINIMIZED* = 58 (* {1, 3..5} *);
        SM_CXMAXTRACK* = 59 (* {0, 1, 3..5} *);
        SM_CYMAXTRACK* = 60 (* {2..5} *);
        SM_CXMAXIMIZED* = 61 (* {0, 2..5} *);
        SM_CYMAXIMIZED* = 62 (* {1..5} *);
        SM_NETWORK* = 63 (* {0..5} *);
        SM_CLEANBOOT* = 67 (* {0, 1, 6} *);
        SM_CXDRAG* = 68 (* {2, 6} *);
        SM_CYDRAG* = 69 (* {0, 2, 6} *);
        SM_SHOWSOUNDS* = 70 (* {1, 2, 6} *);
        SM_CXMENUCHECK* = 71 (* {0..2, 6} *);
        SM_CYMENUCHECK* = 72 (* {3, 6} *);
        SM_SLOWMACHINE* = 73 (* {0, 3, 6} *);
        SM_MIDEASTENABLED* = 74 (* {1, 3, 6} *);
        SM_CMETRICS* = 75 (* {0, 1, 3, 6} *);
        MNC_IGNORE* = 0 (* {} *);
        MNC_CLOSE* = 1 (* {0} *);
        MNC_EXECUTE* = 2 (* {1} *);
        MNC_SELECT* = 3 (* {0, 1} *);
        MIIM_STATE* = {0};
        MIIM_ID* = {1};
        MIIM_SUBMENU* = {2};
        MIIM_CHECKMARKS* = {3};
        MIIM_TYPE* = {4};
        MIIM_DATA* = {5};
        GMDI_USEDISABLED* = {0};
        GMDI_GOINTOPOPUPS* = {1};
        TPM_LEFTBUTTON* = {};
        TPM_RIGHTBUTTON* = {1};
        TPM_LEFTALIGN* = {};
        TPM_CENTERALIGN* = {2};
        TPM_RIGHTALIGN* = {3};
        TPM_TOPALIGN* = {};
        TPM_VCENTERALIGN* = {4};
        TPM_BOTTOMALIGN* = {5};
        TPM_HORIZONTAL* = {};
        TPM_VERTICAL* = {6};
        TPM_NONOTIFY* = {7};
        TPM_RETURNCMD* = {8};
        DOF_EXECUTABLE* = 32769 (* {0, 15} *);
        DOF_DOCUMENT* = 32770 (* {1, 15} *);
        DOF_DIRECTORY* = 32771 (* {0, 1, 15} *);
        DOF_MULTIPLE* = 32772 (* {2, 15} *);
        DOF_PROGMAN* = 1 (* {0} *);
        DOF_SHELLDATA* = 2 (* {1} *);
        DO_DROPFILE* = 1162627398 (* {1, 2, 6, 8, 11, 14, 18, 19, 22, 24, 26, 30} *);
        DO_PRINTFILE* = 1414419024 (* {4, 6, 9, 12, 14, 17..19, 22, 26, 28, 30} *);
        DT_TOP* = {};
        DT_LEFT* = {};
        DT_CENTER* = {0};
        DT_RIGHT* = {1};
        DT_VCENTER* = {2};
        DT_BOTTOM* = {3};
        DT_WORDBREAK* = {4};
        DT_SINGLELINE* = {5};
        DT_EXPANDTABS* = {6};
        DT_TABSTOP* = {7};
        DT_NOCLIP* = {8};
        DT_EXTERNALLEADING* = {9};
        DT_CALCRECT* = {10};
        DT_NOPREFIX* = {11};
        DT_INTERNAL* = {12};
        DT_EDITCONTROL* = {13};
        DT_PATH_ELLIPSIS* = {14};
        DT_END_ELLIPSIS* = {15};
        DT_MODIFYSTRING* = {16};
        DT_RTLREADING* = {17};
        DT_WORD_ELLIPSIS* = {18};
        DST_COMPLEX* = {};
        DST_TEXT* = {0};
        DST_PREFIXTEXT* = {1};
        DST_ICON* = {0, 1};
        DST_BITMAP* = {2};
        DSS_NORMAL* = {};
        DSS_UNION* = {4};
        DSS_DISABLED* = {5};
        DSS_MONO* = {7};
        DSS_RIGHT* = {15};
        DCX_WINDOW* = {0};
        DCX_CACHE* = {1};
        DCX_NORESETATTRS* = {2};
        DCX_CLIPCHILDREN* = {3};
        DCX_CLIPSIBLINGS* = {4};
        DCX_PARENTCLIP* = {5};
        DCX_EXCLUDERGN* = {6};
        DCX_INTERSECTRGN* = {7};
        DCX_EXCLUDEUPDATE* = {8};
        DCX_INTERSECTUPDATE* = {9};
        DCX_LOCKWINDOWUPDATE* = {10};
        DCX_VALIDATE* = {21};
        RDW_INVALIDATE* = {0};
        RDW_INTERNALPAINT* = {1};
        RDW_ERASE* = {2};
        RDW_VALIDATE* = {3};
        RDW_NOINTERNALPAINT* = {4};
        RDW_NOERASE* = {5};
        RDW_NOCHILDREN* = {6};
        RDW_ALLCHILDREN* = {7};
        RDW_UPDATENOW* = {8};
        RDW_ERASENOW* = {9};
        RDW_FRAME* = {10};
        RDW_NOFRAME* = {11};
        SW_SCROLLCHILDREN* = {0};
        SW_INVALIDATE* = {1};
        SW_ERASE* = {2};
        ESB_ENABLE_BOTH* = 0 (* {} *);
        ESB_DISABLE_BOTH* = 3 (* {0, 1} *);
        ESB_DISABLE_LEFT* = 1 (* {0} *);
        ESB_DISABLE_RIGHT* = 2 (* {1} *);
        ESB_DISABLE_UP* = 1 (* {0} *);
        ESB_DISABLE_DOWN* = 2 (* {1} *);
        ESB_DISABLE_LTUP* = 1 (* {0} *);
        ESB_DISABLE_RTDN* = 2 (* {1} *);
        HELPINFO_WINDOW* = 1 (* {0} *);
        HELPINFO_MENUITEM* = 2 (* {1} *);
        MB_OK* = {};
        MB_OKCANCEL* = {0};
        MB_ABORTRETRYIGNORE* = {1};
        MB_YESNOCANCEL* = {0, 1};
        MB_YESNO* = {2};
        MB_RETRYCANCEL* = {0, 2};
        MB_ICONHAND* = {4};
        MB_ICONQUESTION* = {5};
        MB_ICONEXCLAMATION* = {4, 5};
        MB_ICONASTERISK* = {6};
        MB_USERICON* = {7};
        MB_ICONWARNING* = {4, 5};
        MB_ICONERROR* = {4};
        MB_ICONINFORMATION* = {6};
        MB_ICONSTOP* = {4};
        MB_DEFBUTTON1* = {};
        MB_DEFBUTTON2* = {8};
        MB_DEFBUTTON3* = {9};
        MB_DEFBUTTON4* = {8, 9};
        MB_APPLMODAL* = {};
        MB_SYSTEMMODAL* = {12};
        MB_TASKMODAL* = {13};
        MB_HELP* = {14};
        MB_NOFOCUS* = {15};
        MB_SETFOREGROUND* = {16};
        MB_DEFAULT_DESKTOP_ONLY* = {17};
        MB_TOPMOST* = {18};
        MB_RIGHT* = {19};
        MB_RTLREADING* = {20};
        MB_SERVICE_NOTIFICATION* = {21};
        MB_TYPEMASK* = {0..3};
        MB_ICONMASK* = {4..7};
        MB_DEFMASK* = {8..11};
        MB_MODEMASK* = {12, 13};
        MB_MISCMASK* = {14, 15};
        CWP_ALL* = {};
        CWP_SKIPINVISIBLE* = {0};
        CWP_SKIPDISABLED* = {1};
        CWP_SKIPTRANSPARENT* = {2};
        CTLCOLOR_MSGBOX* = 0 (* {} *);
        CTLCOLOR_EDIT* = 1 (* {0} *);
        CTLCOLOR_LISTBOX* = 2 (* {1} *);
        CTLCOLOR_BTN* = 3 (* {0, 1} *);
        CTLCOLOR_DLG* = 4 (* {2} *);
        CTLCOLOR_SCROLLBAR* = 5 (* {0, 2} *);
        CTLCOLOR_STATIC* = 6 (* {1, 2} *);
        CTLCOLOR_MAX* = 7 (* {0..2} *);
        COLOR_SCROLLBAR* = 0 (* {} *);
        COLOR_BACKGROUND* = 1 (* {0} *);
        COLOR_ACTIVECAPTION* = 2 (* {1} *);
        COLOR_INACTIVECAPTION* = 3 (* {0, 1} *);
        COLOR_MENU* = 4 (* {2} *);
        COLOR_WINDOW* = 5 (* {0, 2} *);
        COLOR_WINDOWFRAME* = 6 (* {1, 2} *);
        COLOR_MENUTEXT* = 7 (* {0..2} *);
        COLOR_WINDOWTEXT* = 8 (* {3} *);
        COLOR_CAPTIONTEXT* = 9 (* {0, 3} *);
        COLOR_ACTIVEBORDER* = 10 (* {1, 3} *);
        COLOR_INACTIVEBORDER* = 11 (* {0, 1, 3} *);
        COLOR_APPWORKSPACE* = 12 (* {2, 3} *);
        COLOR_HIGHLIGHT* = 13 (* {0, 2, 3} *);
        COLOR_HIGHLIGHTTEXT* = 14 (* {1..3} *);
        COLOR_BTNFACE* = 15 (* {0..3} *);
        COLOR_BTNSHADOW* = 16 (* {4} *);
        COLOR_GRAYTEXT* = 17 (* {0, 4} *);
        COLOR_BTNTEXT* = 18 (* {1, 4} *);
        COLOR_INACTIVECAPTIONTEXT* = 19 (* {0, 1, 4} *);
        COLOR_BTNHIGHLIGHT* = 20 (* {2, 4} *);
        COLOR_3DDKSHADOW* = 21 (* {0, 2, 4} *);
        COLOR_3DLIGHT* = 22 (* {1, 2, 4} *);
        COLOR_INFOTEXT* = 23 (* {0..2, 4} *);
        COLOR_INFOBK* = 24 (* {3, 4} *);
        COLOR_DESKTOP* = 1 (* {0} *);
        COLOR_3DFACE* = 15 (* {0..3} *);
        COLOR_3DSHADOW* = 16 (* {4} *);
        COLOR_3DHIGHLIGHT* = 20 (* {2, 4} *);
        COLOR_3DHILIGHT* = 20 (* {2, 4} *);
        COLOR_BTNHILIGHT* = 20 (* {2, 4} *);
        GetSysModalWindow* = 0 (* {} *);
        GW_HWNDFIRST* = 0 (* {} *);
        GW_HWNDLAST* = 1 (* {0} *);
        GW_HWNDNEXT* = 2 (* {1} *);
        GW_HWNDPREV* = 3 (* {0, 1} *);
        GW_OWNER* = 4 (* {2} *);
        GW_CHILD* = 5 (* {0, 2} *);
        GW_MAX* = 5 (* {0, 2} *);
        MF_INSERT* = {};
        MF_CHANGE* = {7};
        MF_APPEND* = {8};
        MF_DELETE* = {9};
        MF_REMOVE* = {12};
        MF_BYCOMMAND* = {};
        MF_BYPOSITION* = {10};
        MF_SEPARATOR* = {11};
        MF_ENABLED* = {};
        MF_GRAYED* = {0};
        MF_DISABLED* = {1};
        MF_UNCHECKED* = {};
        MF_CHECKED* = {3};
        MF_USECHECKBITMAPS* = {9};
        MF_STRING* = {};
        MF_BITMAP* = {2};
        MF_OWNERDRAW* = {8};
        MF_POPUP* = {4};
        MF_MENUBARBREAK* = {5};
        MF_MENUBREAK* = {6};
        MF_UNHILITE* = {};
        MF_HILITE* = {7};
        MF_DEFAULT* = {12};
        MF_SYSMENU* = {13};
        MF_HELP* = {14};
        MF_RIGHTJUSTIFY* = {14};
        MF_MOUSESELECT* = {15};
        MF_END* = {7};
        MFT_STRING* = {};
        MFT_BITMAP* = {2};
        MFT_MENUBARBREAK* = {5};
        MFT_MENUBREAK* = {6};
        MFT_OWNERDRAW* = {8};
        MFT_RADIOCHECK* = {9};
        MFT_SEPARATOR* = {11};
        MFT_RIGHTORDER* = {13};
        MFT_RIGHTJUSTIFY* = {14};
        MFS_GRAYED* = {0, 1};
        MFS_DISABLED* = {0, 1};
        MFS_CHECKED* = {3};
        MFS_HILITE* = {7};
        MFS_ENABLED* = {};
        MFS_UNCHECKED* = {};
        MFS_UNHILITE* = {};
        MFS_DEFAULT* = {12};
        SC_SIZE* = 61440 (* {12..15} *);
        SC_MOVE* = 61456 (* {4, 12..15} *);
        SC_MINIMIZE* = 61472 (* {5, 12..15} *);
        SC_MAXIMIZE* = 61488 (* {4, 5, 12..15} *);
        SC_NEXTWINDOW* = 61504 (* {6, 12..15} *);
        SC_PREVWINDOW* = 61520 (* {4, 6, 12..15} *);
        SC_CLOSE* = 61536 (* {5, 6, 12..15} *);
        SC_VSCROLL* = 61552 (* {4..6, 12..15} *);
        SC_HSCROLL* = 61568 (* {7, 12..15} *);
        SC_MOUSEMENU* = 61584 (* {4, 7, 12..15} *);
        SC_KEYMENU* = 61696 (* {8, 12..15} *);
        SC_ARRANGE* = 61712 (* {4, 8, 12..15} *);
        SC_RESTORE* = 61728 (* {5, 8, 12..15} *);
        SC_TASKLIST* = 61744 (* {4, 5, 8, 12..15} *);
        SC_SCREENSAVE* = 61760 (* {6, 8, 12..15} *);
        SC_HOTKEY* = 61776 (* {4, 6, 8, 12..15} *);
        SC_DEFAULT* = 61792 (* {5, 6, 8, 12..15} *);
        SC_MONITORPOWER* = 61808 (* {4..6, 8, 12..15} *);
        SC_CONTEXTHELP* = 61824 (* {7, 8, 12..15} *);
        SC_SEPARATOR* = 61455 (* {0..3, 12..15} *);
        SC_ICON* = 61472 (* {5, 12..15} *);
        SC_ZOOM* = 61488 (* {4, 5, 12..15} *);
        IDC_ARROW* = 32512 (* {8..14} *);
        IDC_IBEAM* = 32513 (* {0, 8..14} *);
        IDC_WAIT* = 32514 (* {1, 8..14} *);
        IDC_CROSS* = 32515 (* {0, 1, 8..14} *);
        IDC_UPARROW* = 32516 (* {2, 8..14} *);
        IDC_SIZE* = 32640 (* {7..14} *);
        IDC_ICON* = 32641 (* {0, 7..14} *);
        IDC_SIZENWSE* = 32642 (* {1, 7..14} *);
        IDC_SIZENESW* = 32643 (* {0, 1, 7..14} *);
        IDC_SIZEWE* = 32644 (* {2, 7..14} *);
        IDC_SIZENS* = 32645 (* {0, 2, 7..14} *);
        IDC_SIZEALL* = 32646 (* {1, 2, 7..14} *);
        IDC_NO* = 32648 (* {3, 7..14} *);
        IDC_APPSTARTING* = 32650 (* {1, 3, 7..14} *);
        IDC_HELP* = 32651 (* {0, 1, 3, 7..14} *);
        IMAGE_BITMAP* = 0 (* {} *);
        IMAGE_ICON* = 1 (* {0} *);
        IMAGE_CURSOR* = 2 (* {1} *);
        IMAGE_ENHMETAFILE* = 3 (* {0, 1} *);
        LR_DEFAULTCOLOR* = {};
        LR_MONOCHROME* = {0};
        LR_COLOR* = {1};
        LR_COPYRETURNORG* = {2};
        LR_COPYDELETEORG* = {3};
        LR_LOADFROMFILE* = {4};
        LR_LOADTRANSPARENT* = {5};
        LR_DEFAULTSIZE* = {6};
        LR_VGACOLOR* = {7};
        LR_LOADMAP3DCOLORS* = {12};
        LR_CREATEDIBSECTION* = {13};
        LR_COPYFROMRESOURCE* = {14};
        LR_SHARED* = {15};
        DI_MASK* = {0};
        DI_IMAGE* = {1};
        DI_NORMAL* = {0, 1};
        DI_COMPAT* = {2};
        DI_DEFAULTSIZE* = {3};
        RES_ICON* = 1 (* {0} *);
        RES_CURSOR* = 2 (* {1} *);
        ORD_LANGDRIVER* = 1 (* {0} *);
        IDI_APPLICATION* = 32512 (* {8..14} *);
        IDI_HAND* = 32513 (* {0, 8..14} *);
        IDI_QUESTION* = 32514 (* {1, 8..14} *);
        IDI_EXCLAMATION* = 32515 (* {0, 1, 8..14} *);
        IDI_ASTERISK* = 32516 (* {2, 8..14} *);
        IDI_WINLOGO* = 32517 (* {0, 2, 8..14} *);
        IDI_WARNING* = 32515 (* {0, 1, 8..14} *);
        IDI_ERROR* = 32513 (* {0, 8..14} *);
        IDI_INFORMATION* = 32516 (* {2, 8..14} *);
        IDOK* = 1 (* {0} *);
        IDCANCEL* = 2 (* {1} *);
        IDABORT* = 3 (* {0, 1} *);
        IDRETRY* = 4 (* {2} *);
        IDIGNORE* = 5 (* {0, 2} *);
        IDYES* = 6 (* {1, 2} *);
        IDNO* = 7 (* {0..2} *);
        IDCLOSE* = 8 (* {3} *);
        IDHELP* = 9 (* {0, 3} *);
        ES_LEFT* = {};
        ES_CENTER* = {0};
        ES_RIGHT* = {1};
        ES_MULTILINE* = {2};
        ES_UPPERCASE* = {3};
        ES_LOWERCASE* = {4};
        ES_PASSWORD* = {5};
        ES_AUTOVSCROLL* = {6};
        ES_AUTOHSCROLL* = {7};
        ES_NOHIDESEL* = {8};
        ES_OEMCONVERT* = {10};
        ES_READONLY* = {11};
        ES_WANTRETURN* = {12};
        ES_NUMBER* = {13};
        EN_SETFOCUS* = 256 (* {8} *);
        EN_KILLFOCUS* = 512 (* {9} *);
        EN_CHANGE* = 768 (* {8, 9} *);
        EN_UPDATE* = 1024 (* {10} *);
        EN_ERRSPACE* = 1280 (* {8, 10} *);
        EN_MAXTEXT* = 1281 (* {0, 8, 10} *);
        EN_HSCROLL* = 1537 (* {0, 9, 10} *);
        EN_VSCROLL* = 1538 (* {1, 9, 10} *);
        EC_LEFTMARGIN* = 1 (* {0} *);
        EC_RIGHTMARGIN* = 2 (* {1} *);
        EC_USEFONTINFO* = 65535 (* {0..15} *);
        EM_GETSEL* = 176 (* {4, 5, 7} *);
        EM_SETSEL* = 177 (* {0, 4, 5, 7} *);
        EM_GETRECT* = 178 (* {1, 4, 5, 7} *);
        EM_SETRECT* = 179 (* {0, 1, 4, 5, 7} *);
        EM_SETRECTNP* = 180 (* {2, 4, 5, 7} *);
        EM_SCROLL* = 181 (* {0, 2, 4, 5, 7} *);
        EM_LINESCROLL* = 182 (* {1, 2, 4, 5, 7} *);
        EM_SCROLLCARET* = 183 (* {0..2, 4, 5, 7} *);
        EM_GETMODIFY* = 184 (* {3..5, 7} *);
        EM_SETMODIFY* = 185 (* {0, 3..5, 7} *);
        EM_GETLINECOUNT* = 186 (* {1, 3..5, 7} *);
        EM_LINEINDEX* = 187 (* {0, 1, 3..5, 7} *);
        EM_SETHANDLE* = 188 (* {2..5, 7} *);
        EM_GETHANDLE* = 189 (* {0, 2..5, 7} *);
        EM_GETTHUMB* = 190 (* {1..5, 7} *);
        EM_LINELENGTH* = 193 (* {0, 6, 7} *);
        EM_REPLACESEL* = 194 (* {1, 6, 7} *);
        EM_GETLINE* = 196 (* {2, 6, 7} *);
        EM_LIMITTEXT* = 197 (* {0, 2, 6, 7} *);
        EM_CANUNDO* = 198 (* {1, 2, 6, 7} *);
        EM_UNDO* = 199 (* {0..2, 6, 7} *);
        EM_FMTLINES* = 200 (* {3, 6, 7} *);
        EM_LINEFROMCHAR* = 201 (* {0, 3, 6, 7} *);
        EM_SETTABSTOPS* = 203 (* {0, 1, 3, 6, 7} *);
        EM_SETPASSWORDCHAR* = 204 (* {2, 3, 6, 7} *);
        EM_EMPTYUNDOBUFFER* = 205 (* {0, 2, 3, 6, 7} *);
        EM_GETFIRSTVISIBLELINE* = 206 (* {1..3, 6, 7} *);
        EM_SETREADONLY* = 207 (* {0..3, 6, 7} *);
        EM_SETWORDBREAKPROC* = 208 (* {4, 6, 7} *);
        EM_GETWORDBREAKPROC* = 209 (* {0, 4, 6, 7} *);
        EM_GETPASSWORDCHAR* = 210 (* {1, 4, 6, 7} *);
        EM_SETMARGINS* = 211 (* {0, 1, 4, 6, 7} *);
        EM_GETMARGINS* = 212 (* {2, 4, 6, 7} *);
        EM_SETLIMITTEXT* = 197 (* {0, 2, 6, 7} *);
        EM_GETLIMITTEXT* = 213 (* {0, 2, 4, 6, 7} *);
        EM_POSFROMCHAR* = 214 (* {1, 2, 4, 6, 7} *);
        EM_CHARFROMPOS* = 215 (* {0..2, 4, 6, 7} *);
        WB_LEFT* = 0 (* {} *);
        WB_RIGHT* = 1 (* {0} *);
        WB_ISDELIMITER* = 2 (* {1} *);
        BS_PUSHBUTTON* = {};
        BS_DEFPUSHBUTTON* = {0};
        BS_CHECKBOX* = {1};
        BS_AUTOCHECKBOX* = {0, 1};
        BS_RADIOBUTTON* = {2};
        BS_3STATE* = {0, 2};
        BS_AUTO3STATE* = {1, 2};
        BS_GROUPBOX* = {0..2};
        BS_USERBUTTON* = {3};
        BS_AUTORADIOBUTTON* = {0, 3};
        BS_OWNERDRAW* = {0, 1, 3};
        BS_LEFTTEXT* = {5};
        BS_TEXT* = {};
        BS_ICON* = {6};
        BS_BITMAP* = {7};
        BS_LEFT* = {8};
        BS_RIGHT* = {9};
        BS_CENTER* = {8, 9};
        BS_TOP* = {10};
        BS_BOTTOM* = {11};
        BS_VCENTER* = {10, 11};
        BS_PUSHLIKE* = {12};
        BS_MULTILINE* = {13};
        BS_NOTIFY* = {14};
        BS_FLAT* = {15};
        BS_RIGHTBUTTON* = {5};
        BN_CLICKED* = 0 (* {} *);
        BN_PAINT* = 1 (* {0} *);
        BN_HILITE* = 2 (* {1} *);
        BN_UNHILITE* = 3 (* {0, 1} *);
        BN_DISABLE* = 4 (* {2} *);
        BN_DOUBLECLICKED* = 5 (* {0, 2} *);
        BN_PUSHED* = 2 (* {1} *);
        BN_UNPUSHED* = 3 (* {0, 1} *);
        BN_DBLCLK* = 5 (* {0, 2} *);
        BN_SETFOCUS* = 6 (* {1, 2} *);
        BN_KILLFOCUS* = 7 (* {0..2} *);
        BM_GETCHECK* = 240 (* {4..7} *);
        BM_SETCHECK* = 241 (* {0, 4..7} *);
        BM_GETSTATE* = 242 (* {1, 4..7} *);
        BM_SETSTATE* = 243 (* {0, 1, 4..7} *);
        BM_SETSTYLE* = 244 (* {2, 4..7} *);
        BM_CLICK* = 245 (* {0, 2, 4..7} *);
        BM_GETIMAGE* = 246 (* {1, 2, 4..7} *);
        BM_SETIMAGE* = 247 (* {0..2, 4..7} *);
        BST_UNCHECKED* = {};
        BST_CHECKED* = {0};
        BST_INDETERMINATE* = {1};
        BST_PUSHED* = {2};
        BST_FOCUS* = {3};
        SS_LEFT* = {};
        SS_CENTER* = {0};
        SS_RIGHT* = {1};
        SS_ICON* = {0, 1};
        SS_BLACKRECT* = {2};
        SS_GRAYRECT* = {0, 2};
        SS_WHITERECT* = {1, 2};
        SS_BLACKFRAME* = {0..2};
        SS_GRAYFRAME* = {3};
        SS_WHITEFRAME* = {0, 3};
        SS_USERITEM* = {1, 3};
        SS_SIMPLE* = {0, 1, 3};
        SS_LEFTNOWORDWRAP* = {2, 3};
        SS_OWNERDRAW* = {0, 2, 3};
        SS_BITMAP* = {1..3};
        SS_ENHMETAFILE* = {0..3};
        SS_ETCHEDHORZ* = {4};
        SS_ETCHEDVERT* = {0, 4};
        SS_ETCHEDFRAME* = {1, 4};
        SS_TYPEMASK* = {0..4};
        SS_NOPREFIX* = {7};
        SS_NOTIFY* = {8};
        SS_CENTERIMAGE* = {9};
        SS_RIGHTJUST* = {10};
        SS_REALSIZEIMAGE* = {11};
        SS_SUNKEN* = {12};
        SS_ENDELLIPSIS* = {14};
        SS_PATHELLIPSIS* = {15};
        SS_WORDELLIPSIS* = {14, 15};
        SS_ELLIPSISMASK* = {14, 15};
        STM_SETICON* = 368 (* {4..6, 8} *);
        STM_GETICON* = 369 (* {0, 4..6, 8} *);
        STM_SETIMAGE* = 370 (* {1, 4..6, 8} *);
        STM_GETIMAGE* = 371 (* {0, 1, 4..6, 8} *);
        STN_CLICKED* = 0 (* {} *);
        STN_DBLCLK* = 1 (* {0} *);
        STN_ENABLE* = 2 (* {1} *);
        STN_DISABLE* = 3 (* {0, 1} *);
        STM_MSGMAX* = 372 (* {2, 4..6, 8} *);
        WC_DIALOG* = 32770 (* {1, 15} *);
        DWL_MSGRESULT* = 0 (* {} *);
        DWL_DLGPROC* = 4 (* {2} *);
        DWL_USER* = 8 (* {3} *);
        DDL_READWRITE* = 0 (* {} *);
        DDL_READONLY* = 1 (* {0} *);
        DDL_HIDDEN* = 2 (* {1} *);
        DDL_SYSTEM* = 4 (* {2} *);
        DDL_DIRECTORY* = 16 (* {4} *);
        DDL_ARCHIVE* = 32 (* {5} *);
        DDL_POSTMSGS* = 8192 (* {13} *);
        DDL_DRIVES* = 16384 (* {14} *);
        DDL_EXCLUSIVE* = 32768 (* {15} *);
        DS_ABSALIGN* = {0};
        DS_SYSMODAL* = {1};
        DS_LOCALEDIT* = {5};
        DS_SETFONT* = {6};
        DS_MODALFRAME* = {7};
        DS_NOIDLEMSG* = {8};
        DS_SETFOREGROUND* = {9};
        DS_3DLOOK* = {2};
        DS_FIXEDSYS* = {3};
        DS_NOFAILCREATE* = {4};
        DS_CONTROL* = {10};
        DS_CENTER* = {11};
        DS_CENTERMOUSE* = {12};
        DS_CONTEXTHELP* = {13};
        DM_GETDEFID* = 1024 (* {10} *);
        DM_SETDEFID* = 1025 (* {0, 10} *);
        DM_REPOSITION* = 1026 (* {1, 10} *);
        PSM_PAGEINFO* = 1124 (* {2, 5, 6, 10} *);
        PSM_SHEETINFO* = 1125 (* {0, 2, 5, 6, 10} *);
        PSI_SETACTIVE* = 1 (* {0} *);
        PSI_KILLACTIVE* = 2 (* {1} *);
        PSI_APPLY* = 3 (* {0, 1} *);
        PSI_RESET* = 4 (* {2} *);
        PSI_HASHELP* = 5 (* {0, 2} *);
        PSI_HELP* = 6 (* {1, 2} *);
        PSI_CHANGED* = 1 (* {0} *);
        PSI_GUISTART* = 2 (* {1} *);
        PSI_REBOOT* = 3 (* {0, 1} *);
        PSI_GETSIBLINGS* = 4 (* {2} *);
        DC_HASDEFID* = 21323 (* {0, 1, 3, 6, 8, 9, 12, 14} *);
        DLGC_WANTARROWS* = {0};
        DLGC_WANTTAB* = {1};
        DLGC_WANTALLKEYS* = {2};
        DLGC_WANTMESSAGE* = {2};
        DLGC_HASSETSEL* = {3};
        DLGC_DEFPUSHBUTTON* = {4};
        DLGC_UNDEFPUSHBUTTON* = {5};
        DLGC_RADIOBUTTON* = {6};
        DLGC_WANTCHARS* = {7};
        DLGC_STATIC* = {8};
        DLGC_BUTTON* = {13};
        LB_CTLCODE* = 0 (* {} *);
        LB_OKAY* = 0 (* {} *);
        LB_ERR* = -1 (* {0..31} *);
        LB_ERRSPACE* = -2 (* {1..31} *);
        LBN_ERRSPACE* = -2 (* {1..31} *);
        LBN_SELCHANGE* = 1 (* {0} *);
        LBN_DBLCLK* = 2 (* {1} *);
        LBN_SELCANCEL* = 3 (* {0, 1} *);
        LBN_SETFOCUS* = 4 (* {2} *);
        LBN_KILLFOCUS* = 5 (* {0, 2} *);
        LB_ADDSTRING* = 384 (* {7, 8} *);
        LB_INSERTSTRING* = 385 (* {0, 7, 8} *);
        LB_DELETESTRING* = 386 (* {1, 7, 8} *);
        LB_SELITEMRANGEEX* = 387 (* {0, 1, 7, 8} *);
        LB_RESETCONTENT* = 388 (* {2, 7, 8} *);
        LB_SETSEL* = 389 (* {0, 2, 7, 8} *);
        LB_SETCURSEL* = 390 (* {1, 2, 7, 8} *);
        LB_GETSEL* = 391 (* {0..2, 7, 8} *);
        LB_GETCURSEL* = 392 (* {3, 7, 8} *);
        LB_GETTEXT* = 393 (* {0, 3, 7, 8} *);
        LB_GETTEXTLEN* = 394 (* {1, 3, 7, 8} *);
        LB_GETCOUNT* = 395 (* {0, 1, 3, 7, 8} *);
        LB_SELECTSTRING* = 396 (* {2, 3, 7, 8} *);
        LB_DIR* = 397 (* {0, 2, 3, 7, 8} *);
        LB_GETTOPINDEX* = 398 (* {1..3, 7, 8} *);
        LB_FINDSTRING* = 399 (* {0..3, 7, 8} *);
        LB_GETSELCOUNT* = 400 (* {4, 7, 8} *);
        LB_GETSELITEMS* = 401 (* {0, 4, 7, 8} *);
        LB_SETTABSTOPS* = 402 (* {1, 4, 7, 8} *);
        LB_GETHORIZONTALEXTENT* = 403 (* {0, 1, 4, 7, 8} *);
        LB_SETHORIZONTALEXTENT* = 404 (* {2, 4, 7, 8} *);
        LB_SETCOLUMNWIDTH* = 405 (* {0, 2, 4, 7, 8} *);
        LB_ADDFILE* = 406 (* {1, 2, 4, 7, 8} *);
        LB_SETTOPINDEX* = 407 (* {0..2, 4, 7, 8} *);
        LB_GETITEMRECT* = 408 (* {3, 4, 7, 8} *);
        LB_GETITEMDATA* = 409 (* {0, 3, 4, 7, 8} *);
        LB_SETITEMDATA* = 410 (* {1, 3, 4, 7, 8} *);
        LB_SELITEMRANGE* = 411 (* {0, 1, 3, 4, 7, 8} *);
        LB_SETANCHORINDEX* = 412 (* {2..4, 7, 8} *);
        LB_GETANCHORINDEX* = 413 (* {0, 2..4, 7, 8} *);
        LB_SETCARETINDEX* = 414 (* {1..4, 7, 8} *);
        LB_GETCARETINDEX* = 415 (* {0..4, 7, 8} *);
        LB_SETITEMHEIGHT* = 416 (* {5, 7, 8} *);
        LB_GETITEMHEIGHT* = 417 (* {0, 5, 7, 8} *);
        LB_FINDSTRINGEXACT* = 418 (* {1, 5, 7, 8} *);
        LB_SETLOCALE* = 421 (* {0, 2, 5, 7, 8} *);
        LB_GETLOCALE* = 422 (* {1, 2, 5, 7, 8} *);
        LB_SETCOUNT* = 423 (* {0..2, 5, 7, 8} *);
        LB_INITSTORAGE* = 424 (* {3, 5, 7, 8} *);
        LB_ITEMFROMPOINT* = 425 (* {0, 3, 5, 7, 8} *);
        LB_MSGMAX* = 432 (* {4, 5, 7, 8} *);
        LBS_NOTIFY* = {0};
        LBS_SORT* = {1};
        LBS_NOREDRAW* = {2};
        LBS_MULTIPLESEL* = {3};
        LBS_OWNERDRAWFIXED* = {4};
        LBS_OWNERDRAWVARIABLE* = {5};
        LBS_HASSTRINGS* = {6};
        LBS_USETABSTOPS* = {7};
        LBS_NOINTEGRALHEIGHT* = {8};
        LBS_MULTICOLUMN* = {9};
        LBS_WANTKEYBOARDINPUT* = {10};
        LBS_EXTENDEDSEL* = {11};
        LBS_DISABLENOSCROLL* = {12};
        LBS_NODATA* = {13};
        LBS_NOSEL* = {14};
        LBS_STANDARD* = {0, 1, 21, 23};
        CB_OKAY* = 0 (* {} *);
        CB_ERR* = -1 (* {0..31} *);
        CB_ERRSPACE* = -2 (* {1..31} *);
        CBN_ERRSPACE* = -1 (* {0..31} *);
        CBN_SELCHANGE* = 1 (* {0} *);
        CBN_DBLCLK* = 2 (* {1} *);
        CBN_SETFOCUS* = 3 (* {0, 1} *);
        CBN_KILLFOCUS* = 4 (* {2} *);
        CBN_EDITCHANGE* = 5 (* {0, 2} *);
        CBN_EDITUPDATE* = 6 (* {1, 2} *);
        CBN_DROPDOWN* = 7 (* {0..2} *);
        CBN_CLOSEUP* = 8 (* {3} *);
        CBN_SELENDOK* = 9 (* {0, 3} *);
        CBN_SELENDCANCEL* = 10 (* {1, 3} *);
        CBS_SIMPLE* = {0};
        CBS_DROPDOWN* = {1};
        CBS_DROPDOWNLIST* = {0, 1};
        CBS_OWNERDRAWFIXED* = {4};
        CBS_OWNERDRAWVARIABLE* = {5};
        CBS_AUTOHSCROLL* = {6};
        CBS_OEMCONVERT* = {7};
        CBS_SORT* = {8};
        CBS_HASSTRINGS* = {9};
        CBS_NOINTEGRALHEIGHT* = {10};
        CBS_DISABLENOSCROLL* = {11};
        CBS_UPPERCASE* = {13};
        CBS_LOWERCASE* = {14};
        CB_GETEDITSEL* = 320 (* {6, 8} *);
        CB_LIMITTEXT* = 321 (* {0, 6, 8} *);
        CB_SETEDITSEL* = 322 (* {1, 6, 8} *);
        CB_ADDSTRING* = 323 (* {0, 1, 6, 8} *);
        CB_DELETESTRING* = 324 (* {2, 6, 8} *);
        CB_DIR* = 325 (* {0, 2, 6, 8} *);
        CB_GETCOUNT* = 326 (* {1, 2, 6, 8} *);
        CB_GETCURSEL* = 327 (* {0..2, 6, 8} *);
        CB_GETLBTEXT* = 328 (* {3, 6, 8} *);
        CB_GETLBTEXTLEN* = 329 (* {0, 3, 6, 8} *);
        CB_INSERTSTRING* = 330 (* {1, 3, 6, 8} *);
        CB_RESETCONTENT* = 331 (* {0, 1, 3, 6, 8} *);
        CB_FINDSTRING* = 332 (* {2, 3, 6, 8} *);
        CB_SELECTSTRING* = 333 (* {0, 2, 3, 6, 8} *);
        CB_SETCURSEL* = 334 (* {1..3, 6, 8} *);
        CB_SHOWDROPDOWN* = 335 (* {0..3, 6, 8} *);
        CB_GETITEMDATA* = 336 (* {4, 6, 8} *);
        CB_SETITEMDATA* = 337 (* {0, 4, 6, 8} *);
        CB_GETDROPPEDCONTROLRECT* = 338 (* {1, 4, 6, 8} *);
        CB_SETITEMHEIGHT* = 339 (* {0, 1, 4, 6, 8} *);
        CB_GETITEMHEIGHT* = 340 (* {2, 4, 6, 8} *);
        CB_SETEXTENDEDUI* = 341 (* {0, 2, 4, 6, 8} *);
        CB_GETEXTENDEDUI* = 342 (* {1, 2, 4, 6, 8} *);
        CB_GETDROPPEDSTATE* = 343 (* {0..2, 4, 6, 8} *);
        CB_FINDSTRINGEXACT* = 344 (* {3, 4, 6, 8} *);
        CB_SETLOCALE* = 345 (* {0, 3, 4, 6, 8} *);
        CB_GETLOCALE* = 346 (* {1, 3, 4, 6, 8} *);
        CB_GETTOPINDEX* = 347 (* {0, 1, 3, 4, 6, 8} *);
        CB_SETTOPINDEX* = 348 (* {2..4, 6, 8} *);
        CB_GETHORIZONTALEXTENT* = 349 (* {0, 2..4, 6, 8} *);
        CB_SETHORIZONTALEXTENT* = 350 (* {1..4, 6, 8} *);
        CB_GETDROPPEDWIDTH* = 351 (* {0..4, 6, 8} *);
        CB_SETDROPPEDWIDTH* = 352 (* {5, 6, 8} *);
        CB_INITSTORAGE* = 353 (* {0, 5, 6, 8} *);
        CB_MSGMAX* = 354 (* {1, 5, 6, 8} *);
        SBS_HORZ* = {};
        SBS_VERT* = {0};
        SBS_TOPALIGN* = {1};
        SBS_LEFTALIGN* = {1};
        SBS_BOTTOMALIGN* = {2};
        SBS_RIGHTALIGN* = {2};
        SBS_SIZEBOXTOPLEFTALIGN* = {1};
        SBS_SIZEBOXBOTTOMRIGHTALIGN* = {2};
        SBS_SIZEBOX* = {3};
        SBS_SIZEGRIP* = {4};
        SBM_SETPOS* = 224 (* {5..7} *);
        SBM_GETPOS* = 225 (* {0, 5..7} *);
        SBM_SETRANGE* = 226 (* {1, 5..7} *);
        SBM_SETRANGEREDRAW* = 230 (* {1, 2, 5..7} *);
        SBM_GETRANGE* = 227 (* {0, 1, 5..7} *);
        SBM_ENABLE_ARROWS* = 228 (* {2, 5..7} *);
        SBM_SETSCROLLINFO* = 233 (* {0, 3, 5..7} *);
        SBM_GETSCROLLINFO* = 234 (* {1, 3, 5..7} *);
        SIF_RANGE* = {0};
        SIF_PAGE* = {1};
        SIF_POS* = {2};
        SIF_DISABLENOSCROLL* = {3};
        SIF_TRACKPOS* = {4};
        SIF_ALL* = {0..2, 4};
        MDIS_ALLCHILDSTYLES* = {0};
        MDITILE_VERTICAL* = 0 (* {} *);
        MDITILE_HORIZONTAL* = 1 (* {0} *);
        MDITILE_SKIPDISABLED* = 2 (* {1} *);
        IMC_GETCANDIDATEPOS* = 7 (* {0..2} *);
        IMC_SETCANDIDATEPOS* = 8 (* {3} *);
        IMC_GETCOMPOSITIONFONT* = 9 (* {0, 3} *);
        IMC_SETCOMPOSITIONFONT* = 10 (* {1, 3} *);
        IMC_GETCOMPOSITIONWINDOW* = 11 (* {0, 1, 3} *);
        IMC_SETCOMPOSITIONWINDOW* = 12 (* {2, 3} *);
        IMC_GETSTATUSWINDOWPOS* = 15 (* {0..3} *);
        IMC_SETSTATUSWINDOWPOS* = 16 (* {4} *);
        IMC_CLOSESTATUSWINDOW* = 33 (* {0, 5} *);
        IMC_OPENSTATUSWINDOW* = 34 (* {1, 5} *);
        IMN_CLOSESTATUSWINDOW* = 1 (* {0} *);
        IMN_OPENSTATUSWINDOW* = 2 (* {1} *);
        IMN_CHANGECANDIDATE* = 3 (* {0, 1} *);
        IMN_CLOSECANDIDATE* = 4 (* {2} *);
        IMN_OPENCANDIDATE* = 5 (* {0, 2} *);
        IMN_SETCONVERSIONMODE* = 6 (* {1, 2} *);
        IMN_SETSENTENCEMODE* = 7 (* {0..2} *);
        IMN_SETOPENSTATUS* = 8 (* {3} *);
        IMN_SETCANDIDATEPOS* = 9 (* {0, 3} *);
        IMN_SETCOMPOSITIONFONT* = 10 (* {1, 3} *);
        IMN_SETCOMPOSITIONWINDOW* = 11 (* {0, 1, 3} *);
        IMN_SETSTATUSWINDOWPOS* = 12 (* {2, 3} *);
        IMN_GUIDELINE* = 13 (* {0, 2, 3} *);
        IMN_PRIVATE* = 14 (* {1..3} *);
        HELP_CONTEXT* = 1 (* {0} *);
        HELP_QUIT* = 2 (* {1} *);
        HELP_INDEX* = 3 (* {0, 1} *);
        HELP_CONTENTS* = 3 (* {0, 1} *);
        HELP_HELPONHELP* = 4 (* {2} *);
        HELP_SETINDEX* = 5 (* {0, 2} *);
        HELP_SETCONTENTS* = 5 (* {0, 2} *);
        HELP_CONTEXTPOPUP* = 8 (* {3} *);
        HELP_FORCEFILE* = 9 (* {0, 3} *);
        HELP_KEY* = 257 (* {0, 8} *);
        HELP_COMMAND* = 258 (* {1, 8} *);
        HELP_PARTIALKEY* = 261 (* {0, 2, 8} *);
        HELP_MULTIKEY* = 513 (* {0, 9} *);
        HELP_SETWINPOS* = 515 (* {0, 1, 9} *);
        HELP_CONTEXTMENU* = 10 (* {1, 3} *);
        HELP_FINDER* = 11 (* {0, 1, 3} *);
        HELP_WM_HELP* = 12 (* {2, 3} *);
        HELP_SETPOPUP_POS* = 13 (* {0, 2, 3} *);
        HELP_TCARD* = 32768 (* {15} *);
        HELP_TCARD_DATA* = 16 (* {4} *);
        HELP_TCARD_OTHER_CALLER* = 17 (* {0, 4} *);
        IDH_NO_HELP* = 28440 (* {3, 4, 8..11, 13, 14} *);
        IDH_MISSING_CONTEXT* = 28441 (* {0, 3, 4, 8..11, 13, 14} *);
        IDH_GENERIC_HELP_BUTTON* = 28442 (* {1, 3, 4, 8..11, 13, 14} *);
        IDH_OK* = 28443 (* {0, 1, 3, 4, 8..11, 13, 14} *);
        IDH_CANCEL* = 28444 (* {2..4, 8..11, 13, 14} *);
        IDH_HELP* = 28445 (* {0, 2..4, 8..11, 13, 14} *);
        SPI_GETBEEP* = 1 (* {0} *);
        SPI_SETBEEP* = 2 (* {1} *);
        SPI_GETMOUSE* = 3 (* {0, 1} *);
        SPI_SETMOUSE* = 4 (* {2} *);
        SPI_GETBORDER* = 5 (* {0, 2} *);
        SPI_SETBORDER* = 6 (* {1, 2} *);
        SPI_GETKEYBOARDSPEED* = 10 (* {1, 3} *);
        SPI_SETKEYBOARDSPEED* = 11 (* {0, 1, 3} *);
        SPI_LANGDRIVER* = 12 (* {2, 3} *);
        SPI_ICONHORIZONTALSPACING* = 13 (* {0, 2, 3} *);
        SPI_GETSCREENSAVETIMEOUT* = 14 (* {1..3} *);
        SPI_SETSCREENSAVETIMEOUT* = 15 (* {0..3} *);
        SPI_GETSCREENSAVEACTIVE* = 16 (* {4} *);
        SPI_SETSCREENSAVEACTIVE* = 17 (* {0, 4} *);
        SPI_GETGRIDGRANULARITY* = 18 (* {1, 4} *);
        SPI_SETGRIDGRANULARITY* = 19 (* {0, 1, 4} *);
        SPI_SETDESKWALLPAPER* = 20 (* {2, 4} *);
        SPI_SETDESKPATTERN* = 21 (* {0, 2, 4} *);
        SPI_GETKEYBOARDDELAY* = 22 (* {1, 2, 4} *);
        SPI_SETKEYBOARDDELAY* = 23 (* {0..2, 4} *);
        SPI_ICONVERTICALSPACING* = 24 (* {3, 4} *);
        SPI_GETICONTITLEWRAP* = 25 (* {0, 3, 4} *);
        SPI_SETICONTITLEWRAP* = 26 (* {1, 3, 4} *);
        SPI_GETMENUDROPALIGNMENT* = 27 (* {0, 1, 3, 4} *);
        SPI_SETMENUDROPALIGNMENT* = 28 (* {2..4} *);
        SPI_SETDOUBLECLKWIDTH* = 29 (* {0, 2..4} *);
        SPI_SETDOUBLECLKHEIGHT* = 30 (* {1..4} *);
        SPI_GETICONTITLELOGFONT* = 31 (* {0..4} *);
        SPI_SETDOUBLECLICKTIME* = 32 (* {5} *);
        SPI_SETMOUSEBUTTONSWAP* = 33 (* {0, 5} *);
        SPI_SETICONTITLELOGFONT* = 34 (* {1, 5} *);
        SPI_GETFASTTASKSWITCH* = 35 (* {0, 1, 5} *);
        SPI_SETFASTTASKSWITCH* = 36 (* {2, 5} *);
        SPI_SETDRAGFULLWINDOWS* = 37 (* {0, 2, 5} *);
        SPI_GETDRAGFULLWINDOWS* = 38 (* {1, 2, 5} *);
        SPI_GETNONCLIENTMETRICS* = 41 (* {0, 3, 5} *);
        SPI_SETNONCLIENTMETRICS* = 42 (* {1, 3, 5} *);
        SPI_GETMINIMIZEDMETRICS* = 43 (* {0, 1, 3, 5} *);
        SPI_SETMINIMIZEDMETRICS* = 44 (* {2, 3, 5} *);
        SPI_GETICONMETRICS* = 45 (* {0, 2, 3, 5} *);
        SPI_SETICONMETRICS* = 46 (* {1..3, 5} *);
        SPI_SETWORKAREA* = 47 (* {0..3, 5} *);
        SPI_GETWORKAREA* = 48 (* {4, 5} *);
        SPI_SETPENWINDOWS* = 49 (* {0, 4, 5} *);
        SPI_GETHIGHCONTRAST* = 66 (* {1, 6} *);
        SPI_SETHIGHCONTRAST* = 67 (* {0, 1, 6} *);
        SPI_GETKEYBOARDPREF* = 68 (* {2, 6} *);
        SPI_SETKEYBOARDPREF* = 69 (* {0, 2, 6} *);
        SPI_GETSCREENREADER* = 70 (* {1, 2, 6} *);
        SPI_SETSCREENREADER* = 71 (* {0..2, 6} *);
        SPI_GETANIMATION* = 72 (* {3, 6} *);
        SPI_SETANIMATION* = 73 (* {0, 3, 6} *);
        SPI_GETFONTSMOOTHING* = 74 (* {1, 3, 6} *);
        SPI_SETFONTSMOOTHING* = 75 (* {0, 1, 3, 6} *);
        SPI_SETDRAGWIDTH* = 76 (* {2, 3, 6} *);
        SPI_SETDRAGHEIGHT* = 77 (* {0, 2, 3, 6} *);
        SPI_SETHANDHELD* = 78 (* {1..3, 6} *);
        SPI_GETLOWPOWERTIMEOUT* = 79 (* {0..3, 6} *);
        SPI_GETPOWEROFFTIMEOUT* = 80 (* {4, 6} *);
        SPI_SETLOWPOWERTIMEOUT* = 81 (* {0, 4, 6} *);
        SPI_SETPOWEROFFTIMEOUT* = 82 (* {1, 4, 6} *);
        SPI_GETLOWPOWERACTIVE* = 83 (* {0, 1, 4, 6} *);
        SPI_GETPOWEROFFACTIVE* = 84 (* {2, 4, 6} *);
        SPI_SETLOWPOWERACTIVE* = 85 (* {0, 2, 4, 6} *);
        SPI_SETPOWEROFFACTIVE* = 86 (* {1, 2, 4, 6} *);
        SPI_SETCURSORS* = 87 (* {0..2, 4, 6} *);
        SPI_SETICONS* = 88 (* {3, 4, 6} *);
        SPI_GETDEFAULTINPUTLANG* = 89 (* {0, 3, 4, 6} *);
        SPI_SETDEFAULTINPUTLANG* = 90 (* {1, 3, 4, 6} *);
        SPI_SETLANGTOGGLE* = 91 (* {0, 1, 3, 4, 6} *);
        SPI_GETWINDOWSEXTENSION* = 92 (* {2..4, 6} *);
        SPI_SETMOUSETRAILS* = 93 (* {0, 2..4, 6} *);
        SPI_GETMOUSETRAILS* = 94 (* {1..4, 6} *);
        SPI_SCREENSAVERRUNNING* = 97 (* {0, 5, 6} *);
        SPI_GETFILTERKEYS* = 50 (* {1, 4, 5} *);
        SPI_SETFILTERKEYS* = 51 (* {0, 1, 4, 5} *);
        SPI_GETTOGGLEKEYS* = 52 (* {2, 4, 5} *);
        SPI_SETTOGGLEKEYS* = 53 (* {0, 2, 4, 5} *);
        SPI_GETMOUSEKEYS* = 54 (* {1, 2, 4, 5} *);
        SPI_SETMOUSEKEYS* = 55 (* {0..2, 4, 5} *);
        SPI_GETSHOWSOUNDS* = 56 (* {3..5} *);
        SPI_SETSHOWSOUNDS* = 57 (* {0, 3..5} *);
        SPI_GETSTICKYKEYS* = 58 (* {1, 3..5} *);
        SPI_SETSTICKYKEYS* = 59 (* {0, 1, 3..5} *);
        SPI_GETACCESSTIMEOUT* = 60 (* {2..5} *);
        SPI_SETACCESSTIMEOUT* = 61 (* {0, 2..5} *);
        SPI_GETSERIALKEYS* = 62 (* {1..5} *);
        SPI_SETSERIALKEYS* = 63 (* {0..5} *);
        SPI_GETSOUNDSENTRY* = 64 (* {6} *);
        SPI_SETSOUNDSENTRY* = 65 (* {0, 6} *);
        SPIF_UPDATEINIFILE* = 1 (* {0} *);
        SPIF_SENDWININICHANGE* = 2 (* {1} *);
        SPIF_SENDCHANGE* = 2 (* {1} *);
        METRICS_USEDEFAULT* = -1 (* {0..31} *);
        ARW_BOTTOMLEFT* = 0 (* {} *);
        ARW_BOTTOMRIGHT* = 1 (* {0} *);
        ARW_TOPLEFT* = 2 (* {1} *);
        ARW_TOPRIGHT* = 3 (* {0, 1} *);
        ARW_STARTMASK* = 3 (* {0, 1} *);
        ARW_STARTRIGHT* = 1 (* {0} *);
        ARW_STARTTOP* = 2 (* {1} *);
        ARW_LEFT* = 0 (* {} *);
        ARW_RIGHT* = 0 (* {} *);
        ARW_UP* = 4 (* {2} *);
        ARW_DOWN* = 4 (* {2} *);
        ARW_HIDE* = 8 (* {3} *);
        ARW_VALID* = 15 (* {0..3} *);
        SERKF_SERIALKEYSON* = {0};
        SERKF_AVAILABLE* = {1};
        SERKF_INDICATOR* = {2};
        HCF_HIGHCONTRASTON* = {0};
        HCF_AVAILABLE* = {1};
        HCF_HOTKEYACTIVE* = {2};
        HCF_CONFIRMHOTKEY* = {3};
        HCF_HOTKEYSOUND* = {4};
        HCF_INDICATOR* = {5};
        HCF_HOTKEYAVAILABLE* = {6};
        CDS_UPDATEREGISTRY* = {0};
        CDS_TEST* = {1};
        CDS_FULLSCREEN* = {2};
        DISP_CHANGE_SUCCESSFUL* = 0 (* {} *);
        DISP_CHANGE_RESTART* = 1 (* {0} *);
        DISP_CHANGE_FAILED* = -1 (* {0..31} *);
        DISP_CHANGE_BADMODE* = -2 (* {1..31} *);
        DISP_CHANGE_NOTUPDATED* = -3 (* {0, 2..31} *);
        DISP_CHANGE_BADFLAGS* = -4 (* {2..31} *);
        FKF_FILTERKEYSON* = {0};
        FKF_AVAILABLE* = {1};
        FKF_HOTKEYACTIVE* = {2};
        FKF_CONFIRMHOTKEY* = {3};
        FKF_HOTKEYSOUND* = {4};
        FKF_INDICATOR* = {5};
        FKF_CLICKON* = {6};
        SKF_STICKYKEYSON* = {0};
        SKF_AVAILABLE* = {1};
        SKF_HOTKEYACTIVE* = {2};
        SKF_CONFIRMHOTKEY* = {3};
        SKF_HOTKEYSOUND* = {4};
        SKF_INDICATOR* = {5};
        SKF_AUDIBLEFEEDBACK* = {6};
        SKF_TRISTATE* = {7};
        SKF_TWOKEYSOFF* = {8};
        MKF_MOUSEKEYSON* = {0};
        MKF_AVAILABLE* = {1};
        MKF_HOTKEYACTIVE* = {2};
        MKF_CONFIRMHOTKEY* = {3};
        MKF_HOTKEYSOUND* = {4};
        MKF_INDICATOR* = {5};
        MKF_MODIFIERS* = {6};
        MKF_REPLACENUMBERS* = {7};
        ATF_TIMEOUTON* = {0};
        ATF_ONOFFFEEDBACK* = {1};
        SSGF_NONE* = 0 (* {} *);
        SSGF_DISPLAY* = 3 (* {0, 1} *);
        SSTF_NONE* = 0 (* {} *);
        SSTF_CHARS* = 1 (* {0} *);
        SSTF_BORDER* = 2 (* {1} *);
        SSTF_DISPLAY* = 3 (* {0, 1} *);
        SSWF_NONE* = 0 (* {} *);
        SSWF_TITLE* = 1 (* {0} *);
        SSWF_WINDOW* = 2 (* {1} *);
        SSWF_DISPLAY* = 3 (* {0, 1} *);
        SSWF_CUSTOM* = 4 (* {2} *);
        SSF_SOUNDSENTRYON* = {0};
        SSF_AVAILABLE* = {1};
        SSF_INDICATOR* = {2};
        TKF_TOGGLEKEYSON* = {0};
        TKF_AVAILABLE* = {1};
        TKF_HOTKEYACTIVE* = {2};
        TKF_CONFIRMHOTKEY* = {3};
        TKF_HOTKEYSOUND* = {4};
        TKF_INDICATOR* = {5};
        SLE_ERROR* = 1 (* {0} *);
        SLE_MINORERROR* = 2 (* {1} *);
        SLE_WARNING* = 3 (* {0, 1} *);
        MAX_LEADBYTES* = 12 (* {2, 3} *);
        MAX_DEFAULTCHAR* = 2 (* {1} *);
        MB_PRECOMPOSED* = {0};
        MB_COMPOSITE* = {1};
        MB_USEGLYPHCHARS* = {2};
        MB_ERR_INVALID_CHARS* = {3};
        WC_DEFAULTCHECK* = {8};
        WC_COMPOSITECHECK* = {9};
        WC_DISCARDNS* = {4};
        WC_SEPCHARS* = {5};
        WC_DEFAULTCHAR* = {6};
        CT_CTYPE1* = {0};
        CT_CTYPE2* = {1};
        CT_CTYPE3* = {2};
        C1_UPPER* = 1 (* {0} *);
        C1_LOWER* = 2 (* {1} *);
        C1_DIGIT* = 4 (* {2} *);
        C1_SPACE* = 8 (* {3} *);
        C1_PUNCT* = 16 (* {4} *);
        C1_CNTRL* = 32 (* {5} *);
        C1_BLANK* = 64 (* {6} *);
        C1_XDIGIT* = 128 (* {7} *);
        C1_ALPHA* = 256 (* {8} *);
        C2_LEFTTORIGHT* = 1 (* {0} *);
        C2_RIGHTTOLEFT* = 2 (* {1} *);
        C2_EUROPENUMBER* = 3 (* {0, 1} *);
        C2_EUROPESEPARATOR* = 4 (* {2} *);
        C2_EUROPETERMINATOR* = 5 (* {0, 2} *);
        C2_ARABICNUMBER* = 6 (* {1, 2} *);
        C2_COMMONSEPARATOR* = 7 (* {0..2} *);
        C2_BLOCKSEPARATOR* = 8 (* {3} *);
        C2_SEGMENTSEPARATOR* = 9 (* {0, 3} *);
        C2_WHITESPACE* = 10 (* {1, 3} *);
        C2_OTHERNEUTRAL* = 11 (* {0, 1, 3} *);
        C2_NOTAPPLICABLE* = 0 (* {} *);
        C3_NONSPACING* = 1 (* {0} *);
        C3_DIACRITIC* = 2 (* {1} *);
        C3_VOWELMARK* = 4 (* {2} *);
        C3_SYMBOL* = 8 (* {3} *);
        C3_KATAKANA* = 16 (* {4} *);
        C3_HIRAGANA* = 32 (* {5} *);
        C3_HALFWIDTH* = 64 (* {6} *);
        C3_FULLWIDTH* = 128 (* {7} *);
        C3_IDEOGRAPH* = 256 (* {8} *);
        C3_KASHIDA* = 512 (* {9} *);
        C3_LEXICAL* = 1024 (* {10} *);
        C3_ALPHA* = 32768 (* {15} *);
        C3_NOTAPPLICABLE* = 0 (* {} *);
        NORM_IGNORECASE* = {0};
        NORM_IGNORENONSPACE* = {1};
        NORM_IGNORESYMBOLS* = {2};
        NORM_IGNOREKANATYPE* = {16};
        NORM_IGNOREWIDTH* = {17};
        MAP_FOLDCZONE* = {4};
        MAP_PRECOMPOSED* = {5};
        MAP_COMPOSITE* = {6};
        MAP_FOLDDIGITS* = {7};
        LCMAP_LOWERCASE* = {8};
        LCMAP_UPPERCASE* = {9};
        LCMAP_SORTKEY* = {10};
        LCMAP_BYTEREV* = {11};
        LCMAP_HIRAGANA* = {20};
        LCMAP_KATAKANA* = {21};
        LCMAP_HALFWIDTH* = {22};
        LCMAP_FULLWIDTH* = {23};
        LCMAP_LINGUISTIC_CASING* = {24};
        LCID_INSTALLED* = {0};
        LCID_SUPPORTED* = {1};
        CP_INSTALLED* = {0};
        CP_SUPPORTED* = {1};
        SORT_STRINGSORT* = {12};
        CP_ACP* = 0 (* {} *);
        CP_OEMCP* = 1 (* {0} *);
        CP_MACCP* = 2 (* {1} *);
        CTRY_DEFAULT* = 0 (* {} *);
        CTRY_AUSTRALIA* = 61 (* {0, 2..5} *);
        CTRY_AUSTRIA* = 43 (* {0, 1, 3, 5} *);
        CTRY_BELGIUM* = 32 (* {5} *);
        CTRY_BRAZIL* = 55 (* {0..2, 4, 5} *);
        CTRY_BULGARIA* = 359 (* {0..2, 5, 6, 8} *);
        CTRY_CANADA* = 2 (* {1} *);
        CTRY_CROATIA* = 385 (* {0, 7, 8} *);
        CTRY_CZECH* = 42 (* {1, 3, 5} *);
        CTRY_DENMARK* = 45 (* {0, 2, 3, 5} *);
        CTRY_FINLAND* = 358 (* {1, 2, 5, 6, 8} *);
        CTRY_FRANCE* = 33 (* {0, 5} *);
        CTRY_GERMANY* = 49 (* {0, 4, 5} *);
        CTRY_GREECE* = 30 (* {1..4} *);
        CTRY_HONG_KONG* = 852 (* {2, 4, 6, 8, 9} *);
        CTRY_HUNGARY* = 36 (* {2, 5} *);
        CTRY_ICELAND* = 354 (* {1, 5, 6, 8} *);
        CTRY_IRELAND* = 353 (* {0, 5, 6, 8} *);
        CTRY_ITALY* = 39 (* {0..2, 5} *);
        CTRY_JAPAN* = 81 (* {0, 4, 6} *);
        CTRY_MEXICO* = 52 (* {2, 4, 5} *);
        CTRY_NETHERLANDS* = 31 (* {0..4} *);
        CTRY_NEW_ZEALAND* = 64 (* {6} *);
        CTRY_NORWAY* = 47 (* {0..3, 5} *);
        CTRY_POLAND* = 48 (* {4, 5} *);
        CTRY_PORTUGAL* = 351 (* {0..4, 6, 8} *);
        CTRY_PRCHINA* = 86 (* {1, 2, 4, 6} *);
        CTRY_ROMANIA* = 40 (* {3, 5} *);
        CTRY_RUSSIA* = 7 (* {0..2} *);
        CTRY_SINGAPORE* = 65 (* {0, 6} *);
        CTRY_SLOVAK* = 42 (* {1, 3, 5} *);
        CTRY_SLOVENIA* = 386 (* {1, 7, 8} *);
        CTRY_SOUTH_KOREA* = 82 (* {1, 4, 6} *);
        CTRY_SPAIN* = 34 (* {1, 5} *);
        CTRY_SWEDEN* = 46 (* {1..3, 5} *);
        CTRY_SWITZERLAND* = 41 (* {0, 3, 5} *);
        CTRY_TAIWAN* = 886 (* {1, 2, 4..6, 8, 9} *);
        CTRY_TURKEY* = 90 (* {1, 3, 4, 6} *);
        CTRY_UNITED_KINGDOM* = 44 (* {2, 3, 5} *);
        CTRY_UNITED_STATES* = 1 (* {0} *);
        LOCALE_NOUSEROVERRIDE* = 80000000H;
        LOCALE_USE_CP_ACP* = 1073741824 (* {30} *);
        LOCALE_ILANGUAGE* = 1 (* {0} *);
        LOCALE_SLANGUAGE* = 2 (* {1} *);
        LOCALE_SENGLANGUAGE* = 4097 (* {0, 12} *);
        LOCALE_SABBREVLANGNAME* = 3 (* {0, 1} *);
        LOCALE_SNATIVELANGNAME* = 4 (* {2} *);
        LOCALE_ICOUNTRY* = 5 (* {0, 2} *);
        LOCALE_SCOUNTRY* = 6 (* {1, 2} *);
        LOCALE_SENGCOUNTRY* = 4098 (* {1, 12} *);
        LOCALE_SABBREVCTRYNAME* = 7 (* {0..2} *);
        LOCALE_SNATIVECTRYNAME* = 8 (* {3} *);
        LOCALE_IDEFAULTLANGUAGE* = 9 (* {0, 3} *);
        LOCALE_IDEFAULTCOUNTRY* = 10 (* {1, 3} *);
        LOCALE_IDEFAULTCODEPAGE* = 11 (* {0, 1, 3} *);
        LOCALE_IDEFAULTANSICODEPAGE* = 4100 (* {2, 12} *);
        LOCALE_SLIST* = 12 (* {2, 3} *);
        LOCALE_IMEASURE* = 13 (* {0, 2, 3} *);
        LOCALE_SDECIMAL* = 14 (* {1..3} *);
        LOCALE_STHOUSAND* = 15 (* {0..3} *);
        LOCALE_SGROUPING* = 16 (* {4} *);
        LOCALE_IDIGITS* = 17 (* {0, 4} *);
        LOCALE_ILZERO* = 18 (* {1, 4} *);
        LOCALE_INEGNUMBER* = 4112 (* {4, 12} *);
        LOCALE_SNATIVEDIGITS* = 19 (* {0, 1, 4} *);
        LOCALE_SCURRENCY* = 20 (* {2, 4} *);
        LOCALE_SINTLSYMBOL* = 21 (* {0, 2, 4} *);
        LOCALE_SMONDECIMALSEP* = 22 (* {1, 2, 4} *);
        LOCALE_SMONTHOUSANDSEP* = 23 (* {0..2, 4} *);
        LOCALE_SMONGROUPING* = 24 (* {3, 4} *);
        LOCALE_ICURRDIGITS* = 25 (* {0, 3, 4} *);
        LOCALE_IINTLCURRDIGITS* = 26 (* {1, 3, 4} *);
        LOCALE_ICURRENCY* = 27 (* {0, 1, 3, 4} *);
        LOCALE_INEGCURR* = 28 (* {2..4} *);
        LOCALE_SDATE* = 29 (* {0, 2..4} *);
        LOCALE_STIME* = 30 (* {1..4} *);
        LOCALE_SSHORTDATE* = 31 (* {0..4} *);
        LOCALE_SLONGDATE* = 32 (* {5} *);
        LOCALE_STIMEFORMAT* = 4099 (* {0, 1, 12} *);
        LOCALE_IDATE* = 33 (* {0, 5} *);
        LOCALE_ILDATE* = 34 (* {1, 5} *);
        LOCALE_ITIME* = 35 (* {0, 1, 5} *);
        LOCALE_ITIMEMARKPOSN* = 4101 (* {0, 2, 12} *);
        LOCALE_ICENTURY* = 36 (* {2, 5} *);
        LOCALE_ITLZERO* = 37 (* {0, 2, 5} *);
        LOCALE_IDAYLZERO* = 38 (* {1, 2, 5} *);
        LOCALE_IMONLZERO* = 39 (* {0..2, 5} *);
        LOCALE_S1159* = 40 (* {3, 5} *);
        LOCALE_S2359* = 41 (* {0, 3, 5} *);
        LOCALE_ICALENDARTYPE* = 4105 (* {0, 3, 12} *);
        LOCALE_IOPTIONALCALENDAR* = 4107 (* {0, 1, 3, 12} *);
        LOCALE_IFIRSTDAYOFWEEK* = 4108 (* {2, 3, 12} *);
        LOCALE_IFIRSTWEEKOFYEAR* = 4109 (* {0, 2, 3, 12} *);
        LOCALE_SDAYNAME1* = 42 (* {1, 3, 5} *);
        LOCALE_SDAYNAME2* = 43 (* {0, 1, 3, 5} *);
        LOCALE_SDAYNAME3* = 44 (* {2, 3, 5} *);
        LOCALE_SDAYNAME4* = 45 (* {0, 2, 3, 5} *);
        LOCALE_SDAYNAME5* = 46 (* {1..3, 5} *);
        LOCALE_SDAYNAME6* = 47 (* {0..3, 5} *);
        LOCALE_SDAYNAME7* = 48 (* {4, 5} *);
        LOCALE_SABBREVDAYNAME1* = 49 (* {0, 4, 5} *);
        LOCALE_SABBREVDAYNAME2* = 50 (* {1, 4, 5} *);
        LOCALE_SABBREVDAYNAME3* = 51 (* {0, 1, 4, 5} *);
        LOCALE_SABBREVDAYNAME4* = 52 (* {2, 4, 5} *);
        LOCALE_SABBREVDAYNAME5* = 53 (* {0, 2, 4, 5} *);
        LOCALE_SABBREVDAYNAME6* = 54 (* {1, 2, 4, 5} *);
        LOCALE_SABBREVDAYNAME7* = 55 (* {0..2, 4, 5} *);
        LOCALE_SMONTHNAME1* = 56 (* {3..5} *);
        LOCALE_SMONTHNAME2* = 57 (* {0, 3..5} *);
        LOCALE_SMONTHNAME3* = 58 (* {1, 3..5} *);
        LOCALE_SMONTHNAME4* = 59 (* {0, 1, 3..5} *);
        LOCALE_SMONTHNAME5* = 60 (* {2..5} *);
        LOCALE_SMONTHNAME6* = 61 (* {0, 2..5} *);
        LOCALE_SMONTHNAME7* = 62 (* {1..5} *);
        LOCALE_SMONTHNAME8* = 63 (* {0..5} *);
        LOCALE_SMONTHNAME9* = 64 (* {6} *);
        LOCALE_SMONTHNAME10* = 65 (* {0, 6} *);
        LOCALE_SMONTHNAME11* = 66 (* {1, 6} *);
        LOCALE_SMONTHNAME12* = 67 (* {0, 1, 6} *);
        LOCALE_SMONTHNAME13* = 4110 (* {1..3, 12} *);
        LOCALE_SABBREVMONTHNAME1* = 68 (* {2, 6} *);
        LOCALE_SABBREVMONTHNAME2* = 69 (* {0, 2, 6} *);
        LOCALE_SABBREVMONTHNAME3* = 70 (* {1, 2, 6} *);
        LOCALE_SABBREVMONTHNAME4* = 71 (* {0..2, 6} *);
        LOCALE_SABBREVMONTHNAME5* = 72 (* {3, 6} *);
        LOCALE_SABBREVMONTHNAME6* = 73 (* {0, 3, 6} *);
        LOCALE_SABBREVMONTHNAME7* = 74 (* {1, 3, 6} *);
        LOCALE_SABBREVMONTHNAME8* = 75 (* {0, 1, 3, 6} *);
        LOCALE_SABBREVMONTHNAME9* = 76 (* {2, 3, 6} *);
        LOCALE_SABBREVMONTHNAME10* = 77 (* {0, 2, 3, 6} *);
        LOCALE_SABBREVMONTHNAME11* = 78 (* {1..3, 6} *);
        LOCALE_SABBREVMONTHNAME12* = 79 (* {0..3, 6} *);
        LOCALE_SABBREVMONTHNAME13* = 4111 (* {0..3, 12} *);
        LOCALE_SPOSITIVESIGN* = 80 (* {4, 6} *);
        LOCALE_SNEGATIVESIGN* = 81 (* {0, 4, 6} *);
        LOCALE_IPOSSIGNPOSN* = 82 (* {1, 4, 6} *);
        LOCALE_INEGSIGNPOSN* = 83 (* {0, 1, 4, 6} *);
        LOCALE_IPOSSYMPRECEDES* = 84 (* {2, 4, 6} *);
        LOCALE_IPOSSEPBYSPACE* = 85 (* {0, 2, 4, 6} *);
        LOCALE_INEGSYMPRECEDES* = 86 (* {1, 2, 4, 6} *);
        LOCALE_INEGSEPBYSPACE* = 87 (* {0..2, 4, 6} *);
        LOCALE_FONTSIGNATURE* = 88 (* {3, 4, 6} *);
        TIME_NOMINUTESORSECONDS* = {0};
        TIME_NOSECONDS* = {1};
        TIME_NOTIMEMARKER* = {2};
        TIME_FORCE24HOURFORMAT* = {3};
        DATE_SHORTDATE* = {0};
        DATE_LONGDATE* = {1};
        DATE_USE_ALT_CALENDAR* = {2};
        CAL_ICALINTVALUE* = 1 (* {0} *);
        CAL_SCALNAME* = 2 (* {1} *);
        CAL_IYEAROFFSETRANGE* = 3 (* {0, 1} *);
        CAL_SERASTRING* = 4 (* {2} *);
        CAL_SSHORTDATE* = 5 (* {0, 2} *);
        CAL_SLONGDATE* = 6 (* {1, 2} *);
        CAL_SDAYNAME1* = 7 (* {0..2} *);
        CAL_SDAYNAME2* = 8 (* {3} *);
        CAL_SDAYNAME3* = 9 (* {0, 3} *);
        CAL_SDAYNAME4* = 10 (* {1, 3} *);
        CAL_SDAYNAME5* = 11 (* {0, 1, 3} *);
        CAL_SDAYNAME6* = 12 (* {2, 3} *);
        CAL_SDAYNAME7* = 13 (* {0, 2, 3} *);
        CAL_SABBREVDAYNAME1* = 14 (* {1..3} *);
        CAL_SABBREVDAYNAME2* = 15 (* {0..3} *);
        CAL_SABBREVDAYNAME3* = 16 (* {4} *);
        CAL_SABBREVDAYNAME4* = 17 (* {0, 4} *);
        CAL_SABBREVDAYNAME5* = 18 (* {1, 4} *);
        CAL_SABBREVDAYNAME6* = 19 (* {0, 1, 4} *);
        CAL_SABBREVDAYNAME7* = 20 (* {2, 4} *);
        CAL_SMONTHNAME1* = 21 (* {0, 2, 4} *);
        CAL_SMONTHNAME2* = 22 (* {1, 2, 4} *);
        CAL_SMONTHNAME3* = 23 (* {0..2, 4} *);
        CAL_SMONTHNAME4* = 24 (* {3, 4} *);
        CAL_SMONTHNAME5* = 25 (* {0, 3, 4} *);
        CAL_SMONTHNAME6* = 26 (* {1, 3, 4} *);
        CAL_SMONTHNAME7* = 27 (* {0, 1, 3, 4} *);
        CAL_SMONTHNAME8* = 28 (* {2..4} *);
        CAL_SMONTHNAME9* = 29 (* {0, 2..4} *);
        CAL_SMONTHNAME10* = 30 (* {1..4} *);
        CAL_SMONTHNAME11* = 31 (* {0..4} *);
        CAL_SMONTHNAME12* = 32 (* {5} *);
        CAL_SMONTHNAME13* = 33 (* {0, 5} *);
        CAL_SABBREVMONTHNAME1* = 34 (* {1, 5} *);
        CAL_SABBREVMONTHNAME2* = 35 (* {0, 1, 5} *);
        CAL_SABBREVMONTHNAME3* = 36 (* {2, 5} *);
        CAL_SABBREVMONTHNAME4* = 37 (* {0, 2, 5} *);
        CAL_SABBREVMONTHNAME5* = 38 (* {1, 2, 5} *);
        CAL_SABBREVMONTHNAME6* = 39 (* {0..2, 5} *);
        CAL_SABBREVMONTHNAME7* = 40 (* {3, 5} *);
        CAL_SABBREVMONTHNAME8* = 41 (* {0, 3, 5} *);
        CAL_SABBREVMONTHNAME9* = 42 (* {1, 3, 5} *);
        CAL_SABBREVMONTHNAME10* = 43 (* {0, 1, 3, 5} *);
        CAL_SABBREVMONTHNAME11* = 44 (* {2, 3, 5} *);
        CAL_SABBREVMONTHNAME12* = 45 (* {0, 2, 3, 5} *);
        CAL_SABBREVMONTHNAME13* = 46 (* {1..3, 5} *);
        ENUM_ALL_CALENDARS* = -1 (* {0..31} *);
        CAL_GREGORIAN* = 1 (* {0} *);
        CAL_GREGORIAN_US* = 2 (* {1} *);
        CAL_JAPAN* = 3 (* {0, 1} *);
        CAL_TAIWAN* = 4 (* {2} *);
        CAL_KOREA* = 5 (* {0, 2} *);
        CAL_HIJRI* = 6 (* {1, 2} *);
        CAL_THAI* = 7 (* {0..2} *);
        CAL_HEBREW* = 8 (* {3} *);
        RIGHT_ALT_PRESSED* = {0};
        LEFT_ALT_PRESSED* = {1};
        RIGHT_CTRL_PRESSED* = {2};
        LEFT_CTRL_PRESSED* = {3};
        SHIFT_PRESSED* = {4};
        NUMLOCK_ON* = {5};
        SCROLLLOCK_ON* = {6};
        CAPSLOCK_ON* = {7};
        ENHANCED_KEY* = {8};
        FROM_LEFT_1ST_BUTTON_PRESSED* = {0};
        RIGHTMOST_BUTTON_PRESSED* = {1};
        FROM_LEFT_2ND_BUTTON_PRESSED* = {2};
        FROM_LEFT_3RD_BUTTON_PRESSED* = {3};
        FROM_LEFT_4TH_BUTTON_PRESSED* = {4};
        MOUSE_MOVED* = {0};
        DOUBLE_CLICK* = {1};
        KEY_EVENT* = {0};
        MOUSE_EVENT* = 2 (* {1} *);
        WINDOW_BUFFER_SIZE_EVENT* = 4 (* {2} *);
        MENU_EVENT* = 8 (* {3} *);
        FOCUS_EVENT* = 16 (* {4} *);
        FOREGROUND_BLUE* = 1 (* {0} *);
        FOREGROUND_GREEN* = 2 (* {1} *);
        FOREGROUND_RED* = 4 (* {2} *);
        FOREGROUND_INTENSITY* = 8 (* {3} *);
        BACKGROUND_BLUE* = 16 (* {4} *);
        BACKGROUND_GREEN* = 32 (* {5} *);
        BACKGROUND_RED* = 64 (* {6} *);
        BACKGROUND_INTENSITY* = 128 (* {7} *);
        CTRL_C_EVENT* = 0 (* {} *);
        CTRL_BREAK_EVENT* = 1 (* {0} *);
        CTRL_CLOSE_EVENT* = 2 (* {1} *);
        CTRL_LOGOFF_EVENT* = 5 (* {0, 2} *);
        CTRL_SHUTDOWN_EVENT* = 6 (* {1, 2} *);
        ENABLE_PROCESSED_INPUT* = {0};
        ENABLE_LINE_INPUT* = {1};
        ENABLE_ECHO_INPUT* = {2};
        ENABLE_WINDOW_INPUT* = {3};
        ENABLE_MOUSE_INPUT* = {4};
        ENABLE_PROCESSED_OUTPUT* = {0};
        ENABLE_WRAP_AT_EOL_OUTPUT* = {1};
        CONSOLE_TEXTMODE_BUFFER* = {0};
        VS_FILE_INFO* = 16 (* {4} *);
        VS_VERSION_INFO* = 1 (* {0} *);
        VS_USER_DEFINED* = 100 (* {2, 5, 6} *);
        VS_FFI_SIGNATURE* = -17890115 (* {0, 2..5, 7, 10, 16..19, 21..23, 25..31} *);
        VS_FFI_STRUCVERSION* = 65536 (* {16} *);
        VS_FFI_FILEFLAGSMASK* = 63 (* {0..5} *);
        VS_FF_DEBUG* = {0};
        VS_FF_PRERELEASE* = {1};
        VS_FF_PATCHED* = {2};
        VS_FF_PRIVATEBUILD* = {3};
        VS_FF_INFOINFERRED* = {4};
        VS_FF_SPECIALBUILD* = {5};
        VOS_UNKNOWN* = {};
        VOS_DOS* = {16};
        VOS_OS216* = {17};
        VOS_OS232* = {16, 17};
        VOS_NT* = {18};
        VOS__BASE* = {};
        VOS__WINDOWS16* = {0};
        VOS__PM16* = {1};
        VOS__PM32* = {0, 1};
        VOS__WINDOWS32* = {2};
        VOS_DOS_WINDOWS16* = {0, 16};
        VOS_DOS_WINDOWS32* = {2, 16};
        VOS_OS216_PM16* = {1, 17};
        VOS_OS232_PM32* = {0, 1, 16, 17};
        VOS_NT_WINDOWS32* = {2, 18};
        VFT_UNKNOWN* = 0 (* {} *);
        VFT_APP* = 1 (* {0} *);
        VFT_DLL* = 2 (* {1} *);
        VFT_DRV* = 3 (* {0, 1} *);
        VFT_FONT* = 4 (* {2} *);
        VFT_VXD* = 5 (* {0, 2} *);
        VFT_STATIC_LIB* = 7 (* {0..2} *);
        VFT2_UNKNOWN* = 0 (* {} *);
        VFT2_DRV_PRINTER* = 1 (* {0} *);
        VFT2_DRV_KEYBOARD* = 2 (* {1} *);
        VFT2_DRV_LANGUAGE* = 3 (* {0, 1} *);
        VFT2_DRV_DISPLAY* = 4 (* {2} *);
        VFT2_DRV_MOUSE* = 5 (* {0, 2} *);
        VFT2_DRV_NETWORK* = 6 (* {1, 2} *);
        VFT2_DRV_SYSTEM* = 7 (* {0..2} *);
        VFT2_DRV_INSTALLABLE* = 8 (* {3} *);
        VFT2_DRV_SOUND* = 9 (* {0, 3} *);
        VFT2_DRV_COMM* = 10 (* {1, 3} *);
        VFT2_FONT_RASTER* = 1 (* {0} *);
        VFT2_FONT_VECTOR* = 2 (* {1} *);
        VFT2_FONT_TRUETYPE* = 3 (* {0, 1} *);
        VFFF_ISSHAREDFILE* = {0};
        VFF_CURNEDEST* = {0};
        VFF_FILEINUSE* = {1};
        VFF_BUFFTOOSMALL* = {2};
        VIFF_FORCEINSTALL* = {0};
        VIFF_DONTDELETEOLD* = {1};
        VIF_TEMPFILE* = {0};
        VIF_MISMATCH* = {1};
        VIF_SRCOLD* = {2};
        VIF_DIFFLANG* = {3};
        VIF_DIFFCODEPG* = {4};
        VIF_DIFFTYPE* = {5};
        VIF_WRITEPROT* = {6};
        VIF_FILEINUSE* = {7};
        VIF_OUTOFSPACE* = {8};
        VIF_ACCESSVIOLATION* = {9};
        VIF_SHARINGVIOLATION* = {10};
        VIF_CANNOTCREATE* = {11};
        VIF_CANNOTDELETE* = {12};
        VIF_CANNOTRENAME* = {13};
        VIF_CANNOTDELETECUR* = {14};
        VIF_OUTOFMEMORY* = {15};
        VIF_CANNOTREADSRC* = {16};
        VIF_CANNOTREADDST* = {17};
        VIF_BUFFTOOSMALL* = {18};
        PROVIDER_KEEPS_VALUE_LENGTH* = 1 (* {0} *);
        WIN31_CLASS* = 0 (* {} *);
        CDERR_DIALOGFAILURE* = 65535 (* {0..15} *);
        CDERR_GENERALCODES* = 0 (* {} *);
        CDERR_STRUCTSIZE* = 1 (* {0} *);
        CDERR_INITIALIZATION* = 2 (* {1} *);
        CDERR_NOTEMPLATE* = 3 (* {0, 1} *);
        CDERR_NOHINSTANCE* = 4 (* {2} *);
        CDERR_LOADSTRFAILURE* = 5 (* {0, 2} *);
        CDERR_FINDRESFAILURE* = 6 (* {1, 2} *);
        CDERR_LOADRESFAILURE* = 7 (* {0..2} *);
        CDERR_LOCKRESFAILURE* = 8 (* {3} *);
        CDERR_MEMALLOCFAILURE* = 9 (* {0, 3} *);
        CDERR_MEMLOCKFAILURE* = 10 (* {1, 3} *);
        CDERR_NOHOOK* = 11 (* {0, 1, 3} *);
        CDERR_REGISTERMSGFAIL* = 12 (* {2, 3} *);
        PDERR_PRINTERCODES* = 4096 (* {12} *);
        PDERR_SETUPFAILURE* = 4097 (* {0, 12} *);
        PDERR_PARSEFAILURE* = 4098 (* {1, 12} *);
        PDERR_RETDEFFAILURE* = 4099 (* {0, 1, 12} *);
        PDERR_LOADDRVFAILURE* = 4100 (* {2, 12} *);
        PDERR_GETDEVMODEFAIL* = 4101 (* {0, 2, 12} *);
        PDERR_INITFAILURE* = 4102 (* {1, 2, 12} *);
        PDERR_NODEVICES* = 4103 (* {0..2, 12} *);
        PDERR_NODEFAULTPRN* = 4104 (* {3, 12} *);
        PDERR_DNDMMISMATCH* = 4105 (* {0, 3, 12} *);
        PDERR_CREATEICFAILURE* = 4106 (* {1, 3, 12} *);
        PDERR_PRINTERNOTFOUND* = 4107 (* {0, 1, 3, 12} *);
        PDERR_DEFAULTDIFFERENT* = 4108 (* {2, 3, 12} *);
        CFERR_CHOOSEFONTCODES* = 8192 (* {13} *);
        CFERR_NOFONTS* = 8193 (* {0, 13} *);
        CFERR_MAXLESSTHANMIN* = 8194 (* {1, 13} *);
        FNERR_FILENAMECODES* = 12288 (* {12, 13} *);
        FNERR_SUBCLASSFAILURE* = 12289 (* {0, 12, 13} *);
        FNERR_INVALIDFILENAME* = 12290 (* {1, 12, 13} *);
        FNERR_BUFFERTOOSMALL* = 12291 (* {0, 1, 12, 13} *);
        FRERR_FINDREPLACECODES* = 16384 (* {14} *);
        FRERR_BUFFERLENGTHZERO* = 16385 (* {0, 14} *);
        CCERR_CHOOSECOLORCODES* = 20480 (* {12, 14} *);
        WM_DDE_FIRST* = 992 (* {5..9} *);
        WM_DDE_INITIATE* = 992 (* {5..9} *);
        WM_DDE_TERMINATE* = 993 (* {0, 5..9} *);
        WM_DDE_ADVISE* = 994 (* {1, 5..9} *);
        WM_DDE_UNADVISE* = 995 (* {0, 1, 5..9} *);
        WM_DDE_ACK* = 996 (* {2, 5..9} *);
        WM_DDE_DATA* = 997 (* {0, 2, 5..9} *);
        WM_DDE_REQUEST* = 998 (* {1, 2, 5..9} *);
        WM_DDE_POKE* = 999 (* {0..2, 5..9} *);
        WM_DDE_EXECUTE* = 1000 (* {3, 5..9} *);
        WM_DDE_LAST* = 1000 (* {3, 5..9} *);
        XST_NULL* = 0 (* {} *);
        XST_INCOMPLETE* = 1 (* {0} *);
        XST_CONNECTED* = 2 (* {1} *);
        XST_INIT1* = 3 (* {0, 1} *);
        XST_INIT2* = 4 (* {2} *);
        XST_REQSENT* = 5 (* {0, 2} *);
        XST_DATARCVD* = 6 (* {1, 2} *);
        XST_POKESENT* = 7 (* {0..2} *);
        XST_POKEACKRCVD* = 8 (* {3} *);
        XST_EXECSENT* = 9 (* {0, 3} *);
        XST_EXECACKRCVD* = 10 (* {1, 3} *);
        XST_ADVSENT* = 11 (* {0, 1, 3} *);
        XST_UNADVSENT* = 12 (* {2, 3} *);
        XST_ADVACKRCVD* = 13 (* {0, 2, 3} *);
        XST_UNADVACKRCVD* = 14 (* {1..3} *);
        XST_ADVDATASENT* = 15 (* {0..3} *);
        XST_ADVDATAACKRCVD* = 16 (* {4} *);
        CADV_LATEACK* = 65535 (* {0..15} *);
        ST_CONNECTED* = {0};
        ST_ADVISE* = {1};
        ST_ISLOCAL* = {2};
        ST_BLOCKED* = {3};
        ST_CLIENT* = {4};
        ST_TERMINATED* = {5};
        ST_INLIST* = {6};
        ST_BLOCKNEXT* = {7};
        ST_ISSELF* = {8};
        DDE_FACK* = {15};
        DDE_FBUSY* = {14};
        DDE_FDEFERUPD* = {14};
        DDE_FACKREQ* = {15};
        DDE_FRELEASE* = {13};
        DDE_FREQUESTED* = {12};
        DDE_FAPPSTATUS* = {0..7};
        DDE_FNOTPROCESSED* = {};
        DDE_FACKRESERVED* = {8..13, 16..31};
        DDE_FADVRESERVED* = {0..13, 16..31};
        DDE_FDATRESERVED* = {0..11, 14, 16..31};
        DDE_FPOKRESERVED* = {0..12, 14..31};
        MSGF_DDEMGR* = 32769 (* {0, 15} *);
        CP_WINANSI* = 1004 (* {2, 3, 5..9} *);
        CP_WINUNICODE* = 1200 (* {4, 5, 7, 10} *);
        CP_WINNEUTRAL* = 1004 (* {2, 3, 5..9} *);
        XTYPF_NOBLOCK* = {1};
        XTYPF_NODATA* = {2};
        XTYPF_ACKREQ* = {3};
        XCLASS_MASK* = {10..15};
        XCLASS_BOOL* = {12};
        XCLASS_DATA* = {13};
        XCLASS_FLAGS* = {14};
        XCLASS_NOTIFICATION* = {15};
        XTYP_ERROR* = 32770 (* {1, 15} *);
        XTYP_ADVDATA* = 16400 (* {4, 14} *);
        XTYP_ADVREQ* = 8226 (* {1, 5, 13} *);
        XTYP_ADVSTART* = 4144 (* {4, 5, 12} *);
        XTYP_ADVSTOP* = 32832 (* {6, 15} *);
        XTYP_EXECUTE* = 16464 (* {4, 6, 14} *);
        XTYP_CONNECT* = 4194 (* {1, 5, 6, 12} *);
        XTYP_CONNECT_CONFIRM* = 32882 (* {1, 4..6, 15} *);
        XTYP_XACT_COMPLETE* = 32896 (* {7, 15} *);
        XTYP_POKE* = 16528 (* {4, 7, 14} *);
        XTYP_REGISTER* = 32930 (* {1, 5, 7, 15} *);
        XTYP_REQUEST* = 8368 (* {4, 5, 7, 13} *);
        XTYP_DISCONNECT* = 32962 (* {1, 6, 7, 15} *);
        XTYP_UNREGISTER* = 32978 (* {1, 4, 6, 7, 15} *);
        XTYP_WILDCONNECT* = 8418 (* {1, 5..7, 13} *);
        XTYP_MASK* = 240 (* {4..7} *);
        XTYP_SHIFT* = 4 (* {2} *);
        TIMEOUT_ASYNC* = -1 (* {0..31} *);
        QID_SYNC* = -1 (* {0..31} *);
        SZDDESYS_TOPIC* = "System";
        SZDDESYS_ITEM_TOPICS* = "Topics";
        SZDDESYS_ITEM_SYSITEMS* = "SysItems";
        SZDDESYS_ITEM_RTNMSG* = "ReturnMessage";
        SZDDESYS_ITEM_STATUS* = "Status";
        SZDDESYS_ITEM_FORMATS* = "Formats";
        SZDDESYS_ITEM_HELP* = "Help";
        SZDDE_ITEM_ITEMLIST* = "TopicItemList";
        CBF_FAIL_SELFCONNECTIONS* = 4096 (* {12} *);
        CBF_FAIL_CONNECTIONS* = 8192 (* {13} *);
        CBF_FAIL_ADVISES* = 16384 (* {14} *);
        CBF_FAIL_EXECUTES* = 32768 (* {15} *);
        CBF_FAIL_POKES* = 65536 (* {16} *);
        CBF_FAIL_REQUESTS* = 131072 (* {17} *);
        CBF_FAIL_ALLSVRXACTIONS* = 258048 (* {12..17} *);
        CBF_SKIP_CONNECT_CONFIRMS* = 262144 (* {18} *);
        CBF_SKIP_REGISTRATIONS* = 524288 (* {19} *);
        CBF_SKIP_UNREGISTRATIONS* = 1048576 (* {20} *);
        CBF_SKIP_DISCONNECTS* = 2097152 (* {21} *);
        CBF_SKIP_ALLNOTIFICATIONS* = 3932160 (* {18..21} *);
        APPCMD_CLIENTONLY* = 16 (* {4} *);
        APPCMD_FILTERINITS* = 32 (* {5} *);
        APPCMD_MASK* = 4080 (* {4..11} *);
        APPCLASS_STANDARD* = 0 (* {} *);
        APPCLASS_MASK* = 15 (* {0..3} *);
        EC_ENABLEALL* = 0 (* {} *);
        EC_ENABLEONE* = 128 (* {7} *);
        EC_DISABLE* = 8 (* {3} *);
        EC_QUERYWAITING* = 2 (* {1} *);
        DNS_REGISTER* = 1 (* {0} *);
        DNS_UNREGISTER* = 2 (* {1} *);
        DNS_FILTERON* = 4 (* {2} *);
        DNS_FILTEROFF* = 8 (* {3} *);
        HDATA_APPOWNED* = 1 (* {0} *);
        DMLERR_NO_ERROR* = 0 (* {} *);
        DMLERR_FIRST* = 16384 (* {14} *);
        DMLERR_ADVACKTIMEOUT* = 16384 (* {14} *);
        DMLERR_BUSY* = 16385 (* {0, 14} *);
        DMLERR_DATAACKTIMEOUT* = 16386 (* {1, 14} *);
        DMLERR_DLL_NOT_INITIALIZED* = 16387 (* {0, 1, 14} *);
        DMLERR_DLL_USAGE* = 16388 (* {2, 14} *);
        DMLERR_EXECACKTIMEOUT* = 16389 (* {0, 2, 14} *);
        DMLERR_INVALIDPARAMETER* = 16390 (* {1, 2, 14} *);
        DMLERR_LOW_MEMORY* = 16391 (* {0..2, 14} *);
        DMLERR_MEMORY_ERROR* = 16392 (* {3, 14} *);
        DMLERR_NOTPROCESSED* = 16393 (* {0, 3, 14} *);
        DMLERR_NO_CONV_ESTABLISHED* = 16394 (* {1, 3, 14} *);
        DMLERR_POKEACKTIMEOUT* = 16395 (* {0, 1, 3, 14} *);
        DMLERR_POSTMSG_FAILED* = 16396 (* {2, 3, 14} *);
        DMLERR_REENTRANCY* = 16397 (* {0, 2, 3, 14} *);
        DMLERR_SERVER_DIED* = 16398 (* {1..3, 14} *);
        DMLERR_SYS_ERROR* = 16399 (* {0..3, 14} *);
        DMLERR_UNADVACKTIMEOUT* = 16400 (* {4, 14} *);
        DMLERR_UNFOUND_QUEUE_ID* = 16401 (* {0, 4, 14} *);
        DMLERR_LAST* = 16401 (* {0, 4, 14} *);
        MH_CREATE* = 1 (* {0} *);
        MH_KEEP* = 2 (* {1} *);
        MH_DELETE* = 3 (* {0, 1} *);
        MH_CLEANUP* = 4 (* {2} *);
        MAX_MONITORS* = 4 (* {2} *);
        APPCLASS_MONITOR* = 1 (* {0} *);
        XTYP_MONITOR* = 33010 (* {1, 4..7, 15} *);
        MF_HSZ_INFO* = {24};
        MF_SENDMSGS* = {25};
        MF_POSTMSGS* = {26};
        MF_CALLBACKS* = {27};
        MF_ERRORS* = {28};
        MF_LINKS* = {29};
        MF_CONV* = {30};
        MF_MASK* = {24..31};
        LZERROR_BADINHANDLE* = -1 (* {0..31} *);
        LZERROR_BADOUTHANDLE* = -2 (* {1..31} *);
        LZERROR_READ* = -3 (* {0, 2..31} *);
        LZERROR_WRITE* = -4 (* {2..31} *);
        LZERROR_GLOBALLOC* = -5 (* {0, 1, 3..31} *);
        LZERROR_GLOBLOCK* = -6 (* {1, 3..31} *);
        LZERROR_BADVALUE* = -7 (* {0, 3..31} *);
        LZERROR_UNKNOWNALG* = -8 (* {3..31} *);
        ABM_NEW* = 0 (* {} *);
        ABM_REMOVE* = 1 (* {0} *);
        ABM_QUERYPOS* = 2 (* {1} *);
        ABM_SETPOS* = 3 (* {0, 1} *);
        ABM_GETSTATE* = 4 (* {2} *);
        ABM_GETTASKBARPOS* = 5 (* {0, 2} *);
        ABM_ACTIVATE* = 6 (* {1, 2} *);
        ABM_GETAUTOHIDEBAR* = 7 (* {0..2} *);
        ABM_SETAUTOHIDEBAR* = 8 (* {3} *);
        ABM_WINDOWPOSCHANGED* = 9 (* {0, 3} *);
        ABN_STATECHANGE* = 0 (* {} *);
        ABN_POSCHANGED* = 1 (* {0} *);
        ABN_FULLSCREENAPP* = 2 (* {1} *);
        ABN_WINDOWARRANGE* = 3 (* {0, 1} *);
        ABS_AUTOHIDE* = 1 (* {0} *);
        ABS_ALWAYSONTOP* = 2 (* {1} *);
        ABE_LEFT* = 0 (* {} *);
        ABE_TOP* = 1 (* {0} *);
        ABE_RIGHT* = 2 (* {1} *);
        ABE_BOTTOM* = 3 (* {0, 1} *);
        FO_MOVE* = 1 (* {0} *);
        FO_COPY* = 2 (* {1} *);
        FO_DELETE* = 3 (* {0, 1} *);
        FO_RENAME* = 4 (* {2} *);
        FOF_MULTIDESTFILES* = 1 (* {0} *);
        FOF_CONFIRMMOUSE* = 2 (* {1} *);
        FOF_SILENT* = 4 (* {2} *);
        FOF_RENAMEONCOLLISION* = 8 (* {3} *);
        FOF_NOCONFIRMATION* = 16 (* {4} *);
        FOF_WANTMAPPINGHANDLE* = 32 (* {5} *);
        FOF_ALLOWUNDO* = 64 (* {6} *);
        FOF_FILESONLY* = 128 (* {7} *);
        FOF_SIMPLEPROGRESS* = 256 (* {8} *);
        FOF_NOCONFIRMMKDIR* = 512 (* {9} *);
        PO_DELETE* = 19 (* {0, 1, 4} *);
        PO_RENAME* = 20 (* {2, 4} *);
        PO_PORTCHANGE* = 32 (* {5} *);
        PO_REN_PORT* = 52 (* {2, 4, 5} *);
        SE_ERR_FNF* = 2 (* {1} *);
        SE_ERR_PNF* = 3 (* {0, 1} *);
        SE_ERR_ACCESSDENIED* = 5 (* {0, 2} *);
        SE_ERR_OOM* = 8 (* {3} *);
        SE_ERR_DLLNOTFOUND* = 32 (* {5} *);
        SE_ERR_SHARE* = 26 (* {1, 3, 4} *);
        SE_ERR_ASSOCINCOMPLETE* = 27 (* {0, 1, 3, 4} *);
        SE_ERR_DDETIMEOUT* = 28 (* {2..4} *);
        SE_ERR_DDEFAIL* = 29 (* {0, 2..4} *);
        SE_ERR_DDEBUSY* = 30 (* {1..4} *);
        SE_ERR_NOASSOC* = 31 (* {0..4} *);
        SEE_MASK_CLASSNAME* = {0};
        SEE_MASK_CLASSKEY* = {0, 1};
        SEE_MASK_IDLIST* = {2};
        SEE_MASK_INVOKEIDLIST* = {2, 3};
        SEE_MASK_ICON* = {4};
        SEE_MASK_HOTKEY* = {5};
        SEE_MASK_NOCLOSEPROCESS* = {6};
        SEE_MASK_CONNECTNETDRV* = {7};
        SEE_MASK_FLAG_DDEWAIT* = {8};
        SEE_MASK_DOENVSUBST* = {9};
        SEE_MASK_FLAG_NO_UI* = {10};
        SEE_MASK_UNICODE* = {14};
        SEE_MASK_NO_CONSOLE* = {15};
        NIM_ADD* = 0 (* {} *);
        NIM_MODIFY* = 1 (* {0} *);
        NIM_DELETE* = 2 (* {1} *);
        NIF_MESSAGE* = {0};
        NIF_ICON* = {1};
        NIF_TIP* = {2};
        SHGFI_ICON* = {8};
        SHGFI_DISPLAYNAME* = {9};
        SHGFI_TYPENAME* = {10};
        SHGFI_ATTRIBUTES* = {11};
        SHGFI_ICONLOCATION* = {12};
        SHGFI_EXETYPE* = {13};
        SHGFI_SYSICONINDEX* = {14};
        SHGFI_LINKOVERLAY* = {15};
        SHGFI_SELECTED* = {16};
        SHGFI_LARGEICON* = {};
        SHGFI_SMALLICON* = {0};
        SHGFI_OPENICON* = {1};
        SHGFI_SHELLICONSIZE* = {2};
        SHGFI_PIDL* = {3};
        SHGFI_USEFILEATTRIBUTES* = {4};
        SHGNLI_PIDL* = 1 (* {0} *);
        SHGNLI_PREFIXNAME* = 2 (* {1} *);
        MAXPROPPAGES* = 100 (* {2, 5, 6} *);
        PSP_DEFAULT* = {};
        PSP_DLGINDIRECT* = {0};
        PSP_USEHICON* = {1};
        PSP_USEICONID* = {2};
        PSP_USETITLE* = {3};
        PSP_RTLREADING* = {4};
        PSP_HASHELP* = {5};
        PSP_USEREFPARENT* = {6};
        PSP_USECALLBACK* = {7};
        PSPCB_RELEASE* = 1 (* {0} *);
        PSPCB_CREATE* = 2 (* {1} *);
        PSH_DEFAULT* = {};
        PSH_PROPTITLE* = {0};
        PSH_USEHICON* = {1};
        PSH_USEICONID* = {2};
        PSH_PROPSHEETPAGE* = {3};
        PSH_WIZARD* = {5};
        PSH_USEPSTARTPAGE* = {6};
        PSH_NOAPPLYNOW* = {7};
        PSH_USECALLBACK* = {8};
        PSH_HASHELP* = {9};
        PSH_MODELESS* = {10};
        PSH_RTLREADING* = {11};
        PSCB_INITIALIZED* = 1 (* {0} *);
        PSCB_PRECREATE* = 2 (* {1} *);
        PSN_FIRST* = -200 (* {3..5, 8..31} *);
        PSN_LAST* = -299 (* {0, 2, 4, 6, 7, 9..31} *);
        PSN_SETACTIVE* = -200 (* {3..5, 8..31} *);
        PSN_KILLACTIVE* = -201 (* {0..2, 4, 5, 8..31} *);
        PSN_APPLY* = -202 (* {1, 2, 4, 5, 8..31} *);
        PSN_RESET* = -203 (* {0, 2, 4, 5, 8..31} *);
        PSN_HELP* = -205 (* {0, 1, 4, 5, 8..31} *);
        PSN_WIZBACK* = -206 (* {1, 4, 5, 8..31} *);
        PSN_WIZNEXT* = -207 (* {0, 4, 5, 8..31} *);
        PSN_WIZFINISH* = -208 (* {4, 5, 8..31} *);
        PSN_QUERYCANCEL* = -209 (* {0..3, 5, 8..31} *);
        PSNRET_NOERROR* = 0 (* {} *);
        PSNRET_INVALID* = 1 (* {0} *);
        PSNRET_INVALID_NOCHANGEPAGE* = 2 (* {1} *);
        PSM_SETCURSEL* = 1125 (* {0, 2, 5, 6, 10} *);
        PSM_REMOVEPAGE* = 1126 (* {1, 2, 5, 6, 10} *);
        PSM_ADDPAGE* = 1127 (* {0..2, 5, 6, 10} *);
        PSM_CHANGED* = 1128 (* {3, 5, 6, 10} *);
        PSM_RESTARTWINDOWS* = 1129 (* {0, 3, 5, 6, 10} *);
        PSM_REBOOTSYSTEM* = 1130 (* {1, 3, 5, 6, 10} *);
        PSM_CANCELTOCLOSE* = 1131 (* {0, 1, 3, 5, 6, 10} *);
        PSM_QUERYSIBLINGS* = 1132 (* {2, 3, 5, 6, 10} *);
        PSM_UNCHANGED* = 1133 (* {0, 2, 3, 5, 6, 10} *);
        PSM_APPLY* = 1134 (* {1..3, 5, 6, 10} *);
        PSM_SETTITLEA* = 1135 (* {0..3, 5, 6, 10} *);
        PSM_SETTITLEW* = 1144 (* {3..6, 10} *);
        PSM_SETTITLE* = 1135 (* {0..3, 5, 6, 10} *);
        PSM_SETWIZBUTTONS* = 1136 (* {4..6, 10} *);
        PSWIZB_BACK* = {0};
        PSWIZB_NEXT* = {1};
        PSWIZB_FINISH* = {2};
        PSWIZB_DISABLEDFINISH* = {3};
        PSM_PRESSBUTTON* = 1137 (* {0, 4..6, 10} *);
        PSBTN_BACK* = 0 (* {} *);
        PSBTN_NEXT* = 1 (* {0} *);
        PSBTN_FINISH* = 2 (* {1} *);
        PSBTN_OK* = 3 (* {0, 1} *);
        PSBTN_APPLYNOW* = 4 (* {2} *);
        PSBTN_CANCEL* = 5 (* {0, 2} *);
        PSBTN_HELP* = 6 (* {1, 2} *);
        PSBTN_MAX* = 6 (* {1, 2} *);
        PSM_SETCURSELID* = 1138 (* {1, 4..6, 10} *);
        PSM_SETFINISHTEXTA* = 1139 (* {0, 1, 4..6, 10} *);
        PSM_SETFINISHTEXTW* = 1145 (* {0, 3..6, 10} *);
        PSM_SETFINISHTEXT* = 1139 (* {0, 1, 4..6, 10} *);
        PSM_GETTABCONTROL* = 1140 (* {2, 4..6, 10} *);
        PSM_ISDIALOGMESSAGE* = 1141 (* {0, 2, 4..6, 10} *);
        PSM_GETCURRENTPAGEHWND* = 1142 (* {1, 2, 4..6, 10} *);
        ID_PSRESTARTWINDOWS* = 2 (* {1} *);
        ID_PSREBOOTSYSTEM* = 3 (* {0, 1} *);
        WIZ_CXDLG* = 276 (* {2, 4, 8} *);
        WIZ_CYDLG* = 140 (* {2, 3, 7} *);
        WIZ_CXBMP* = 80 (* {4, 6} *);
        WIZ_BODYX* = 92 (* {2..4, 6} *);
        WIZ_BODYCX* = 184 (* {3..5, 7} *);
        PROP_SM_CXDLG* = 212 (* {2, 4, 6, 7} *);
        PROP_SM_CYDLG* = 188 (* {2..5, 7} *);
        PROP_MED_CXDLG* = 227 (* {0, 1, 5..7} *);
        PROP_MED_CYDLG* = 215 (* {0..2, 4, 6, 7} *);
        PROP_LG_CXDLG* = 252 (* {2..7} *);
        PROP_LG_CYDLG* = 218 (* {1, 3, 4, 6, 7} *);
        PRINTER_CONTROL_PAUSE* = 1 (* {0} *);
        PRINTER_CONTROL_RESUME* = 2 (* {1} *);
        PRINTER_CONTROL_PURGE* = 3 (* {0, 1} *);
        PRINTER_CONTROL_SET_STATUS* = 4 (* {2} *);
        PRINTER_STATUS_PAUSED* = {0};
        PRINTER_STATUS_ERROR* = {1};
        PRINTER_STATUS_PENDING_DELETION* = {2};
        PRINTER_STATUS_PAPER_JAM* = {3};
        PRINTER_STATUS_PAPER_OUT* = {4};
        PRINTER_STATUS_MANUAL_FEED* = {5};
        PRINTER_STATUS_PAPER_PROBLEM* = {6};
        PRINTER_STATUS_OFFLINE* = {7};
        PRINTER_STATUS_IO_ACTIVE* = {8};
        PRINTER_STATUS_BUSY* = {9};
        PRINTER_STATUS_PRINTING* = {10};
        PRINTER_STATUS_OUTPUT_BIN_FULL* = {11};
        PRINTER_STATUS_NOT_AVAILABLE* = {12};
        PRINTER_STATUS_WAITING* = {13};
        PRINTER_STATUS_PROCESSING* = {14};
        PRINTER_STATUS_INITIALIZING* = {15};
        PRINTER_STATUS_WARMING_UP* = {16};
        PRINTER_STATUS_TONER_LOW* = {17};
        PRINTER_STATUS_NO_TONER* = {18};
        PRINTER_STATUS_PAGE_PUNT* = {19};
        PRINTER_STATUS_USER_INTERVENTION* = {20};
        PRINTER_STATUS_OUT_OF_MEMORY* = {21};
        PRINTER_STATUS_DOOR_OPEN* = {22};
        PRINTER_STATUS_SERVER_UNKNOWN* = {23};
        PRINTER_STATUS_POWER_SAVE* = {24};
        PRINTER_ATTRIBUTE_QUEUED* = {0};
        PRINTER_ATTRIBUTE_DIRECT* = {1};
        PRINTER_ATTRIBUTE_DEFAULT* = {2};
        PRINTER_ATTRIBUTE_SHARED* = {3};
        PRINTER_ATTRIBUTE_NETWORK* = {4};
        PRINTER_ATTRIBUTE_HIDDEN* = {5};
        PRINTER_ATTRIBUTE_LOCAL* = {6};
        PRINTER_ATTRIBUTE_ENABLE_DEVQ* = {7};
        PRINTER_ATTRIBUTE_KEEPPRINTEDJOBS* = {8};
        PRINTER_ATTRIBUTE_DO_COMPLETE_FIRST* = {9};
        PRINTER_ATTRIBUTE_WORK_OFFLINE* = {10};
        PRINTER_ATTRIBUTE_ENABLE_BIDI* = {11};
        NO_PRIORITY* = 0 (* {} *);
        MAX_PRIORITY* = 99 (* {0, 1, 5, 6} *);
        MIN_PRIORITY* = 1 (* {0} *);
        DEF_PRIORITY* = 1 (* {0} *);
        JOB_CONTROL_PAUSE* = 1 (* {0} *);
        JOB_CONTROL_RESUME* = 2 (* {1} *);
        JOB_CONTROL_CANCEL* = 3 (* {0, 1} *);
        JOB_CONTROL_RESTART* = 4 (* {2} *);
        JOB_CONTROL_DELETE* = 5 (* {0, 2} *);
        JOB_STATUS_PAUSED* = {0};
        JOB_STATUS_ERROR* = {1};
        JOB_STATUS_DELETING* = {2};
        JOB_STATUS_SPOOLING* = {3};
        JOB_STATUS_PRINTING* = {4};
        JOB_STATUS_OFFLINE* = {5};
        JOB_STATUS_PAPEROUT* = {6};
        JOB_STATUS_PRINTED* = {7};
        JOB_STATUS_DELETED* = {8};
        JOB_STATUS_BLOCKED_DEVQ* = {9};
        JOB_STATUS_USER_INTERVENTION* = {10};
        JOB_POSITION_UNSPECIFIED* = 0 (* {} *);
        DI_CHANNEL* = 1 (* {0} *);
        DI_READ_SPOOL_JOB* = 3 (* {0, 1} *);
        FORM_BUILTIN* = 1 (* {0} *);
        PORT_TYPE_WRITE* = 1 (* {0} *);
        PORT_TYPE_READ* = 2 (* {1} *);
        PORT_TYPE_REDIRECTED* = 4 (* {2} *);
        PORT_TYPE_NET_ATTACHED* = 8 (* {3} *);
        PRINTER_ENUM_DEFAULT* = {0};
        PRINTER_ENUM_LOCAL* = {1};
        PRINTER_ENUM_CONNECTIONS* = {2};
        PRINTER_ENUM_FAVORITE* = {2};
        PRINTER_ENUM_NAME* = {3};
        PRINTER_ENUM_REMOTE* = {4};
        PRINTER_ENUM_SHARED* = {5};
        PRINTER_ENUM_NETWORK* = {6};
        PRINTER_ENUM_EXPAND* = {14};
        PRINTER_ENUM_CONTAINER* = {15};
        PRINTER_ENUM_ICONMASK* = {16..23};
        PRINTER_ENUM_ICON1* = {16};
        PRINTER_ENUM_ICON2* = {17};
        PRINTER_ENUM_ICON3* = {18};
        PRINTER_ENUM_ICON4* = {19};
        PRINTER_ENUM_ICON5* = {20};
        PRINTER_ENUM_ICON6* = {21};
        PRINTER_ENUM_ICON7* = {22};
        PRINTER_ENUM_ICON8* = {23};
        PRINTER_NOTIFY_TYPE* = 0 (* {} *);
        JOB_NOTIFY_TYPE* = 1 (* {0} *);
        PRINTER_NOTIFY_FIELD_SERVER_NAME* = 0 (* {} *);
        PRINTER_NOTIFY_FIELD_PRINTER_NAME* = 1 (* {0} *);
        PRINTER_NOTIFY_FIELD_SHARE_NAME* = 2 (* {1} *);
        PRINTER_NOTIFY_FIELD_PORT_NAME* = 3 (* {0, 1} *);
        PRINTER_NOTIFY_FIELD_DRIVER_NAME* = 4 (* {2} *);
        PRINTER_NOTIFY_FIELD_COMMENT* = 5 (* {0, 2} *);
        PRINTER_NOTIFY_FIELD_LOCATION* = 6 (* {1, 2} *);
        PRINTER_NOTIFY_FIELD_DEVMODE* = 7 (* {0..2} *);
        PRINTER_NOTIFY_FIELD_SEPFILE* = 8 (* {3} *);
        PRINTER_NOTIFY_FIELD_PRINT_PROCESSOR* = 9 (* {0, 3} *);
        PRINTER_NOTIFY_FIELD_PARAMETERS* = 10 (* {1, 3} *);
        PRINTER_NOTIFY_FIELD_DATATYPE* = 11 (* {0, 1, 3} *);
        PRINTER_NOTIFY_FIELD_SECURITY_DESCRIPTO (*...*)* = 12 (* {2, 3} *);
        PRINTER_NOTIFY_FIELD_ATTRIBUTES* = 13 (* {0, 2, 3} *);
        PRINTER_NOTIFY_FIELD_PRIORITY* = 14 (* {1..3} *);
        PRINTER_NOTIFY_FIELD_DEFAULT_PRIORITY* = 15 (* {0..3} *);
        PRINTER_NOTIFY_FIELD_START_TIME* = 16 (* {4} *);
        PRINTER_NOTIFY_FIELD_UNTIL_TIME* = 17 (* {0, 4} *);
        PRINTER_NOTIFY_FIELD_STATUS* = 18 (* {1, 4} *);
        PRINTER_NOTIFY_FIELD_STATUS_STRING* = 19 (* {0, 1, 4} *);
        PRINTER_NOTIFY_FIELD_CJOBS* = 20 (* {2, 4} *);
        PRINTER_NOTIFY_FIELD_AVERAGE_PPM* = 21 (* {0, 2, 4} *);
        PRINTER_NOTIFY_FIELD_TOTAL_PAGES* = 22 (* {1, 2, 4} *);
        PRINTER_NOTIFY_FIELD_PAGES_PRINTED* = 23 (* {0..2, 4} *);
        PRINTER_NOTIFY_FIELD_TOTAL_BYTES* = 24 (* {3, 4} *);
        PRINTER_NOTIFY_FIELD_BYTES_PRINTED* = 25 (* {0, 3, 4} *);
        JOB_NOTIFY_FIELD_PRINTER_NAME* = 0 (* {} *);
        JOB_NOTIFY_FIELD_MACHINE_NAME* = 1 (* {0} *);
        JOB_NOTIFY_FIELD_PORT_NAME* = 2 (* {1} *);
        JOB_NOTIFY_FIELD_USER_NAME* = 3 (* {0, 1} *);
        JOB_NOTIFY_FIELD_NOTIFY_NAME* = 4 (* {2} *);
        JOB_NOTIFY_FIELD_DATATYPE* = 5 (* {0, 2} *);
        JOB_NOTIFY_FIELD_PRINT_PROCESSOR* = 6 (* {1, 2} *);
        JOB_NOTIFY_FIELD_PARAMETERS* = 7 (* {0..2} *);
        JOB_NOTIFY_FIELD_DRIVER_NAME* = 8 (* {3} *);
        JOB_NOTIFY_FIELD_DEVMODE* = 9 (* {0, 3} *);
        JOB_NOTIFY_FIELD_STATUS* = 10 (* {1, 3} *);
        JOB_NOTIFY_FIELD_STATUS_STRING* = 11 (* {0, 1, 3} *);
        JOB_NOTIFY_FIELD_SECURITY_DESCRIPTOR* = 12 (* {2, 3} *);
        JOB_NOTIFY_FIELD_DOCUMENT* = 13 (* {0, 2, 3} *);
        JOB_NOTIFY_FIELD_PRIORITY* = 14 (* {1..3} *);
        JOB_NOTIFY_FIELD_POSITION* = 15 (* {0..3} *);
        JOB_NOTIFY_FIELD_SUBMITTED* = 16 (* {4} *);
        JOB_NOTIFY_FIELD_START_TIME* = 17 (* {0, 4} *);
        JOB_NOTIFY_FIELD_UNTIL_TIME* = 18 (* {1, 4} *);
        JOB_NOTIFY_FIELD_TIME* = 19 (* {0, 1, 4} *);
        JOB_NOTIFY_FIELD_TOTAL_PAGES* = 20 (* {2, 4} *);
        JOB_NOTIFY_FIELD_PAGES_PRINTED* = 21 (* {0, 2, 4} *);
        JOB_NOTIFY_FIELD_TOTAL_BYTES* = 22 (* {1, 2, 4} *);
        JOB_NOTIFY_FIELD_BYTES_PRINTED* = 23 (* {0..2, 4} *);
        PRINTER_NOTIFY_OPTIONS_REFRESH* = 1 (* {0} *);
        PRINTER_NOTIFY_INFO_DISCARDED* = 1 (* {0} *);
        PRINTER_CHANGE_ADD_PRINTER* = {0};
        PRINTER_CHANGE_SET_PRINTER* = {1};
        PRINTER_CHANGE_DELETE_PRINTER* = {2};
        PRINTER_CHANGE_FAILED_CONNECTION_PRINTE (*...*)* = {3};
        PRINTER_CHANGE_PRINTER* = {0..7};
        PRINTER_CHANGE_ADD_JOB* = {8};
        PRINTER_CHANGE_SET_JOB* = {9};
        PRINTER_CHANGE_DELETE_JOB* = {10};
        PRINTER_CHANGE_WRITE_JOB* = {11};
        PRINTER_CHANGE_JOB* = {8..15};
        PRINTER_CHANGE_ADD_FORM* = {16};
        PRINTER_CHANGE_SET_FORM* = {17};
        PRINTER_CHANGE_DELETE_FORM* = {18};
        PRINTER_CHANGE_FORM* = {16..18};
        PRINTER_CHANGE_ADD_PORT* = {20};
        PRINTER_CHANGE_CONFIGURE_PORT* = {21};
        PRINTER_CHANGE_DELETE_PORT* = {22};
        PRINTER_CHANGE_PORT* = {20..22};
        PRINTER_CHANGE_ADD_PRINT_PROCESSOR* = {24};
        PRINTER_CHANGE_DELETE_PRINT_PROCESSOR* = {26};
        PRINTER_CHANGE_PRINT_PROCESSOR* = {24..26};
        PRINTER_CHANGE_ADD_PRINTER_DRIVER* = {28};
        PRINTER_CHANGE_SET_PRINTER_DRIVER* = {29};
        PRINTER_CHANGE_DELETE_PRINTER_DRIVER* = {30};
        PRINTER_CHANGE_PRINTER_DRIVER* = {28..30};
        PRINTER_CHANGE_TIMEOUT* = {31};
        PRINTER_CHANGE_ALL* = {0..18, 20..22, 24..26, 28..30};
        PRINTER_ERROR_INFORMATION* = 80000000H;
        PRINTER_ERROR_WARNING* = 1073741824 (* {30} *);
        PRINTER_ERROR_SEVERE* = 536870912 (* {29} *);
        PRINTER_ERROR_OUTOFPAPER* = 1 (* {0} *);
        PRINTER_ERROR_JAM* = 2 (* {1} *);
        PRINTER_ERROR_OUTOFTONER* = 4 (* {2} *);
        SERVER_ACCESS_ADMINISTER* = 1 (* {0} *);
        SERVER_ACCESS_ENUMERATE* = 2 (* {1} *);
        PRINTER_ACCESS_ADMINISTER* = 4 (* {2} *);
        PRINTER_ACCESS_USE* = 8 (* {3} *);
        JOB_ACCESS_ADMINISTER* = 16 (* {4} *);
        SERVER_ALL_ACCESS* = 983043 (* {0, 1, 16..19} *);
        SERVER_READ* = 131074 (* {1, 17} *);
        SERVER_WRITE* = 131075 (* {0, 1, 17} *);
        SERVER_EXECUTE* = 131074 (* {1, 17} *);
        PRINTER_ALL_ACCESS* = 983052 (* {2, 3, 16..19} *);
        PRINTER_READ* = 131080 (* {3, 17} *);
        PRINTER_WRITE* = 131080 (* {3, 17} *);
        PRINTER_EXECUTE* = 131080 (* {3, 17} *);
        JOB_ALL_ACCESS* = 983056 (* {4, 16..19} *);
        JOB_READ* = 131088 (* {4, 17} *);
        JOB_WRITE* = 131088 (* {4, 17} *);
        JOB_EXECUTE* = 131088 (* {4, 17} *);
        SERVICES_ACTIVE_DATABASEW* = "ServicesActive";
        SERVICES_FAILED_DATABASEW* = "ServicesFailed";
        SERVICES_ACTIVE_DATABASEA* = "ServicesActive";
        SERVICES_FAILED_DATABASEA* = "ServicesFailed";
        SC_GROUP_IDENTIFIERW* = 43 (* {0, 1, 3, 5} *);
        SC_GROUP_IDENTIFIERA* = 43 (* {0, 1, 3, 5} *);
        SERVICES_ACTIVE_DATABASE* = "ServicesActive";
        SERVICES_FAILED_DATABASE* = "ServicesFailed";
        SC_GROUP_IDENTIFIER* = 43 (* {0, 1, 3, 5} *);
        SERVICE_NO_CHANGE* = -1 (* {0..31} *);
        SERVICE_ACTIVE* = 1 (* {0} *);
        SERVICE_INACTIVE* = 2 (* {1} *);
        SERVICE_STATE_ALL* = 3 (* {0, 1} *);
        SERVICE_CONTROL_STOP* = 1 (* {0} *);
        SERVICE_CONTROL_PAUSE* = 2 (* {1} *);
        SERVICE_CONTROL_CONTINUE* = 3 (* {0, 1} *);
        SERVICE_CONTROL_INTERROGATE* = 4 (* {2} *);
        SERVICE_CONTROL_SHUTDOWN* = 5 (* {0, 2} *);
        SERVICE_STOPPED* = 1 (* {0} *);
        SERVICE_START_PENDING* = 2 (* {1} *);
        SERVICE_STOP_PENDING* = 3 (* {0, 1} *);
        SERVICE_RUNNING* = 4 (* {2} *);
        SERVICE_CONTINUE_PENDING* = 5 (* {0, 2} *);
        SERVICE_PAUSE_PENDING* = 6 (* {1, 2} *);
        SERVICE_PAUSED* = 7 (* {0..2} *);
        SERVICE_ACCEPT_STOP* = 1 (* {0} *);
        SERVICE_ACCEPT_PAUSE_CONTINUE* = 2 (* {1} *);
        SERVICE_ACCEPT_SHUTDOWN* = 4 (* {2} *);
        SC_MANAGER_CONNECT* = {0};
        SC_MANAGER_CREATE_SERVICE* = {1};
        SC_MANAGER_ENUMERATE_SERVICE* = {2};
        SC_MANAGER_LOCK* = {3};
        SC_MANAGER_QUERY_LOCK_STATUS* = {4};
        SC_MANAGER_MODIFY_BOOT_CONFIG* = {5};
        SC_MANAGER_ALL_ACCESS* = {0..5, 16..19};
        SERVICE_QUERY_CONFIG* = {0};
        SERVICE_CHANGE_CONFIG* = {1};
        SERVICE_QUERY_STATUS* = {2};
        SERVICE_ENUMERATE_DEPENDENTS* = {3};
        SERVICE_START* = {4};
        SERVICE_STOP* = 32 (* {5} *);
        SERVICE_PAUSE_CONTINUE* = {6};
        SERVICE_INTERROGATE* = {7};
        SERVICE_USER_DEFINED_CONTROL* = {8};
        SERVICE_ALL_ACCESS* = {0..8, 16..19};
        DIALOPTION_BILLING* = {6};
        DIALOPTION_QUIET* = {7};
        DIALOPTION_DIALTONE* = {8};
        MDMVOLFLAG_LOW* = {0};
        MDMVOLFLAG_MEDIUM* = {1};
        MDMVOLFLAG_HIGH* = {2};
        MDMVOL_LOW* = {};
        MDMVOL_MEDIUM* = {0};
        MDMVOL_HIGH* = {1};
        MDMSPKRFLAG_OFF* = {0};
        MDMSPKRFLAG_DIAL* = {1};
        MDMSPKRFLAG_ON* = {2};
        MDMSPKRFLAG_CALLSETUP* = {3};
        MDMSPKR_OFF* = {};
        MDMSPKR_DIAL* = {0};
        MDMSPKR_ON* = {1};
        MDMSPKR_CALLSETUP* = {0, 1};
        MDM_COMPRESSION* = {0};
        MDM_ERROR_CONTROL* = {1};
        MDM_FORCED_EC* = {2};
        MDM_CELLULAR* = {3};
        MDM_FLOWCONTROL_HARD* = {4};
        MDM_FLOWCONTROL_SOFT* = {5};
        MDM_CCITT_OVERRIDE* = {6};
        MDM_SPEED_ADJUST* = {7};
        MDM_TONE_DIAL* = {8};
        MDM_BLIND_DIAL* = {9};
        MDM_V23_OVERRIDE* = {10};

    CONST (* enumerations *)
        SidTypeUser* = 1;
        SidTypeGroup* = 2;
        SidTypeDomain* = 3;
        SidTypeAlias* = 4;
        SidTypeWellKnownGroup* = 5;
        SidTypeDeletedAccount* = 6;
        SidTypeInvalid* = 7;
        SidTypeUnknown* = 8;
        AclRevisionInformation* = 1;
        AclSizeInformation* = 2;
        SecurityAnonymous* = 0;
        SecurityIdentification* = 1;
        SecurityImpersonation* = 2;
        SecurityDelegation* = 3;
        TokenPrimary* = 1;
        TokenImpersonation* = 2;
        TokenUser* = 1;
        TokenGroups* = 2;
        TokenPrivileges* = 3;
        TokenOwner* = 4;
        TokenPrimaryGroup* = 5;
        TokenDefaultDacl* = 6;
        TokenSource* = 7;
        TokenType* = 8;
        TokenImpersonationLevel* = 9;
        TokenStatistics* = 10;
        DriverType* = 1;
        FileSystemType* = 2;
        Win32ServiceOwnProcess* = 16;
        Win32ServiceShareProcess* = 32;
        AdapterType* = 4;
        RecognizerType* = 8;
        BootLoad* = 0;
        SystemLoad* = 1;
        AutoLoad* = 2;
        DemandLoad* = 3;
        DisableLoad* = 4;
        IgnoreError* = 0;
        NormalError* = 1;
        SevereError* = 2;
        CriticalError* = 3;
        GetFileExInfoStandard* = 0;
        GetFileExMaxInfoLevel* = 1;
        FindExInfoStandard* = 0;
        FindExInfoMaxInfoLevel* = 1;
        FindExSearchNameMatch* = 0;
        FindExSearchLimitToDirectories* = 1;
        FindExSearchLimitToDevices* = 2;
        FindExSearchMaxSearchOp* = 3;

    TYPE
        BOOL* = INTEGER;
        HANDLE* = PtrVoid;
        LCID* = INTEGER;
        LANGID* = SHORTINT;
        USN* = LONGINT;
        LUID* = LONGINT;
        PtrLIST_ENTRY* = POINTER TO LIST_ENTRY;
        LIST_ENTRY* = RECORD [untagged]
            Flink*: PtrLIST_ENTRY;
            Blink*: PtrLIST_ENTRY;
        END;
        PtrSINGLE_LIST_ENTRY* = POINTER TO SINGLE_LIST_ENTRY;
        SINGLE_LIST_ENTRY* = RECORD [untagged]
            Next*: PtrSINGLE_LIST_ENTRY;
        END;
        OBJECTID* = RECORD [untagged]
            Lineage*: COM.GUID;
            Uniquifier*: INTEGER;
        END;
        KSPIN_LOCK* = INTEGER;
        FLOATING_SAVE_AREA* = RECORD [untagged]
            ControlWord*: INTEGER;
            StatusWord*: INTEGER;
            TagWord*: INTEGER;
            ErrorOffset*: INTEGER;
            ErrorSelector*: INTEGER;
            DataOffset*: INTEGER;
            DataSelector*: INTEGER;
            RegisterArea*: ARRAY [untagged] 80 OF SHORTCHAR;
            Cr0NpxState*: INTEGER;
        END;
        PtrFLOATING_SAVE_AREA* = POINTER TO FLOATING_SAVE_AREA;
        CONTEXT* = RECORD [untagged]
            ContextFlags*: SET;
            Dr0*: INTEGER;
            Dr1*: INTEGER;
            Dr2*: INTEGER;
            Dr3*: INTEGER;
            Dr6*: INTEGER;
            Dr7*: INTEGER;
            FloatSave*: FLOATING_SAVE_AREA;
            SegGs*: INTEGER;
            SegFs*: INTEGER;
            SegEs*: INTEGER;
            SegDs*: INTEGER;
            Edi*: INTEGER;
            Esi*: INTEGER;
            Ebx*: INTEGER;
            Edx*: INTEGER;
            Ecx*: INTEGER;
            Eax*: INTEGER;
            Ebp*: INTEGER;
            Eip*: INTEGER;
            SegCs*: INTEGER;
            EFlags*: INTEGER;
            Esp*: INTEGER;
            SegSs*: INTEGER;
        END;
        PtrCONTEXT* = POINTER TO CONTEXT;
        LDT_ENTRY* = RECORD [untagged]
            LimitLow*: SHORTINT;
            BaseLow*: SHORTINT;
            HighWord*: RECORD [union]
                Bytes*: RECORD [untagged]
                    BaseMid*: SHORTCHAR;
                    Flags1*: SHORTCHAR;
                    Flags2*: SHORTCHAR;
                    BaseHi*: SHORTCHAR;
                END;
                Bits*: RECORD [untagged]
                    fBits0*: SET;
                    (* BaseMid*: LONGINT; (8 bits) *)
                    (* Type*: LONGINT; (5 bits) *)
                    (* Dpl*: LONGINT; (2 bits) *)
                    (* Pres*: LONGINT; (1 bits) *)
                    (* LimitHi*: LONGINT; (4 bits) *)
                    (* Sys*: LONGINT; (1 bits) *)
                    (* Reserved_0*: LONGINT; (1 bits) *)
                    (* Default_Big*: LONGINT; (1 bits) *)
                    (* Granularity*: LONGINT; (1 bits) *)
                    (* BaseHi*: LONGINT; (8 bits) *)
                END;
            END;
        END;
        PtrLDT_ENTRY* = POINTER TO LDT_ENTRY;
        PtrEXCEPTION_RECORD* = POINTER TO EXCEPTION_RECORD;
        EXCEPTION_RECORD* = RECORD [untagged]
            ExceptionCode*: INTEGER;
            ExceptionFlags*: SET;
            ExceptionRecord*: PtrEXCEPTION_RECORD;
            ExceptionAddress*: PtrVoid;
            NumberParameters*: INTEGER;
            ExceptionInformation*: ARRAY [untagged] 15 OF INTEGER;
        END;
        EXCEPTION_POINTERS* = RECORD [untagged]
            ExceptionRecord*: PtrEXCEPTION_RECORD;
            ContextRecord*: PtrCONTEXT;
        END;
        PtrEXCEPTION_POINTERS* = POINTER TO EXCEPTION_POINTERS;
        _EXCEPTION_REGISTRATION_RECORD* = RECORD [untagged] (*i*) END; 
        Ptr_EXCEPTION_REGISTRATION_RECORD* = POINTER TO _EXCEPTION_REGISTRATION_RECORD;
        PtrNT_TIB* = POINTER TO NT_TIB;
        NT_TIB* = RECORD [untagged]
            ExceptionList*: Ptr_EXCEPTION_REGISTRATION_RECORD;
            StackBase*: PtrVoid;
            StackLimit*: PtrVoid;
            SubSystemTib*: PtrVoid;
            u*: RECORD [union]
                FiberData*: PtrVoid;
                Version*: INTEGER;
            END;
            ArbitraryUserPointer*: PtrVoid;
            Self*: PtrNT_TIB;
        END;
        QUOTA_LIMITS* = RECORD [align8]
            PagedPoolLimit*: INTEGER;
            NonPagedPoolLimit*: INTEGER;
            MinimumWorkingSetSize*: INTEGER;
            MaximumWorkingSetSize*: INTEGER;
            PagefileLimit*: INTEGER;
            TimeLimit*: LONGINT;
        END;
        PtrQUOTA_LIMITS* = POINTER TO QUOTA_LIMITS;
        MEMORY_BASIC_INFORMATION* = RECORD [untagged]
            BaseAddress*: PtrVoid;
            AllocationBase*: PtrVoid;
            AllocationProtect*: INTEGER;
            RegionSize*: INTEGER;
            State*: INTEGER;
            Protect*: INTEGER;
            Type*: INTEGER;
        END;
        PtrMEMORY_BASIC_INFORMATION* = POINTER TO MEMORY_BASIC_INFORMATION;
        FILE_NOTIFY_INFORMATION* = RECORD [untagged]
            NextEntryOffset*: INTEGER;
            Action*: INTEGER;
            FileNameLength*: INTEGER;
            FileName*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrFILE_NOTIFY_INFORMATION* = POINTER TO FILE_NOTIFY_INFORMATION;
        PACCESS_TOKEN* = PtrVoid;
        PSECURITY_DESCRIPTOR* = PtrVoid;
        PSID* = PtrVoid;
        GENERIC_MAPPING* = RECORD [untagged]
            GenericRead*: ACCESS_MASK;
            GenericWrite*: ACCESS_MASK;
            GenericExecute*: ACCESS_MASK;
            GenericAll*: ACCESS_MASK;
        END;
        PtrGENERIC_MAPPING* = POINTER TO GENERIC_MAPPING;
        LUID_AND_ATTRIBUTES* = RECORD [untagged]
            Luid*: LUID;
            Attributes*: SET;
        END;
        PtrLUID_AND_ATTRIBUTES* = POINTER TO LUID_AND_ATTRIBUTES;
        LUID_AND_ATTRIBUTES_ARRAY* = ARRAY [untagged] 1 OF LUID_AND_ATTRIBUTES;
        PtrLUID_AND_ATTRIBUTES_ARRAY* = POINTER TO LUID_AND_ATTRIBUTES_ARRAY;
        SID_IDENTIFIER_AUTHORITY* = RECORD [untagged]
            Value*: ARRAY [untagged] 6 OF SHORTCHAR;
        END;
        PtrSID_IDENTIFIER_AUTHORITY* = POINTER TO SID_IDENTIFIER_AUTHORITY;
        SID* = RECORD [untagged]
            Revision*: SHORTCHAR;
            SubAuthorityCount*: SHORTCHAR;
            IdentifierAuthority*: SID_IDENTIFIER_AUTHORITY;
            SubAuthority*: ARRAY [untagged] 1 OF INTEGER;
        END;
        PtrSID* = POINTER TO SID;
        SID_NAME_USE* = INTEGER;
        SID_AND_ATTRIBUTES* = RECORD [untagged]
            Sid*: PSID;
            Attributes*: SET;
        END;
        PtrSID_AND_ATTRIBUTES* = POINTER TO SID_AND_ATTRIBUTES;
        SID_AND_ATTRIBUTES_ARRAY* = ARRAY [untagged] 1 OF SID_AND_ATTRIBUTES;
        PtrSID_AND_ATTRIBUTES_ARRAY* = POINTER TO SID_AND_ATTRIBUTES_ARRAY;
        ACL* = RECORD [untagged]
            AclRevision*: SHORTCHAR;
            Sbz1*: SHORTCHAR;
            AclSize*: SHORTINT;
            AceCount*: SHORTINT;
            Sbz2*: SHORTINT;
        END;
        PtrACL* = POINTER TO ACL;
        ACE_HEADER* = RECORD [untagged]
            AceType*: SHORTCHAR;
            AceFlags*: SHORTCHAR;
            AceSize*: SHORTINT;
        END;
        PtrACE_HEADER* = POINTER TO ACE_HEADER;
        ACCESS_ALLOWED_ACE* = RECORD [untagged]
            Header*: ACE_HEADER;
            Mask*: ACCESS_MASK;
            SidStart*: INTEGER;
        END;
        PtrACCESS_ALLOWED_ACE* = POINTER TO ACCESS_ALLOWED_ACE;
        ACCESS_DENIED_ACE* = RECORD [untagged]
            Header*: ACE_HEADER;
            Mask*: ACCESS_MASK;
            SidStart*: INTEGER;
        END;
        PtrACCESS_DENIED_ACE* = POINTER TO ACCESS_DENIED_ACE;
        SYSTEM_AUDIT_ACE* = RECORD [untagged]
            Header*: ACE_HEADER;
            Mask*: ACCESS_MASK;
            SidStart*: INTEGER;
        END;
        PtrSYSTEM_AUDIT_ACE* = POINTER TO SYSTEM_AUDIT_ACE;
        SYSTEM_ALARM_ACE* = RECORD [untagged]
            Header*: ACE_HEADER;
            Mask*: ACCESS_MASK;
            SidStart*: INTEGER;
        END;
        PtrSYSTEM_ALARM_ACE* = POINTER TO SYSTEM_ALARM_ACE;
        COMPOUND_ACCESS_ALLOWED_ACE* = RECORD [untagged]
            Header*: ACE_HEADER;
            Mask*: ACCESS_MASK;
            CompoundAceType*: SHORTINT;
            Reserved*: SHORTINT;
            SidStart*: INTEGER;
        END;
        PtrCOMPOUND_ACCESS_ALLOWED_ACE* = POINTER TO COMPOUND_ACCESS_ALLOWED_ACE;
        ACL_INFORMATION_CLASS* = INTEGER;
        ACL_REVISION_INFORMATION* = RECORD [untagged]
            AclRevision*: INTEGER;
        END;
        PtrACL_REVISION_INFORMATION* = POINTER TO ACL_REVISION_INFORMATION;
        ACL_SIZE_INFORMATION* = RECORD [untagged]
            AceCount*: INTEGER;
            AclBytesInUse*: INTEGER;
            AclBytesFree*: INTEGER;
        END;
        PtrACL_SIZE_INFORMATION* = POINTER TO ACL_SIZE_INFORMATION;
        SECURITY_DESCRIPTOR_CONTROL* = SHORTINT;
        SECURITY_DESCRIPTOR* = RECORD [untagged]
            Revision*: SHORTCHAR;
            Sbz1*: SHORTCHAR;
            Control*: SECURITY_DESCRIPTOR_CONTROL;
            Owner*: PSID;
            Group*: PSID;
            Sacl*: PtrACL;
            Dacl*: PtrACL;
        END;
        PtrSECURITY_DESCRIPTOR* = POINTER TO SECURITY_DESCRIPTOR;
        PRIVILEGE_SET* = RECORD [untagged]
            PrivilegeCount*: INTEGER;
            Control*: INTEGER;
            Privilege*: ARRAY [untagged] 1 OF LUID_AND_ATTRIBUTES;
        END;
        PtrPRIVILEGE_SET* = POINTER TO PRIVILEGE_SET;
        SECURITY_IMPERSONATION_LEVEL* = INTEGER;
        TOKEN_TYPE* = INTEGER;
        TOKEN_INFORMATION_CLASS* = INTEGER;
        TOKEN_USER* = RECORD [untagged]
            User*: SID_AND_ATTRIBUTES;
        END;
        PtrTOKEN_USER* = POINTER TO TOKEN_USER;
        TOKEN_GROUPS* = RECORD [untagged]
            GroupCount*: INTEGER;
            Groups*: ARRAY [untagged] 1 OF SID_AND_ATTRIBUTES;
        END;
        PtrTOKEN_GROUPS* = POINTER TO TOKEN_GROUPS;
        TOKEN_PRIVILEGES* = RECORD [untagged]
            PrivilegeCount*: INTEGER;
            Privileges*: ARRAY [untagged] 1 OF LUID_AND_ATTRIBUTES;
        END;
        PtrTOKEN_PRIVILEGES* = POINTER TO TOKEN_PRIVILEGES;
        TOKEN_OWNER* = RECORD [untagged]
            Owner*: PSID;
        END;
        PtrTOKEN_OWNER* = POINTER TO TOKEN_OWNER;
        TOKEN_PRIMARY_GROUP* = RECORD [untagged]
            PrimaryGroup*: PSID;
        END;
        PtrTOKEN_PRIMARY_GROUP* = POINTER TO TOKEN_PRIMARY_GROUP;
        TOKEN_DEFAULT_DACL* = RECORD [untagged]
            DefaultDacl*: PtrACL;
        END;
        PtrTOKEN_DEFAULT_DACL* = POINTER TO TOKEN_DEFAULT_DACL;
        TOKEN_SOURCE* = RECORD [align8]
            SourceName*: ARRAY [untagged] 8 OF SHORTCHAR;
            SourceIdentifier*: LUID;
        END;
        PtrTOKEN_SOURCE* = POINTER TO TOKEN_SOURCE;
        TOKEN_STATISTICS* = RECORD [align8]
            TokenId*: LUID;
            AuthenticationId*: LUID;
            ExpirationTime*: LONGINT;
            TokenType*: TOKEN_TYPE;
            ImpersonationLevel*: SECURITY_IMPERSONATION_LEVEL;
            DynamicCharged*: INTEGER;
            DynamicAvailable*: INTEGER;
            GroupCount*: INTEGER;
            PrivilegeCount*: INTEGER;
            ModifiedId*: LUID;
        END;
        PtrTOKEN_STATISTICS* = POINTER TO TOKEN_STATISTICS;
        TOKEN_CONTROL* = RECORD [align8]
            TokenId*: LUID;
            AuthenticationId*: LUID;
            ModifiedId*: LUID;
            TokenSource*: TOKEN_SOURCE;
        END;
        PtrTOKEN_CONTROL* = POINTER TO TOKEN_CONTROL;
        SECURITY_CONTEXT_TRACKING_MODE* = BOOLEAN;
        SECURITY_QUALITY_OF_SERVICE* = RECORD [untagged]
            Length*: INTEGER;
            ImpersonationLevel*: SECURITY_IMPERSONATION_LEVEL;
            ContextTrackingMode*: SECURITY_CONTEXT_TRACKING_MODE;
            EffectiveOnly*: BOOLEAN;
        END;
        PtrSECURITY_QUALITY_OF_SERVICE* = POINTER TO SECURITY_QUALITY_OF_SERVICE;
        SE_IMPERSONATION_STATE* = RECORD [untagged]
            Token*: PACCESS_TOKEN;
            CopyOnOpen*: BOOLEAN;
            EffectiveOnly*: BOOLEAN;
            Level*: SECURITY_IMPERSONATION_LEVEL;
        END;
        PtrSE_IMPERSONATION_STATE* = POINTER TO SE_IMPERSONATION_STATE;
        IMAGE_DOS_HEADER* = RECORD [noalign]
            e_magic*: SHORTINT;
            e_cblp*: SHORTINT;
            e_cp*: SHORTINT;
            e_crlc*: SHORTINT;
            e_cparhdr*: SHORTINT;
            e_minalloc*: SHORTINT;
            e_maxalloc*: SHORTINT;
            e_ss*: SHORTINT;
            e_sp*: SHORTINT;
            e_csum*: SHORTINT;
            e_ip*: SHORTINT;
            e_cs*: SHORTINT;
            e_lfarlc*: SHORTINT;
            e_ovno*: SHORTINT;
            e_res*: ARRAY [untagged] 4 OF SHORTINT;
            e_oemid*: SHORTINT;
            e_oeminfo*: SHORTINT;
            e_res2*: ARRAY [untagged] 10 OF SHORTINT;
            e_lfanew*: INTEGER;
        END;
        PtrIMAGE_DOS_HEADER* = POINTER TO IMAGE_DOS_HEADER;
        IMAGE_OS2_HEADER* = RECORD [noalign]
            ne_magic*: SHORTINT;
            ne_ver*: SHORTCHAR;
            ne_rev*: SHORTCHAR;
            ne_enttab*: SHORTINT;
            ne_cbenttab*: SHORTINT;
            ne_crc*: INTEGER;
            ne_flags*: SHORTINT;
            ne_autodata*: SHORTINT;
            ne_heap*: SHORTINT;
            ne_stack*: SHORTINT;
            ne_csip*: INTEGER;
            ne_sssp*: INTEGER;
            ne_cseg*: SHORTINT;
            ne_cmod*: SHORTINT;
            ne_cbnrestab*: SHORTINT;
            ne_segtab*: SHORTINT;
            ne_rsrctab*: SHORTINT;
            ne_restab*: SHORTINT;
            ne_modtab*: SHORTINT;
            ne_imptab*: SHORTINT;
            ne_nrestab*: INTEGER;
            ne_cmovent*: SHORTINT;
            ne_align*: SHORTINT;
            ne_cres*: SHORTINT;
            ne_exetyp*: SHORTCHAR;
            ne_flagsothers*: SHORTCHAR;
            ne_pretthunks*: SHORTINT;
            ne_psegrefbytes*: SHORTINT;
            ne_swaparea*: SHORTINT;
            ne_expver*: SHORTINT;
        END;
        PtrIMAGE_OS2_HEADER* = POINTER TO IMAGE_OS2_HEADER;
        IMAGE_VXD_HEADER* = RECORD [noalign]
            e32_magic*: SHORTINT;
            e32_border*: SHORTCHAR;
            e32_worder*: SHORTCHAR;
            e32_level*: INTEGER;
            e32_cpu*: SHORTINT;
            e32_os*: SHORTINT;
            e32_ver*: INTEGER;
            e32_mflags*: INTEGER;
            e32_mpages*: INTEGER;
            e32_startobj*: INTEGER;
            e32_eip*: INTEGER;
            e32_stackobj*: INTEGER;
            e32_esp*: INTEGER;
            e32_pagesize*: INTEGER;
            e32_lastpagesize*: INTEGER;
            e32_fixupsize*: INTEGER;
            e32_fixupsum*: INTEGER;
            e32_ldrsize*: INTEGER;
            e32_ldrsum*: INTEGER;
            e32_objtab*: INTEGER;
            e32_objcnt*: INTEGER;
            e32_objmap*: INTEGER;
            e32_itermap*: INTEGER;
            e32_rsrctab*: INTEGER;
            e32_rsrccnt*: INTEGER;
            e32_restab*: INTEGER;
            e32_enttab*: INTEGER;
            e32_dirtab*: INTEGER;
            e32_dircnt*: INTEGER;
            e32_fpagetab*: INTEGER;
            e32_frectab*: INTEGER;
            e32_impmod*: INTEGER;
            e32_impmodcnt*: INTEGER;
            e32_impproc*: INTEGER;
            e32_pagesum*: INTEGER;
            e32_datapage*: INTEGER;
            e32_preload*: INTEGER;
            e32_nrestab*: INTEGER;
            e32_cbnrestab*: INTEGER;
            e32_nressum*: INTEGER;
            e32_autodata*: INTEGER;
            e32_debuginfo*: INTEGER;
            e32_debuglen*: INTEGER;
            e32_instpreload*: INTEGER;
            e32_instdemand*: INTEGER;
            e32_heapsize*: INTEGER;
            e32_res3*: ARRAY [untagged] 12 OF SHORTCHAR;
            e32_winresoff*: INTEGER;
            e32_winreslen*: INTEGER;
            e32_devid*: SHORTINT;
            e32_ddkver*: SHORTINT;
        END;
        PtrIMAGE_VXD_HEADER* = POINTER TO IMAGE_VXD_HEADER;
        IMAGE_FILE_HEADER* = RECORD [noalign]
            Machine*: SHORTINT;
            NumberOfSections*: SHORTINT;
            TimeDateStamp*: INTEGER;
            PointerToSymbolTable*: INTEGER;
            NumberOfSymbols*: INTEGER;
            SizeOfOptionalHeader*: SHORTINT;
            Characteristics*: SHORTINT;
        END;
        PtrIMAGE_FILE_HEADER* = POINTER TO IMAGE_FILE_HEADER;
        IMAGE_DATA_DIRECTORY* = RECORD [noalign]
            VirtualAddress*: INTEGER;
            Size*: INTEGER;
        END;
        PtrIMAGE_DATA_DIRECTORY* = POINTER TO IMAGE_DATA_DIRECTORY;
        IMAGE_OPTIONAL_HEADER* = RECORD [noalign]
            Magic*: SHORTINT;
            MajorLinkerVersion*: SHORTCHAR;
            MinorLinkerVersion*: SHORTCHAR;
            SizeOfCode*: INTEGER;
            SizeOfInitializedData*: INTEGER;
            SizeOfUninitializedData*: INTEGER;
            AddressOfEntryPoint*: INTEGER;
            BaseOfCode*: INTEGER;
            BaseOfData*: INTEGER;
            ImageBase*: INTEGER;
            SectionAlignment*: INTEGER;
            FileAlignment*: INTEGER;
            MajorOperatingSystemVersion*: SHORTINT;
            MinorOperatingSystemVersion*: SHORTINT;
            MajorImageVersion*: SHORTINT;
            MinorImageVersion*: SHORTINT;
            MajorSubsystemVersion*: SHORTINT;
            MinorSubsystemVersion*: SHORTINT;
            Reserved1*: INTEGER;
            SizeOfImage*: INTEGER;
            SizeOfHeaders*: INTEGER;
            CheckSum*: INTEGER;
            Subsystem*: SHORTINT;
            DllCharacteristics*: SHORTINT;
            SizeOfStackReserve*: INTEGER;
            SizeOfStackCommit*: INTEGER;
            SizeOfHeapReserve*: INTEGER;
            SizeOfHeapCommit*: INTEGER;
            LoaderFlags*: INTEGER;
            NumberOfRvaAndSizes*: INTEGER;
            DataDirectory*: ARRAY [untagged] 16 OF IMAGE_DATA_DIRECTORY;
        END;
        PtrIMAGE_OPTIONAL_HEADER* = POINTER TO IMAGE_OPTIONAL_HEADER;
        IMAGE_ROM_OPTIONAL_HEADER* = RECORD [noalign]
            Magic*: SHORTINT;
            MajorLinkerVersion*: SHORTCHAR;
            MinorLinkerVersion*: SHORTCHAR;
            SizeOfCode*: INTEGER;
            SizeOfInitializedData*: INTEGER;
            SizeOfUninitializedData*: INTEGER;
            AddressOfEntryPoint*: INTEGER;
            BaseOfCode*: INTEGER;
            BaseOfData*: INTEGER;
            BaseOfBss*: INTEGER;
            GprMask*: INTEGER;
            CprMask*: ARRAY [untagged] 4 OF INTEGER;
            GpValue*: INTEGER;
        END;
        PtrIMAGE_ROM_OPTIONAL_HEADER* = POINTER TO IMAGE_ROM_OPTIONAL_HEADER;
        IMAGE_NT_HEADERS* = RECORD [noalign]
            Signature*: INTEGER;
            FileHeader*: IMAGE_FILE_HEADER;
            OptionalHeader*: IMAGE_OPTIONAL_HEADER;
        END;
        PtrIMAGE_NT_HEADERS* = POINTER TO IMAGE_NT_HEADERS;
        IMAGE_ROM_HEADERS* = RECORD [untagged]
            FileHeader*: IMAGE_FILE_HEADER;
            OptionalHeader*: IMAGE_ROM_OPTIONAL_HEADER;
        END;
        PtrIMAGE_ROM_HEADERS* = POINTER TO IMAGE_ROM_HEADERS;
        IMAGE_SECTION_HEADER* = RECORD [noalign]
            Name*: ARRAY [untagged] 8 OF SHORTCHAR;
            Misc*: RECORD [union]
                PhysicalAddress*: INTEGER;
                VirtualSize*: INTEGER;
            END;
            VirtualAddress*: INTEGER;
            SizeOfRawData*: INTEGER;
            PointerToRawData*: INTEGER;
            PointerToRelocations*: INTEGER;
            PointerToLinenumbers*: INTEGER;
            NumberOfRelocations*: SHORTINT;
            NumberOfLinenumbers*: SHORTINT;
            Characteristics*: INTEGER;
        END;
        PtrIMAGE_SECTION_HEADER* = POINTER TO IMAGE_SECTION_HEADER;
        IMAGE_SYMBOL* = RECORD [noalign]
            N*: RECORD [union]
                ShortName*: ARRAY [untagged] 8 OF SHORTCHAR;
                Name*: RECORD [noalign]
                    Short*: INTEGER;
                    Long*: INTEGER;
                END;
                LongName*: ARRAY [untagged] 2 OF POINTER TO (*?*) ARRAY [untagged] OF SHORTCHAR;
            END;
            Value*: INTEGER;
            SectionNumber*: SHORTINT;
            Type*: SHORTINT;
            StorageClass*: SHORTCHAR;
            NumberOfAuxSymbols*: SHORTCHAR;
        END;
        PtrIMAGE_SYMBOL* = POINTER TO IMAGE_SYMBOL;
        IMAGE_AUX_SYMBOL* = RECORD [union]
            Sym*: RECORD [noalign]
                TagIndex*: INTEGER;
                Misc*: RECORD [union]
                    LnSz*: RECORD [noalign]
                        Linenumber*: SHORTINT;
                        Size*: SHORTINT;
                    END;
                    TotalSize*: INTEGER;
                END;
                FcnAry*: RECORD [union]
                    Function*: RECORD [noalign]
                        PointerToLinenumber*: INTEGER;
                        PointerToNextFunction*: INTEGER;
                    END;
                    Array*: RECORD [noalign]
                        Dimension*: ARRAY [untagged] 4 OF SHORTINT;
                    END;
                END;
                TvIndex*: SHORTINT;
            END;
            File*: RECORD [untagged]
                Name*: ARRAY [untagged] 18 OF SHORTCHAR;
            END;
            Section*: RECORD [noalign]
                Length*: INTEGER;
                NumberOfRelocations*: SHORTINT;
                NumberOfLinenumbers*: SHORTINT;
                CheckSum*: INTEGER;
                Number*: SHORTINT;
                Selection*: SHORTCHAR;
            END;
        END;
        PtrIMAGE_AUX_SYMBOL* = POINTER TO IMAGE_AUX_SYMBOL;
        IMAGE_RELOCATION* = RECORD [noalign]
            u*: RECORD [union]
                VirtualAddress*: INTEGER;
                RelocCount*: INTEGER;
            END;
            SymbolTableIndex*: INTEGER;
            Type*: SHORTINT;
        END;
        PtrIMAGE_RELOCATION* = POINTER TO IMAGE_RELOCATION;
        IMAGE_BASE_RELOCATION* = RECORD [noalign]
            VirtualAddress*: INTEGER;
            SizeOfBlock*: INTEGER;
        END;
        PtrIMAGE_BASE_RELOCATION* = POINTER TO IMAGE_BASE_RELOCATION;
        IMAGE_LINENUMBER* = RECORD [noalign]
            Type*: RECORD [union]
                SymbolTableIndex*: INTEGER;
                VirtualAddress*: INTEGER;
            END;
            Linenumber*: SHORTINT;
        END;
        PtrIMAGE_LINENUMBER* = POINTER TO IMAGE_LINENUMBER;
        IMAGE_ARCHIVE_MEMBER_HEADER* = RECORD [untagged]
            Name*: ARRAY [untagged] 16 OF SHORTCHAR;
            Date*: ARRAY [untagged] 12 OF SHORTCHAR;
            UserID*: ARRAY [untagged] 6 OF SHORTCHAR;
            GroupID*: ARRAY [untagged] 6 OF SHORTCHAR;
            Mode*: ARRAY [untagged] 8 OF SHORTCHAR;
            Size*: ARRAY [untagged] 10 OF SHORTCHAR;
            EndHeader*: ARRAY [untagged] 2 OF SHORTCHAR;
        END;
        PtrIMAGE_ARCHIVE_MEMBER_HEADER* = POINTER TO IMAGE_ARCHIVE_MEMBER_HEADER;
        IMAGE_EXPORT_DIRECTORY* = RECORD [noalign]
            Characteristics*: INTEGER;
            TimeDateStamp*: INTEGER;
            MajorVersion*: SHORTINT;
            MinorVersion*: SHORTINT;
            Name*: INTEGER;
            Base*: INTEGER;
            NumberOfFunctions*: INTEGER;
            NumberOfNames*: INTEGER;
            AddressOfFunctions*: POINTER TO (*?*) ARRAY [untagged] OF POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            AddressOfNames*: POINTER TO (*?*) ARRAY [untagged] OF POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            AddressOfNameOrdinals*: POINTER TO (*?*) ARRAY [untagged] OF POINTER TO (*?*) ARRAY [untagged] OF SHORTINT;
        END;
        PtrIMAGE_EXPORT_DIRECTORY* = POINTER TO IMAGE_EXPORT_DIRECTORY;
        IMAGE_IMPORT_BY_NAME* = RECORD [noalign]
            Hint*: SHORTINT;
            Name*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrIMAGE_IMPORT_BY_NAME* = POINTER TO IMAGE_IMPORT_BY_NAME;
        IMAGE_THUNK_DATA* = RECORD [untagged]
            u1*: RECORD [union]
                ForwarderString*: POINTER TO (*?*) ARRAY [untagged] OF SHORTCHAR;
                Function*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
                Ordinal*: INTEGER;
                AddressOfData*: PtrIMAGE_IMPORT_BY_NAME;
            END;
        END;
        PtrIMAGE_THUNK_DATA* = POINTER TO IMAGE_THUNK_DATA;
        IMAGE_IMPORT_DESCRIPTOR* = RECORD [noalign]
            u*: RECORD [union]
                Characteristics*: INTEGER;
                OriginalFirstThunk*: PtrIMAGE_THUNK_DATA;
            END;
            TimeDateStamp*: INTEGER;
            ForwarderChain*: INTEGER;
            Name*: INTEGER;
            FirstThunk*: PtrIMAGE_THUNK_DATA;
        END;
        PtrIMAGE_IMPORT_DESCRIPTOR* = POINTER TO IMAGE_IMPORT_DESCRIPTOR;
        IMAGE_BOUND_IMPORT_DESCRIPTOR* = RECORD [noalign]
            TimeDateStamp*: INTEGER;
            OffsetModuleName*: SHORTINT;
            NumberOfModuleForwarderRefs*: SHORTINT;
        END;
        PtrIMAGE_BOUND_IMPORT_DESCRIPTOR* = POINTER TO IMAGE_BOUND_IMPORT_DESCRIPTOR;
        IMAGE_BOUND_FORWARDER_REF* = RECORD [noalign]
            TimeDateStamp*: INTEGER;
            OffsetModuleName*: SHORTINT;
            Reserved*: SHORTINT;
        END;
        PtrIMAGE_BOUND_FORWARDER_REF* = POINTER TO IMAGE_BOUND_FORWARDER_REF;
        IMAGE_TLS_CALLBACK* = PROCEDURE (DllHandle: PtrVoid; Reason: INTEGER; Reserved: PtrVoid);
        IMAGE_TLS_DIRECTORY* = RECORD [noalign]
            StartAddressOfRawData*: INTEGER;
            EndAddressOfRawData*: INTEGER;
            AddressOfIndex*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            AddressOfCallBacks*: POINTER TO (*?*) ARRAY [untagged] OF IMAGE_TLS_CALLBACK;
            SizeOfZeroFill*: INTEGER;
            Characteristics*: INTEGER;
        END;
        PtrIMAGE_TLS_DIRECTORY* = POINTER TO IMAGE_TLS_DIRECTORY;
        IMAGE_RESOURCE_DIRECTORY* = RECORD [noalign]
            Characteristics*: INTEGER;
            TimeDateStamp*: INTEGER;
            MajorVersion*: SHORTINT;
            MinorVersion*: SHORTINT;
            NumberOfNamedEntries*: SHORTINT;
            NumberOfIdEntries*: SHORTINT;
        END;
        PtrIMAGE_RESOURCE_DIRECTORY* = POINTER TO IMAGE_RESOURCE_DIRECTORY;
        IMAGE_RESOURCE_DIRECTORY_ENTRY* = RECORD [untagged]
            u*: RECORD [union]
                r*: RECORD [noalign]
                    fBits0*: SET;
                    (* NameOffset*: LONGINT; (31 bits) *)
                    (* NameIsString*: LONGINT; (1 bits) *)
                END;
                Name*: INTEGER;
                Id*: SHORTINT;
            END;
            u1*: RECORD [union]
                OffsetToData*: INTEGER;
                r*: RECORD [noalign]
                    fBits0*: SET;
                    (* OffsetToDirectory*: LONGINT; (31 bits) *)
                    (* DataIsDirectory*: LONGINT; (1 bits) *)
                END;
            END;
        END;
        PtrIMAGE_RESOURCE_DIRECTORY_ENTRY* = POINTER TO IMAGE_RESOURCE_DIRECTORY_ENTRY;
        IMAGE_RESOURCE_DIRECTORY_STRING* = RECORD [noalign]
            Length*: SHORTINT;
            NameString*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrIMAGE_RESOURCE_DIRECTORY_STRING* = POINTER TO IMAGE_RESOURCE_DIRECTORY_STRING;
        IMAGE_RESOURCE_DIR_STRING_U* = RECORD [noalign]
            Length*: SHORTINT;
            NameString*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrIMAGE_RESOURCE_DIR_STRING_U* = POINTER TO IMAGE_RESOURCE_DIR_STRING_U;
        IMAGE_RESOURCE_DATA_ENTRY* = RECORD [noalign]
            OffsetToData*: INTEGER;
            Size*: INTEGER;
            CodePage*: INTEGER;
            Reserved*: INTEGER;
        END;
        PtrIMAGE_RESOURCE_DATA_ENTRY* = POINTER TO IMAGE_RESOURCE_DATA_ENTRY;
        IMAGE_LOAD_CONFIG_DIRECTORY* = RECORD [noalign]
            Characteristics*: INTEGER;
            TimeDateStamp*: INTEGER;
            MajorVersion*: SHORTINT;
            MinorVersion*: SHORTINT;
            GlobalFlagsClear*: INTEGER;
            GlobalFlagsSet*: INTEGER;
            CriticalSectionDefaultTimeout*: INTEGER;
            DeCommitFreeBlockThreshold*: INTEGER;
            DeCommitTotalFreeThreshold*: INTEGER;
            LockPrefixTable*: PtrVoid;
            MaximumAllocationSize*: INTEGER;
            VirtualMemoryThreshold*: INTEGER;
            ProcessHeapFlags*: INTEGER;
            Reserved*: ARRAY [untagged] 4 OF INTEGER;
        END;
        PtrIMAGE_LOAD_CONFIG_DIRECTORY* = POINTER TO IMAGE_LOAD_CONFIG_DIRECTORY;
        IMAGE_RUNTIME_FUNCTION_ENTRY* = RECORD [noalign]
            BeginAddress*: INTEGER;
            EndAddress*: INTEGER;
            ExceptionHandler*: PtrVoid;
            HandlerData*: PtrVoid;
            PrologEndAddress*: INTEGER;
        END;
        PtrIMAGE_RUNTIME_FUNCTION_ENTRY* = POINTER TO IMAGE_RUNTIME_FUNCTION_ENTRY;
        IMAGE_DEBUG_DIRECTORY* = RECORD [noalign]
            Characteristics*: INTEGER;
            TimeDateStamp*: INTEGER;
            MajorVersion*: SHORTINT;
            MinorVersion*: SHORTINT;
            Type*: INTEGER;
            SizeOfData*: INTEGER;
            AddressOfRawData*: INTEGER;
            PointerToRawData*: INTEGER;
        END;
        PtrIMAGE_DEBUG_DIRECTORY* = POINTER TO IMAGE_DEBUG_DIRECTORY;
        IMAGE_COFF_SYMBOLS_HEADER* = RECORD [noalign]
            NumberOfSymbols*: INTEGER;
            LvaToFirstSymbol*: INTEGER;
            NumberOfLinenumbers*: INTEGER;
            LvaToFirstLinenumber*: INTEGER;
            RvaToFirstByteOfCode*: INTEGER;
            RvaToLastByteOfCode*: INTEGER;
            RvaToFirstByteOfData*: INTEGER;
            RvaToLastByteOfData*: INTEGER;
        END;
        PtrIMAGE_COFF_SYMBOLS_HEADER* = POINTER TO IMAGE_COFF_SYMBOLS_HEADER;
        FPO_DATA* = RECORD [noalign]
            ulOffStart*: INTEGER;
            cbProcSize*: INTEGER;
            cdwLocals*: INTEGER;
            cdwParams*: SHORTINT;
            fBits0*: SHORTINT;
            (* cbProlog*: INTEGER; (8 bits) *)
            (* cbRegs*: INTEGER; (3 bits) *)
            (* fHasSEH*: INTEGER; (1 bits) *)
            (* fUseBP*: INTEGER; (1 bits) *)
            (* reserved*: INTEGER; (1 bits) *)
            (* cbFrame*: INTEGER; (2 bits) *)
        END;
        PtrFPO_DATA* = POINTER TO FPO_DATA;
        IMAGE_DEBUG_MISC* = RECORD [noalign]
            DataType*: INTEGER;
            Length*: INTEGER;
            Unicode*: BOOLEAN;
            Reserved*: ARRAY [untagged] 3 OF SHORTCHAR;
            Data*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrIMAGE_DEBUG_MISC* = POINTER TO IMAGE_DEBUG_MISC;
        IMAGE_FUNCTION_ENTRY* = RECORD [noalign]
            StartingAddress*: INTEGER;
            EndingAddress*: INTEGER;
            EndOfPrologue*: INTEGER;
        END;
        PtrIMAGE_FUNCTION_ENTRY* = POINTER TO IMAGE_FUNCTION_ENTRY;
        IMAGE_SEPARATE_DEBUG_HEADER* = RECORD [noalign]
            Signature*: SHORTINT;
            Flags*: SHORTINT;
            Machine*: SHORTINT;
            Characteristics*: SHORTINT;
            TimeDateStamp*: INTEGER;
            CheckSum*: INTEGER;
            ImageBase*: INTEGER;
            SizeOfImage*: INTEGER;
            NumberOfSections*: INTEGER;
            ExportedNamesSize*: INTEGER;
            DebugDirectorySize*: INTEGER;
            Reserved*: ARRAY [untagged] 3 OF INTEGER;
        END;
        PtrIMAGE_SEPARATE_DEBUG_HEADER* = POINTER TO IMAGE_SEPARATE_DEBUG_HEADER;
        MESSAGE_RESOURCE_ENTRY* = RECORD [untagged]
            Length*: SHORTINT;
            Flags*: SHORTINT;
            Text*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrMESSAGE_RESOURCE_ENTRY* = POINTER TO MESSAGE_RESOURCE_ENTRY;
        MESSAGE_RESOURCE_BLOCK* = RECORD [untagged]
            LowId*: INTEGER;
            HighId*: INTEGER;
            OffsetToEntries*: INTEGER;
        END;
        PtrMESSAGE_RESOURCE_BLOCK* = POINTER TO MESSAGE_RESOURCE_BLOCK;
        MESSAGE_RESOURCE_DATA* = RECORD [untagged]
            NumberOfBlocks*: INTEGER;
            Blocks*: ARRAY [untagged] 1 OF MESSAGE_RESOURCE_BLOCK;
        END;
        PtrMESSAGE_RESOURCE_DATA* = POINTER TO MESSAGE_RESOURCE_DATA;
        PtrRTL_CRITICAL_SECTION* = POINTER TO RTL_CRITICAL_SECTION;
        RTL_CRITICAL_SECTION_DEBUG* = RECORD [untagged]
            Type*: SHORTINT;
            CreatorBackTraceIndex*: SHORTINT;
            CriticalSection*: PtrRTL_CRITICAL_SECTION;
            ProcessLocksList*: LIST_ENTRY;
            EntryCount*: INTEGER;
            ContentionCount*: INTEGER;
            Spare*: ARRAY [untagged] 2 OF INTEGER;
        END;
        PtrRTL_CRITICAL_SECTION_DEBUG* = POINTER TO RTL_CRITICAL_SECTION_DEBUG;
        RTL_CRITICAL_SECTION* = RECORD [untagged]
            DebugInfo*: PtrRTL_CRITICAL_SECTION_DEBUG;
            LockCount*: INTEGER;
            RecursionCount*: INTEGER;
            OwningThread*: HANDLE;
            LockSemaphore*: HANDLE;
            Reserved*: INTEGER;
        END;
        EVENTLOGRECORD* = RECORD [untagged]
            Length*: INTEGER;
            Reserved*: INTEGER;
            RecordNumber*: INTEGER;
            TimeGenerated*: INTEGER;
            TimeWritten*: INTEGER;
            EventID*: INTEGER;
            EventType*: SHORTINT;
            NumStrings*: SHORTINT;
            EventCategory*: SHORTINT;
            ReservedFlags*: SHORTINT;
            ClosingRecordNumber*: INTEGER;
            StringOffset*: INTEGER;
            UserSidLength*: INTEGER;
            UserSidOffset*: INTEGER;
            DataLength*: INTEGER;
            DataOffset*: INTEGER;
        END;
        PtrEVENTLOGRECORD* = POINTER TO EVENTLOGRECORD;
        SERVICE_NODE_TYPE* = INTEGER;
        SERVICE_LOAD_TYPE* = INTEGER;
        SERVICE_ERROR_TYPE* = INTEGER;
        TAPE_ERASE* = RECORD [untagged]
            Type*: INTEGER;
            Immediate*: BOOLEAN;
        END;
        PtrTAPE_ERASE* = POINTER TO TAPE_ERASE;
        TAPE_PREPARE* = RECORD [untagged]
            Operation*: INTEGER;
            Immediate*: BOOLEAN;
        END;
        PtrTAPE_PREPARE* = POINTER TO TAPE_PREPARE;
        TAPE_WRITE_MARKS* = RECORD [untagged]
            Type*: INTEGER;
            Count*: INTEGER;
            Immediate*: BOOLEAN;
        END;
        PtrTAPE_WRITE_MARKS* = POINTER TO TAPE_WRITE_MARKS;
        TAPE_GET_POSITION* = RECORD [align8]
            Type*: INTEGER;
            Partition*: INTEGER;
            Offset*: LONGINT;
        END;
        PtrTAPE_GET_POSITION* = POINTER TO TAPE_GET_POSITION;
        TAPE_SET_POSITION* = RECORD [align8]
            Method*: INTEGER;
            Partition*: INTEGER;
            Offset*: LONGINT;
            Immediate*: BOOLEAN;
        END;
        PtrTAPE_SET_POSITION* = POINTER TO TAPE_SET_POSITION;
        TAPE_GET_DRIVE_PARAMETERS* = RECORD [untagged]
            ECC*: BOOLEAN;
            Compression*: BOOLEAN;
            DataPadding*: BOOLEAN;
            ReportSetmarks*: BOOLEAN;
            DefaultBlockSize*: INTEGER;
            MaximumBlockSize*: INTEGER;
            MinimumBlockSize*: INTEGER;
            MaximumPartitionCount*: INTEGER;
            FeaturesLow*: SET;
            FeaturesHigh*: SET;
            EOTWarningZoneSize*: INTEGER;
        END;
        PtrTAPE_GET_DRIVE_PARAMETERS* = POINTER TO TAPE_GET_DRIVE_PARAMETERS;
        TAPE_SET_DRIVE_PARAMETERS* = RECORD [untagged]
            ECC*: BOOLEAN;
            Compression*: BOOLEAN;
            DataPadding*: BOOLEAN;
            ReportSetmarks*: BOOLEAN;
            EOTWarningZoneSize*: INTEGER;
        END;
        PtrTAPE_SET_DRIVE_PARAMETERS* = POINTER TO TAPE_SET_DRIVE_PARAMETERS;
        TAPE_GET_MEDIA_PARAMETERS* = RECORD [align8]
            Capacity*: LONGINT;
            Remaining*: LONGINT;
            BlockSize*: INTEGER;
            PartitionCount*: INTEGER;
            WriteProtected*: BOOLEAN;
        END;
        PtrTAPE_GET_MEDIA_PARAMETERS* = POINTER TO TAPE_GET_MEDIA_PARAMETERS;
        TAPE_SET_MEDIA_PARAMETERS* = RECORD [untagged]
            BlockSize*: INTEGER;
        END;
        PtrTAPE_SET_MEDIA_PARAMETERS* = POINTER TO TAPE_SET_MEDIA_PARAMETERS;
        TAPE_CREATE_PARTITION* = RECORD [untagged]
            Method*: INTEGER;
            Count*: INTEGER;
            Size*: INTEGER;
        END;
        PtrTAPE_CREATE_PARTITION* = POINTER TO TAPE_CREATE_PARTITION;
        WPARAM* = INTEGER;
        LPARAM* = INTEGER;
        LRESULT* = INTEGER;
        HWND* = HANDLE;
        HHOOK* = HANDLE;
        ATOM* = SHORTINT;
        HGLOBAL* = HANDLE;
        HLOCAL* = HANDLE;
        GLOBALHANDLE* = HANDLE;
        LOCALHANDLE* = HANDLE;
        FARPROC* = PROCEDURE (): INTEGER;
        NEARPROC* = PROCEDURE (): INTEGER;
        ROC* = PROCEDURE (): INTEGER;
        HGDIOBJ* = HANDLE;
        HACCEL* = HANDLE;
        HBITMAP* = HANDLE;
        HBRUSH* = HANDLE;
        HCOLORSPACE* = HANDLE;
        HDC* = HANDLE;
        HGLRC* = HANDLE;
        HDESK* = HANDLE;
        HENHMETAFILE* = HANDLE;
        HMETAFILEPICT* = HANDLE;
        HFONT* = HANDLE;
        HICON* = HANDLE;
        HMENU* = HANDLE;
        HMETAFILE* = HANDLE;
        HINSTANCE* = HANDLE;
        HMODULE* = HINSTANCE;
        HPALETTE* = HANDLE;
        HPEN* = HANDLE;
        HRGN* = HANDLE;
        HRSRC* = HANDLE;
        HSTR* = HANDLE;
        HTASK* = HANDLE;
        HWINSTA* = HANDLE;
        HKL* = HANDLE;
        HFILE* = INTEGER;
        HCURSOR* = HICON;
        COLORREF* = INTEGER;
        RECT* = RECORD [untagged]
            left*: INTEGER;
            top*: INTEGER;
            right*: INTEGER;
            bottom*: INTEGER;
        END;
        PtrRECT* = POINTER TO RECT;
        _RECTL* = RECORD [untagged]
            left*: INTEGER;
            top*: INTEGER;
            right*: INTEGER;
            bottom*: INTEGER;
        END;
        POINT* = RECORD [untagged]
            x*: INTEGER;
            y*: INTEGER;
        END;
        PtrPOINT* = POINTER TO POINT;
        _POINTL* = RECORD [untagged]
            x*: INTEGER;
            y*: INTEGER;
        END;
        SIZE* = RECORD [untagged]
            cx*: INTEGER;
            cy*: INTEGER;
        END;
        PtrSIZE* = POINTER TO SIZE;
        POINTS* = RECORD [untagged]
            x*: SHORTINT;
            y*: SHORTINT;
        END;
        PtrPOINTS* = POINTER TO POINTS;
        OVERLAPPED* = RECORD [untagged]
            Internal*: INTEGER;
            InternalHigh*: INTEGER;
            Offset*: INTEGER;
            OffsetHigh*: INTEGER;
            hEvent*: HANDLE;
        END;
        PtrOVERLAPPED* = POINTER TO OVERLAPPED;
        SECURITY_ATTRIBUTES* = RECORD [untagged]
            nLength*: INTEGER;
            lpSecurityDescriptor*: PtrVoid;
            bInheritHandle*: BOOL;
        END;
        PtrSECURITY_ATTRIBUTES* = POINTER TO SECURITY_ATTRIBUTES;
        PROCESS_INFORMATION* = RECORD [untagged]
            hProcess*: HANDLE;
            hThread*: HANDLE;
            dwProcessId*: INTEGER;
            dwThreadId*: INTEGER;
        END;
        PtrPROCESS_INFORMATION* = POINTER TO PROCESS_INFORMATION;
        FILETIME* = RECORD [untagged]
            dwLowDateTime*: INTEGER;
            dwHighDateTime*: INTEGER;
        END;
        PtrFILETIME* = POINTER TO FILETIME;
        SYSTEMTIME* = RECORD [untagged]
            wYear*: SHORTINT;
            wMonth*: SHORTINT;
            wDayOfWeek*: SHORTINT;
            wDay*: SHORTINT;
            wHour*: SHORTINT;
            wMinute*: SHORTINT;
            wSecond*: SHORTINT;
            wMilliseconds*: SHORTINT;
        END;
        PtrSYSTEMTIME* = POINTER TO SYSTEMTIME;
        THREAD_START_ROUTINE* = PROCEDURE (lpThreadParameter: PtrVoid): INTEGER;
        FIBER_START_ROUTINE* = PROCEDURE (lpFiberParameter: PtrVoid);
        CRITICAL_SECTION* = RTL_CRITICAL_SECTION;
        PtrCRITICAL_SECTION* = PtrRTL_CRITICAL_SECTION;
        CRITICAL_SECTION_DEBUG* = RTL_CRITICAL_SECTION_DEBUG;
        PtrCRITICAL_SECTION_DEBUG* = PtrRTL_CRITICAL_SECTION_DEBUG;
        COMMPROP* = RECORD [untagged]
            wPacketLength*: SHORTINT;
            wPacketVersion*: SHORTINT;
            dwServiceMask*: INTEGER;
            dwReserved1*: INTEGER;
            dwMaxTxQueue*: INTEGER;
            dwMaxRxQueue*: INTEGER;
            dwMaxBaud*: SET;
            dwProvSubType*: INTEGER;
            dwProvCapabilities*: SET;
            dwSettableParams*: SET;
            dwSettableBaud*: SET;
            wSettableData*: SHORTINT;
            wSettableStopParity*: SHORTINT;
            dwCurrentTxQueue*: INTEGER;
            dwCurrentRxQueue*: INTEGER;
            dwProvSpec1*: INTEGER;
            dwProvSpec2*: INTEGER;
            wcProvChar*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrCOMMPROP* = POINTER TO COMMPROP;
        COMSTAT* = RECORD [untagged]
            fBits0*: SET;
            (* fCtsHold*: LONGINT; (1 bits) *)
            (* fDsrHold*: LONGINT; (1 bits) *)
            (* fRlsdHold*: LONGINT; (1 bits) *)
            (* fXoffHold*: LONGINT; (1 bits) *)
            (* fXoffSent*: LONGINT; (1 bits) *)
            (* fEof*: LONGINT; (1 bits) *)
            (* fTxim*: LONGINT; (1 bits) *)
            (* fReserved*: LONGINT; (25 bits) *)
            cbInQue*: INTEGER;
            cbOutQue*: INTEGER;
        END;
        PtrCOMSTAT* = POINTER TO COMSTAT;
        DCB* = RECORD [untagged]
            DCBlength*: INTEGER;
            BaudRate*: INTEGER;
            fBits0*: SET;
            (* fBinary*: LONGINT; (1 bits) *)
            (* fParity*: LONGINT; (1 bits) *)
            (* fOutxCtsFlow*: LONGINT; (1 bits) *)
            (* fOutxDsrFlow*: LONGINT; (1 bits) *)
            (* fDtrControl*: LONGINT; (2 bits) *)
            (* fDsrSensitivity*: LONGINT; (1 bits) *)
            (* fTXContinueOnXoff*: LONGINT; (1 bits) *)
            (* fOutX*: LONGINT; (1 bits) *)
            (* fInX*: LONGINT; (1 bits) *)
            (* fErrorChar*: LONGINT; (1 bits) *)
            (* fNull*: LONGINT; (1 bits) *)
            (* fRtsControl*: LONGINT; (2 bits) *)
            (* fAbortOnError*: LONGINT; (1 bits) *)
            (* fDummy2*: LONGINT; (17 bits) *)
            wReserved*: SHORTINT;
            XonLim*: SHORTINT;
            XoffLim*: SHORTINT;
            ByteSize*: SHORTCHAR;
            Parity*: SHORTCHAR;
            StopBits*: SHORTCHAR;
            XonChar*: SHORTCHAR;
            XoffChar*: SHORTCHAR;
            ErrorChar*: SHORTCHAR;
            EofChar*: SHORTCHAR;
            EvtChar*: SHORTCHAR;
            wReserved1*: SHORTINT;
        END;
        PtrDCB* = POINTER TO DCB;
        COMMTIMEOUTS* = RECORD [untagged]
            ReadIntervalTimeout*: INTEGER;
            ReadTotalTimeoutMultiplier*: INTEGER;
            ReadTotalTimeoutConstant*: INTEGER;
            WriteTotalTimeoutMultiplier*: INTEGER;
            WriteTotalTimeoutConstant*: INTEGER;
        END;
        PtrCOMMTIMEOUTS* = POINTER TO COMMTIMEOUTS;
        COMMCONFIG* = RECORD [untagged]
            dwSize*: INTEGER;
            wVersion*: SHORTINT;
            wReserved*: SHORTINT;
            dcb*: DCB;
            dwProviderSubType*: INTEGER;
            dwProviderOffset*: INTEGER;
            dwProviderSize*: INTEGER;
            wcProviderData*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrCOMMCONFIG* = POINTER TO COMMCONFIG;
        SYSTEM_INFO* = RECORD [untagged]
            u*: RECORD [union]
                dwOemId*: INTEGER;
                r*: RECORD [untagged]
                    wProcessorArchitecture*: SHORTINT;
                    wReserved*: SHORTINT;
                END;
            END;
            dwPageSize*: INTEGER;
            lpMinimumApplicationAddress*: PtrVoid;
            lpMaximumApplicationAddress*: PtrVoid;
            dwActiveProcessorMask*: INTEGER;
            dwNumberOfProcessors*: INTEGER;
            dwProcessorType*: INTEGER;
            dwAllocationGranularity*: INTEGER;
            wProcessorLevel*: SHORTINT;
            wProcessorRevision*: SHORTINT;
        END;
        PtrSYSTEM_INFO* = POINTER TO SYSTEM_INFO;
        MEMORYSTATUS* = RECORD [untagged]
            dwLength*: INTEGER;
            dwMemoryLoad*: INTEGER;
            dwTotalPhys*: INTEGER;
            dwAvailPhys*: INTEGER;
            dwTotalPageFile*: INTEGER;
            dwAvailPageFile*: INTEGER;
            dwTotalVirtual*: INTEGER;
            dwAvailVirtual*: INTEGER;
        END;
        PtrMEMORYSTATUS* = POINTER TO MEMORYSTATUS;
        EXCEPTION_DEBUG_INFO* = RECORD [untagged]
            ExceptionRecord*: EXCEPTION_RECORD;
            dwFirstChance*: INTEGER;
        END;
        PtrEXCEPTION_DEBUG_INFO* = POINTER TO EXCEPTION_DEBUG_INFO;
        CREATE_THREAD_DEBUG_INFO* = RECORD [untagged]
            hThread*: HANDLE;
            lpThreadLocalBase*: PtrVoid;
            lpStartAddress*: THREAD_START_ROUTINE;
        END;
        PtrCREATE_THREAD_DEBUG_INFO* = POINTER TO CREATE_THREAD_DEBUG_INFO;
        CREATE_PROCESS_DEBUG_INFO* = RECORD [untagged]
            hFile*: HANDLE;
            hProcess*: HANDLE;
            hThread*: HANDLE;
            lpBaseOfImage*: PtrVoid;
            dwDebugInfoFileOffset*: INTEGER;
            nDebugInfoSize*: INTEGER;
            lpThreadLocalBase*: PtrVoid;
            lpStartAddress*: THREAD_START_ROUTINE;
            lpImageName*: PtrVoid;
            fUnicode*: SHORTINT;
        END;
        PtrCREATE_PROCESS_DEBUG_INFO* = POINTER TO CREATE_PROCESS_DEBUG_INFO;
        EXIT_THREAD_DEBUG_INFO* = RECORD [untagged]
            dwExitCode*: INTEGER;
        END;
        PtrEXIT_THREAD_DEBUG_INFO* = POINTER TO EXIT_THREAD_DEBUG_INFO;
        EXIT_PROCESS_DEBUG_INFO* = RECORD [untagged]
            dwExitCode*: INTEGER;
        END;
        PtrEXIT_PROCESS_DEBUG_INFO* = POINTER TO EXIT_PROCESS_DEBUG_INFO;
        LOAD_DLL_DEBUG_INFO* = RECORD [untagged]
            hFile*: HANDLE;
            lpBaseOfDll*: PtrVoid;
            dwDebugInfoFileOffset*: INTEGER;
            nDebugInfoSize*: INTEGER;
            lpImageName*: PtrVoid;
            fUnicode*: SHORTINT;
        END;
        PtrLOAD_DLL_DEBUG_INFO* = POINTER TO LOAD_DLL_DEBUG_INFO;
        UNLOAD_DLL_DEBUG_INFO* = RECORD [untagged]
            lpBaseOfDll*: PtrVoid;
        END;
        PtrUNLOAD_DLL_DEBUG_INFO* = POINTER TO UNLOAD_DLL_DEBUG_INFO;
        OUTPUT_DEBUG_STRING_INFO* = RECORD [untagged]
            lpDebugStringData*: PtrSTR;
            fUnicode*: SHORTINT;
            nDebugStringLength*: SHORTINT;
        END;
        PtrOUTPUT_DEBUG_STRING_INFO* = POINTER TO OUTPUT_DEBUG_STRING_INFO;
        RIP_INFO* = RECORD [untagged]
            dwError*: INTEGER;
            dwType*: INTEGER;
        END;
        PtrRIP_INFO* = POINTER TO RIP_INFO;
        DEBUG_EVENT* = RECORD [untagged]
            dwDebugEventCode*: INTEGER;
            dwProcessId*: INTEGER;
            dwThreadId*: INTEGER;
            u*: RECORD [union]
                Exception*: EXCEPTION_DEBUG_INFO;
                CreateThread*: CREATE_THREAD_DEBUG_INFO;
                CreateProcessInfo*: CREATE_PROCESS_DEBUG_INFO;
                ExitThread*: EXIT_THREAD_DEBUG_INFO;
                ExitProcess*: EXIT_PROCESS_DEBUG_INFO;
                LoadDll*: LOAD_DLL_DEBUG_INFO;
                UnloadDll*: UNLOAD_DLL_DEBUG_INFO;
                DebugString*: OUTPUT_DEBUG_STRING_INFO;
                RipInfo*: RIP_INFO;
            END;
        END;
        PtrDEBUG_EVENT* = POINTER TO DEBUG_EVENT;
        OFSTRUCT* = RECORD [untagged]
            cBytes*: SHORTCHAR;
            fFixedDisk*: SHORTCHAR;
            nErrCode*: SHORTINT;
            Reserved1*: SHORTINT;
            Reserved2*: SHORTINT;
            szPathName*: ARRAY [untagged] 128 OF SHORTCHAR;
        END;
        PtrOFSTRUCT* = POINTER TO OFSTRUCT;
        PROCESS_HEAP_ENTRY* = RECORD [untagged]
            lpData*: PtrVoid;
            cbData*: INTEGER;
            cbOverhead*: SHORTCHAR;
            iRegionIndex*: SHORTCHAR;
            wFlags*: SHORTINT;
            u*: RECORD [union]
                Block*: RECORD [untagged]
                    hMem*: HANDLE;
                    dwReserved*: ARRAY [untagged] 3 OF INTEGER;
                END;
                Region*: RECORD [untagged]
                    dwCommittedSize*: INTEGER;
                    dwUnCommittedSize*: INTEGER;
                    lpFirstBlock*: PtrVoid;
                    lpLastBlock*: PtrVoid;
                END;
            END;
        END;
        PtrPROCESS_HEAP_ENTRY* = POINTER TO PROCESS_HEAP_ENTRY;
        TOP_LEVEL_EXCEPTION_FILTER* = PROCEDURE (VAR [nil] ExceptionInfo: EXCEPTION_POINTERS): INTEGER;
        APCFUNC* = PROCEDURE (dwParam: INTEGER);
        BY_HANDLE_FILE_INFORMATION* = RECORD [align8]
            dwFileAttributes*: SET;
            ftCreationTime*: FILETIME;
            ftLastAccessTime*: FILETIME;
            ftLastWriteTime*: FILETIME;
            dwVolumeSerialNumber*: INTEGER;
            nFileSizeHigh*: INTEGER;
            nFileSizeLow*: INTEGER;
            nNumberOfLinks*: INTEGER;
            nFileIndexHigh*: INTEGER;
            nFileIndexLow*: INTEGER;
        END;
        PtrBY_HANDLE_FILE_INFORMATION* = POINTER TO BY_HANDLE_FILE_INFORMATION;
        TIME_ZONE_INFORMATION* = RECORD [untagged]
            Bias*: INTEGER;
            StandardName*: ARRAY [untagged] 32 OF CHAR;
            StandardDate*: SYSTEMTIME;
            StandardBias*: INTEGER;
            DaylightName*: ARRAY [untagged] 32 OF CHAR;
            DaylightDate*: SYSTEMTIME;
            DaylightBias*: INTEGER;
        END;
        PtrTIME_ZONE_INFORMATION* = POINTER TO TIME_ZONE_INFORMATION;
        OVERLAPPED_COMPLETION_ROUTINE* = PROCEDURE (dwErrorCode: INTEGER; dwNumberOfBytesTransfered: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED);
        WIN32_STREAM_ID* = RECORD [align8]
            dwStreamId*: INTEGER;
            dwStreamAttributes*: SET;
            Size*: LONGINT;
            dwStreamNameSize*: INTEGER;
            cStreamName*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrWIN32_STREAM_ID* = POINTER TO WIN32_STREAM_ID;
        STARTUPINFOA* = RECORD [untagged]
            cb*: INTEGER;
            lpReserved*: PtrSTR;
            lpDesktop*: PtrSTR;
            lpTitle*: PtrSTR;
            dwX*: INTEGER;
            dwY*: INTEGER;
            dwXSize*: INTEGER;
            dwYSize*: INTEGER;
            dwXCountChars*: INTEGER;
            dwYCountChars*: INTEGER;
            dwFillAttribute*: INTEGER;
            dwFlags*: SET;
            wShowWindow*: SHORTINT;
            cbReserved2*: SHORTINT;
            lpReserved2*: POINTER TO (*?*) ARRAY [untagged] OF SHORTCHAR;
            hStdInput*: HANDLE;
            hStdOutput*: HANDLE;
            hStdError*: HANDLE;
        END;
        PtrSTARTUPINFOA* = POINTER TO STARTUPINFOA;
        STARTUPINFOW* = RECORD [untagged]
            cb*: INTEGER;
            lpReserved*: PtrWSTR;
            lpDesktop*: PtrWSTR;
            lpTitle*: PtrWSTR;
            dwX*: INTEGER;
            dwY*: INTEGER;
            dwXSize*: INTEGER;
            dwYSize*: INTEGER;
            dwXCountChars*: INTEGER;
            dwYCountChars*: INTEGER;
            dwFillAttribute*: INTEGER;
            dwFlags*: SET;
            wShowWindow*: SHORTINT;
            cbReserved2*: SHORTINT;
            lpReserved2*: POINTER TO (*?*) ARRAY [untagged] OF SHORTCHAR;
            hStdInput*: HANDLE;
            hStdOutput*: HANDLE;
            hStdError*: HANDLE;
        END;
        PtrSTARTUPINFOW* = POINTER TO STARTUPINFOW;
        STARTUPINFO* = STARTUPINFOA;
        PtrSTARTUPINFO* = PtrSTARTUPINFOA;
        WIN32_FIND_DATAA* = RECORD [align8]
            dwFileAttributes*: SET;
            ftCreationTime*: FILETIME;
            ftLastAccessTime*: FILETIME;
            ftLastWriteTime*: FILETIME;
            nFileSizeHigh*: INTEGER;
            nFileSizeLow*: INTEGER;
            dwReserved0*: INTEGER;
            dwReserved1*: INTEGER;
            cFileName*: ARRAY [untagged] 260 OF SHORTCHAR;
            cAlternateFileName*: ARRAY [untagged] 14 OF SHORTCHAR;
        END;
        PtrWIN32_FIND_DATAA* = POINTER TO WIN32_FIND_DATAA;
        WIN32_FIND_DATAW* = RECORD [align8]
            dwFileAttributes*: SET;
            ftCreationTime*: FILETIME;
            ftLastAccessTime*: FILETIME;
            ftLastWriteTime*: FILETIME;
            nFileSizeHigh*: INTEGER;
            nFileSizeLow*: INTEGER;
            dwReserved0*: INTEGER;
            dwReserved1*: INTEGER;
            cFileName*: ARRAY [untagged] 260 OF CHAR;
            cAlternateFileName*: ARRAY [untagged] 14 OF CHAR;
        END;
        PtrWIN32_FIND_DATAW* = POINTER TO WIN32_FIND_DATAW;
        WIN32_FIND_DATA* = WIN32_FIND_DATAA;
        PtrWIN32_FIND_DATA* = PtrWIN32_FIND_DATAA;
        WIN32_FILE_ATTRIBUTE_DATA* = RECORD [align8]
            dwFileAttributes*: SET;
            ftCreationTime*: FILETIME;
            ftLastAccessTime*: FILETIME;
            ftLastWriteTime*: FILETIME;
            nFileSizeHigh*: INTEGER;
            nFileSizeLow*: INTEGER;
        END;
        PtrWIN32_FILE_ATTRIBUTE_DATA* = POINTER TO WIN32_FILE_ATTRIBUTE_DATA;
        TIMERAPCROUTINE* = PROCEDURE (lpArgToCompletionRoutine: PtrVoid; dwTimerLowValue: INTEGER; dwTimerHighValue: INTEGER);
        ENUMRESTYPEPROC* = PROCEDURE (): INTEGER;
        ENUMRESNAMEPROC* = PROCEDURE (): INTEGER;
        ENUMRESLANGPROC* = PROCEDURE (): INTEGER;
        GET_FILEEX_INFO_LEVELS* = INTEGER;
        FINDEX_INFO_LEVELS* = INTEGER;
        FINDEX_SEARCH_OPS* = INTEGER;
        PROGRESS_ROUTINE* = PROCEDURE (TotalFileSize: LONGINT; TotalBytesTransferred: LONGINT; StreamSize: LONGINT; StreamBytesTransferred: LONGINT; dwStreamNumber: INTEGER; dwCallbackReason: INTEGER; hSourceFile: HANDLE; hDestinationFile: HANDLE; lpData: PtrVoid): INTEGER;
        HW_PROFILE_INFOA* = RECORD [untagged]
            dwDockInfo*: INTEGER;
            szHwProfileGuid*: ARRAY [untagged] 39 OF SHORTCHAR;
            szHwProfileName*: ARRAY [untagged] 80 OF SHORTCHAR;
        END;
        PtrHW_PROFILE_INFOA* = POINTER TO HW_PROFILE_INFOA;
        HW_PROFILE_INFOW* = RECORD [untagged]
            dwDockInfo*: INTEGER;
            szHwProfileGuid*: ARRAY [untagged] 39 OF CHAR;
            szHwProfileName*: ARRAY [untagged] 80 OF CHAR;
        END;
        PtrHW_PROFILE_INFOW* = POINTER TO HW_PROFILE_INFOW;
        HW_PROFILE_INFO* = HW_PROFILE_INFOA;
        PtrHW_PROFILE_INFO* = PtrHW_PROFILE_INFOA;
        OSVERSIONINFOA* = RECORD [untagged]
            dwOSVersionInfoSize*: INTEGER;
            dwMajorVersion*: INTEGER;
            dwMinorVersion*: INTEGER;
            dwBuildNumber*: INTEGER;
            dwPlatformId*: INTEGER;
            szCSDVersion*: ARRAY [untagged] 128 OF SHORTCHAR;
        END;
        PtrOSVERSIONINFOA* = POINTER TO OSVERSIONINFOA;
        OSVERSIONINFOW* = RECORD [untagged]
            dwOSVersionInfoSize*: INTEGER;
            dwMajorVersion*: INTEGER;
            dwMinorVersion*: INTEGER;
            dwBuildNumber*: INTEGER;
            dwPlatformId*: INTEGER;
            szCSDVersion*: ARRAY [untagged] 128 OF CHAR;
        END;
        PtrOSVERSIONINFOW* = POINTER TO OSVERSIONINFOW;
        OSVERSIONINFO* = OSVERSIONINFOA;
        PtrOSVERSIONINFO* = PtrOSVERSIONINFOA;
        SYSTEM_POWER_STATUS* = RECORD [untagged]
            ACLineStatus*: SHORTCHAR;
            BatteryFlag*: SHORTCHAR;
            BatteryLifePercent*: SHORTCHAR;
            Reserved1*: SHORTCHAR;
            BatteryLifeTime*: INTEGER;
            BatteryFullLifeTime*: INTEGER;
        END;
        PtrSYSTEM_POWER_STATUS* = POINTER TO SYSTEM_POWER_STATUS;
        WIN_CERTIFICATE* = RECORD [untagged]
            dwLength*: INTEGER;
            wRevision*: SHORTINT;
            wCertificateType*: SHORTINT;
            bCertificate*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrWIN_CERTIFICATE* = POINTER TO WIN_CERTIFICATE;
        WIN_TRUST_SUBJECT* = PtrVoid;
        WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT* = RECORD [untagged]
            hClientToken*: HANDLE;
            dwSubjectType*: INTEGER;
            Subject*: WIN_TRUST_SUBJECT;
        END;
        PtrWIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJE (*...*)* = POINTER TO WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT;
        WIN_TRUST_ACTDATA_SUBJECT_ONLY* = RECORD [untagged]
            dwSubjectType*: INTEGER;
            Subject*: WIN_TRUST_SUBJECT;
        END;
        PtrWIN_TRUST_ACTDATA_SUBJECT_ONLY* = POINTER TO WIN_TRUST_ACTDATA_SUBJECT_ONLY;
        WIN_TRUST_SUBJECT_FILE* = RECORD [untagged]
            hFile*: HANDLE;
            lpPath*: PtrWSTR;
        END;
        PtrWIN_TRUST_SUBJECT_FILE* = POINTER TO WIN_TRUST_SUBJECT_FILE;
        WIN_SPUB_TRUSTEDPUB_DATA* = RECORD [untagged]
            hClientToken*: HANDLE;
            lpCertificate*: PtrWIN_CERTIFICATE;
        END;
        PtrWIN_SPUB_TRUSTEDPUB_DATA* = POINTER TO WIN_SPUB_TRUSTEDPUB_DATA;
        XFORM* = RECORD [untagged]
            eM11*: SHORTREAL;
            eM12*: SHORTREAL;
            eM21*: SHORTREAL;
            eM22*: SHORTREAL;
            eDx*: SHORTREAL;
            eDy*: SHORTREAL;
        END;
        PtrXFORM* = POINTER TO XFORM;
        BITMAP* = RECORD [untagged]
            bmType*: INTEGER;
            bmWidth*: INTEGER;
            bmHeight*: INTEGER;
            bmWidthBytes*: INTEGER;
            bmPlanes*: SHORTINT;
            bmBitsPixel*: SHORTINT;
            bmBits*: PtrVoid;
        END;
        PtrBITMAP* = POINTER TO BITMAP;
        RGBTRIPLE* = RECORD [untagged]
            rgbtBlue*: SHORTCHAR;
            rgbtGreen*: SHORTCHAR;
            rgbtRed*: SHORTCHAR;
        END;
        RGBQUAD* = RECORD [untagged]
            rgbBlue*: SHORTCHAR;
            rgbGreen*: SHORTCHAR;
            rgbRed*: SHORTCHAR;
            rgbReserved*: SHORTCHAR;
        END;
        PtrRGBQUAD* = POINTER TO RGBQUAD;
        LCSCSTYPE* = INTEGER;
        LCSGAMUTMATCH* = INTEGER;
        FXPT16DOT16* = INTEGER;
        FXPT2DOT30* = INTEGER;
        CIEXYZ* = RECORD [untagged]
            ciexyzX*: FXPT2DOT30;
            ciexyzY*: FXPT2DOT30;
            ciexyzZ*: FXPT2DOT30;
        END;
        PtrCIEXYZ* = POINTER TO CIEXYZ;
        CIEXYZTRIPLE* = RECORD [untagged]
            ciexyzRed*: CIEXYZ;
            ciexyzGreen*: CIEXYZ;
            ciexyzBlue*: CIEXYZ;
        END;
        PtrCIEXYZTRIPLE* = POINTER TO CIEXYZTRIPLE;
        LOGCOLORSPACEA* = RECORD [untagged]
            lcsSignature*: INTEGER;
            lcsVersion*: INTEGER;
            lcsSize*: INTEGER;
            lcsCSType*: LCSCSTYPE;
            lcsIntent*: LCSGAMUTMATCH;
            lcsEndpoints*: CIEXYZTRIPLE;
            lcsGammaRed*: INTEGER;
            lcsGammaGreen*: INTEGER;
            lcsGammaBlue*: INTEGER;
            lcsFilename*: ARRAY [untagged] 260 OF SHORTCHAR;
        END;
        PtrLOGCOLORSPACEA* = POINTER TO LOGCOLORSPACEA;
        LOGCOLORSPACEW* = RECORD [untagged]
            lcsSignature*: INTEGER;
            lcsVersion*: INTEGER;
            lcsSize*: INTEGER;
            lcsCSType*: LCSCSTYPE;
            lcsIntent*: LCSGAMUTMATCH;
            lcsEndpoints*: CIEXYZTRIPLE;
            lcsGammaRed*: INTEGER;
            lcsGammaGreen*: INTEGER;
            lcsGammaBlue*: INTEGER;
            lcsFilename*: ARRAY [untagged] 260 OF CHAR;
        END;
        PtrLOGCOLORSPACEW* = POINTER TO LOGCOLORSPACEW;
        LOGCOLORSPACE* = LOGCOLORSPACEA;
        PtrLOGCOLORSPACE* = PtrLOGCOLORSPACEA;
        BITMAPCOREHEADER* = RECORD [untagged]
            bcSize*: INTEGER;
            bcWidth*: SHORTINT;
            bcHeight*: SHORTINT;
            bcPlanes*: SHORTINT;
            bcBitCount*: SHORTINT;
        END;
        PtrBITMAPCOREHEADER* = POINTER TO BITMAPCOREHEADER;
        BITMAPINFOHEADER* = RECORD [untagged]
            biSize*: INTEGER;
            biWidth*: INTEGER;
            biHeight*: INTEGER;
            biPlanes*: SHORTINT;
            biBitCount*: SHORTINT;
            biCompression*: INTEGER;
            biSizeImage*: INTEGER;
            biXPelsPerMeter*: INTEGER;
            biYPelsPerMeter*: INTEGER;
            biClrUsed*: INTEGER;
            biClrImportant*: INTEGER;
        END;
        PtrBITMAPINFOHEADER* = POINTER TO BITMAPINFOHEADER;
        BITMAPV4HEADER* = RECORD [untagged]
            bV4Size*: INTEGER;
            bV4Width*: INTEGER;
            bV4Height*: INTEGER;
            bV4Planes*: SHORTINT;
            bV4BitCount*: SHORTINT;
            bV4V4Compression*: INTEGER;
            bV4SizeImage*: INTEGER;
            bV4XPelsPerMeter*: INTEGER;
            bV4YPelsPerMeter*: INTEGER;
            bV4ClrUsed*: INTEGER;
            bV4ClrImportant*: INTEGER;
            bV4RedMask*: INTEGER;
            bV4GreenMask*: INTEGER;
            bV4BlueMask*: INTEGER;
            bV4AlphaMask*: INTEGER;
            bV4CSType*: INTEGER;
            bV4Endpoints*: CIEXYZTRIPLE;
            bV4GammaRed*: INTEGER;
            bV4GammaGreen*: INTEGER;
            bV4GammaBlue*: INTEGER;
        END;
        PtrBITMAPV4HEADER* = POINTER TO BITMAPV4HEADER;
        BITMAPINFO* = RECORD [untagged]
            bmiHeader*: BITMAPINFOHEADER;
            bmiColors*: ARRAY [untagged] 1 OF RGBQUAD;
        END;
        PtrBITMAPINFO* = POINTER TO BITMAPINFO;
        BITMAPCOREINFO* = RECORD [untagged]
            bmciHeader*: BITMAPCOREHEADER;
            bmciColors*: ARRAY [untagged] 1 OF RGBTRIPLE;
        END;
        PtrBITMAPCOREINFO* = POINTER TO BITMAPCOREINFO;
        BITMAPFILEHEADER* = RECORD [align2]
            bfType*: SHORTINT;
            bfSize*: INTEGER;
            bfReserved1*: SHORTINT;
            bfReserved2*: SHORTINT;
            bfOffBits*: INTEGER;
        END;
        PtrBITMAPFILEHEADER* = POINTER TO BITMAPFILEHEADER;
        FONTSIGNATURE* = RECORD [untagged]
            fsUsb*: ARRAY [untagged] 4 OF INTEGER;
            fsCsb*: ARRAY [untagged] 2 OF INTEGER;
        END;
        PtrFONTSIGNATURE* = POINTER TO FONTSIGNATURE;
        CHARSETINFO* = RECORD [untagged]
            ciCharset*: INTEGER;
            ciACP*: INTEGER;
            fs*: FONTSIGNATURE;
        END;
        PtrCHARSETINFO* = POINTER TO CHARSETINFO;
        LOCALESIGNATURE* = RECORD [untagged]
            lsUsb*: ARRAY [untagged] 4 OF INTEGER;
            lsCsbDefault*: ARRAY [untagged] 2 OF INTEGER;
            lsCsbSupported*: ARRAY [untagged] 2 OF INTEGER;
        END;
        PtrLOCALESIGNATURE* = POINTER TO LOCALESIGNATURE;
        HANDLETABLE* = RECORD [untagged]
            objectHandle*: ARRAY [untagged] 1 OF HGDIOBJ;
        END;
        PtrHANDLETABLE* = POINTER TO HANDLETABLE;
        METARECORD* = RECORD [untagged]
            rdSize*: INTEGER;
            rdFunction*: SHORTINT;
            rdParm*: ARRAY [untagged] 1 OF SHORTINT;
        END;
        PtrMETARECORD* = POINTER TO METARECORD;
        METAFILEPICT* = RECORD [untagged]
            mm*: INTEGER;
            xExt*: INTEGER;
            yExt*: INTEGER;
            hMF*: HMETAFILE;
        END;
        PtrMETAFILEPICT* = POINTER TO METAFILEPICT;
        METAHEADER* = RECORD [align2]
            mtType*: SHORTINT;
            mtHeaderSize*: SHORTINT;
            mtVersion*: SHORTINT;
            mtSize*: INTEGER;
            mtNoObjects*: SHORTINT;
            mtMaxRecord*: INTEGER;
            mtNoParameters*: SHORTINT;
        END;
        PtrMETAHEADER* = POINTER TO METAHEADER;
        ENHMETARECORD* = RECORD [untagged]
            iType*: INTEGER;
            nSize*: INTEGER;
            dParm*: ARRAY [untagged] 1 OF INTEGER;
        END;
        PtrENHMETARECORD* = POINTER TO ENHMETARECORD;
        ENHMETAHEADER* = RECORD [untagged]
            iType*: INTEGER;
            nSize*: INTEGER;
            rclBounds*: RECT;
            rclFrame*: RECT;
            dSignature*: INTEGER;
            nVersion*: INTEGER;
            nBytes*: INTEGER;
            nRecords*: INTEGER;
            nHandles*: SHORTINT;
            sReserved*: SHORTINT;
            nDescription*: INTEGER;
            offDescription*: INTEGER;
            nPalEntries*: INTEGER;
            szlDevice*: SIZE;
            szlMillimeters*: SIZE;
            cbPixelFormat*: INTEGER;
            offPixelFormat*: INTEGER;
            bOpenGL*: INTEGER;
        END;
        PtrENHMETAHEADER* = POINTER TO ENHMETAHEADER;
        BCHAR* = SHORTCHAR;
        TEXTMETRICA* = RECORD [untagged]
            tmHeight*: INTEGER;
            tmAscent*: INTEGER;
            tmDescent*: INTEGER;
            tmInternalLeading*: INTEGER;
            tmExternalLeading*: INTEGER;
            tmAveCharWidth*: INTEGER;
            tmMaxCharWidth*: INTEGER;
            tmWeight*: INTEGER;
            tmOverhang*: INTEGER;
            tmDigitizedAspectX*: INTEGER;
            tmDigitizedAspectY*: INTEGER;
            tmFirstChar*: SHORTCHAR;
            tmLastChar*: SHORTCHAR;
            tmDefaultChar*: SHORTCHAR;
            tmBreakChar*: SHORTCHAR;
            tmItalic*: SHORTCHAR;
            tmUnderlined*: SHORTCHAR;
            tmStruckOut*: SHORTCHAR;
            tmPitchAndFamily*: SHORTCHAR;
            tmCharSet*: SHORTCHAR;
        END;
        PtrTEXTMETRICA* = POINTER TO TEXTMETRICA;
        TEXTMETRICW* = RECORD [untagged]
            tmHeight*: INTEGER;
            tmAscent*: INTEGER;
            tmDescent*: INTEGER;
            tmInternalLeading*: INTEGER;
            tmExternalLeading*: INTEGER;
            tmAveCharWidth*: INTEGER;
            tmMaxCharWidth*: INTEGER;
            tmWeight*: INTEGER;
            tmOverhang*: INTEGER;
            tmDigitizedAspectX*: INTEGER;
            tmDigitizedAspectY*: INTEGER;
            tmFirstChar*: CHAR;
            tmLastChar*: CHAR;
            tmDefaultChar*: CHAR;
            tmBreakChar*: CHAR;
            tmItalic*: SHORTCHAR;
            tmUnderlined*: SHORTCHAR;
            tmStruckOut*: SHORTCHAR;
            tmPitchAndFamily*: SHORTCHAR;
            tmCharSet*: SHORTCHAR;
        END;
        PtrTEXTMETRICW* = POINTER TO TEXTMETRICW;
        TEXTMETRIC* = TEXTMETRICA;
        PtrTEXTMETRIC* = PtrTEXTMETRICA;
        NEWTEXTMETRICA* = RECORD [untagged]
            tmHeight*: INTEGER;
            tmAscent*: INTEGER;
            tmDescent*: INTEGER;
            tmInternalLeading*: INTEGER;
            tmExternalLeading*: INTEGER;
            tmAveCharWidth*: INTEGER;
            tmMaxCharWidth*: INTEGER;
            tmWeight*: INTEGER;
            tmOverhang*: INTEGER;
            tmDigitizedAspectX*: INTEGER;
            tmDigitizedAspectY*: INTEGER;
            tmFirstChar*: SHORTCHAR;
            tmLastChar*: SHORTCHAR;
            tmDefaultChar*: SHORTCHAR;
            tmBreakChar*: SHORTCHAR;
            tmItalic*: SHORTCHAR;
            tmUnderlined*: SHORTCHAR;
            tmStruckOut*: SHORTCHAR;
            tmPitchAndFamily*: SHORTCHAR;
            tmCharSet*: SHORTCHAR;
            ntmFlags*: INTEGER;
            ntmSizeEM*: INTEGER;
            ntmCellHeight*: INTEGER;
            ntmAvgWidth*: INTEGER;
        END;
        PtrNEWTEXTMETRICA* = POINTER TO NEWTEXTMETRICA;
        NEWTEXTMETRICW* = RECORD [untagged]
            tmHeight*: INTEGER;
            tmAscent*: INTEGER;
            tmDescent*: INTEGER;
            tmInternalLeading*: INTEGER;
            tmExternalLeading*: INTEGER;
            tmAveCharWidth*: INTEGER;
            tmMaxCharWidth*: INTEGER;
            tmWeight*: INTEGER;
            tmOverhang*: INTEGER;
            tmDigitizedAspectX*: INTEGER;
            tmDigitizedAspectY*: INTEGER;
            tmFirstChar*: CHAR;
            tmLastChar*: CHAR;
            tmDefaultChar*: CHAR;
            tmBreakChar*: CHAR;
            tmItalic*: SHORTCHAR;
            tmUnderlined*: SHORTCHAR;
            tmStruckOut*: SHORTCHAR;
            tmPitchAndFamily*: SHORTCHAR;
            tmCharSet*: SHORTCHAR;
            ntmFlags*: INTEGER;
            ntmSizeEM*: INTEGER;
            ntmCellHeight*: INTEGER;
            ntmAvgWidth*: INTEGER;
        END;
        PtrNEWTEXTMETRICW* = POINTER TO NEWTEXTMETRICW;
        NEWTEXTMETRIC* = NEWTEXTMETRICA;
        PtrNEWTEXTMETRIC* = PtrNEWTEXTMETRICA;
        NEWTEXTMETRICEXA* = RECORD [untagged]
            ntmTm*: NEWTEXTMETRICA;
            ntmFontSig*: FONTSIGNATURE;
        END;
        NEWTEXTMETRICEXW* = RECORD [untagged]
            ntmTm*: NEWTEXTMETRICW;
            ntmFontSig*: FONTSIGNATURE;
        END;
        NEWTEXTMETRICEX* = NEWTEXTMETRICEXA;
        PELARRAY* = RECORD [untagged]
            paXCount*: INTEGER;
            paYCount*: INTEGER;
            paXExt*: INTEGER;
            paYExt*: INTEGER;
            paRGBs*: SHORTCHAR;
        END;
        PtrPELARRAY* = POINTER TO PELARRAY;
        LOGBRUSH* = RECORD [untagged]
            lbStyle*: INTEGER;
            lbColor*: COLORREF;
            lbHatch*: INTEGER;
        END;
        PtrLOGBRUSH* = POINTER TO LOGBRUSH;
        PATTERN* = LOGBRUSH;
        PtrPATTERN* = PtrLOGBRUSH;
        LOGPEN* = RECORD [untagged]
            lopnStyle*: INTEGER;
            lopnWidth*: POINT;
            lopnColor*: COLORREF;
        END;
        PtrLOGPEN* = POINTER TO LOGPEN;
        EXTLOGPEN* = RECORD [untagged]
            elpPenStyle*: INTEGER;
            elpWidth*: INTEGER;
            elpBrushStyle*: INTEGER;
            elpColor*: COLORREF;
            elpHatch*: INTEGER;
            elpNumEntries*: INTEGER;
            elpStyleEntry*: ARRAY [untagged] 1 OF INTEGER;
        END;
        PtrEXTLOGPEN* = POINTER TO EXTLOGPEN;
        PALETTEENTRY* = RECORD [untagged]
            peRed*: SHORTCHAR;
            peGreen*: SHORTCHAR;
            peBlue*: SHORTCHAR;
            peFlags*: SHORTCHAR;
        END;
        PtrPALETTEENTRY* = POINTER TO PALETTEENTRY;
        LOGPALETTE* = RECORD [untagged]
            palVersion*: SHORTINT;
            palNumEntries*: SHORTINT;
            palPalEntry*: ARRAY [untagged] 1 OF PALETTEENTRY;
        END;
        PtrLOGPALETTE* = POINTER TO LOGPALETTE;
        LOGFONTA* = RECORD [untagged]
            lfHeight*: INTEGER;
            lfWidth*: INTEGER;
            lfEscapement*: INTEGER;
            lfOrientation*: INTEGER;
            lfWeight*: INTEGER;
            lfItalic*: SHORTCHAR;
            lfUnderline*: SHORTCHAR;
            lfStrikeOut*: SHORTCHAR;
            lfCharSet*: SHORTCHAR;
            lfOutPrecision*: SHORTCHAR;
            lfClipPrecision*: SHORTCHAR;
            lfQuality*: SHORTCHAR;
            lfPitchAndFamily*: SHORTCHAR;
            lfFaceName*: ARRAY [untagged] 32 OF SHORTCHAR;
        END;
        PtrLOGFONTA* = POINTER TO LOGFONTA;
        LOGFONTW* = RECORD [untagged]
            lfHeight*: INTEGER;
            lfWidth*: INTEGER;
            lfEscapement*: INTEGER;
            lfOrientation*: INTEGER;
            lfWeight*: INTEGER;
            lfItalic*: SHORTCHAR;
            lfUnderline*: SHORTCHAR;
            lfStrikeOut*: SHORTCHAR;
            lfCharSet*: SHORTCHAR;
            lfOutPrecision*: SHORTCHAR;
            lfClipPrecision*: SHORTCHAR;
            lfQuality*: SHORTCHAR;
            lfPitchAndFamily*: SHORTCHAR;
            lfFaceName*: ARRAY [untagged] 32 OF CHAR;
        END;
        PtrLOGFONTW* = POINTER TO LOGFONTW;
        LOGFONT* = LOGFONTA;
        PtrLOGFONT* = PtrLOGFONTA;
        ENUMLOGFONTA* = RECORD [untagged]
            elfLogFont*: LOGFONTA;
            elfFullName*: ARRAY [untagged] 64 OF SHORTCHAR;
            elfStyle*: ARRAY [untagged] 32 OF SHORTCHAR;
        END;
        PtrENUMLOGFONTA* = POINTER TO ENUMLOGFONTA;
        ENUMLOGFONTW* = RECORD [untagged]
            elfLogFont*: LOGFONTW;
            elfFullName*: ARRAY [untagged] 64 OF CHAR;
            elfStyle*: ARRAY [untagged] 32 OF CHAR;
        END;
        PtrENUMLOGFONTW* = POINTER TO ENUMLOGFONTW;
        ENUMLOGFONT* = ENUMLOGFONTA;
        PtrENUMLOGFONT* = PtrENUMLOGFONTA;
        ENUMLOGFONTEXA* = RECORD [untagged]
            elfLogFont*: LOGFONTA;
            elfFullName*: ARRAY [untagged] 64 OF SHORTCHAR;
            elfStyle*: ARRAY [untagged] 32 OF SHORTCHAR;
            elfScript*: ARRAY [untagged] 32 OF SHORTCHAR;
        END;
        PtrENUMLOGFONTEXA* = POINTER TO ENUMLOGFONTEXA;
        ENUMLOGFONTEXW* = RECORD [untagged]
            elfLogFont*: LOGFONTW;
            elfFullName*: ARRAY [untagged] 64 OF CHAR;
            elfStyle*: ARRAY [untagged] 32 OF CHAR;
            elfScript*: ARRAY [untagged] 32 OF CHAR;
        END;
        PtrENUMLOGFONTEXW* = POINTER TO ENUMLOGFONTEXW;
        ENUMLOGFONTEX* = ENUMLOGFONTEXA;
        PtrENUMLOGFONTEX* = PtrENUMLOGFONTEXA;
        PANOSE* = RECORD [untagged]
            bFamilyType*: SHORTCHAR;
            bSerifStyle*: SHORTCHAR;
            bWeight*: SHORTCHAR;
            bProportion*: SHORTCHAR;
            bContrast*: SHORTCHAR;
            bStrokeVariation*: SHORTCHAR;
            bArmStyle*: SHORTCHAR;
            bLetterform*: SHORTCHAR;
            bMidline*: SHORTCHAR;
            bXHeight*: SHORTCHAR;
        END;
        PtrPANOSE* = POINTER TO PANOSE;
        EXTLOGFONTA* = RECORD [untagged]
            elfLogFont*: LOGFONTA;
            elfFullName*: ARRAY [untagged] 64 OF SHORTCHAR;
            elfStyle*: ARRAY [untagged] 32 OF SHORTCHAR;
            elfVersion*: INTEGER;
            elfStyleSize*: INTEGER;
            elfMatch*: INTEGER;
            elfReserved*: INTEGER;
            elfVendorId*: ARRAY [untagged] 4 OF SHORTCHAR;
            elfCulture*: INTEGER;
            elfPanose*: PANOSE;
        END;
        PtrEXTLOGFONTA* = POINTER TO EXTLOGFONTA;
        EXTLOGFONTW* = RECORD [untagged]
            elfLogFont*: LOGFONTW;
            elfFullName*: ARRAY [untagged] 64 OF CHAR;
            elfStyle*: ARRAY [untagged] 32 OF CHAR;
            elfVersion*: INTEGER;
            elfStyleSize*: INTEGER;
            elfMatch*: INTEGER;
            elfReserved*: INTEGER;
            elfVendorId*: ARRAY [untagged] 4 OF SHORTCHAR;
            elfCulture*: INTEGER;
            elfPanose*: PANOSE;
        END;
        PtrEXTLOGFONTW* = POINTER TO EXTLOGFONTW;
        EXTLOGFONT* = EXTLOGFONTA;
        PtrEXTLOGFONT* = PtrEXTLOGFONTA;
        DEVMODEA* = RECORD [untagged]
            dmDeviceName*: ARRAY [untagged] 32 OF SHORTCHAR;
            dmSpecVersion*: SHORTINT;
            dmDriverVersion*: SHORTINT;
            dmSize*: SHORTINT;
            dmDriverExtra*: SHORTINT;
            dmFields*: SET;
            dmOrientation*: SHORTINT;
            dmPaperSize*: SHORTINT;
            dmPaperLength*: SHORTINT;
            dmPaperWidth*: SHORTINT;
            dmScale*: SHORTINT;
            dmCopies*: SHORTINT;
            dmDefaultSource*: SHORTINT;
            dmPrintQuality*: SHORTINT;
            dmColor*: SHORTINT;
            dmDuplex*: SHORTINT;
            dmYResolution*: SHORTINT;
            dmTTOption*: SHORTINT;
            dmCollate*: SHORTINT;
            dmFormName*: ARRAY [untagged] 32 OF SHORTCHAR;
            dmLogPixels*: SHORTINT;
            dmBitsPerPel*: INTEGER;
            dmPelsWidth*: INTEGER;
            dmPelsHeight*: INTEGER;
            dmDisplayFlags*: SET;
            dmDisplayFrequency*: INTEGER;
            dmICMMethod*: INTEGER;
            dmICMIntent*: INTEGER;
            dmMediaType*: INTEGER;
            dmDitherType*: INTEGER;
            dmICCManufacturer*: INTEGER;
            dmICCModel*: INTEGER;
            dmPanningWidth*: INTEGER;
            dmPanningHeight*: INTEGER;
        END;
        PtrDEVMODEA* = POINTER TO DEVMODEA;
        DEVMODEW* = RECORD [untagged]
            dmDeviceName*: ARRAY [untagged] 32 OF CHAR;
            dmSpecVersion*: SHORTINT;
            dmDriverVersion*: SHORTINT;
            dmSize*: SHORTINT;
            dmDriverExtra*: SHORTINT;
            dmFields*: SET;
            dmOrientation*: SHORTINT;
            dmPaperSize*: SHORTINT;
            dmPaperLength*: SHORTINT;
            dmPaperWidth*: SHORTINT;
            dmScale*: SHORTINT;
            dmCopies*: SHORTINT;
            dmDefaultSource*: SHORTINT;
            dmPrintQuality*: SHORTINT;
            dmColor*: SHORTINT;
            dmDuplex*: SHORTINT;
            dmYResolution*: SHORTINT;
            dmTTOption*: SHORTINT;
            dmCollate*: SHORTINT;
            dmFormName*: ARRAY [untagged] 32 OF CHAR;
            dmLogPixels*: SHORTINT;
            dmBitsPerPel*: INTEGER;
            dmPelsWidth*: INTEGER;
            dmPelsHeight*: INTEGER;
            dmDisplayFlags*: SET;
            dmDisplayFrequency*: INTEGER;
            dmICMMethod*: INTEGER;
            dmICMIntent*: INTEGER;
            dmMediaType*: INTEGER;
            dmDitherType*: INTEGER;
            dmICCManufacturer*: INTEGER;
            dmICCModel*: INTEGER;
            dmPanningWidth*: INTEGER;
            dmPanningHeight*: INTEGER;
        END;
        PtrDEVMODEW* = POINTER TO DEVMODEW;
        DEVMODE* = DEVMODEA;
        PtrDEVMODE* = PtrDEVMODEA;
        RGNDATAHEADER* = RECORD [untagged]
            dwSize*: INTEGER;
            iType*: INTEGER;
            nCount*: INTEGER;
            nRgnSize*: INTEGER;
            rcBound*: RECT;
        END;
        PtrRGNDATAHEADER* = POINTER TO RGNDATAHEADER;
        RGNDATA* = RECORD [untagged]
            rdh*: RGNDATAHEADER;
            Buffer*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrRGNDATA* = POINTER TO RGNDATA;
        ABC* = RECORD [untagged]
            abcA*: INTEGER;
            abcB*: INTEGER;
            abcC*: INTEGER;
        END;
        PtrABC* = POINTER TO ABC;
        ABCFLOAT* = RECORD [untagged]
            abcfA*: SHORTREAL;
            abcfB*: SHORTREAL;
            abcfC*: SHORTREAL;
        END;
        PtrABCFLOAT* = POINTER TO ABCFLOAT;
        OUTLINETEXTMETRICA* = RECORD [untagged]
            otmSize*: INTEGER;
            otmTextMetrics*: TEXTMETRICA;
            otmFiller*: SHORTCHAR;
            otmPanoseNumber*: PANOSE;
            otmfsSelection*: INTEGER;
            otmfsType*: INTEGER;
            otmsCharSlopeRise*: INTEGER;
            otmsCharSlopeRun*: INTEGER;
            otmItalicAngle*: INTEGER;
            otmEMSquare*: INTEGER;
            otmAscent*: INTEGER;
            otmDescent*: INTEGER;
            otmLineGap*: INTEGER;
            otmsCapEmHeight*: INTEGER;
            otmsXHeight*: INTEGER;
            otmrcFontBox*: RECT;
            otmMacAscent*: INTEGER;
            otmMacDescent*: INTEGER;
            otmMacLineGap*: INTEGER;
            otmusMinimumPPEM*: INTEGER;
            otmptSubscriptSize*: POINT;
            otmptSubscriptOffset*: POINT;
            otmptSuperscriptSize*: POINT;
            otmptSuperscriptOffset*: POINT;
            otmsStrikeoutSize*: INTEGER;
            otmsStrikeoutPosition*: INTEGER;
            otmsUnderscoreSize*: INTEGER;
            otmsUnderscorePosition*: INTEGER;
            otmpFamilyName*: PtrSTR;
            otmpFaceName*: PtrSTR;
            otmpStyleName*: PtrSTR;
            otmpFullName*: PtrSTR;
        END;
        PtrOUTLINETEXTMETRICA* = POINTER TO OUTLINETEXTMETRICA;
        OUTLINETEXTMETRICW* = RECORD [untagged]
            otmSize*: INTEGER;
            otmTextMetrics*: TEXTMETRICW;
            otmFiller*: SHORTCHAR;
            otmPanoseNumber*: PANOSE;
            otmfsSelection*: INTEGER;
            otmfsType*: INTEGER;
            otmsCharSlopeRise*: INTEGER;
            otmsCharSlopeRun*: INTEGER;
            otmItalicAngle*: INTEGER;
            otmEMSquare*: INTEGER;
            otmAscent*: INTEGER;
            otmDescent*: INTEGER;
            otmLineGap*: INTEGER;
            otmsCapEmHeight*: INTEGER;
            otmsXHeight*: INTEGER;
            otmrcFontBox*: RECT;
            otmMacAscent*: INTEGER;
            otmMacDescent*: INTEGER;
            otmMacLineGap*: INTEGER;
            otmusMinimumPPEM*: INTEGER;
            otmptSubscriptSize*: POINT;
            otmptSubscriptOffset*: POINT;
            otmptSuperscriptSize*: POINT;
            otmptSuperscriptOffset*: POINT;
            otmsStrikeoutSize*: INTEGER;
            otmsStrikeoutPosition*: INTEGER;
            otmsUnderscoreSize*: INTEGER;
            otmsUnderscorePosition*: INTEGER;
            otmpFamilyName*: PtrSTR;
            otmpFaceName*: PtrSTR;
            otmpStyleName*: PtrSTR;
            otmpFullName*: PtrSTR;
        END;
        PtrOUTLINETEXTMETRICW* = POINTER TO OUTLINETEXTMETRICW;
        OUTLINETEXTMETRIC* = OUTLINETEXTMETRICA;
        PtrOUTLINETEXTMETRIC* = PtrOUTLINETEXTMETRICA;
        POLYTEXTA* = RECORD [untagged]
            x*: INTEGER;
            y*: INTEGER;
            n*: INTEGER;
            lpstr*: PtrSTR;
            uiFlags*: SET;
            rcl*: RECT;
            pdx*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
        END;
        PtrPOLYTEXTA* = POINTER TO POLYTEXTA;
        POLYTEXTW* = RECORD [untagged]
            x*: INTEGER;
            y*: INTEGER;
            n*: INTEGER;
            lpstr*: PtrWSTR;
            uiFlags*: SET;
            rcl*: RECT;
            pdx*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
        END;
        PtrPOLYTEXTW* = POINTER TO POLYTEXTW;
        POLYTEXT* = POLYTEXTA;
        PtrPOLYTEXT* = PtrPOLYTEXTA;
        FIXED* = RECORD [untagged]
            fract*: SHORTINT;
            value*: SHORTINT;
        END;
        MAT2* = RECORD [untagged]
            eM11*: FIXED;
            eM12*: FIXED;
            eM21*: FIXED;
            eM22*: FIXED;
        END;
        PtrMAT2* = POINTER TO MAT2;
        GLYPHMETRICS* = RECORD [untagged]
            gmBlackBoxX*: INTEGER;
            gmBlackBoxY*: INTEGER;
            gmptGlyphOrigin*: POINT;
            gmCellIncX*: SHORTINT;
            gmCellIncY*: SHORTINT;
        END;
        PtrGLYPHMETRICS* = POINTER TO GLYPHMETRICS;
        POINTFX* = RECORD [untagged]
            x*: FIXED;
            y*: FIXED;
        END;
        PtrPOINTFX* = POINTER TO POINTFX;
        TTPOLYCURVE* = RECORD [untagged]
            wType*: SHORTINT;
            cpfx*: SHORTINT;
            apfx*: ARRAY [untagged] 1 OF POINTFX;
        END;
        PtrTTPOLYCURVE* = POINTER TO TTPOLYCURVE;
        TTPOLYGONHEADER* = RECORD [untagged]
            cb*: INTEGER;
            dwType*: INTEGER;
            pfxStart*: POINTFX;
        END;
        PtrTTPOLYGONHEADER* = POINTER TO TTPOLYGONHEADER;
        GCP_RESULTSA* = RECORD [untagged]
            lStructSize*: INTEGER;
            lpOutString*: PtrSTR;
            lpOrder*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            lpDx*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            lpCaretPos*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            lpClass*: PtrSTR;
            lpGlyphs*: PtrWSTR;
            nGlyphs*: INTEGER;
            nMaxFit*: INTEGER;
        END;
        PtrGCP_RESULTSA* = POINTER TO GCP_RESULTSA;
        GCP_RESULTSW* = RECORD [untagged]
            lStructSize*: INTEGER;
            lpOutString*: PtrWSTR;
            lpOrder*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            lpDx*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            lpCaretPos*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
            lpClass*: PtrSTR;
            lpGlyphs*: PtrWSTR;
            nGlyphs*: INTEGER;
            nMaxFit*: INTEGER;
        END;
        PtrGCP_RESULTSW* = POINTER TO GCP_RESULTSW;
        GCP_RESULTS* = GCP_RESULTSA;
        PtrGCP_RESULTS* = PtrGCP_RESULTSA;
        RASTERIZER_STATUS* = RECORD [untagged]
            nSize*: SHORTINT;
            wFlags*: SHORTINT;
            nLanguageID*: SHORTINT;
        END;
        PtrRASTERIZER_STATUS* = POINTER TO RASTERIZER_STATUS;
        PIXELFORMATDESCRIPTOR* = RECORD [untagged]
            nSize*: SHORTINT;
            nVersion*: SHORTINT;
            dwFlags*: SET;
            iPixelType*: SHORTCHAR;
            cColorBits*: SHORTCHAR;
            cRedBits*: SHORTCHAR;
            cRedShift*: SHORTCHAR;
            cGreenBits*: SHORTCHAR;
            cGreenShift*: SHORTCHAR;
            cBlueBits*: SHORTCHAR;
            cBlueShift*: SHORTCHAR;
            cAlphaBits*: SHORTCHAR;
            cAlphaShift*: SHORTCHAR;
            cAccumBits*: SHORTCHAR;
            cAccumRedBits*: SHORTCHAR;
            cAccumGreenBits*: SHORTCHAR;
            cAccumBlueBits*: SHORTCHAR;
            cAccumAlphaBits*: SHORTCHAR;
            cDepthBits*: SHORTCHAR;
            cStencilBits*: SHORTCHAR;
            cAuxBuffers*: SHORTCHAR;
            iLayerType*: SHORTCHAR;
            bReserved*: SHORTCHAR;
            dwLayerMask*: SET;
            dwVisibleMask*: SET;
            dwDamageMask*: SET;
        END;
        PtrPIXELFORMATDESCRIPTOR* = POINTER TO PIXELFORMATDESCRIPTOR;
        OLDFONTENUMPROC* = PROCEDURE (): INTEGER;
        FONTENUMPROCA* = PROCEDURE (VAR [nil] lplf: LOGFONTA; VAR [nil] lptm:TEXTMETRICA; dwType, lParam: INTEGER): INTEGER;
        FONTENUMPROCW* = PROCEDURE (VAR [nil] lplf: LOGFONTW; VAR [nil] lptm:TEXTMETRICW; dwType, lParam: INTEGER): INTEGER;
        FONTENUMPROC* = PROCEDURE (VAR [nil] lplf: LOGFONTA; VAR [nil] lptm:TEXTMETRICA; dwType, lParam: INTEGER): INTEGER;
        FONTENUMPROCEXA* = PROCEDURE (VAR [nil] lpelf: ENUMLOGFONTEXA; VAR [nil] lpntm: NEWTEXTMETRICEXA; FontType, lParam: INTEGER): INTEGER;
        FONTENUMPROCEXW* = PROCEDURE (VAR [nil] lpelf: ENUMLOGFONTEXW; VAR [nil] lpntm: NEWTEXTMETRICEXW; FontType, lParam: INTEGER): INTEGER;
        FONTENUMPROCEX* = PROCEDURE (VAR [nil] lpelf: ENUMLOGFONTEXA; VAR [nil] lpntm: NEWTEXTMETRICEXA; FontType, lParam: INTEGER): INTEGER;
        NEWFONTENUMPROCA* = PROCEDURE (VAR [nil] lpelf: ENUMLOGFONTA; VAR [nil] lpntm: NEWTEXTMETRICA; FontType, lParam: INTEGER): INTEGER;
        NEWFONTENUMPROCW* = PROCEDURE (VAR [nil] lpelf: ENUMLOGFONTW; VAR [nil] lpntm: NEWTEXTMETRICW; FontType, lParam: INTEGER): INTEGER;
        NEWFONTENUMPROC* = PROCEDURE (VAR [nil] lpelf: ENUMLOGFONTA; VAR [nil] lpntm: NEWTEXTMETRICA; FontType, lParam: INTEGER): INTEGER;
        GOBJENUMPROC* = PROCEDURE (): INTEGER;
        LINEDDAPROC* = PROCEDURE (): INTEGER;
        FNDEVMODE* = PROCEDURE (p0: HWND; p1: HMODULE; VAR [nil] p2: DEVMODEA; p3: PtrSTR; p4: PtrSTR; VAR [nil] p5: DEVMODEA; p6: PtrSTR; p7: INTEGER): INTEGER;
        FNDEVCAPS* = PROCEDURE (p0: PtrSTR; p1: PtrSTR; p2: INTEGER; p3: PtrSTR; VAR [nil] p4: DEVMODEA): INTEGER;
        MFENUMPROC* = PROCEDURE (p0: HDC; VAR [nil] p1: HANDLETABLE; VAR [nil] p2: METARECORD; p3: INTEGER; p4: LPARAM): INTEGER;
        ENHMFENUMPROC* = PROCEDURE (p0: HDC; VAR [nil] p1: HANDLETABLE; VAR [nil] p2: ENHMETARECORD; p3: INTEGER; p4: LPARAM): INTEGER;
        DIBSECTION* = RECORD [untagged]
            dsBm*: BITMAP;
            dsBmih*: BITMAPINFOHEADER;
            dsBitfields*: ARRAY [untagged] 3 OF INTEGER;
            dshSection*: HANDLE;
            dsOffset*: INTEGER;
        END;
        PtrDIBSECTION* = POINTER TO DIBSECTION;
        COLORADJUSTMENT* = RECORD [untagged]
            caSize*: SHORTINT;
            caFlags*: SHORTINT;
            caIlluminantIndex*: SHORTINT;
            caRedGamma*: SHORTINT;
            caGreenGamma*: SHORTINT;
            caBlueGamma*: SHORTINT;
            caReferenceBlack*: SHORTINT;
            caReferenceWhite*: SHORTINT;
            caContrast*: SHORTINT;
            caBrightness*: SHORTINT;
            caColorfulness*: SHORTINT;
            caRedGreenTint*: SHORTINT;
        END;
        PtrCOLORADJUSTMENT* = POINTER TO COLORADJUSTMENT;
        ABORTPROC* = PROCEDURE (hdc: HDC; iError: INTEGER): INTEGER;
        DOCINFOA* = RECORD [untagged]
            cbSize*: INTEGER;
            lpszDocName*: PtrSTR;
            lpszOutput*: PtrSTR;
            lpszDatatype*: PtrSTR;
            fwType*: INTEGER;
        END;
        PtrDOCINFOA* = POINTER TO DOCINFOA;
        DOCINFOW* = RECORD [untagged]
            cbSize*: INTEGER;
            lpszDocName*: PtrWSTR;
            lpszOutput*: PtrWSTR;
            lpszDatatype*: PtrWSTR;
            fwType*: INTEGER;
        END;
        PtrDOCINFOW* = POINTER TO DOCINFOW;
        DOCINFO* = DOCINFOA;
        PtrDOCINFO* = PtrDOCINFOA;
        KERNINGPAIR* = RECORD [untagged]
            wFirst*: SHORTINT;
            wSecond*: SHORTINT;
            iKernAmount*: INTEGER;
        END;
        PtrKERNINGPAIR* = POINTER TO KERNINGPAIR;
        ICMENUMPROCA* = PROCEDURE (p0: PtrSTR; p1: LPARAM): INTEGER;
        ICMENUMPROCW* = PROCEDURE (p0: PtrWSTR; p1: LPARAM): INTEGER;
        EMR* = RECORD [untagged]
            iType*: INTEGER;
            nSize*: INTEGER;
        END;
        PtrEMR* = POINTER TO EMR;
        EMRTEXT* = RECORD [untagged]
            ptlReference*: POINT;
            nChars*: INTEGER;
            offString*: INTEGER;
            fOptions*: INTEGER;
            rcl*: RECT;
            offDx*: INTEGER;
        END;
        PtrEMRTEXT* = POINTER TO EMRTEXT;
        EMRABORTPATH* = RECORD [untagged]
            emr*: EMR;
        END;
        PtrEMRABORTPATH* = POINTER TO EMRABORTPATH;
        EMRBEGINPATH* = EMRABORTPATH;
        PtrEMRBEGINPATH* = PtrEMRABORTPATH;
        EMRENDPATH* = EMRABORTPATH;
        PtrEMRENDPATH* = PtrEMRABORTPATH;
        EMRCLOSEFIGURE* = EMRABORTPATH;
        PtrEMRCLOSEFIGURE* = PtrEMRABORTPATH;
        EMRFLATTENPATH* = EMRABORTPATH;
        PtrEMRFLATTENPATH* = PtrEMRABORTPATH;
        EMRWIDENPATH* = EMRABORTPATH;
        PtrEMRWIDENPATH* = PtrEMRABORTPATH;
        EMRSETMETARGN* = EMRABORTPATH;
        PtrEMRSETMETARGN* = PtrEMRABORTPATH;
        EMRSAVEDC* = EMRABORTPATH;
        PtrEMRSAVEDC* = PtrEMRABORTPATH;
        EMRREALIZEPALETTE* = EMRABORTPATH;
        PtrEMRREALIZEPALETTE* = PtrEMRABORTPATH;
        EMRSELECTCLIPPATH* = RECORD [untagged]
            emr*: EMR;
            iMode*: INTEGER;
        END;
        PtrEMRSELECTCLIPPATH* = POINTER TO EMRSELECTCLIPPATH;
        EMRSETBKMODE* = EMRSELECTCLIPPATH;
        PtrEMRSETBKMODE* = PtrEMRSELECTCLIPPATH;
        EMRSETMAPMODE* = EMRSELECTCLIPPATH;
        PtrEMRSETMAPMODE* = PtrEMRSELECTCLIPPATH;
        EMRSETPOLYFILLMODE* = EMRSELECTCLIPPATH;
        PtrEMRSETPOLYFILLMODE* = PtrEMRSELECTCLIPPATH;
        EMRSETROP2* = EMRSELECTCLIPPATH;
        PtrEMRSETROP2* = PtrEMRSELECTCLIPPATH;
        EMRSETSTRETCHBLTMODE* = EMRSELECTCLIPPATH;
        PtrEMRSETSTRETCHBLTMODE* = PtrEMRSELECTCLIPPATH;
        EMRSETICMMODE* = EMRSELECTCLIPPATH;
        PtrEMRSETICMMODE* = PtrEMRSELECTCLIPPATH;
        EMRSETTEXTALIGN* = EMRSELECTCLIPPATH;
        PtrEMRSETTEXTALIGN* = PtrEMRSELECTCLIPPATH;
        EMRSETMITERLIMIT* = RECORD [untagged]
            emr*: EMR;
            eMiterLimit*: SHORTREAL;
        END;
        PtrEMRSETMITERLIMIT* = POINTER TO EMRSETMITERLIMIT;
        EMRRESTOREDC* = RECORD [untagged]
            emr*: EMR;
            iRelative*: INTEGER;
        END;
        PtrEMRRESTOREDC* = POINTER TO EMRRESTOREDC;
        EMRSETARCDIRECTION* = RECORD [untagged]
            emr*: EMR;
            iArcDirection*: INTEGER;
        END;
        PtrEMRSETARCDIRECTION* = POINTER TO EMRSETARCDIRECTION;
        EMRSETMAPPERFLAGS* = RECORD [untagged]
            emr*: EMR;
            dwFlags*: SET;
        END;
        PtrEMRSETMAPPERFLAGS* = POINTER TO EMRSETMAPPERFLAGS;
        EMRSETBKCOLOR* = RECORD [untagged]
            emr*: EMR;
            crColor*: COLORREF;
        END;
        PtrEMRSETBKCOLOR* = POINTER TO EMRSETBKCOLOR;
        EMRSETTEXTCOLOR* = EMRSETBKCOLOR;
        PtrEMRSETTEXTCOLOR* = PtrEMRSETBKCOLOR;
        EMRSELECTOBJECT* = RECORD [untagged]
            emr*: EMR;
            ihObject*: INTEGER;
        END;
        PtrEMRSELECTOBJECT* = POINTER TO EMRSELECTOBJECT;
        EMRDELETEOBJECT* = EMRSELECTOBJECT;
        PtrEMRDELETEOBJECT* = PtrEMRSELECTOBJECT;
        EMRSELECTCOLORSPACE* = RECORD [untagged]
            emr*: EMR;
            ihCS*: INTEGER;
        END;
        PtrEMRSELECTCOLORSPACE* = POINTER TO EMRSELECTCOLORSPACE;
        EMRDELETECOLORSPACE* = EMRSELECTCOLORSPACE;
        PtrEMRDELETECOLORSPACE* = PtrEMRSELECTCOLORSPACE;
        EMRSELECTPALETTE* = RECORD [untagged]
            emr*: EMR;
            ihPal*: INTEGER;
        END;
        PtrEMRSELECTPALETTE* = POINTER TO EMRSELECTPALETTE;
        EMRRESIZEPALETTE* = RECORD [untagged]
            emr*: EMR;
            ihPal*: INTEGER;
            cEntries*: INTEGER;
        END;
        PtrEMRRESIZEPALETTE* = POINTER TO EMRRESIZEPALETTE;
        EMRSETPALETTEENTRIES* = RECORD [untagged]
            emr*: EMR;
            ihPal*: INTEGER;
            iStart*: INTEGER;
            cEntries*: INTEGER;
            aPalEntries*: ARRAY [untagged] 1 OF PALETTEENTRY;
        END;
        PtrEMRSETPALETTEENTRIES* = POINTER TO EMRSETPALETTEENTRIES;
        EMRSETCOLORADJUSTMENT* = RECORD [untagged]
            emr*: EMR;
            ColorAdjustment*: COLORADJUSTMENT;
        END;
        PtrEMRSETCOLORADJUSTMENT* = POINTER TO EMRSETCOLORADJUSTMENT;
        EMRGDICOMMENT* = RECORD [untagged]
            emr*: EMR;
            cbData*: INTEGER;
            Data*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRGDICOMMENT* = POINTER TO EMRGDICOMMENT;
        EMREOF* = RECORD [untagged]
            emr*: EMR;
            nPalEntries*: INTEGER;
            offPalEntries*: INTEGER;
            nSizeLast*: INTEGER;
        END;
        PtrEMREOF* = POINTER TO EMREOF;
        EMRLINETO* = RECORD [untagged]
            emr*: EMR;
            ptl*: POINT;
        END;
        PtrEMRLINETO* = POINTER TO EMRLINETO;
        EMRMOVETOEX* = EMRLINETO;
        PtrEMRMOVETOEX* = PtrEMRLINETO;
        EMROFFSETCLIPRGN* = RECORD [untagged]
            emr*: EMR;
            ptlOffset*: POINT;
        END;
        PtrEMROFFSETCLIPRGN* = POINTER TO EMROFFSETCLIPRGN;
        EMRFILLPATH* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
        END;
        PtrEMRFILLPATH* = POINTER TO EMRFILLPATH;
        EMRSTROKEANDFILLPATH* = EMRFILLPATH;
        PtrEMRSTROKEANDFILLPATH* = PtrEMRFILLPATH;
        EMRSTROKEPATH* = EMRFILLPATH;
        PtrEMRSTROKEPATH* = PtrEMRFILLPATH;
        EMREXCLUDECLIPRECT* = RECORD [untagged]
            emr*: EMR;
            rclClip*: RECT;
        END;
        PtrEMREXCLUDECLIPRECT* = POINTER TO EMREXCLUDECLIPRECT;
        EMRINTERSECTCLIPRECT* = EMREXCLUDECLIPRECT;
        PtrEMRINTERSECTCLIPRECT* = PtrEMREXCLUDECLIPRECT;
        EMRSETVIEWPORTORGEX* = RECORD [untagged]
            emr*: EMR;
            ptlOrigin*: POINT;
        END;
        PtrEMRSETVIEWPORTORGEX* = POINTER TO EMRSETVIEWPORTORGEX;
        EMRSETWINDOWORGEX* = EMRSETVIEWPORTORGEX;
        PtrEMRSETWINDOWORGEX* = PtrEMRSETVIEWPORTORGEX;
        EMRSETBRUSHORGEX* = EMRSETVIEWPORTORGEX;
        PtrEMRSETBRUSHORGEX* = PtrEMRSETVIEWPORTORGEX;
        EMRSETVIEWPORTEXTEX* = RECORD [untagged]
            emr*: EMR;
            szlExtent*: SIZE;
        END;
        PtrEMRSETVIEWPORTEXTEX* = POINTER TO EMRSETVIEWPORTEXTEX;
        EMRSETWINDOWEXTEX* = EMRSETVIEWPORTEXTEX;
        PtrEMRSETWINDOWEXTEX* = PtrEMRSETVIEWPORTEXTEX;
        EMRSCALEVIEWPORTEXTEX* = RECORD [untagged]
            emr*: EMR;
            xNum*: INTEGER;
            xDenom*: INTEGER;
            yNum*: INTEGER;
            yDenom*: INTEGER;
        END;
        PtrEMRSCALEVIEWPORTEXTEX* = POINTER TO EMRSCALEVIEWPORTEXTEX;
        EMRSCALEWINDOWEXTEX* = EMRSCALEVIEWPORTEXTEX;
        PtrEMRSCALEWINDOWEXTEX* = PtrEMRSCALEVIEWPORTEXTEX;
        EMRSETWORLDTRANSFORM* = RECORD [untagged]
            emr*: EMR;
            xform*: XFORM;
        END;
        PtrEMRSETWORLDTRANSFORM* = POINTER TO EMRSETWORLDTRANSFORM;
        EMRMODIFYWORLDTRANSFORM* = RECORD [untagged]
            emr*: EMR;
            xform*: XFORM;
            iMode*: INTEGER;
        END;
        PtrEMRMODIFYWORLDTRANSFORM* = POINTER TO EMRMODIFYWORLDTRANSFORM;
        EMRSETPIXELV* = RECORD [untagged]
            emr*: EMR;
            ptlPixel*: POINT;
            crColor*: COLORREF;
        END;
        PtrEMRSETPIXELV* = POINTER TO EMRSETPIXELV;
        EMREXTFLOODFILL* = RECORD [untagged]
            emr*: EMR;
            ptlStart*: POINT;
            crColor*: COLORREF;
            iMode*: INTEGER;
        END;
        PtrEMREXTFLOODFILL* = POINTER TO EMREXTFLOODFILL;
        EMRELLIPSE* = RECORD [untagged]
            emr*: EMR;
            rclBox*: RECT;
        END;
        PtrEMRELLIPSE* = POINTER TO EMRELLIPSE;
        EMRRECTANGLE* = EMRELLIPSE;
        PtrEMRRECTANGLE* = PtrEMRELLIPSE;
        EMRROUNDRECT* = RECORD [untagged]
            emr*: EMR;
            rclBox*: RECT;
            szlCorner*: SIZE;
        END;
        PtrEMRROUNDRECT* = POINTER TO EMRROUNDRECT;
        EMRARC* = RECORD [untagged]
            emr*: EMR;
            rclBox*: RECT;
            ptlStart*: POINT;
            ptlEnd*: POINT;
        END;
        PtrEMRARC* = POINTER TO EMRARC;
        EMRARCTO* = EMRARC;
        PtrEMRARCTO* = PtrEMRARC;
        EMRCHORD* = EMRARC;
        PtrEMRCHORD* = PtrEMRARC;
        EMRPIE* = EMRARC;
        PtrEMRPIE* = PtrEMRARC;
        EMRANGLEARC* = RECORD [untagged]
            emr*: EMR;
            ptlCenter*: POINT;
            nRadius*: INTEGER;
            eStartAngle*: SHORTREAL;
            eSweepAngle*: SHORTREAL;
        END;
        PtrEMRANGLEARC* = POINTER TO EMRANGLEARC;
        EMRPOLYLINE* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cptl*: INTEGER;
            aptl*: ARRAY [untagged] 1 OF POINT;
        END;
        PtrEMRPOLYLINE* = POINTER TO EMRPOLYLINE;
        EMRPOLYBEZIER* = EMRPOLYLINE;
        PtrEMRPOLYBEZIER* = PtrEMRPOLYLINE;
        EMRPOLYGON* = EMRPOLYLINE;
        PtrEMRPOLYGON* = PtrEMRPOLYLINE;
        EMRPOLYBEZIERTO* = EMRPOLYLINE;
        PtrEMRPOLYBEZIERTO* = PtrEMRPOLYLINE;
        EMRPOLYLINETO* = EMRPOLYLINE;
        PtrEMRPOLYLINETO* = PtrEMRPOLYLINE;
        EMRPOLYLINE16* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cpts*: INTEGER;
            apts*: ARRAY [untagged] 1 OF POINTS;
        END;
        PtrEMRPOLYLINE16* = POINTER TO EMRPOLYLINE16;
        EMRPOLYBEZIER16* = EMRPOLYLINE16;
        PtrEMRPOLYBEZIER16* = PtrEMRPOLYLINE16;
        EMRPOLYGON16* = EMRPOLYLINE16;
        PtrEMRPOLYGON16* = PtrEMRPOLYLINE16;
        EMRPOLYBEZIERTO16* = EMRPOLYLINE16;
        PtrEMRPOLYBEZIERTO16* = PtrEMRPOLYLINE16;
        EMRPOLYLINETO16* = EMRPOLYLINE16;
        PtrEMRPOLYLINETO16* = PtrEMRPOLYLINE16;
        EMRPOLYDRAW* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cptl*: INTEGER;
            aptl*: ARRAY [untagged] 1 OF POINT;
            abTypes*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRPOLYDRAW* = POINTER TO EMRPOLYDRAW;
        EMRPOLYDRAW16* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cpts*: INTEGER;
            apts*: ARRAY [untagged] 1 OF POINTS;
            abTypes*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRPOLYDRAW16* = POINTER TO EMRPOLYDRAW16;
        EMRPOLYPOLYLINE* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            nPolys*: INTEGER;
            cptl*: INTEGER;
            aPolyCounts*: ARRAY [untagged] 1 OF INTEGER;
            aptl*: ARRAY [untagged] 1 OF POINT;
        END;
        PtrEMRPOLYPOLYLINE* = POINTER TO EMRPOLYPOLYLINE;
        EMRPOLYPOLYGON* = EMRPOLYPOLYLINE;
        PtrEMRPOLYPOLYGON* = PtrEMRPOLYPOLYLINE;
        EMRPOLYPOLYLINE16* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            nPolys*: INTEGER;
            cpts*: INTEGER;
            aPolyCounts*: ARRAY [untagged] 1 OF INTEGER;
            apts*: ARRAY [untagged] 1 OF POINTS;
        END;
        PtrEMRPOLYPOLYLINE16* = POINTER TO EMRPOLYPOLYLINE16;
        EMRPOLYPOLYGON16* = EMRPOLYPOLYLINE16;
        PtrEMRPOLYPOLYGON16* = PtrEMRPOLYPOLYLINE16;
        EMRINVERTRGN* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cbRgnData*: INTEGER;
            RgnData*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRINVERTRGN* = POINTER TO EMRINVERTRGN;
        EMRPAINTRGN* = EMRINVERTRGN;
        PtrEMRPAINTRGN* = PtrEMRINVERTRGN;
        EMRFILLRGN* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cbRgnData*: INTEGER;
            ihBrush*: INTEGER;
            RgnData*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRFILLRGN* = POINTER TO EMRFILLRGN;
        EMRFRAMERGN* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cbRgnData*: INTEGER;
            ihBrush*: INTEGER;
            szlStroke*: SIZE;
            RgnData*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRFRAMERGN* = POINTER TO EMRFRAMERGN;
        EMREXTSELECTCLIPRGN* = RECORD [untagged]
            emr*: EMR;
            cbRgnData*: INTEGER;
            iMode*: INTEGER;
            RgnData*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMREXTSELECTCLIPRGN* = POINTER TO EMREXTSELECTCLIPRGN;
        EMREXTTEXTOUTA* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            iGraphicsMode*: INTEGER;
            exScale*: SHORTREAL;
            eyScale*: SHORTREAL;
            emrtext*: EMRTEXT;
        END;
        PtrEMREXTTEXTOUTA* = POINTER TO EMREXTTEXTOUTA;
        EMREXTTEXTOUTW* = EMREXTTEXTOUTA;
        PtrEMREXTTEXTOUTW* = PtrEMREXTTEXTOUTA;
        EMRPOLYTEXTOUTA* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            iGraphicsMode*: INTEGER;
            exScale*: SHORTREAL;
            eyScale*: SHORTREAL;
            cStrings*: INTEGER;
            aemrtext*: ARRAY [untagged] 1 OF EMRTEXT;
        END;
        PtrEMRPOLYTEXTOUTA* = POINTER TO EMRPOLYTEXTOUTA;
        EMRPOLYTEXTOUTW* = EMRPOLYTEXTOUTA;
        PtrEMRPOLYTEXTOUTW* = PtrEMRPOLYTEXTOUTA;
        EMRBITBLT* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            xDest*: INTEGER;
            yDest*: INTEGER;
            cxDest*: INTEGER;
            cyDest*: INTEGER;
            dwRop*: INTEGER;
            xSrc*: INTEGER;
            ySrc*: INTEGER;
            xformSrc*: XFORM;
            crBkColorSrc*: COLORREF;
            iUsageSrc*: INTEGER;
            offBmiSrc*: INTEGER;
            cbBmiSrc*: INTEGER;
            offBitsSrc*: INTEGER;
            cbBitsSrc*: INTEGER;
        END;
        PtrEMRBITBLT* = POINTER TO EMRBITBLT;
        EMRSTRETCHBLT* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            xDest*: INTEGER;
            yDest*: INTEGER;
            cxDest*: INTEGER;
            cyDest*: INTEGER;
            dwRop*: INTEGER;
            xSrc*: INTEGER;
            ySrc*: INTEGER;
            xformSrc*: XFORM;
            crBkColorSrc*: COLORREF;
            iUsageSrc*: INTEGER;
            offBmiSrc*: INTEGER;
            cbBmiSrc*: INTEGER;
            offBitsSrc*: INTEGER;
            cbBitsSrc*: INTEGER;
            cxSrc*: INTEGER;
            cySrc*: INTEGER;
        END;
        PtrEMRSTRETCHBLT* = POINTER TO EMRSTRETCHBLT;
        EMRMASKBLT* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            xDest*: INTEGER;
            yDest*: INTEGER;
            cxDest*: INTEGER;
            cyDest*: INTEGER;
            dwRop*: INTEGER;
            xSrc*: INTEGER;
            ySrc*: INTEGER;
            xformSrc*: XFORM;
            crBkColorSrc*: COLORREF;
            iUsageSrc*: INTEGER;
            offBmiSrc*: INTEGER;
            cbBmiSrc*: INTEGER;
            offBitsSrc*: INTEGER;
            cbBitsSrc*: INTEGER;
            xMask*: INTEGER;
            yMask*: INTEGER;
            iUsageMask*: INTEGER;
            offBmiMask*: INTEGER;
            cbBmiMask*: INTEGER;
            offBitsMask*: INTEGER;
            cbBitsMask*: INTEGER;
        END;
        PtrEMRMASKBLT* = POINTER TO EMRMASKBLT;
        EMRPLGBLT* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            aptlDest*: ARRAY [untagged] 3 OF POINT;
            xSrc*: INTEGER;
            ySrc*: INTEGER;
            cxSrc*: INTEGER;
            cySrc*: INTEGER;
            xformSrc*: XFORM;
            crBkColorSrc*: COLORREF;
            iUsageSrc*: INTEGER;
            offBmiSrc*: INTEGER;
            cbBmiSrc*: INTEGER;
            offBitsSrc*: INTEGER;
            cbBitsSrc*: INTEGER;
            xMask*: INTEGER;
            yMask*: INTEGER;
            iUsageMask*: INTEGER;
            offBmiMask*: INTEGER;
            cbBmiMask*: INTEGER;
            offBitsMask*: INTEGER;
            cbBitsMask*: INTEGER;
        END;
        PtrEMRPLGBLT* = POINTER TO EMRPLGBLT;
        EMRSETDIBITSTODEVICE* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            xDest*: INTEGER;
            yDest*: INTEGER;
            xSrc*: INTEGER;
            ySrc*: INTEGER;
            cxSrc*: INTEGER;
            cySrc*: INTEGER;
            offBmiSrc*: INTEGER;
            cbBmiSrc*: INTEGER;
            offBitsSrc*: INTEGER;
            cbBitsSrc*: INTEGER;
            iUsageSrc*: INTEGER;
            iStartScan*: INTEGER;
            cScans*: INTEGER;
        END;
        PtrEMRSETDIBITSTODEVICE* = POINTER TO EMRSETDIBITSTODEVICE;
        EMRSTRETCHDIBITS* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            xDest*: INTEGER;
            yDest*: INTEGER;
            xSrc*: INTEGER;
            ySrc*: INTEGER;
            cxSrc*: INTEGER;
            cySrc*: INTEGER;
            offBmiSrc*: INTEGER;
            cbBmiSrc*: INTEGER;
            offBitsSrc*: INTEGER;
            cbBitsSrc*: INTEGER;
            iUsageSrc*: INTEGER;
            dwRop*: INTEGER;
            cxDest*: INTEGER;
            cyDest*: INTEGER;
        END;
        PtrEMRSTRETCHDIBITS* = POINTER TO EMRSTRETCHDIBITS;
        EMREXTCREATEFONTINDIRECTW* = RECORD [untagged]
            emr*: EMR;
            ihFont*: INTEGER;
            elfw*: EXTLOGFONTW;
        END;
        PtrEMREXTCREATEFONTINDIRECTW* = POINTER TO EMREXTCREATEFONTINDIRECTW;
        EMRCREATEPALETTE* = RECORD [untagged]
            emr*: EMR;
            ihPal*: INTEGER;
            lgpl*: LOGPALETTE;
        END;
        PtrEMRCREATEPALETTE* = POINTER TO EMRCREATEPALETTE;
        EMRCREATECOLORSPACE* = RECORD [untagged]
            emr*: EMR;
            ihCS*: INTEGER;
            lcs*: LOGCOLORSPACEW;
        END;
        PtrEMRCREATECOLORSPACE* = POINTER TO EMRCREATECOLORSPACE;
        EMRCREATEPEN* = RECORD [untagged]
            emr*: EMR;
            ihPen*: INTEGER;
            lopn*: LOGPEN;
        END;
        PtrEMRCREATEPEN* = POINTER TO EMRCREATEPEN;
        EMREXTCREATEPEN* = RECORD [untagged]
            emr*: EMR;
            ihPen*: INTEGER;
            offBmi*: INTEGER;
            cbBmi*: INTEGER;
            offBits*: INTEGER;
            cbBits*: INTEGER;
            elp*: EXTLOGPEN;
        END;
        PtrEMREXTCREATEPEN* = POINTER TO EMREXTCREATEPEN;
        EMRCREATEBRUSHINDIRECT* = RECORD [untagged]
            emr*: EMR;
            ihBrush*: INTEGER;
            lb*: LOGBRUSH;
        END;
        PtrEMRCREATEBRUSHINDIRECT* = POINTER TO EMRCREATEBRUSHINDIRECT;
        EMRCREATEMONOBRUSH* = RECORD [untagged]
            emr*: EMR;
            ihBrush*: INTEGER;
            iUsage*: INTEGER;
            offBmi*: INTEGER;
            cbBmi*: INTEGER;
            offBits*: INTEGER;
            cbBits*: INTEGER;
        END;
        PtrEMRCREATEMONOBRUSH* = POINTER TO EMRCREATEMONOBRUSH;
        EMRCREATEDIBPATTERNBRUSHPT* = RECORD [untagged]
            emr*: EMR;
            ihBrush*: INTEGER;
            iUsage*: INTEGER;
            offBmi*: INTEGER;
            cbBmi*: INTEGER;
            offBits*: INTEGER;
            cbBits*: INTEGER;
        END;
        PtrEMRCREATEDIBPATTERNBRUSHPT* = POINTER TO EMRCREATEDIBPATTERNBRUSHPT;
        EMRFORMAT* = RECORD [untagged]
            dSignature*: INTEGER;
            nVersion*: INTEGER;
            cbData*: INTEGER;
            offData*: INTEGER;
        END;
        PtrEMRFORMAT* = POINTER TO EMRFORMAT;
        EMRGLSRECORD* = RECORD [untagged]
            emr*: EMR;
            cbData*: INTEGER;
            Data*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRGLSRECORD* = POINTER TO EMRGLSRECORD;
        EMRGLSBOUNDEDRECORD* = RECORD [untagged]
            emr*: EMR;
            rclBounds*: RECT;
            cbData*: INTEGER;
            Data*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrEMRGLSBOUNDEDRECORD* = POINTER TO EMRGLSBOUNDEDRECORD;
        EMRPIXELFORMAT* = RECORD [untagged]
            emr*: EMR;
            pfd*: PIXELFORMATDESCRIPTOR;
        END;
        PtrEMRPIXELFORMAT* = POINTER TO EMRPIXELFORMAT;
        POINTFLOAT* = RECORD [untagged]
            x*: SHORTREAL;
            y*: SHORTREAL;
        END;
        PtrPOINTFLOAT* = POINTER TO POINTFLOAT;
        GLYPHMETRICSFLOAT* = RECORD [untagged]
            gmfBlackBoxX*: SHORTREAL;
            gmfBlackBoxY*: SHORTREAL;
            gmfptGlyphOrigin*: POINTFLOAT;
            gmfCellIncX*: SHORTREAL;
            gmfCellIncY*: SHORTREAL;
        END;
        PtrGLYPHMETRICSFLOAT* = POINTER TO GLYPHMETRICSFLOAT;
        LAYERPLANEDESCRIPTOR* = RECORD [untagged]
            nSize*: SHORTINT;
            nVersion*: SHORTINT;
            dwFlags*: SET;
            iPixelType*: SHORTCHAR;
            cColorBits*: SHORTCHAR;
            cRedBits*: SHORTCHAR;
            cRedShift*: SHORTCHAR;
            cGreenBits*: SHORTCHAR;
            cGreenShift*: SHORTCHAR;
            cBlueBits*: SHORTCHAR;
            cBlueShift*: SHORTCHAR;
            cAlphaBits*: SHORTCHAR;
            cAlphaShift*: SHORTCHAR;
            cAccumBits*: SHORTCHAR;
            cAccumRedBits*: SHORTCHAR;
            cAccumGreenBits*: SHORTCHAR;
            cAccumBlueBits*: SHORTCHAR;
            cAccumAlphaBits*: SHORTCHAR;
            cDepthBits*: SHORTCHAR;
            cStencilBits*: SHORTCHAR;
            cAuxBuffers*: SHORTCHAR;
            iLayerPlane*: SHORTCHAR;
            bReserved*: SHORTCHAR;
            crTransparent*: COLORREF;
        END;
        PtrLAYERPLANEDESCRIPTOR* = POINTER TO LAYERPLANEDESCRIPTOR;
        HDWP* = HANDLE;
        MENUTEMPLATEA* = RECORD [untagged] END;
        PtrMENUTEMPLATEA* = POINTER TO MENUTEMPLATEA;
        MENUTEMPLATEW* = RECORD [untagged] END;
        PtrMENUTEMPLATEW* = POINTER TO MENUTEMPLATEW;
        MENUTEMPLATE* = RECORD [untagged] END;
        PtrMENUTEMPLATE* = POINTER TO MENUTEMPLATE;
        LPMENUTEMPLATEA* = PtrVoid;
        LPMENUTEMPLATEW* = PtrVoid;
        LPMENUTEMPLATE* = LPMENUTEMPLATEA;
        WNDPROC* = PROCEDURE (p0: HWND; p1: INTEGER; p2: WPARAM; p3: LPARAM): LRESULT;
        DLGPROC* = PROCEDURE (): INTEGER;
        TIMERPROC* = PROCEDURE (): INTEGER;
        GRAYSTRINGPROC* = PROCEDURE (): INTEGER;
        WNDENUMPROC* = PROCEDURE (): INTEGER;
        HOOKPROC* = PROCEDURE (): INTEGER;
        SENDASYNCPROC* = PROCEDURE (): INTEGER;
        EDITWORDBREAKPROCA* = PROCEDURE (): INTEGER;
        EDITWORDBREAKPROCW* = PROCEDURE (): INTEGER;
        ROPENUMPROCA* = PROCEDURE (): INTEGER;
        ROPENUMPROCW* = PROCEDURE (): INTEGER;
        ROPENUMPROCEXA* = PROCEDURE (): INTEGER;
        ROPENUMPROCEXW* = PROCEDURE (): INTEGER;
        DRAWSTATEPROC* = PROCEDURE (): INTEGER;
        ROPENUMPROC* = PROCEDURE (): INTEGER;
        ROPENUMPROCEX* = PROCEDURE (): INTEGER;
        EDITWORDBREAKPROC* = PROCEDURE (): INTEGER;
        NAMEENUMPROCA* = PROCEDURE (): INTEGER;
        NAMEENUMPROCW* = PROCEDURE (): INTEGER;
        WINSTAENUMPROCA* = PROCEDURE (): INTEGER;
        DESKTOPENUMPROCA* = PROCEDURE (): INTEGER;
        WINSTAENUMPROCW* = PROCEDURE (): INTEGER;
        DESKTOPENUMPROCW* = PROCEDURE (): INTEGER;
        WINSTAENUMPROC* = PROCEDURE (): INTEGER;
        DESKTOPENUMPROC* = PROCEDURE (): INTEGER;
        PtrCREATESTRUCTA* = POINTER TO CREATESTRUCTA;
        CBT_CREATEWNDA* = RECORD [untagged]
            lpcs*: PtrCREATESTRUCTA;
            hwndInsertAfter*: HWND;
        END;
        PtrCBT_CREATEWNDA* = POINTER TO CBT_CREATEWNDA;
        PtrCREATESTRUCTW* = POINTER TO CREATESTRUCTW;
        CBT_CREATEWNDW* = RECORD [untagged]
            lpcs*: PtrCREATESTRUCTW;
            hwndInsertAfter*: HWND;
        END;
        PtrCBT_CREATEWNDW* = POINTER TO CBT_CREATEWNDW;
        CBT_CREATEWND* = CBT_CREATEWNDA;
        PtrCBT_CREATEWND* = PtrCBT_CREATEWNDA;
        CBTACTIVATESTRUCT* = RECORD [untagged]
            fMouse*: BOOL;
            hWndActive*: HWND;
        END;
        PtrCBTACTIVATESTRUCT* = POINTER TO CBTACTIVATESTRUCT;
        EVENTMSG* = RECORD [untagged]
            message*: INTEGER;
            paramL*: INTEGER;
            paramH*: INTEGER;
            time*: INTEGER;
            hwnd*: HWND;
        END;
        PtrEVENTMSG* = POINTER TO EVENTMSG;
        CWPSTRUCT* = RECORD [untagged]
            lParam*: LPARAM;
            wParam*: WPARAM;
            message*: INTEGER;
            hwnd*: HWND;
        END;
        PtrCWPSTRUCT* = POINTER TO CWPSTRUCT;
        CWPRETSTRUCT* = RECORD [untagged]
            lResult*: LRESULT;
            lParam*: LPARAM;
            wParam*: WPARAM;
            message*: INTEGER;
            hwnd*: HWND;
        END;
        PtrCWPRETSTRUCT* = POINTER TO CWPRETSTRUCT;
        DEBUGHOOKINFO* = RECORD [untagged]
            idThread*: INTEGER;
            idThreadInstaller*: INTEGER;
            lParam*: LPARAM;
            wParam*: WPARAM;
            code*: INTEGER;
        END;
        PtrDEBUGHOOKINFO* = POINTER TO DEBUGHOOKINFO;
        MOUSEHOOKSTRUCT* = RECORD [untagged]
            pt*: POINT;
            hwnd*: HWND;
            wHitTestCode*: INTEGER;
            dwExtraInfo*: INTEGER;
        END;
        PtrMOUSEHOOKSTRUCT* = POINTER TO MOUSEHOOKSTRUCT;
        HARDWAREHOOKSTRUCT* = RECORD [untagged]
            hwnd*: HWND;
            message*: INTEGER;
            wParam*: WPARAM;
            lParam*: LPARAM;
        END;
        PtrHARDWAREHOOKSTRUCT* = POINTER TO HARDWAREHOOKSTRUCT;
        USEROBJECTFLAGS* = RECORD [untagged]
            fInherit*: BOOL;
            fReserved*: BOOL;
            dwFlags*: SET;
        END;
        PtrUSEROBJECTFLAGS* = POINTER TO USEROBJECTFLAGS;
        WNDCLASSEXA* = RECORD [untagged]
            cbSize*: INTEGER;
            style*: SET;
            lpfnWndProc*: WNDPROC;
            cbClsExtra*: INTEGER;
            cbWndExtra*: INTEGER;
            hInstance*: HINSTANCE;
            hIcon*: HICON;
            hCursor*: HCURSOR;
            hbrBackground*: HBRUSH;
            lpszMenuName*: PtrSTR;
            lpszClassName*: PtrSTR;
            hIconSm*: HICON;
        END;
        PtrWNDCLASSEXA* = POINTER TO WNDCLASSEXA;
        WNDCLASSEXW* = RECORD [untagged]
            cbSize*: INTEGER;
            style*: SET;
            lpfnWndProc*: WNDPROC;
            cbClsExtra*: INTEGER;
            cbWndExtra*: INTEGER;
            hInstance*: HINSTANCE;
            hIcon*: HICON;
            hCursor*: HCURSOR;
            hbrBackground*: HBRUSH;
            lpszMenuName*: PtrWSTR;
            lpszClassName*: PtrWSTR;
            hIconSm*: HICON;
        END;
        PtrWNDCLASSEXW* = POINTER TO WNDCLASSEXW;
        WNDCLASSEX* = WNDCLASSEXA;
        PtrWNDCLASSEX* = PtrWNDCLASSEXA;
        WNDCLASSA* = RECORD [untagged]
            style*: SET;
            lpfnWndProc*: WNDPROC;
            cbClsExtra*: INTEGER;
            cbWndExtra*: INTEGER;
            hInstance*: HINSTANCE;
            hIcon*: HICON;
            hCursor*: HCURSOR;
            hbrBackground*: HBRUSH;
            lpszMenuName*: PtrSTR;
            lpszClassName*: PtrSTR;
        END;
        PtrWNDCLASSA* = POINTER TO WNDCLASSA;
        WNDCLASSW* = RECORD [untagged]
            style*: SET;
            lpfnWndProc*: WNDPROC;
            cbClsExtra*: INTEGER;
            cbWndExtra*: INTEGER;
            hInstance*: HINSTANCE;
            hIcon*: HICON;
            hCursor*: HCURSOR;
            hbrBackground*: HBRUSH;
            lpszMenuName*: PtrWSTR;
            lpszClassName*: PtrWSTR;
        END;
        PtrWNDCLASSW* = POINTER TO WNDCLASSW;
        WNDCLASS* = WNDCLASSA;
        PtrWNDCLASS* = PtrWNDCLASSA;
        MSG* = RECORD [untagged]
            hwnd*: HWND;
            message*: INTEGER;
            wParam*: WPARAM;
            lParam*: LPARAM;
            time*: INTEGER;
            pt*: POINT;
        END;
        PtrMSG* = POINTER TO MSG;
        MINMAXINFO* = RECORD [untagged]
            ptReserved*: POINT;
            ptMaxSize*: POINT;
            ptMaxPosition*: POINT;
            ptMinTrackSize*: POINT;
            ptMaxTrackSize*: POINT;
        END;
        PtrMINMAXINFO* = POINTER TO MINMAXINFO;
        COPYDATASTRUCT* = RECORD [untagged]
            dwData*: INTEGER;
            cbData*: INTEGER;
            lpData*: PtrVoid;
        END;
        PtrCOPYDATASTRUCT* = POINTER TO COPYDATASTRUCT;
        MDINEXTMENU* = RECORD [untagged]
            hmenuIn*: HMENU;
            hmenuNext*: HMENU;
            hwndNext*: HWND;
        END;
        PtrMDINEXTMENU* = POINTER TO MDINEXTMENU;
        WINDOWPOS* = RECORD [untagged]
            hwnd*: HWND;
            hwndInsertAfter*: HWND;
            x*: INTEGER;
            y*: INTEGER;
            cx*: INTEGER;
            cy*: INTEGER;
            flags*: SET;
        END;
        PtrWINDOWPOS* = POINTER TO WINDOWPOS;
        NCCALCSIZE_PARAMS* = RECORD [untagged]
            rgrc*: ARRAY [untagged] 3 OF RECT;
            lppos*: PtrWINDOWPOS;
        END;
        PtrNCCALCSIZE_PARAMS* = POINTER TO NCCALCSIZE_PARAMS;
        ACCEL* = RECORD [untagged]
            fVirt*: SHORTCHAR;
            key*: SHORTINT;
            cmd*: SHORTINT;
        END;
        PtrACCEL* = POINTER TO ACCEL;
        PAINTSTRUCT* = RECORD [untagged]
            hdc*: HDC;
            fErase*: BOOL;
            rcPaint*: RECT;
            fRestore*: BOOL;
            fIncUpdate*: BOOL;
            rgbReserved*: ARRAY [untagged] 32 OF SHORTCHAR;
        END;
        PtrPAINTSTRUCT* = POINTER TO PAINTSTRUCT;
        CREATESTRUCTA* = RECORD [untagged]
            lpCreateParams*: PtrVoid;
            hInstance*: HINSTANCE;
            hMenu*: HMENU;
            hwndParent*: HWND;
            cy*: INTEGER;
            cx*: INTEGER;
            y*: INTEGER;
            x*: INTEGER;
            style*: SET;
            lpszName*: PtrSTR;
            lpszClass*: PtrSTR;
            dwExStyle*: SET;
        END;
        CREATESTRUCTW* = RECORD [untagged]
            lpCreateParams*: PtrVoid;
            hInstance*: HINSTANCE;
            hMenu*: HMENU;
            hwndParent*: HWND;
            cy*: INTEGER;
            cx*: INTEGER;
            y*: INTEGER;
            x*: INTEGER;
            style*: SET;
            lpszName*: PtrWSTR;
            lpszClass*: PtrWSTR;
            dwExStyle*: SET;
        END;
        CREATESTRUCT* = CREATESTRUCTA;
        PtrCREATESTRUCT* = PtrCREATESTRUCTA;
        WINDOWPLACEMENT* = RECORD [untagged]
            length*: INTEGER;
            flags*: SET;
            showCmd*: INTEGER;
            ptMinPosition*: POINT;
            ptMaxPosition*: POINT;
            rcNormalPosition*: RECT;
        END;
        PtrWINDOWPLACEMENT* = POINTER TO WINDOWPLACEMENT;
        NMHDR* = RECORD [untagged]
            hwndFrom*: HWND;
            idFrom*: INTEGER;
            code*: INTEGER;
        END;
        PtrNMHDR* = POINTER TO NMHDR;
        STYLESTRUCT* = RECORD [untagged]
            styleOld*: SET;
            styleNew*: SET;
        END;
        PtrSTYLESTRUCT* = POINTER TO STYLESTRUCT;
        MEASUREITEMSTRUCT* = RECORD [untagged]
            CtlType*: SET;
            CtlID*: INTEGER;
            itemID*: INTEGER;
            itemWidth*: INTEGER;
            itemHeight*: INTEGER;
            itemData*: INTEGER;
        END;
        PtrMEASUREITEMSTRUCT* = POINTER TO MEASUREITEMSTRUCT;
        DRAWITEMSTRUCT* = RECORD [untagged]
            CtlType*: SET;
            CtlID*: INTEGER;
            itemID*: INTEGER;
            itemAction*: SET;
            itemState*: SET;
            hwndItem*: HWND;
            hDC*: HDC;
            rcItem*: RECT;
            itemData*: INTEGER;
        END;
        PtrDRAWITEMSTRUCT* = POINTER TO DRAWITEMSTRUCT;
        DELETEITEMSTRUCT* = RECORD [untagged]
            CtlType*: SET;
            CtlID*: INTEGER;
            itemID*: INTEGER;
            hwndItem*: HWND;
            itemData*: INTEGER;
        END;
        PtrDELETEITEMSTRUCT* = POINTER TO DELETEITEMSTRUCT;
        COMPAREITEMSTRUCT* = RECORD [untagged]
            CtlType*: SET;
            CtlID*: INTEGER;
            hwndItem*: HWND;
            itemID1*: INTEGER;
            itemData1*: INTEGER;
            itemID2*: INTEGER;
            itemData2*: INTEGER;
            dwLocaleId*: INTEGER;
        END;
        PtrCOMPAREITEMSTRUCT* = POINTER TO COMPAREITEMSTRUCT;
        BROADCASTSYSMSG* = RECORD [untagged]
            uiMessage*: INTEGER;
            wParam*: WPARAM;
            lParam*: LPARAM;
        END;
        PtrBROADCASTSYSMSG* = POINTER TO BROADCASTSYSMSG;
        DLGTEMPLATE* = RECORD [align2]
            style*: SET;
            dwExtendedStyle*: SET;
            cdit*: SHORTINT;
            x*: SHORTINT;
            y*: SHORTINT;
            cx*: SHORTINT;
            cy*: SHORTINT;
        END;
        PtrDLGTEMPLATE* = POINTER TO DLGTEMPLATE;
        DLGITEMTEMPLATE* = RECORD [align2]
            style*: SET;
            dwExtendedStyle*: SET;
            x*: SHORTINT;
            y*: SHORTINT;
            cx*: SHORTINT;
            cy*: SHORTINT;
            id*: SHORTINT;
        END;
        PtrDLGITEMTEMPLATE* = POINTER TO DLGITEMTEMPLATE;
        TPMPARAMS* = RECORD [untagged]
            cbSize*: INTEGER;
            rcExclude*: RECT;
        END;
        PtrTPMPARAMS* = POINTER TO TPMPARAMS;
        MENUITEMINFOA* = RECORD [untagged]
            cbSize*: INTEGER;
            fMask*: SET;
            fType*: SET;
            fState*: SET;
            wID*: INTEGER;
            hSubMenu*: HMENU;
            hbmpChecked*: HBITMAP;
            hbmpUnchecked*: HBITMAP;
            dwItemData*: INTEGER;
            dwTypeData*: PtrSTR;
            cch*: INTEGER;
        END;
        PtrMENUITEMINFOA* = POINTER TO MENUITEMINFOA;
        MENUITEMINFOW* = RECORD [untagged]
            cbSize*: INTEGER;
            fMask*: SET;
            fType*: SET;
            fState*: SET;
            wID*: INTEGER;
            hSubMenu*: HMENU;
            hbmpChecked*: HBITMAP;
            hbmpUnchecked*: HBITMAP;
            dwItemData*: INTEGER;
            dwTypeData*: PtrWSTR;
            cch*: INTEGER;
        END;
        PtrMENUITEMINFOW* = POINTER TO MENUITEMINFOW;
        MENUITEMINFO* = MENUITEMINFOA;
        PtrMENUITEMINFO* = PtrMENUITEMINFOA;
        DROPSTRUCT* = RECORD [untagged]
            hwndSource*: HWND;
            hwndSink*: HWND;
            wFmt*: INTEGER;
            dwData*: INTEGER;
            ptDrop*: POINT;
            dwControlData*: INTEGER;
        END;
        PtrDROPSTRUCT* = POINTER TO DROPSTRUCT;
        DRAWTEXTPARAMS* = RECORD [untagged]
            cbSize*: INTEGER;
            iTabLength*: INTEGER;
            iLeftMargin*: INTEGER;
            iRightMargin*: INTEGER;
            uiLengthDrawn*: INTEGER;
        END;
        PtrDRAWTEXTPARAMS* = POINTER TO DRAWTEXTPARAMS;
        HELPINFO* = RECORD [untagged]
            cbSize*: INTEGER;
            iContextType*: INTEGER;
            iCtrlId*: INTEGER;
            hItemHandle*: HANDLE;
            dwContextId*: INTEGER;
            MousePos*: POINT;
        END;
        PtrHELPINFO* = POINTER TO HELPINFO;
        MSGBOXCALLBACK* = PROCEDURE (VAR [nil] lpHelpInfo: HELPINFO);
        MSGBOXPARAMSA* = RECORD [untagged]
            cbSize*: INTEGER;
            hwndOwner*: HWND;
            hInstance*: HINSTANCE;
            lpszText*: PtrSTR;
            lpszCaption*: PtrSTR;
            dwStyle*: SET;
            lpszIcon*: PtrSTR;
            dwContextHelpId*: INTEGER;
            lpfnMsgBoxCallback*: MSGBOXCALLBACK;
            dwLanguageId*: INTEGER;
        END;
        PtrMSGBOXPARAMSA* = POINTER TO MSGBOXPARAMSA;
        MSGBOXPARAMSW* = RECORD [untagged]
            cbSize*: INTEGER;
            hwndOwner*: HWND;
            hInstance*: HINSTANCE;
            lpszText*: PtrWSTR;
            lpszCaption*: PtrWSTR;
            dwStyle*: SET;
            lpszIcon*: PtrWSTR;
            dwContextHelpId*: INTEGER;
            lpfnMsgBoxCallback*: MSGBOXCALLBACK;
            dwLanguageId*: INTEGER;
        END;
        PtrMSGBOXPARAMSW* = POINTER TO MSGBOXPARAMSW;
        MSGBOXPARAMS* = MSGBOXPARAMSA;
        PtrMSGBOXPARAMS* = PtrMSGBOXPARAMSA;
        MENUITEMTEMPLATEHEADER* = RECORD [untagged]
            versionNumber*: SHORTINT;
            offset*: SHORTINT;
        END;
        PtrMENUITEMTEMPLATEHEADER* = POINTER TO MENUITEMTEMPLATEHEADER;
        MENUITEMTEMPLATE* = RECORD [untagged]
            mtOption*: SHORTINT;
            mtID*: SHORTINT;
            mtString*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrMENUITEMTEMPLATE* = POINTER TO MENUITEMTEMPLATE;
        ICONINFO* = RECORD [untagged]
            fIcon*: BOOL;
            xHotspot*: INTEGER;
            yHotspot*: INTEGER;
            hbmMask*: HBITMAP;
            hbmColor*: HBITMAP;
        END;
        PtrICONINFO* = POINTER TO ICONINFO;
        CURSORSHAPE* = RECORD [untagged]
            xHotSpot*: INTEGER;
            yHotSpot*: INTEGER;
            cx*: INTEGER;
            cy*: INTEGER;
            cbWidth*: INTEGER;
            Planes*: SHORTCHAR;
            BitsPixel*: SHORTCHAR;
        END;
        PtrCURSORSHAPE* = POINTER TO CURSORSHAPE;
        SCROLLINFO* = RECORD [untagged]
            cbSize*: INTEGER;
            fMask*: SET;
            nMin*: INTEGER;
            nMax*: INTEGER;
            nPage*: INTEGER;
            nPos*: INTEGER;
            nTrackPos*: INTEGER;
        END;
        PtrSCROLLINFO* = POINTER TO SCROLLINFO;
        MDICREATESTRUCTA* = RECORD [untagged]
            szClass*: PtrSTR;
            szTitle*: PtrSTR;
            hOwner*: HANDLE;
            x*: INTEGER;
            y*: INTEGER;
            cx*: INTEGER;
            cy*: INTEGER;
            style*: SET;
            lParam*: LPARAM;
        END;
        PtrMDICREATESTRUCTA* = POINTER TO MDICREATESTRUCTA;
        MDICREATESTRUCTW* = RECORD [untagged]
            szClass*: PtrWSTR;
            szTitle*: PtrWSTR;
            hOwner*: HANDLE;
            x*: INTEGER;
            y*: INTEGER;
            cx*: INTEGER;
            cy*: INTEGER;
            style*: SET;
            lParam*: LPARAM;
        END;
        PtrMDICREATESTRUCTW* = POINTER TO MDICREATESTRUCTW;
        MDICREATESTRUCT* = MDICREATESTRUCTA;
        PtrMDICREATESTRUCT* = PtrMDICREATESTRUCTA;
        CLIENTCREATESTRUCT* = RECORD [untagged]
            hWindowMenu*: HANDLE;
            idFirstChild*: INTEGER;
        END;
        PtrCLIENTCREATESTRUCT* = POINTER TO CLIENTCREATESTRUCT;
        HELPPOLY* = INTEGER;
        MULTIKEYHELPA* = RECORD [untagged]
            mkSize*: INTEGER;
            mkKeylist*: SHORTCHAR;
            szKeyphrase*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrMULTIKEYHELPA* = POINTER TO MULTIKEYHELPA;
        MULTIKEYHELPW* = RECORD [untagged]
            mkSize*: INTEGER;
            mkKeylist*: CHAR;
            szKeyphrase*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrMULTIKEYHELPW* = POINTER TO MULTIKEYHELPW;
        MULTIKEYHELP* = MULTIKEYHELPA;
        PtrMULTIKEYHELP* = PtrMULTIKEYHELPA;
        HELPWININFOA* = RECORD [untagged]
            wStructSize*: INTEGER;
            x*: INTEGER;
            y*: INTEGER;
            dx*: INTEGER;
            dy*: INTEGER;
            wMax*: INTEGER;
            rgchMember*: ARRAY [untagged] 2 OF SHORTCHAR;
        END;
        PtrHELPWININFOA* = POINTER TO HELPWININFOA;
        HELPWININFOW* = RECORD [untagged]
            wStructSize*: INTEGER;
            x*: INTEGER;
            y*: INTEGER;
            dx*: INTEGER;
            dy*: INTEGER;
            wMax*: INTEGER;
            rgchMember*: ARRAY [untagged] 2 OF CHAR;
        END;
        PtrHELPWININFOW* = POINTER TO HELPWININFOW;
        HELPWININFO* = HELPWININFOA;
        PtrHELPWININFO* = PtrHELPWININFOA;
        NONCLIENTMETRICSA* = RECORD [untagged]
            cbSize*: INTEGER;
            iBorderWidth*: INTEGER;
            iScrollWidth*: INTEGER;
            iScrollHeight*: INTEGER;
            iCaptionWidth*: INTEGER;
            iCaptionHeight*: INTEGER;
            lfCaptionFont*: LOGFONTA;
            iSmCaptionWidth*: INTEGER;
            iSmCaptionHeight*: INTEGER;
            lfSmCaptionFont*: LOGFONTA;
            iMenuWidth*: INTEGER;
            iMenuHeight*: INTEGER;
            lfMenuFont*: LOGFONTA;
            lfStatusFont*: LOGFONTA;
            lfMessageFont*: LOGFONTA;
        END;
        PtrNONCLIENTMETRICSA* = POINTER TO NONCLIENTMETRICSA;
        NONCLIENTMETRICSW* = RECORD [untagged]
            cbSize*: INTEGER;
            iBorderWidth*: INTEGER;
            iScrollWidth*: INTEGER;
            iScrollHeight*: INTEGER;
            iCaptionWidth*: INTEGER;
            iCaptionHeight*: INTEGER;
            lfCaptionFont*: LOGFONTW;
            iSmCaptionWidth*: INTEGER;
            iSmCaptionHeight*: INTEGER;
            lfSmCaptionFont*: LOGFONTW;
            iMenuWidth*: INTEGER;
            iMenuHeight*: INTEGER;
            lfMenuFont*: LOGFONTW;
            lfStatusFont*: LOGFONTW;
            lfMessageFont*: LOGFONTW;
        END;
        PtrNONCLIENTMETRICSW* = POINTER TO NONCLIENTMETRICSW;
        NONCLIENTMETRICS* = NONCLIENTMETRICSA;
        PtrNONCLIENTMETRICS* = PtrNONCLIENTMETRICSA;
        MINIMIZEDMETRICS* = RECORD [untagged]
            cbSize*: INTEGER;
            iWidth*: INTEGER;
            iHorzGap*: INTEGER;
            iVertGap*: INTEGER;
            iArrange*: INTEGER;
        END;
        PtrMINIMIZEDMETRICS* = POINTER TO MINIMIZEDMETRICS;
        ICONMETRICSA* = RECORD [untagged]
            cbSize*: INTEGER;
            iHorzSpacing*: INTEGER;
            iVertSpacing*: INTEGER;
            iTitleWrap*: INTEGER;
            lfFont*: LOGFONTA;
        END;
        PtrICONMETRICSA* = POINTER TO ICONMETRICSA;
        ICONMETRICSW* = RECORD [untagged]
            cbSize*: INTEGER;
            iHorzSpacing*: INTEGER;
            iVertSpacing*: INTEGER;
            iTitleWrap*: INTEGER;
            lfFont*: LOGFONTW;
        END;
        PtrICONMETRICSW* = POINTER TO ICONMETRICSW;
        ICONMETRICS* = ICONMETRICSA;
        PtrICONMETRICS* = PtrICONMETRICSA;
        ANIMATIONINFO* = RECORD [untagged]
            cbSize*: INTEGER;
            iMinAnimate*: INTEGER;
        END;
        PtrANIMATIONINFO* = POINTER TO ANIMATIONINFO;
        SERIALKEYSA* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            lpszActivePort*: PtrSTR;
            lpszPort*: PtrSTR;
            iBaudRate*: INTEGER;
            iPortState*: INTEGER;
            iActive*: INTEGER;
        END;
        PtrSERIALKEYSA* = POINTER TO SERIALKEYSA;
        SERIALKEYSW* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            lpszActivePort*: PtrWSTR;
            lpszPort*: PtrWSTR;
            iBaudRate*: INTEGER;
            iPortState*: INTEGER;
            iActive*: INTEGER;
        END;
        PtrSERIALKEYSW* = POINTER TO SERIALKEYSW;
        SERIALKEYS* = SERIALKEYSA;
        PtrSERIALKEYS* = PtrSERIALKEYSA;
        HIGHCONTRASTA* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            lpszDefaultScheme*: PtrSTR;
        END;
        PtrHIGHCONTRASTA* = POINTER TO HIGHCONTRASTA;
        HIGHCONTRASTW* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            lpszDefaultScheme*: PtrWSTR;
        END;
        PtrHIGHCONTRASTW* = POINTER TO HIGHCONTRASTW;
        HIGHCONTRAST* = HIGHCONTRASTA;
        PtrHIGHCONTRAST* = PtrHIGHCONTRASTA;
        FILTERKEYS* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            iWaitMSec*: INTEGER;
            iDelayMSec*: INTEGER;
            iRepeatMSec*: INTEGER;
            iBounceMSec*: INTEGER;
        END;
        PtrFILTERKEYS* = POINTER TO FILTERKEYS;
        STICKYKEYS* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
        END;
        PtrSTICKYKEYS* = POINTER TO STICKYKEYS;
        MOUSEKEYS* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            iMaxSpeed*: INTEGER;
            iTimeToMaxSpeed*: INTEGER;
            iCtrlSpeed*: INTEGER;
            dwReserved1*: INTEGER;
            dwReserved2*: INTEGER;
        END;
        PtrMOUSEKEYS* = POINTER TO MOUSEKEYS;
        ACCESSTIMEOUT* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            iTimeOutMSec*: INTEGER;
        END;
        PtrACCESSTIMEOUT* = POINTER TO ACCESSTIMEOUT;
        SOUNDSENTRYA* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            iFSTextEffect*: INTEGER;
            iFSTextEffectMSec*: INTEGER;
            iFSTextEffectColorBits*: INTEGER;
            iFSGrafEffect*: INTEGER;
            iFSGrafEffectMSec*: INTEGER;
            iFSGrafEffectColor*: INTEGER;
            iWindowsEffect*: INTEGER;
            iWindowsEffectMSec*: INTEGER;
            lpszWindowsEffectDLL*: PtrSTR;
            iWindowsEffectOrdinal*: INTEGER;
        END;
        PtrSOUNDSENTRYA* = POINTER TO SOUNDSENTRYA;
        SOUNDSENTRYW* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
            iFSTextEffect*: INTEGER;
            iFSTextEffectMSec*: INTEGER;
            iFSTextEffectColorBits*: INTEGER;
            iFSGrafEffect*: INTEGER;
            iFSGrafEffectMSec*: INTEGER;
            iFSGrafEffectColor*: INTEGER;
            iWindowsEffect*: INTEGER;
            iWindowsEffectMSec*: INTEGER;
            lpszWindowsEffectDLL*: PtrWSTR;
            iWindowsEffectOrdinal*: INTEGER;
        END;
        PtrSOUNDSENTRYW* = POINTER TO SOUNDSENTRYW;
        SOUNDSENTRY* = SOUNDSENTRYA;
        PtrSOUNDSENTRY* = PtrSOUNDSENTRYA;
        TOGGLEKEYS* = RECORD [untagged]
            cbSize*: INTEGER;
            dwFlags*: SET;
        END;
        PtrTOGGLEKEYS* = POINTER TO TOGGLEKEYS;
        LCTYPE* = INTEGER;
        CALTYPE* = INTEGER;
        CALID* = INTEGER;
        CPINFO* = RECORD [untagged]
            MaxCharSize*: INTEGER;
            DefaultChar*: ARRAY [untagged] 2 OF SHORTCHAR;
            LeadByte*: ARRAY [untagged] 12 OF SHORTCHAR;
        END;
        PtrCPINFO* = POINTER TO CPINFO;
        NUMBERFMTA* = RECORD [untagged]
            NumDigits*: INTEGER;
            LeadingZero*: INTEGER;
            Grouping*: INTEGER;
            lpDecimalSep*: PtrSTR;
            lpThousandSep*: PtrSTR;
            NegativeOrder*: INTEGER;
        END;
        PtrNUMBERFMTA* = POINTER TO NUMBERFMTA;
        NUMBERFMTW* = RECORD [untagged]
            NumDigits*: INTEGER;
            LeadingZero*: INTEGER;
            Grouping*: INTEGER;
            lpDecimalSep*: PtrWSTR;
            lpThousandSep*: PtrWSTR;
            NegativeOrder*: INTEGER;
        END;
        PtrNUMBERFMTW* = POINTER TO NUMBERFMTW;
        NUMBERFMT* = NUMBERFMTA;
        PtrNUMBERFMT* = PtrNUMBERFMTA;
        CURRENCYFMTA* = RECORD [untagged]
            NumDigits*: INTEGER;
            LeadingZero*: INTEGER;
            Grouping*: INTEGER;
            lpDecimalSep*: PtrSTR;
            lpThousandSep*: PtrSTR;
            NegativeOrder*: INTEGER;
            PositiveOrder*: INTEGER;
            lpCurrencySymbol*: PtrSTR;
        END;
        PtrCURRENCYFMTA* = POINTER TO CURRENCYFMTA;
        CURRENCYFMTW* = RECORD [untagged]
            NumDigits*: INTEGER;
            LeadingZero*: INTEGER;
            Grouping*: INTEGER;
            lpDecimalSep*: PtrWSTR;
            lpThousandSep*: PtrWSTR;
            NegativeOrder*: INTEGER;
            PositiveOrder*: INTEGER;
            lpCurrencySymbol*: PtrWSTR;
        END;
        PtrCURRENCYFMTW* = POINTER TO CURRENCYFMTW;
        CURRENCYFMT* = CURRENCYFMTA;
        PtrCURRENCYFMT* = PtrCURRENCYFMTA;
        LOCALE_ENUMPROCA* = PROCEDURE (): INTEGER;
        CODEPAGE_ENUMPROCA* = PROCEDURE (): INTEGER;
        DATEFMT_ENUMPROCA* = PROCEDURE (): INTEGER;
        TIMEFMT_ENUMPROCA* = PROCEDURE (): INTEGER;
        CALINFO_ENUMPROCA* = PROCEDURE (): INTEGER;
        LOCALE_ENUMPROCW* = PROCEDURE (): INTEGER;
        CODEPAGE_ENUMPROCW* = PROCEDURE (): INTEGER;
        DATEFMT_ENUMPROCW* = PROCEDURE (): INTEGER;
        TIMEFMT_ENUMPROCW* = PROCEDURE (): INTEGER;
        CALINFO_ENUMPROCW* = PROCEDURE (): INTEGER;
        COORD* = RECORD [untagged]
            X*: SHORTINT;
            Y*: SHORTINT;
        END;
        PtrCOORD* = POINTER TO COORD;
        SMALL_RECT* = RECORD [untagged]
            Left*: SHORTINT;
            Top*: SHORTINT;
            Right*: SHORTINT;
            Bottom*: SHORTINT;
        END;
        PtrSMALL_RECT* = POINTER TO SMALL_RECT;
        KEY_EVENT_RECORD* = RECORD [untagged]
            bKeyDown*: BOOL;
            wRepeatCount*: SHORTINT;
            wVirtualKeyCode*: SHORTINT;
            wVirtualScanCode*: SHORTINT;
            uChar*: RECORD [union]
                UnicodeChar*: CHAR;
                AsciiChar*: SHORTCHAR;
            END;
            dwControlKeyState*: SET;
        END;
        PtrKEY_EVENT_RECORD* = POINTER TO KEY_EVENT_RECORD;
        MOUSE_EVENT_RECORD* = RECORD [untagged]
            dwMousePosition*: COORD;
            dwButtonState*: SET;
            dwControlKeyState*: SET;
            dwEventFlags*: SET;
        END;
        PtrMOUSE_EVENT_RECORD* = POINTER TO MOUSE_EVENT_RECORD;
        WINDOW_BUFFER_SIZE_RECORD* = RECORD [untagged]
            dwSize*: COORD;
        END;
        PtrWINDOW_BUFFER_SIZE_RECORD* = POINTER TO WINDOW_BUFFER_SIZE_RECORD;
        MENU_EVENT_RECORD* = RECORD [untagged]
            dwCommandId*: INTEGER;
        END;
        PtrMENU_EVENT_RECORD* = POINTER TO MENU_EVENT_RECORD;
        FOCUS_EVENT_RECORD* = RECORD [untagged]
            bSetFocus*: BOOL;
        END;
        PtrFOCUS_EVENT_RECORD* = POINTER TO FOCUS_EVENT_RECORD;
        INPUT_RECORD* = RECORD [untagged]
            EventType*: SHORTINT;
            Event*: RECORD [union]
                KeyEvent*: KEY_EVENT_RECORD;
                MouseEvent*: MOUSE_EVENT_RECORD;
                WindowBufferSizeEvent*: WINDOW_BUFFER_SIZE_RECORD;
                MenuEvent*: MENU_EVENT_RECORD;
                FocusEvent*: FOCUS_EVENT_RECORD;
            END;
        END;
        PtrINPUT_RECORD* = POINTER TO INPUT_RECORD;
        CHAR_INFO* = RECORD [untagged]
            Char*: RECORD [union]
                UnicodeChar*: CHAR;
                AsciiChar*: SHORTCHAR;
            END;
            Attributes*: SHORTINT;
        END;
        PtrCHAR_INFO* = POINTER TO CHAR_INFO;
        CONSOLE_SCREEN_BUFFER_INFO* = RECORD [untagged]
            dwSize*: COORD;
            dwCursorPosition*: COORD;
            wAttributes*: SHORTINT;
            srWindow*: SMALL_RECT;
            dwMaximumWindowSize*: COORD;
        END;
        PtrCONSOLE_SCREEN_BUFFER_INFO* = POINTER TO CONSOLE_SCREEN_BUFFER_INFO;
        CONSOLE_CURSOR_INFO* = RECORD [untagged]
            dwSize*: INTEGER;
            bVisible*: BOOL;
        END;
        PtrCONSOLE_CURSOR_INFO* = POINTER TO CONSOLE_CURSOR_INFO;
        HANDLER_ROUTINE* = PROCEDURE (CtrlType: INTEGER): BOOL;
        VS_FIXEDFILEINFO* = RECORD [untagged]
            dwSignature*: INTEGER;
            dwStrucVersion*: INTEGER;
            dwFileVersionMS*: INTEGER;
            dwFileVersionLS*: INTEGER;
            dwProductVersionMS*: INTEGER;
            dwProductVersionLS*: INTEGER;
            dwFileFlagsMask*: SET;
            dwFileFlags*: SET;
            dwFileOS*: SET;
            dwFileType*: INTEGER;
            dwFileSubtype*: INTEGER;
            dwFileDateMS*: INTEGER;
            dwFileDateLS*: INTEGER;
        END;
        REGSAM* = ACCESS_MASK;
        HKEY* = HANDLE;
        val_context* = RECORD [untagged]
            valuelen*: INTEGER;
            value_context*: PtrVoid;
            val_buff_ptr*: PtrVoid;
        END;
        Ptrval_context* = POINTER TO val_context;
        PVALUEA* = RECORD [untagged]
            pv_valuename*: PtrSTR;
            pv_valuelen*: INTEGER;
            pv_value_context*: PtrVoid;
            pv_type*: INTEGER;
        END;
        PtrPVALUEA* = POINTER TO PVALUEA;
        PVALUEW* = RECORD [untagged]
            pv_valuename*: PtrWSTR;
            pv_valuelen*: INTEGER;
            pv_value_context*: PtrVoid;
            pv_type*: INTEGER;
        END;
        PtrPVALUEW* = POINTER TO PVALUEW;
        PVALUE* = PVALUEA;
        PtrPVALUE* = PtrPVALUEA;
        QUERYHANDLER* = PROCEDURE(keycontext: PtrVoid; VAR [nil] val_list: val_context; num_vals: INTEGER; outputbuffer: PtrVoid; VAR [nil] total_outlen: INTEGER; input_blen: INTEGER): INTEGER;
        REG_PROVIDER* = RECORD [untagged]
            pi_R0_1val*: QUERYHANDLER;
            pi_R0_allvals*: QUERYHANDLER;
            pi_R3_1val*: QUERYHANDLER;
            pi_R3_allvals*: QUERYHANDLER;
            pi_flags*: INTEGER;
            pi_key_context*: PtrVoid;
        END;
        PtrREG_PROVIDER* = POINTER TO REG_PROVIDER;
        VALENTA* = RECORD [untagged]
            ve_valuename*: PtrSTR;
            ve_valuelen*: INTEGER;
            ve_valueptr*: INTEGER;
            ve_type*: INTEGER;
        END;
        PtrVALENTA* = POINTER TO VALENTA;
        VALENTW* = RECORD [untagged]
            ve_valuename*: PtrWSTR;
            ve_valuelen*: INTEGER;
            ve_valueptr*: INTEGER;
            ve_type*: INTEGER;
        END;
        PtrVALENTW* = POINTER TO VALENTW;
        VALENT* = VALENTA;
        PtrVALENT* = PtrVALENTA;
        DDEACK* = RECORD [untagged]
            fBits0*: SHORTINT;
            (* bAppReturnCode*: INTEGER; (8 bits) *)
            (* reserved*: INTEGER; (6 bits) *)
            (* fBusy*: INTEGER; (1 bits) *)
            (* fAck*: INTEGER; (1 bits) *)
        END;
        DDEADVISE* = RECORD [untagged]
            fBits0*: SHORTINT;
            (* reserved*: INTEGER; (14 bits) *)
            (* fDeferUpd*: INTEGER; (1 bits) *)
            (* fAckReq*: INTEGER; (1 bits) *)
            cfFormat*: SHORTINT;
        END;
        DDEDATA* = RECORD [untagged]
            fBits0*: SHORTINT;
            (* unused*: INTEGER; (12 bits) *)
            (* fResponse*: INTEGER; (1 bits) *)
            (* fRelease*: INTEGER; (1 bits) *)
            (* reserved*: INTEGER; (1 bits) *)
            (* fAckReq*: INTEGER; (1 bits) *)
            cfFormat*: SHORTINT;
            Value*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        DDEPOKE* = RECORD [untagged]
            fBits0*: SHORTINT;
            (* unused*: INTEGER; (13 bits) *)
            (* fRelease*: INTEGER; (1 bits) *)
            (* fReserved*: INTEGER; (2 bits) *)
            cfFormat*: SHORTINT;
            Value*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        DDELN* = RECORD [untagged]
            fBits0*: SHORTINT;
            (* unused*: INTEGER; (13 bits) *)
            (* fRelease*: INTEGER; (1 bits) *)
            (* fDeferUpd*: INTEGER; (1 bits) *)
            (* fAckReq*: INTEGER; (1 bits) *)
            cfFormat*: SHORTINT;
        END;
        DDEUP* = RECORD [untagged]
            fBits0*: SHORTINT;
            (* unused*: INTEGER; (12 bits) *)
            (* fAck*: INTEGER; (1 bits) *)
            (* fRelease*: INTEGER; (1 bits) *)
            (* fReserved*: INTEGER; (1 bits) *)
            (* fAckReq*: INTEGER; (1 bits) *)
            cfFormat*: SHORTINT;
            rgb*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        HCONVLIST* = HANDLE;
        HCONV* = HANDLE;
        HSZ* = HANDLE;
        HDDEDATA* = HANDLE;
        HSZPAIR* = RECORD [untagged]
            hszSvc*: HSZ;
            hszTopic*: HSZ;
        END;
        PtrHSZPAIR* = POINTER TO HSZPAIR;
        CONVCONTEXT* = RECORD [untagged]
            cb*: INTEGER;
            wFlags*: INTEGER;
            wCountryID*: INTEGER;
            iCodePage*: INTEGER;
            dwLangID*: INTEGER;
            dwSecurity*: INTEGER;
            qos*: SECURITY_QUALITY_OF_SERVICE;
        END;
        PtrCONVCONTEXT* = POINTER TO CONVCONTEXT;
        CONVINFO* = RECORD [untagged]
            cb*: INTEGER;
            hUser*: INTEGER;
            hConvPartner*: HCONV;
            hszSvcPartner*: HSZ;
            hszServiceReq*: HSZ;
            hszTopic*: HSZ;
            hszItem*: HSZ;
            wFmt*: INTEGER;
            wType*: INTEGER;
            wStatus*: SET;
            wConvst*: INTEGER;
            wLastError*: INTEGER;
            hConvList*: HCONVLIST;
            ConvCtxt*: CONVCONTEXT;
            hwnd*: HWND;
            hwndPartner*: HWND;
        END;
        PtrCONVINFO* = POINTER TO CONVINFO;
        FNCALLBACK* = PROCEDURE (wType: INTEGER; wFmt: INTEGER; hConv: HCONV; hsz1: HSZ; hsz2: HSZ; hData: HDDEDATA; dwData1: INTEGER; dwData2: INTEGER): HDDEDATA;
        DDEML_MSG_HOOK_DATA* = RECORD [untagged]
            uiLo*: INTEGER;
            uiHi*: INTEGER;
            cbData*: INTEGER;
            Data*: ARRAY [untagged] 8 OF INTEGER;
        END;
        PtrDDEML_MSG_HOOK_DATA* = POINTER TO DDEML_MSG_HOOK_DATA;
        MONMSGSTRUCT* = RECORD [untagged]
            cb*: INTEGER;
            hwndTo*: HWND;
            dwTime*: INTEGER;
            hTask*: HANDLE;
            wMsg*: INTEGER;
            wParam*: WPARAM;
            lParam*: LPARAM;
            dmhd*: DDEML_MSG_HOOK_DATA;
        END;
        PtrMONMSGSTRUCT* = POINTER TO MONMSGSTRUCT;
        MONCBSTRUCT* = RECORD [untagged]
            cb*: INTEGER;
            dwTime*: INTEGER;
            hTask*: HANDLE;
            dwRet*: INTEGER;
            wType*: INTEGER;
            wFmt*: INTEGER;
            hConv*: HCONV;
            hsz1*: HSZ;
            hsz2*: HSZ;
            hData*: HDDEDATA;
            dwData1*: INTEGER;
            dwData2*: INTEGER;
            cc*: CONVCONTEXT;
            cbData*: INTEGER;
            Data*: ARRAY [untagged] 8 OF INTEGER;
        END;
        PtrMONCBSTRUCT* = POINTER TO MONCBSTRUCT;
        MONHSZSTRUCTA* = RECORD [untagged]
            cb*: INTEGER;
            fsAction*: BOOL;
            dwTime*: INTEGER;
            hsz*: HSZ;
            hTask*: HANDLE;
            str*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrMONHSZSTRUCTA* = POINTER TO MONHSZSTRUCTA;
        MONHSZSTRUCTW* = RECORD [untagged]
            cb*: INTEGER;
            fsAction*: BOOL;
            dwTime*: INTEGER;
            hsz*: HSZ;
            hTask*: HANDLE;
            str*: ARRAY [untagged] 1 OF CHAR;
        END;
        PtrMONHSZSTRUCTW* = POINTER TO MONHSZSTRUCTW;
        MONHSZSTRUCT* = MONHSZSTRUCTA;
        PtrMONHSZSTRUCT* = PtrMONHSZSTRUCTA;
        MONERRSTRUCT* = RECORD [untagged]
            cb*: INTEGER;
            wLastError*: INTEGER;
            dwTime*: INTEGER;
            hTask*: HANDLE;
        END;
        PtrMONERRSTRUCT* = POINTER TO MONERRSTRUCT;
        MONLINKSTRUCT* = RECORD [untagged]
            cb*: INTEGER;
            dwTime*: INTEGER;
            hTask*: HANDLE;
            fEstablished*: BOOL;
            fNoData*: BOOL;
            hszSvc*: HSZ;
            hszTopic*: HSZ;
            hszItem*: HSZ;
            wFmt*: INTEGER;
            fServer*: BOOL;
            hConvServer*: HCONV;
            hConvClient*: HCONV;
        END;
        PtrMONLINKSTRUCT* = POINTER TO MONLINKSTRUCT;
        MONCONVSTRUCT* = RECORD [untagged]
            cb*: INTEGER;
            fConnect*: BOOL;
            dwTime*: INTEGER;
            hTask*: HANDLE;
            hszSvc*: HSZ;
            hszTopic*: HSZ;
            hConvClient*: HCONV;
            hConvServer*: HCONV;
        END;
        PtrMONCONVSTRUCT* = POINTER TO MONCONVSTRUCT;
        HDROP* = HANDLE;
        DRAGINFOA* = RECORD [noalign]
            uSize*: INTEGER;
            pt*: POINT;
            fNC*: BOOL;
            lpFileList*: PtrSTR;
            grfKeyState*: SET;
        END;
        PtrDRAGINFOA* = POINTER TO DRAGINFOA;
        DRAGINFOW* = RECORD [noalign]
            uSize*: INTEGER;
            pt*: POINT;
            fNC*: BOOL;
            lpFileList*: PtrWSTR;
            grfKeyState*: SET;
        END;
        PtrDRAGINFOW* = POINTER TO DRAGINFOW;
        DRAGINFO* = DRAGINFOA;
        PtrDRAGINFO* = PtrDRAGINFOA;
        APPBARDATA* = RECORD [noalign]
            cbSize*: INTEGER;
            hWnd*: HWND;
            uCallbackMessage*: INTEGER;
            uEdge*: INTEGER;
            rc*: RECT;
            lParam*: LPARAM;
        END;
        PtrAPPBARDATA* = POINTER TO APPBARDATA;
        FILEOP_FLAGS* = SHORTINT;
        PRINTEROP_FLAGS* = SHORTINT;
        SHFILEOPSTRUCTA* = RECORD [noalign]
            hwnd*: HWND;
            wFunc*: INTEGER;
            pFrom*: PtrSTR;
            pTo*: PtrSTR;
            fFlags*: FILEOP_FLAGS;
            fAnyOperationsAborted*: BOOL;
            hNameMappings*: PtrVoid;
            lpszProgressTitle*: PtrSTR;
        END;
        PtrSHFILEOPSTRUCTA* = POINTER TO SHFILEOPSTRUCTA;
        SHFILEOPSTRUCTW* = RECORD [noalign]
            hwnd*: HWND;
            wFunc*: INTEGER;
            pFrom*: PtrWSTR;
            pTo*: PtrWSTR;
            fFlags*: FILEOP_FLAGS;
            fAnyOperationsAborted*: BOOL;
            hNameMappings*: PtrVoid;
            lpszProgressTitle*: PtrWSTR;
        END;
        PtrSHFILEOPSTRUCTW* = POINTER TO SHFILEOPSTRUCTW;
        SHFILEOPSTRUCT* = SHFILEOPSTRUCTA;
        PtrSHFILEOPSTRUCT* = PtrSHFILEOPSTRUCTA;
        SHNAMEMAPPINGA* = RECORD [noalign]
            pszOldPath*: PtrSTR;
            pszNewPath*: PtrSTR;
            cchOldPath*: INTEGER;
            cchNewPath*: INTEGER;
        END;
        PtrSHNAMEMAPPINGA* = POINTER TO SHNAMEMAPPINGA;
        SHNAMEMAPPINGW* = RECORD [noalign]
            pszOldPath*: PtrWSTR;
            pszNewPath*: PtrWSTR;
            cchOldPath*: INTEGER;
            cchNewPath*: INTEGER;
        END;
        PtrSHNAMEMAPPINGW* = POINTER TO SHNAMEMAPPINGW;
        SHNAMEMAPPING* = SHNAMEMAPPINGA;
        PtrSHNAMEMAPPING* = PtrSHNAMEMAPPINGA;
        SHELLEXECUTEINFOA* = RECORD [noalign]
            cbSize*: INTEGER;
            fMask*: SET;
            hwnd*: HWND;
            lpVerb*: PtrSTR;
            lpFile*: PtrSTR;
            lpParameters*: PtrSTR;
            lpDirectory*: PtrSTR;
            nShow*: INTEGER;
            hInstApp*: HINSTANCE;
            lpIDList*: PtrVoid;
            lpClass*: PtrSTR;
            hkeyClass*: HKEY;
            dwHotKey*: INTEGER;
            hIcon*: HANDLE;
            hProcess*: HANDLE;
        END;
        PtrSHELLEXECUTEINFOA* = POINTER TO SHELLEXECUTEINFOA;
        SHELLEXECUTEINFOW* = RECORD [noalign]
            cbSize*: INTEGER;
            fMask*: SET;
            hwnd*: HWND;
            lpVerb*: PtrWSTR;
            lpFile*: PtrWSTR;
            lpParameters*: PtrWSTR;
            lpDirectory*: PtrWSTR;
            nShow*: INTEGER;
            hInstApp*: HINSTANCE;
            lpIDList*: PtrVoid;
            lpClass*: PtrWSTR;
            hkeyClass*: HKEY;
            dwHotKey*: INTEGER;
            hIcon*: HANDLE;
            hProcess*: HANDLE;
        END;
        PtrSHELLEXECUTEINFOW* = POINTER TO SHELLEXECUTEINFOW;
        SHELLEXECUTEINFO* = SHELLEXECUTEINFOA;
        PtrSHELLEXECUTEINFO* = PtrSHELLEXECUTEINFOA;
        NOTIFYICONDATAA* = RECORD [noalign]
            cbSize*: INTEGER;
            hWnd*: HWND;
            uID*: INTEGER;
            uFlags*: SET;
            uCallbackMessage*: INTEGER;
            hIcon*: HICON;
            szTip*: ARRAY [untagged] 64 OF SHORTCHAR;
        END;
        PtrNOTIFYICONDATAA* = POINTER TO NOTIFYICONDATAA;
        NOTIFYICONDATAW* = RECORD [noalign]
            cbSize*: INTEGER;
            hWnd*: HWND;
            uID*: INTEGER;
            uFlags*: SET;
            uCallbackMessage*: INTEGER;
            hIcon*: HICON;
            szTip*: ARRAY [untagged] 64 OF CHAR;
        END;
        PtrNOTIFYICONDATAW* = POINTER TO NOTIFYICONDATAW;
        NOTIFYICONDATA* = NOTIFYICONDATAA;
        PtrNOTIFYICONDATA* = PtrNOTIFYICONDATAA;
        SHFILEINFOA* = RECORD [noalign]
            hIcon*: HICON;
            iIcon*: INTEGER;
            dwAttributes*: SET;
            szDisplayName*: ARRAY [untagged] 260 OF SHORTCHAR;
            szTypeName*: ARRAY [untagged] 80 OF SHORTCHAR;
        END;
        PtrSHFILEINFOA* = POINTER TO SHFILEINFOA;
        SHFILEINFOW* = RECORD [noalign]
            hIcon*: HICON;
            iIcon*: INTEGER;
            dwAttributes*: SET;
            szDisplayName*: ARRAY [untagged] 260 OF CHAR;
            szTypeName*: ARRAY [untagged] 80 OF CHAR;
        END;
        PtrSHFILEINFOW* = POINTER TO SHFILEINFOW;
        SHFILEINFO* = SHFILEINFOA;
        PtrSHFILEINFO* = PtrSHFILEINFOA;
        PtrPROPSHEETPAGEA* = POINTER TO PROPSHEETPAGEA;
        FNPSPCALLBACKA* = PROCEDURE (hwnd: HWND; uMsg: INTEGER; ppsp: PtrPROPSHEETPAGEA): INTEGER;
        PtrPROPSHEETPAGEW* = POINTER TO PROPSHEETPAGEW;
        FNPSPCALLBACKW* = PROCEDURE (hwnd: HWND; uMsg: INTEGER; ppsp: PtrPROPSHEETPAGEW): INTEGER;
        PROPSHEETPAGEA* = RECORD [untagged]
            dwSize*: INTEGER;
            dwFlags*: SET;
            hInstance*: HINSTANCE;
            u*: RECORD [union]
                pszTemplate*: PtrSTR;
                pResource*: PtrDLGTEMPLATE;
            END;
            u1*: RECORD [union]
                hIcon*: HICON;
                pszIcon*: PtrSTR;
            END;
            pszTitle*: PtrSTR;
            pfnDlgProc*: DLGPROC;
            lParam*: LPARAM;
            pfnCallback*: FNPSPCALLBACKA;
            pcRefParent*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
        END;
        PROPSHEETPAGEW* = RECORD [untagged]
            dwSize*: INTEGER;
            dwFlags*: SET;
            hInstance*: HINSTANCE;
            u*: RECORD [union]
                pszTemplate*: PtrWSTR;
                pResource*: PtrDLGTEMPLATE;
            END;
            u1*: RECORD [union]
                hIcon*: HICON;
                pszIcon*: PtrWSTR;
            END;
            pszTitle*: PtrWSTR;
            pfnDlgProc*: DLGPROC;
            lParam*: LPARAM;
            pfnCallback*: FNPSPCALLBACKW;
            pcRefParent*: POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
        END;
        PROPSHEETPAGE* = PROPSHEETPAGEA; (*m*)
        PtrPROPSHEETPAGE* = PtrPROPSHEETPAGEA;
        FNPROPSHEETCALLBACK* = PROCEDURE (p0: HWND; p1: INTEGER; p2: LPARAM): INTEGER;
        _PSP* = RECORD [untagged] (*i*) END; 
        Ptr_PSP* = POINTER TO _PSP;
        PROPSHEETHEADERA* = RECORD [untagged]
            dwSize*: INTEGER;
            dwFlags*: SET;
            hwndParent*: HWND;
            hInstance*: HINSTANCE;
            u*: RECORD [union]
                hIcon*: HICON;
                pszIcon*: PtrSTR;
            END;
            pszCaption*: PtrSTR;
            nPages*: INTEGER;
            u1*: RECORD [union]
                nStartPage*: INTEGER;
                pStartPage*: PtrSTR;
            END;
            u2*: RECORD [union]
                ppsp*: PtrPROPSHEETPAGEA;
                phpage*: POINTER TO (*?*) ARRAY [untagged] OF Ptr_PSP;
            END;
            pfnCallback*: FNPROPSHEETCALLBACK;
        END;
        PtrPROPSHEETHEADERA* = POINTER TO PROPSHEETHEADERA;
        PROPSHEETHEADERW* = RECORD [untagged]
            dwSize*: INTEGER;
            dwFlags*: SET;
            hwndParent*: HWND;
            hInstance*: HINSTANCE;
            u*: RECORD [union]
                hIcon*: HICON;
                pszIcon*: PtrWSTR;
            END;
            pszCaption*: PtrWSTR;
            nPages*: INTEGER;
            u1*: RECORD [union]
                nStartPage*: INTEGER;
                pStartPage*: PtrWSTR;
            END;
            u2*: RECORD [union]
                ppsp*: PtrPROPSHEETPAGEW;
                phpage*: POINTER TO (*?*) ARRAY [untagged] OF Ptr_PSP;
            END;
            pfnCallback*: FNPROPSHEETCALLBACK;
        END;
        PtrPROPSHEETHEADERW* = POINTER TO PROPSHEETHEADERW;
        PROPSHEETHEADER* = PROPSHEETHEADERA; (*m*)
        PtrPROPSHEETHEADER* = PtrPROPSHEETHEADERA;
        FNADDPROPSHEETPAGE* = PROCEDURE (p0: Ptr_PSP; p1: LPARAM): BOOL;
        FNADDPROPSHEETPAGES* = PROCEDURE (p0: PtrVoid; p1: FNADDPROPSHEETPAGE; p2: LPARAM): BOOL;
        PSHNOTIFY* = RECORD [untagged]
            hdr*: NMHDR;
            lParam*: LPARAM;
        END;
        PtrPSHNOTIFY* = POINTER TO PSHNOTIFY;
        PRINTER_INFO_1A* = RECORD [untagged]
            Flags*: SET;
            pDescription*: PtrSTR;
            pName*: PtrSTR;
            pComment*: PtrSTR;
        END;
        PtrPRINTER_INFO_1A* = POINTER TO PRINTER_INFO_1A;
        PRINTER_INFO_1W* = RECORD [untagged]
            Flags*: SET;
            pDescription*: PtrWSTR;
            pName*: PtrWSTR;
            pComment*: PtrWSTR;
        END;
        PtrPRINTER_INFO_1W* = POINTER TO PRINTER_INFO_1W;
        PRINTER_INFO_1* = PRINTER_INFO_1A;
        PtrPRINTER_INFO_1* = PtrPRINTER_INFO_1A;
        PRINTER_INFO_2A* = RECORD [untagged]
            pServerName*: PtrSTR;
            pPrinterName*: PtrSTR;
            pShareName*: PtrSTR;
            pPortName*: PtrSTR;
            pDriverName*: PtrSTR;
            pComment*: PtrSTR;
            pLocation*: PtrSTR;
            pDevMode*: PtrDEVMODEA;
            pSepFile*: PtrSTR;
            pPrintProcessor*: PtrSTR;
            pDatatype*: PtrSTR;
            pParameters*: PtrSTR;
            pSecurityDescriptor*: PSECURITY_DESCRIPTOR;
            Attributes*: SET;
            Priority*: INTEGER;
            DefaultPriority*: INTEGER;
            StartTime*: INTEGER;
            UntilTime*: INTEGER;
            Status*: SET;
            cJobs*: INTEGER;
            AveragePPM*: INTEGER;
        END;
        PtrPRINTER_INFO_2A* = POINTER TO PRINTER_INFO_2A;
        PRINTER_INFO_2W* = RECORD [untagged]
            pServerName*: PtrWSTR;
            pPrinterName*: PtrWSTR;
            pShareName*: PtrWSTR;
            pPortName*: PtrWSTR;
            pDriverName*: PtrWSTR;
            pComment*: PtrWSTR;
            pLocation*: PtrWSTR;
            pDevMode*: PtrDEVMODEW;
            pSepFile*: PtrWSTR;
            pPrintProcessor*: PtrWSTR;
            pDatatype*: PtrWSTR;
            pParameters*: PtrWSTR;
            pSecurityDescriptor*: PSECURITY_DESCRIPTOR;
            Attributes*: SET;
            Priority*: INTEGER;
            DefaultPriority*: INTEGER;
            StartTime*: INTEGER;
            UntilTime*: INTEGER;
            Status*: SET;
            cJobs*: INTEGER;
            AveragePPM*: INTEGER;
        END;
        PtrPRINTER_INFO_2W* = POINTER TO PRINTER_INFO_2W;
        PRINTER_INFO_2* = PRINTER_INFO_2A;
        PtrPRINTER_INFO_2* = PtrPRINTER_INFO_2A;
        PRINTER_INFO_3* = RECORD [untagged]
            pSecurityDescriptor*: PSECURITY_DESCRIPTOR;
        END;
        PtrPRINTER_INFO_3* = POINTER TO PRINTER_INFO_3;
        PRINTER_INFO_4A* = RECORD [untagged]
            pPrinterName*: PtrSTR;
            pServerName*: PtrSTR;
            Attributes*: SET;
        END;
        PtrPRINTER_INFO_4A* = POINTER TO PRINTER_INFO_4A;
        PRINTER_INFO_4W* = RECORD [untagged]
            pPrinterName*: PtrWSTR;
            pServerName*: PtrWSTR;
            Attributes*: SET;
        END;
        PtrPRINTER_INFO_4W* = POINTER TO PRINTER_INFO_4W;
        PRINTER_INFO_4* = PRINTER_INFO_4A;
        PtrPRINTER_INFO_4* = PtrPRINTER_INFO_4A;
        PRINTER_INFO_5A* = RECORD [untagged]
            pPrinterName*: PtrSTR;
            pPortName*: PtrSTR;
            Attributes*: SET;
            DeviceNotSelectedTimeout*: INTEGER;
            TransmissionRetryTimeout*: INTEGER;
        END;
        PtrPRINTER_INFO_5A* = POINTER TO PRINTER_INFO_5A;
        PRINTER_INFO_5W* = RECORD [untagged]
            pPrinterName*: PtrWSTR;
            pPortName*: PtrWSTR;
            Attributes*: SET;
            DeviceNotSelectedTimeout*: INTEGER;
            TransmissionRetryTimeout*: INTEGER;
        END;
        PtrPRINTER_INFO_5W* = POINTER TO PRINTER_INFO_5W;
        PRINTER_INFO_5* = PRINTER_INFO_5A;
        PtrPRINTER_INFO_5* = PtrPRINTER_INFO_5A;
        PRINTER_INFO_6* = RECORD [untagged]
            dwStatus*: SET;
        END;
        PtrPRINTER_INFO_6* = POINTER TO PRINTER_INFO_6;
        JOB_INFO_1A* = RECORD [untagged]
            JobId*: INTEGER;
            pPrinterName*: PtrSTR;
            pMachineName*: PtrSTR;
            pUserName*: PtrSTR;
            pDocument*: PtrSTR;
            pDatatype*: PtrSTR;
            pStatus*: PtrSTR;
            Status*: SET;
            Priority*: INTEGER;
            Position*: INTEGER;
            TotalPages*: INTEGER;
            PagesPrinted*: INTEGER;
            Submitted*: SYSTEMTIME;
        END;
        PtrJOB_INFO_1A* = POINTER TO JOB_INFO_1A;
        JOB_INFO_1W* = RECORD [untagged]
            JobId*: INTEGER;
            pPrinterName*: PtrWSTR;
            pMachineName*: PtrWSTR;
            pUserName*: PtrWSTR;
            pDocument*: PtrWSTR;
            pDatatype*: PtrWSTR;
            pStatus*: PtrWSTR;
            Status*: SET;
            Priority*: INTEGER;
            Position*: INTEGER;
            TotalPages*: INTEGER;
            PagesPrinted*: INTEGER;
            Submitted*: SYSTEMTIME;
        END;
        PtrJOB_INFO_1W* = POINTER TO JOB_INFO_1W;
        JOB_INFO_1* = JOB_INFO_1A;
        PtrJOB_INFO_1* = PtrJOB_INFO_1A;
        JOB_INFO_2A* = RECORD [untagged]
            JobId*: INTEGER;
            pPrinterName*: PtrSTR;
            pMachineName*: PtrSTR;
            pUserName*: PtrSTR;
            pDocument*: PtrSTR;
            pNotifyName*: PtrSTR;
            pDatatype*: PtrSTR;
            pPrintProcessor*: PtrSTR;
            pParameters*: PtrSTR;
            pDriverName*: PtrSTR;
            pDevMode*: PtrDEVMODEA;
            pStatus*: PtrSTR;
            pSecurityDescriptor*: PSECURITY_DESCRIPTOR;
            Status*: SET;
            Priority*: INTEGER;
            Position*: INTEGER;
            StartTime*: INTEGER;
            UntilTime*: INTEGER;
            TotalPages*: INTEGER;
            Size*: INTEGER;
            Submitted*: SYSTEMTIME;
            Time*: INTEGER;
            PagesPrinted*: INTEGER;
        END;
        PtrJOB_INFO_2A* = POINTER TO JOB_INFO_2A;
        JOB_INFO_2W* = RECORD [untagged]
            JobId*: INTEGER;
            pPrinterName*: PtrWSTR;
            pMachineName*: PtrWSTR;
            pUserName*: PtrWSTR;
            pDocument*: PtrWSTR;
            pNotifyName*: PtrWSTR;
            pDatatype*: PtrWSTR;
            pPrintProcessor*: PtrWSTR;
            pParameters*: PtrWSTR;
            pDriverName*: PtrWSTR;
            pDevMode*: PtrDEVMODEW;
            pStatus*: PtrWSTR;
            pSecurityDescriptor*: PSECURITY_DESCRIPTOR;
            Status*: SET;
            Priority*: INTEGER;
            Position*: INTEGER;
            StartTime*: INTEGER;
            UntilTime*: INTEGER;
            TotalPages*: INTEGER;
            Size*: INTEGER;
            Submitted*: SYSTEMTIME;
            Time*: INTEGER;
            PagesPrinted*: INTEGER;
        END;
        PtrJOB_INFO_2W* = POINTER TO JOB_INFO_2W;
        JOB_INFO_2* = JOB_INFO_2A;
        PtrJOB_INFO_2* = PtrJOB_INFO_2A;
        ADDJOB_INFO_1A* = RECORD [untagged]
            Path*: PtrSTR;
            JobId*: INTEGER;
        END;
        PtrADDJOB_INFO_1A* = POINTER TO ADDJOB_INFO_1A;
        ADDJOB_INFO_1W* = RECORD [untagged]
            Path*: PtrWSTR;
            JobId*: INTEGER;
        END;
        PtrADDJOB_INFO_1W* = POINTER TO ADDJOB_INFO_1W;
        ADDJOB_INFO_1* = ADDJOB_INFO_1A;
        PtrADDJOB_INFO_1* = PtrADDJOB_INFO_1A;
        DRIVER_INFO_1A* = RECORD [untagged]
            pName*: PtrSTR;
        END;
        PtrDRIVER_INFO_1A* = POINTER TO DRIVER_INFO_1A;
        DRIVER_INFO_1W* = RECORD [untagged]
            pName*: PtrWSTR;
        END;
        PtrDRIVER_INFO_1W* = POINTER TO DRIVER_INFO_1W;
        DRIVER_INFO_1* = DRIVER_INFO_1A;
        PtrDRIVER_INFO_1* = PtrDRIVER_INFO_1A;
        DRIVER_INFO_2A* = RECORD [untagged]
            cVersion*: INTEGER;
            pName*: PtrSTR;
            pEnvironment*: PtrSTR;
            pDriverPath*: PtrSTR;
            pDataFile*: PtrSTR;
            pConfigFile*: PtrSTR;
        END;
        PtrDRIVER_INFO_2A* = POINTER TO DRIVER_INFO_2A;
        DRIVER_INFO_2W* = RECORD [untagged]
            cVersion*: INTEGER;
            pName*: PtrWSTR;
            pEnvironment*: PtrWSTR;
            pDriverPath*: PtrWSTR;
            pDataFile*: PtrWSTR;
            pConfigFile*: PtrWSTR;
        END;
        PtrDRIVER_INFO_2W* = POINTER TO DRIVER_INFO_2W;
        DRIVER_INFO_2* = DRIVER_INFO_2A;
        PtrDRIVER_INFO_2* = PtrDRIVER_INFO_2A;
        DRIVER_INFO_3A* = RECORD [untagged]
            cVersion*: INTEGER;
            pName*: PtrSTR;
            pEnvironment*: PtrSTR;
            pDriverPath*: PtrSTR;
            pDataFile*: PtrSTR;
            pConfigFile*: PtrSTR;
            pHelpFile*: PtrSTR;
            pDependentFiles*: PtrSTR;
            pMonitorName*: PtrSTR;
            pDefaultDataType*: PtrSTR;
        END;
        PtrDRIVER_INFO_3A* = POINTER TO DRIVER_INFO_3A;
        DRIVER_INFO_3W* = RECORD [untagged]
            cVersion*: INTEGER;
            pName*: PtrWSTR;
            pEnvironment*: PtrWSTR;
            pDriverPath*: PtrWSTR;
            pDataFile*: PtrWSTR;
            pConfigFile*: PtrWSTR;
            pHelpFile*: PtrWSTR;
            pDependentFiles*: PtrWSTR;
            pMonitorName*: PtrWSTR;
            pDefaultDataType*: PtrWSTR;
        END;
        PtrDRIVER_INFO_3W* = POINTER TO DRIVER_INFO_3W;
        DRIVER_INFO_3* = DRIVER_INFO_3A;
        PtrDRIVER_INFO_3* = PtrDRIVER_INFO_3A;
        DOC_INFO_1A* = RECORD [untagged]
            pDocName*: PtrSTR;
            pOutputFile*: PtrSTR;
            pDatatype*: PtrSTR;
        END;
        PtrDOC_INFO_1A* = POINTER TO DOC_INFO_1A;
        DOC_INFO_1W* = RECORD [untagged]
            pDocName*: PtrWSTR;
            pOutputFile*: PtrWSTR;
            pDatatype*: PtrWSTR;
        END;
        PtrDOC_INFO_1W* = POINTER TO DOC_INFO_1W;
        DOC_INFO_1* = DOC_INFO_1A;
        PtrDOC_INFO_1* = PtrDOC_INFO_1A;
        FORM_INFO_1A* = RECORD [untagged]
            Flags*: SET;
            pName*: PtrSTR;
            Size*: SIZE;
            ImageableArea*: RECT;
        END;
        PtrFORM_INFO_1A* = POINTER TO FORM_INFO_1A;
        FORM_INFO_1W* = RECORD [untagged]
            Flags*: SET;
            pName*: PtrWSTR;
            Size*: SIZE;
            ImageableArea*: RECT;
        END;
        PtrFORM_INFO_1W* = POINTER TO FORM_INFO_1W;
        FORM_INFO_1* = FORM_INFO_1A;
        PtrFORM_INFO_1* = PtrFORM_INFO_1A;
        DOC_INFO_2A* = RECORD [untagged]
            pDocName*: PtrSTR;
            pOutputFile*: PtrSTR;
            pDatatype*: PtrSTR;
            dwMode*: SET;
            JobId*: INTEGER;
        END;
        PtrDOC_INFO_2A* = POINTER TO DOC_INFO_2A;
        DOC_INFO_2W* = RECORD [untagged]
            pDocName*: PtrWSTR;
            pOutputFile*: PtrWSTR;
            pDatatype*: PtrWSTR;
            dwMode*: SET;
            JobId*: INTEGER;
        END;
        PtrDOC_INFO_2W* = POINTER TO DOC_INFO_2W;
        DOC_INFO_2* = DOC_INFO_2A;
        PtrDOC_INFO_2* = PtrDOC_INFO_2A;
        PRINTPROCESSOR_INFO_1A* = RECORD [untagged]
            pName*: PtrSTR;
        END;
        PtrPRINTPROCESSOR_INFO_1A* = POINTER TO PRINTPROCESSOR_INFO_1A;
        PRINTPROCESSOR_INFO_1W* = RECORD [untagged]
            pName*: PtrWSTR;
        END;
        PtrPRINTPROCESSOR_INFO_1W* = POINTER TO PRINTPROCESSOR_INFO_1W;
        PRINTPROCESSOR_INFO_1* = PRINTPROCESSOR_INFO_1A;
        PtrPRINTPROCESSOR_INFO_1* = PtrPRINTPROCESSOR_INFO_1A;
        PORT_INFO_1A* = RECORD [untagged]
            pName*: PtrSTR;
        END;
        PtrPORT_INFO_1A* = POINTER TO PORT_INFO_1A;
        PORT_INFO_1W* = RECORD [untagged]
            pName*: PtrWSTR;
        END;
        PtrPORT_INFO_1W* = POINTER TO PORT_INFO_1W;
        PORT_INFO_1* = PORT_INFO_1A;
        PtrPORT_INFO_1* = PtrPORT_INFO_1A;
        PORT_INFO_2A* = RECORD [untagged]
            pPortName*: PtrSTR;
            pMonitorName*: PtrSTR;
            pDescription*: PtrSTR;
            fPortType*: INTEGER;
            Reserved*: INTEGER;
        END;
        PtrPORT_INFO_2A* = POINTER TO PORT_INFO_2A;
        PORT_INFO_2W* = RECORD [untagged]
            pPortName*: PtrWSTR;
            pMonitorName*: PtrWSTR;
            pDescription*: PtrWSTR;
            fPortType*: INTEGER;
            Reserved*: INTEGER;
        END;
        PtrPORT_INFO_2W* = POINTER TO PORT_INFO_2W;
        PORT_INFO_2* = PORT_INFO_2A;
        PtrPORT_INFO_2* = PtrPORT_INFO_2A;
        MONITOR_INFO_1A* = RECORD [untagged]
            pName*: PtrSTR;
        END;
        PtrMONITOR_INFO_1A* = POINTER TO MONITOR_INFO_1A;
        MONITOR_INFO_1W* = RECORD [untagged]
            pName*: PtrWSTR;
        END;
        PtrMONITOR_INFO_1W* = POINTER TO MONITOR_INFO_1W;
        MONITOR_INFO_1* = MONITOR_INFO_1A;
        PtrMONITOR_INFO_1* = PtrMONITOR_INFO_1A;
        MONITOR_INFO_2A* = RECORD [untagged]
            pName*: PtrSTR;
            pEnvironment*: PtrSTR;
            pDLLName*: PtrSTR;
        END;
        PtrMONITOR_INFO_2A* = POINTER TO MONITOR_INFO_2A;
        MONITOR_INFO_2W* = RECORD [untagged]
            pName*: PtrWSTR;
            pEnvironment*: PtrWSTR;
            pDLLName*: PtrWSTR;
        END;
        PtrMONITOR_INFO_2W* = POINTER TO MONITOR_INFO_2W;
        MONITOR_INFO_2* = MONITOR_INFO_2A;
        PtrMONITOR_INFO_2* = PtrMONITOR_INFO_2A;
        DATATYPES_INFO_1A* = RECORD [untagged]
            pName*: PtrSTR;
        END;
        PtrDATATYPES_INFO_1A* = POINTER TO DATATYPES_INFO_1A;
        DATATYPES_INFO_1W* = RECORD [untagged]
            pName*: PtrWSTR;
        END;
        PtrDATATYPES_INFO_1W* = POINTER TO DATATYPES_INFO_1W;
        DATATYPES_INFO_1* = DATATYPES_INFO_1A;
        PtrDATATYPES_INFO_1* = PtrDATATYPES_INFO_1A;
        PRINTER_DEFAULTSA* = RECORD [untagged]
            pDatatype*: PtrSTR;
            pDevMode*: PtrDEVMODEA;
            DesiredAccess*: ACCESS_MASK;
        END;
        PtrPRINTER_DEFAULTSA* = POINTER TO PRINTER_DEFAULTSA;
        PRINTER_DEFAULTSW* = RECORD [untagged]
            pDatatype*: PtrWSTR;
            pDevMode*: PtrDEVMODEW;
            DesiredAccess*: ACCESS_MASK;
        END;
        PtrPRINTER_DEFAULTSW* = POINTER TO PRINTER_DEFAULTSW;
        PRINTER_DEFAULTS* = PRINTER_DEFAULTSA;
        PtrPRINTER_DEFAULTS* = PtrPRINTER_DEFAULTSA;
        PRINTER_NOTIFY_OPTIONS_TYPE* = RECORD [untagged]
            Type*: SHORTINT;
            Reserved0*: SHORTINT;
            Reserved1*: INTEGER;
            Reserved2*: INTEGER;
            Count*: INTEGER;
            pFields*: POINTER TO (*?*) ARRAY [untagged] OF SHORTINT;
        END;
        PtrPRINTER_NOTIFY_OPTIONS_TYPE* = POINTER TO PRINTER_NOTIFY_OPTIONS_TYPE;
        PRINTER_NOTIFY_OPTIONS* = RECORD [untagged]
            Version*: INTEGER;
            Flags*: SET;
            Count*: INTEGER;
            pTypes*: PtrPRINTER_NOTIFY_OPTIONS_TYPE;
        END;
        PtrPRINTER_NOTIFY_OPTIONS* = POINTER TO PRINTER_NOTIFY_OPTIONS;
        PRINTER_NOTIFY_INFO_DATA* = RECORD [untagged]
            Type*: SHORTINT;
            Field*: SHORTINT;
            Reserved*: INTEGER;
            Id*: INTEGER;
            NotifyData*: RECORD [union]
                adwData*: ARRAY [untagged] 2 OF INTEGER;
                Data*: RECORD [untagged]
                    cbBuf*: INTEGER;
                    pBuf*: PtrVoid;
                END;
            END;
        END;
        PtrPRINTER_NOTIFY_INFO_DATA* = POINTER TO PRINTER_NOTIFY_INFO_DATA;
        PRINTER_NOTIFY_INFO* = RECORD [untagged]
            Version*: INTEGER;
            Flags*: SET;
            Count*: INTEGER;
            aData*: ARRAY [untagged] 1 OF PRINTER_NOTIFY_INFO_DATA;
        END;
        PtrPRINTER_NOTIFY_INFO* = POINTER TO PRINTER_NOTIFY_INFO;
        PROVIDOR_INFO_1A* = RECORD [untagged]
            pName*: PtrSTR;
            pEnvironment*: PtrSTR;
            pDLLName*: PtrSTR;
        END;
        PtrPROVIDOR_INFO_1A* = POINTER TO PROVIDOR_INFO_1A;
        PROVIDOR_INFO_1W* = RECORD [untagged]
            pName*: PtrWSTR;
            pEnvironment*: PtrWSTR;
            pDLLName*: PtrWSTR;
        END;
        PtrPROVIDOR_INFO_1W* = POINTER TO PROVIDOR_INFO_1W;
        PROVIDOR_INFO_1* = PROVIDOR_INFO_1A;
        PtrPROVIDOR_INFO_1* = PtrPROVIDOR_INFO_1A;
        SC_HANDLE* = HANDLE;
        SERVICE_STATUS_HANDLE* = INTEGER;
        SERVICE_STATUS* = RECORD [untagged]
            dwServiceType*: SET;
            dwCurrentState*: INTEGER;
            dwControlsAccepted*: INTEGER;
            dwWin32ExitCode*: INTEGER;
            dwServiceSpecificExitCode*: INTEGER;
            dwCheckPoint*: INTEGER;
            dwWaitHint*: INTEGER;
        END;
        PtrSERVICE_STATUS* = POINTER TO SERVICE_STATUS;
        ENUM_SERVICE_STATUSA* = RECORD [untagged]
            lpServiceName*: PtrSTR;
            lpDisplayName*: PtrSTR;
            ServiceStatus*: SERVICE_STATUS;
        END;
        PtrENUM_SERVICE_STATUSA* = POINTER TO ENUM_SERVICE_STATUSA;
        ENUM_SERVICE_STATUSW* = RECORD [untagged]
            lpServiceName*: PtrWSTR;
            lpDisplayName*: PtrWSTR;
            ServiceStatus*: SERVICE_STATUS;
        END;
        PtrENUM_SERVICE_STATUSW* = POINTER TO ENUM_SERVICE_STATUSW;
        ENUM_SERVICE_STATUS* = ENUM_SERVICE_STATUSA;
        PtrENUM_SERVICE_STATUS* = PtrENUM_SERVICE_STATUSA;
        SC_LOCK* = PtrVoid;
        QUERY_SERVICE_LOCK_STATUSA* = RECORD [untagged]
            fIsLocked*: INTEGER;
            lpLockOwner*: PtrSTR;
            dwLockDuration*: INTEGER;
        END;
        PtrQUERY_SERVICE_LOCK_STATUSA* = POINTER TO QUERY_SERVICE_LOCK_STATUSA;
        QUERY_SERVICE_LOCK_STATUSW* = RECORD [untagged]
            fIsLocked*: INTEGER;
            lpLockOwner*: PtrWSTR;
            dwLockDuration*: INTEGER;
        END;
        PtrQUERY_SERVICE_LOCK_STATUSW* = POINTER TO QUERY_SERVICE_LOCK_STATUSW;
        QUERY_SERVICE_LOCK_STATUS* = QUERY_SERVICE_LOCK_STATUSA;
        PtrQUERY_SERVICE_LOCK_STATUS* = PtrQUERY_SERVICE_LOCK_STATUSA;
        QUERY_SERVICE_CONFIGA* = RECORD [untagged]
            dwServiceType*: SET;
            dwStartType*: INTEGER;
            dwErrorControl*: INTEGER;
            lpBinaryPathName*: PtrSTR;
            lpLoadOrderGroup*: PtrSTR;
            dwTagId*: INTEGER;
            lpDependencies*: PtrSTR;
            lpServiceStartName*: PtrSTR;
            lpDisplayName*: PtrSTR;
        END;
        PtrQUERY_SERVICE_CONFIGA* = POINTER TO QUERY_SERVICE_CONFIGA;
        QUERY_SERVICE_CONFIGW* = RECORD [untagged]
            dwServiceType*: SET;
            dwStartType*: INTEGER;
            dwErrorControl*: INTEGER;
            lpBinaryPathName*: PtrWSTR;
            lpLoadOrderGroup*: PtrWSTR;
            dwTagId*: INTEGER;
            lpDependencies*: PtrWSTR;
            lpServiceStartName*: PtrWSTR;
            lpDisplayName*: PtrWSTR;
        END;
        PtrQUERY_SERVICE_CONFIGW* = POINTER TO QUERY_SERVICE_CONFIGW;
        QUERY_SERVICE_CONFIG* = QUERY_SERVICE_CONFIGA;
        PtrQUERY_SERVICE_CONFIG* = PtrQUERY_SERVICE_CONFIGA;
        SERVICE_MAIN_FUNCTIONW* = PROCEDURE (dwNumServicesArgs: INTEGER; lpServiceArgVectors: POINTER TO (*?*) ARRAY [untagged] OF PtrWSTR);
        SERVICE_MAIN_FUNCTIONA* = PROCEDURE (dwNumServicesArgs: INTEGER; lpServiceArgVectors: POINTER TO (*?*) ARRAY [untagged] OF PtrSTR);
        SERVICE_TABLE_ENTRYA* = RECORD [untagged]
            lpServiceName*: PtrSTR;
            lpServiceProc*: SERVICE_MAIN_FUNCTIONA;
        END;
        PtrSERVICE_TABLE_ENTRYA* = POINTER TO SERVICE_TABLE_ENTRYA;
        SERVICE_TABLE_ENTRYW* = RECORD [untagged]
            lpServiceName*: PtrWSTR;
            lpServiceProc*: SERVICE_MAIN_FUNCTIONW;
        END;
        PtrSERVICE_TABLE_ENTRYW* = POINTER TO SERVICE_TABLE_ENTRYW;
        SERVICE_TABLE_ENTRY* = SERVICE_TABLE_ENTRYA;
        PtrSERVICE_TABLE_ENTRY* = PtrSERVICE_TABLE_ENTRYA;
        HANDLER_FUNCTION* = PROCEDURE (dwControl: INTEGER);
        MODEMDEVCAPS* = RECORD [untagged]
            dwActualSize*: INTEGER;
            dwRequiredSize*: INTEGER;
            dwDevSpecificOffset*: INTEGER;
            dwDevSpecificSize*: INTEGER;
            dwModemProviderVersion*: INTEGER;
            dwModemManufacturerOffset*: INTEGER;
            dwModemManufacturerSize*: INTEGER;
            dwModemModelOffset*: INTEGER;
            dwModemModelSize*: INTEGER;
            dwModemVersionOffset*: INTEGER;
            dwModemVersionSize*: INTEGER;
            dwDialOptions*: INTEGER;
            dwCallSetupFailTimer*: INTEGER;
            dwInactivityTimeout*: INTEGER;
            dwSpeakerVolume*: SET;
            dwSpeakerMode*: SET;
            dwModemOptions*: SET;
            dwMaxDTERate*: INTEGER;
            dwMaxDCERate*: INTEGER;
            abVariablePortion*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrMODEMDEVCAPS* = POINTER TO MODEMDEVCAPS;
        MODEMSETTINGS* = RECORD [untagged]
            dwActualSize*: INTEGER;
            dwRequiredSize*: INTEGER;
            dwDevSpecificOffset*: INTEGER;
            dwDevSpecificSize*: INTEGER;
            dwCallSetupFailTimer*: INTEGER;
            dwInactivityTimeout*: INTEGER;
            dwSpeakerVolume*: SET;
            dwSpeakerMode*: SET;
            dwPreferredModemOptions*: INTEGER;
            dwNegotiatedModemOptions*: INTEGER;
            dwNegotiatedDCERate*: INTEGER;
            abVariablePortion*: ARRAY [untagged] 1 OF SHORTCHAR;
        END;
        PtrMODEMSETTINGS* = POINTER TO MODEMSETTINGS;
        RetGetSidSubAuthority* = POINTER TO (*?*) ARRAY [untagged] OF INTEGER;
        RetDdeAccessData* = POINTER TO (*?*) ARRAY [untagged] OF SHORTCHAR;
        RetCommandLineToArgvW* = POINTER TO (*?*) ARRAY [untagged] OF PtrWSTR;

    PROCEDURE InterlockedIncrement* (VAR [nil] lpAddend: INTEGER): INTEGER;
    (*END InterlockedIncrement;*)

    PROCEDURE InterlockedDecrement* (VAR [nil] lpAddend: INTEGER): INTEGER;
    (*END InterlockedDecrement;*)

    PROCEDURE InterlockedExchange* (VAR [nil] Target: INTEGER; Value: INTEGER): INTEGER;
    (*END InterlockedExchange;*)

    PROCEDURE InterlockedExchangeAdd* (VAR [nil] Addend: INTEGER; Value: INTEGER): INTEGER;
    (*END InterlockedExchangeAdd;*)

    PROCEDURE InterlockedCompareExchange* (Destination: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid; Exchange: PtrVoid; Comperand: PtrVoid): PtrVoid;
    (*END InterlockedCompareExchange;*)

    PROCEDURE FreeResource* (hResData: HGLOBAL): BOOL;
    (*END FreeResource;*)

    PROCEDURE LockResource* (hResData: HGLOBAL): PtrVoid;
    (*END LockResource;*)

    PROCEDURE FreeLibrary* (hLibModule: HMODULE): BOOL;
    (*END FreeLibrary;*)

    PROCEDURE FreeLibraryAndExitThread* (hLibModule: HMODULE; dwExitCode: INTEGER);
    (*END FreeLibraryAndExitThread;*)

    PROCEDURE DisableThreadLibraryCalls* (hLibModule: HMODULE): BOOL;
    (*END DisableThreadLibraryCalls;*)

    PROCEDURE GetProcAddress* (hModule: HMODULE; lpProcName: PtrSTR): FARPROC;
    (*END GetProcAddress;*)

    PROCEDURE GetVersion* (): INTEGER;
    (*END GetVersion;*)

    PROCEDURE GlobalAlloc* (uFlags: SET; dwBytes: INTEGER): HGLOBAL;
    (*END GlobalAlloc;*)

    PROCEDURE GlobalReAlloc* (hMem: HGLOBAL; dwBytes: INTEGER; uFlags: SET): HGLOBAL;
    (*END GlobalReAlloc;*)

    PROCEDURE GlobalSize* (hMem: HGLOBAL): INTEGER;
    (*END GlobalSize;*)

    PROCEDURE GlobalFlags* (hMem: HGLOBAL): INTEGER;
    (*END GlobalFlags;*)

    PROCEDURE GlobalLock* (hMem: HGLOBAL): PtrVoid;
    (*END GlobalLock;*)

    PROCEDURE GlobalHandle* (pMem: PtrVoid): HGLOBAL;
    (*END GlobalHandle;*)

    PROCEDURE GlobalUnlock* (hMem: HGLOBAL): BOOL;
    (*END GlobalUnlock;*)

    PROCEDURE GlobalFree* (hMem: HGLOBAL): HGLOBAL;
    (*END GlobalFree;*)

    PROCEDURE GlobalCompact* (dwMinFree: INTEGER): INTEGER;
    (*END GlobalCompact;*)

    PROCEDURE GlobalFix* (hMem: HGLOBAL);
    (*END GlobalFix;*)

    PROCEDURE GlobalUnfix* (hMem: HGLOBAL);
    (*END GlobalUnfix;*)

    PROCEDURE GlobalWire* (hMem: HGLOBAL): PtrVoid;
    (*END GlobalWire;*)

    PROCEDURE GlobalUnWire* (hMem: HGLOBAL): BOOL;
    (*END GlobalUnWire;*)

    PROCEDURE GlobalMemoryStatus* (VAR [nil] lpBuffer: MEMORYSTATUS);
    (*END GlobalMemoryStatus;*)

    PROCEDURE LocalAlloc* (uFlags: SET; uBytes: INTEGER): HLOCAL;
    (*END LocalAlloc;*)

    PROCEDURE LocalReAlloc* (hMem: HLOCAL; uBytes: INTEGER; uFlags: SET): HLOCAL;
    (*END LocalReAlloc;*)

    PROCEDURE LocalLock* (hMem: HLOCAL): PtrVoid;
    (*END LocalLock;*)

    PROCEDURE LocalHandle* (pMem: PtrVoid): HLOCAL;
    (*END LocalHandle;*)

    PROCEDURE LocalUnlock* (hMem: HLOCAL): BOOL;
    (*END LocalUnlock;*)

    PROCEDURE LocalSize* (hMem: HLOCAL): INTEGER;
    (*END LocalSize;*)

    PROCEDURE LocalFlags* (hMem: HLOCAL): INTEGER;
    (*END LocalFlags;*)

    PROCEDURE LocalFree* (hMem: HLOCAL): HLOCAL;
    (*END LocalFree;*)

    PROCEDURE LocalShrink* (hMem: HLOCAL; cbNewSize: INTEGER): INTEGER;
    (*END LocalShrink;*)

    PROCEDURE LocalCompact* (uMinFree: INTEGER): INTEGER;
    (*END LocalCompact;*)

    PROCEDURE FlushInstructionCache* (hProcess: HANDLE; lpBaseAddress: PtrVoid; dwSize: INTEGER): BOOL;
    (*END FlushInstructionCache;*)

    PROCEDURE VirtualAlloc* (lpAddress: PtrVoid; dwSize: INTEGER; flAllocationType: SET; flProtect: SET): PtrVoid;
    (*END VirtualAlloc;*)

    PROCEDURE VirtualFree* (lpAddress: PtrVoid; dwSize: INTEGER; dwFreeType: SET): BOOL;
    (*END VirtualFree;*)

    PROCEDURE VirtualProtect* (lpAddress: PtrVoid; dwSize: INTEGER; flNewProtect: SET; VAR [nil] lpflOldProtect: INTEGER): BOOL;
    (*END VirtualProtect;*)

    PROCEDURE VirtualQuery* (lpAddress: PtrVoid; VAR [nil] lpBuffer: MEMORY_BASIC_INFORMATION; dwLength: INTEGER): INTEGER;
    (*END VirtualQuery;*)

    PROCEDURE VirtualProtectEx* (hProcess: HANDLE; lpAddress: PtrVoid; dwSize: INTEGER; flNewProtect: SET; VAR [nil] lpflOldProtect: INTEGER): BOOL;
    (*END VirtualProtectEx;*)

    PROCEDURE VirtualQueryEx* (hProcess: HANDLE; lpAddress: PtrVoid; VAR [nil] lpBuffer: MEMORY_BASIC_INFORMATION; dwLength: INTEGER): INTEGER;
    (*END VirtualQueryEx;*)

    PROCEDURE HeapCreate* (flOptions: SET; dwInitialSize: INTEGER; dwMaximumSize: INTEGER): HANDLE;
    (*END HeapCreate;*)

    PROCEDURE HeapDestroy* (hHeap: HANDLE): BOOL;
    (*END HeapDestroy;*)

    PROCEDURE HeapAlloc* (hHeap: HANDLE; dwFlags: SET; dwBytes: INTEGER): PtrVoid;
    (*END HeapAlloc;*)

    PROCEDURE HeapReAlloc* (hHeap: HANDLE; dwFlags: SET; lpMem: PtrVoid; dwBytes: INTEGER): PtrVoid;
    (*END HeapReAlloc;*)

    PROCEDURE HeapFree* (hHeap: HANDLE; dwFlags: SET; lpMem: PtrVoid): BOOL;
    (*END HeapFree;*)

    PROCEDURE HeapSize* (hHeap: HANDLE; dwFlags: SET; lpMem: PtrVoid): INTEGER;
    (*END HeapSize;*)

    PROCEDURE HeapValidate* (hHeap: HANDLE; dwFlags: SET; lpMem: PtrVoid): BOOL;
    (*END HeapValidate;*)

    PROCEDURE HeapCompact* (hHeap: HANDLE; dwFlags: SET): INTEGER;
    (*END HeapCompact;*)

    PROCEDURE GetProcessHeap* (): HANDLE;
    (*END GetProcessHeap;*)

    PROCEDURE GetProcessHeaps* (NumberOfHeaps: INTEGER; VAR [nil] ProcessHeaps: HANDLE): INTEGER;
    (*END GetProcessHeaps;*)

    PROCEDURE HeapLock* (hHeap: HANDLE): BOOL;
    (*END HeapLock;*)

    PROCEDURE HeapUnlock* (hHeap: HANDLE): BOOL;
    (*END HeapUnlock;*)

    PROCEDURE HeapWalk* (hHeap: HANDLE; VAR [nil] lpEntry: PROCESS_HEAP_ENTRY): BOOL;
    (*END HeapWalk;*)

    PROCEDURE GetBinaryTypeA* (lpApplicationName: PtrSTR; VAR [nil] lpBinaryType: INTEGER): BOOL;
    (*END GetBinaryTypeA;*)

    PROCEDURE GetBinaryTypeW* (lpApplicationName: PtrWSTR; VAR [nil] lpBinaryType: INTEGER): BOOL;
    (*END GetBinaryTypeW;*)

    PROCEDURE GetBinaryType* ["GetBinaryTypeA"] (lpApplicationName: PtrSTR; VAR [nil] lpBinaryType: INTEGER): BOOL;
    (*END GetBinaryType;*)

    PROCEDURE GetShortPathNameA* (lpszLongPath: PtrSTR; lpszShortPath: PtrSTR; cchBuffer: INTEGER): INTEGER;
    (*END GetShortPathNameA;*)

    PROCEDURE GetShortPathNameW* (lpszLongPath: PtrWSTR; lpszShortPath: PtrWSTR; cchBuffer: INTEGER): INTEGER;
    (*END GetShortPathNameW;*)

    PROCEDURE GetShortPathName* ["GetShortPathNameA"] (lpszLongPath: PtrSTR; lpszShortPath: PtrSTR; cchBuffer: INTEGER): INTEGER;
    (*END GetShortPathName;*)

    PROCEDURE GetProcessAffinityMask* (hProcess: HANDLE; VAR [nil] lpProcessAffinityMask: INTEGER; VAR [nil] lpSystemAffinityMask: INTEGER): BOOL;
    (*END GetProcessAffinityMask;*)

    PROCEDURE SetProcessAffinityMask* (hProcess: HANDLE; dwProcessAffinityMask: INTEGER): BOOL;
    (*END SetProcessAffinityMask;*)

    PROCEDURE GetProcessTimes* (hProcess: HANDLE; VAR [nil] lpCreationTime: FILETIME; VAR [nil] lpExitTime: FILETIME; VAR [nil] lpKernelTime: FILETIME; VAR [nil] lpUserTime: FILETIME): BOOL;
    (*END GetProcessTimes;*)

    PROCEDURE GetProcessWorkingSetSize* (hProcess: HANDLE; VAR [nil] lpMinimumWorkingSetSize: INTEGER; VAR [nil] lpMaximumWorkingSetSize: INTEGER): BOOL;
    (*END GetProcessWorkingSetSize;*)

    PROCEDURE SetProcessWorkingSetSize* (hProcess: HANDLE; dwMinimumWorkingSetSize: INTEGER; dwMaximumWorkingSetSize: INTEGER): BOOL;
    (*END SetProcessWorkingSetSize;*)

    PROCEDURE OpenProcess* (dwDesiredAccess: SET; bInheritHandle: BOOL; dwProcessId: INTEGER): HANDLE;
    (*END OpenProcess;*)

    PROCEDURE GetCurrentProcess* (): HANDLE;
    (*END GetCurrentProcess;*)

    PROCEDURE GetCurrentProcessId* (): INTEGER;
    (*END GetCurrentProcessId;*)

    PROCEDURE ExitProcess* (uExitCode: INTEGER);
    (*END ExitProcess;*)

    PROCEDURE TerminateProcess* (hProcess: HANDLE; uExitCode: INTEGER): BOOL;
    (*END TerminateProcess;*)

    PROCEDURE GetExitCodeProcess* (hProcess: HANDLE; VAR [nil] lpExitCode: INTEGER): BOOL;
    (*END GetExitCodeProcess;*)

    PROCEDURE FatalExit* (ExitCode: INTEGER);
    (*END FatalExit;*)

    PROCEDURE GetEnvironmentStrings* (): PtrSTR;
    (*END GetEnvironmentStrings;*)

    PROCEDURE GetEnvironmentStringsW* (): PtrWSTR;
    (*END GetEnvironmentStringsW;*)

    PROCEDURE GetEnvironmentStringsA* ["GetEnvironmentStrings"] (): PtrSTR;
    (*END GetEnvironmentStringsA;*)

    PROCEDURE FreeEnvironmentStringsA* (p0: PtrSTR): BOOL;
    (*END FreeEnvironmentStringsA;*)

    PROCEDURE FreeEnvironmentStringsW* (p0: PtrWSTR): BOOL;
    (*END FreeEnvironmentStringsW;*)

    PROCEDURE FreeEnvironmentStrings* ["FreeEnvironmentStringsA"] (p0: PtrSTR): BOOL;
    (*END FreeEnvironmentStrings;*)

    PROCEDURE RaiseException* (dwExceptionCode: INTEGER; dwExceptionFlags: INTEGER; nNumberOfArguments: INTEGER; VAR [nil] lpArguments: INTEGER);
    (*END RaiseException;*)

    PROCEDURE UnhandledExceptionFilter* (VAR [nil] ExceptionInfo: EXCEPTION_POINTERS): INTEGER;
    (*END UnhandledExceptionFilter;*)

    PROCEDURE SetUnhandledExceptionFilter* (lpTopLevelExceptionFilter: TOP_LEVEL_EXCEPTION_FILTER): TOP_LEVEL_EXCEPTION_FILTER;
    (*END SetUnhandledExceptionFilter;*)

    PROCEDURE CreateFiber* (dwStackSize: INTEGER; lpStartAddress: FIBER_START_ROUTINE; lpParameter: PtrVoid): PtrVoid;
    (*END CreateFiber;*)

    PROCEDURE DeleteFiber* (lpFiber: PtrVoid);
    (*END DeleteFiber;*)

    PROCEDURE ConvertThreadToFiber* (lpParameter: PtrVoid): PtrVoid;
    (*END ConvertThreadToFiber;*)

    PROCEDURE SwitchToFiber* (lpFiber: PtrVoid);
    (*END SwitchToFiber;*)

    PROCEDURE CreateThread* (VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; dwStackSize: INTEGER; lpStartAddress: THREAD_START_ROUTINE; lpParameter: PtrVoid; dwCreationFlags: SET; VAR [nil] lpThreadId: INTEGER): HANDLE;
    (*END CreateThread;*)

    PROCEDURE CreateRemoteThread* (hProcess: HANDLE; VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; dwStackSize: INTEGER; lpStartAddress: THREAD_START_ROUTINE; lpParameter: PtrVoid; dwCreationFlags: SET; VAR [nil] lpThreadId: INTEGER): HANDLE;
    (*END CreateRemoteThread;*)

    PROCEDURE GetCurrentThread* (): HANDLE;
    (*END GetCurrentThread;*)

    PROCEDURE GetCurrentThreadId* (): INTEGER;
    (*END GetCurrentThreadId;*)

    PROCEDURE SetThreadAffinityMask* (hThread: HANDLE; dwThreadAffinityMask: INTEGER): INTEGER;
    (*END SetThreadAffinityMask;*)

    PROCEDURE SetThreadIdealProcessor* (hThread: HANDLE; dwIdealProcessor: INTEGER): INTEGER;
    (*END SetThreadIdealProcessor;*)

    PROCEDURE SetThreadPriority* (hThread: HANDLE; nPriority: INTEGER): BOOL;
    (*END SetThreadPriority;*)

    PROCEDURE SetThreadPriorityBoost* (hThread: HANDLE; bDisablePriorityBoost: BOOL): BOOL;
    (*END SetThreadPriorityBoost;*)

    PROCEDURE GetThreadPriorityBoost* (hThread: HANDLE; VAR [nil] pDisablePriorityBoost: BOOL): BOOL;
    (*END GetThreadPriorityBoost;*)

    PROCEDURE GetThreadPriority* (hThread: HANDLE): INTEGER;
    (*END GetThreadPriority;*)

    PROCEDURE GetThreadTimes* (hThread: HANDLE; VAR [nil] lpCreationTime: FILETIME; VAR [nil] lpExitTime: FILETIME; VAR [nil] lpKernelTime: FILETIME; VAR [nil] lpUserTime: FILETIME): BOOL;
    (*END GetThreadTimes;*)

    PROCEDURE ExitThread* (dwExitCode: INTEGER);
    (*END ExitThread;*)

    PROCEDURE TerminateThread* (hThread: HANDLE; dwExitCode: INTEGER): BOOL;
    (*END TerminateThread;*)

    PROCEDURE GetExitCodeThread* (hThread: HANDLE; VAR [nil] lpExitCode: INTEGER): BOOL;
    (*END GetExitCodeThread;*)

    PROCEDURE GetThreadSelectorEntry* (hThread: HANDLE; dwSelector: INTEGER; VAR [nil] lpSelectorEntry: LDT_ENTRY): BOOL;
    (*END GetThreadSelectorEntry;*)

    PROCEDURE GetLastError* (): INTEGER;
    (*END GetLastError;*)

    PROCEDURE SetLastError* (dwErrCode: INTEGER);
    (*END SetLastError;*)

    PROCEDURE GetOverlappedResult* (hFile: HANDLE; VAR [nil] lpOverlapped: OVERLAPPED; VAR [nil] lpNumberOfBytesTransferred: INTEGER; bWait: BOOL): BOOL;
    (*END GetOverlappedResult;*)

    PROCEDURE CreateIoCompletionPort* (FileHandle: HANDLE; ExistingCompletionPort: HANDLE; CompletionKey: INTEGER; NumberOfConcurrentThreads: INTEGER): HANDLE;
    (*END CreateIoCompletionPort;*)

    PROCEDURE GetQueuedCompletionStatus* (CompletionPort: HANDLE; VAR [nil] lpNumberOfBytesTransferred: INTEGER; VAR [nil] lpCompletionKey: INTEGER; VAR [nil] lpOverlapped: PtrOVERLAPPED; dwMilliseconds: INTEGER): BOOL;
    (*END GetQueuedCompletionStatus;*)

    PROCEDURE PostQueuedCompletionStatus* (CompletionPort: HANDLE; dwNumberOfBytesTransferred: INTEGER; dwCompletionKey: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END PostQueuedCompletionStatus;*)

    PROCEDURE SetErrorMode* (uMode: SET): INTEGER;
    (*END SetErrorMode;*)

    PROCEDURE ReadProcessMemory* (hProcess: HANDLE; lpBaseAddress: PtrVoid; lpBuffer: PtrVoid; nSize: INTEGER; VAR [nil] lpNumberOfBytesRead: INTEGER): BOOL;
    (*END ReadProcessMemory;*)

    PROCEDURE WriteProcessMemory* (hProcess: HANDLE; lpBaseAddress: PtrVoid; lpBuffer: PtrVoid; nSize: INTEGER; VAR [nil] lpNumberOfBytesWritten: INTEGER): BOOL;
    (*END WriteProcessMemory;*)

    PROCEDURE GetThreadContext* (hThread: HANDLE; VAR [nil] lpContext: CONTEXT): BOOL;
    (*END GetThreadContext;*)

    PROCEDURE SetThreadContext* (hThread: HANDLE; VAR [nil] lpContext: CONTEXT): BOOL;
    (*END SetThreadContext;*)

    PROCEDURE SuspendThread* (hThread: HANDLE): INTEGER;
    (*END SuspendThread;*)

    PROCEDURE ResumeThread* (hThread: HANDLE): INTEGER;
    (*END ResumeThread;*)

    PROCEDURE QueueUserAPC* (pfnAPC: APCFUNC; hThread: HANDLE; dwData: INTEGER): INTEGER;
    (*END QueueUserAPC;*)

    PROCEDURE DebugBreak* ();
    (*END DebugBreak;*)

    PROCEDURE WaitForDebugEvent* (VAR [nil] lpDebugEvent: DEBUG_EVENT; dwMilliseconds: INTEGER): BOOL;
    (*END WaitForDebugEvent;*)

    PROCEDURE ContinueDebugEvent* (dwProcessId: INTEGER; dwThreadId: INTEGER; dwContinueStatus: SET): BOOL;
    (*END ContinueDebugEvent;*)

    PROCEDURE DebugActiveProcess* (dwProcessId: INTEGER): BOOL;
    (*END DebugActiveProcess;*)

    PROCEDURE InitializeCriticalSection* (VAR [nil] lpCriticalSection: RTL_CRITICAL_SECTION);
    (*END InitializeCriticalSection;*)

    PROCEDURE EnterCriticalSection* (VAR [nil] lpCriticalSection: RTL_CRITICAL_SECTION);
    (*END EnterCriticalSection;*)

    PROCEDURE LeaveCriticalSection* (VAR [nil] lpCriticalSection: RTL_CRITICAL_SECTION);
    (*END LeaveCriticalSection;*)

    PROCEDURE TryEnterCriticalSection* (VAR [nil] lpCriticalSection: RTL_CRITICAL_SECTION): BOOL;
    (*END TryEnterCriticalSection;*)

    PROCEDURE DeleteCriticalSection* (VAR [nil] lpCriticalSection: RTL_CRITICAL_SECTION);
    (*END DeleteCriticalSection;*)

    PROCEDURE SetEvent* (hEvent: HANDLE): BOOL;
    (*END SetEvent;*)

    PROCEDURE ResetEvent* (hEvent: HANDLE): BOOL;
    (*END ResetEvent;*)

    PROCEDURE PulseEvent* (hEvent: HANDLE): BOOL;
    (*END PulseEvent;*)

    PROCEDURE ReleaseSemaphore* (hSemaphore: HANDLE; lReleaseCount: INTEGER; VAR [nil] lpPreviousCount: INTEGER): BOOL;
    (*END ReleaseSemaphore;*)

    PROCEDURE ReleaseMutex* (hMutex: HANDLE): BOOL;
    (*END ReleaseMutex;*)

    PROCEDURE WaitForSingleObject* (hHandle: HANDLE; dwMilliseconds: INTEGER): INTEGER;
    (*END WaitForSingleObject;*)

    PROCEDURE WaitForMultipleObjects* (nCount: INTEGER; VAR [nil] lpHandles: HANDLE; bWaitAll: BOOL; dwMilliseconds: INTEGER): INTEGER;
    (*END WaitForMultipleObjects;*)

    PROCEDURE Sleep* (dwMilliseconds: INTEGER);
    (*END Sleep;*)

    PROCEDURE LoadResource* (hModule: HMODULE; hResInfo: HRSRC): HGLOBAL;
    (*END LoadResource;*)

    PROCEDURE SizeofResource* (hModule: HMODULE; hResInfo: HRSRC): INTEGER;
    (*END SizeofResource;*)

    PROCEDURE GlobalDeleteAtom* (nAtom: ATOM): ATOM;
    (*END GlobalDeleteAtom;*)

    PROCEDURE InitAtomTable* (nSize: INTEGER): BOOL;
    (*END InitAtomTable;*)

    PROCEDURE DeleteAtom* (nAtom: ATOM): ATOM;
    (*END DeleteAtom;*)

    PROCEDURE SetHandleCount* (uNumber: INTEGER): INTEGER;
    (*END SetHandleCount;*)

    PROCEDURE GetLogicalDrives* (): INTEGER;
    (*END GetLogicalDrives;*)

    PROCEDURE LockFile* (hFile: HANDLE; dwFileOffsetLow: INTEGER; dwFileOffsetHigh: INTEGER; nNumberOfBytesToLockLow: INTEGER; nNumberOfBytesToLockHigh: INTEGER): BOOL;
    (*END LockFile;*)

    PROCEDURE UnlockFile* (hFile: HANDLE; dwFileOffsetLow: INTEGER; dwFileOffsetHigh: INTEGER; nNumberOfBytesToUnlockLow: INTEGER; nNumberOfBytesToUnlockHigh: INTEGER): BOOL;
    (*END UnlockFile;*)

    PROCEDURE LockFileEx* (hFile: HANDLE; dwFlags: SET; dwReserved: INTEGER; nNumberOfBytesToLockLow: INTEGER; nNumberOfBytesToLockHigh: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END LockFileEx;*)

    PROCEDURE UnlockFileEx* (hFile: HANDLE; dwReserved: INTEGER; nNumberOfBytesToUnlockLow: INTEGER; nNumberOfBytesToUnlockHigh: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END UnlockFileEx;*)

    PROCEDURE GetFileInformationByHandle* (hFile: HANDLE; VAR [nil] lpFileInformation: BY_HANDLE_FILE_INFORMATION): BOOL;
    (*END GetFileInformationByHandle;*)

    PROCEDURE GetFileType* (hFile: HANDLE): INTEGER;
    (*END GetFileType;*)

    PROCEDURE GetFileSize* (hFile: HANDLE; VAR [nil] lpFileSizeHigh: INTEGER): INTEGER;
    (*END GetFileSize;*)

    PROCEDURE GetFileSizeEx* (hFile: HANDLE; VAR [nil] lpFileSizeHigh: LONGINT): INTEGER;
    (*END GetFileSize;*)

    PROCEDURE GetStdHandle* (nStdHandle: INTEGER): HANDLE;
    (*END GetStdHandle;*)

    PROCEDURE SetStdHandle* (nStdHandle: INTEGER; hHandle: HANDLE): BOOL;
    (*END SetStdHandle;*)

    PROCEDURE WriteFile* (hFile: HANDLE; lpBuffer: PtrVoid; nNumberOfBytesToWrite: INTEGER; VAR [nil] lpNumberOfBytesWritten: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END WriteFile;*)

    PROCEDURE ReadFile* (hFile: HANDLE; lpBuffer: PtrVoid; nNumberOfBytesToRead: INTEGER; VAR [nil] lpNumberOfBytesRead: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END ReadFile;*)

    PROCEDURE FlushFileBuffers* (hFile: HANDLE): BOOL;
    (*END FlushFileBuffers;*)

    PROCEDURE DeviceIoControl* (hDevice: HANDLE; dwIoControlCode: INTEGER; lpInBuffer: PtrVoid; nInBufferSize: INTEGER; lpOutBuffer: PtrVoid; nOutBufferSize: INTEGER; VAR [nil] lpBytesReturned: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END DeviceIoControl;*)

    PROCEDURE SetEndOfFile* (hFile: HANDLE): BOOL;
    (*END SetEndOfFile;*)

    PROCEDURE SetFilePointer* (hFile: HANDLE; lDistanceToMove: INTEGER; VAR [nil] lpDistanceToMoveHigh: INTEGER; dwMoveMethod: INTEGER): INTEGER;
    (*END SetFilePointer;*)

    PROCEDURE FindClose* (hFindFile: HANDLE): BOOL;
    (*END FindClose;*)

    PROCEDURE GetFileTime* (hFile: HANDLE; VAR [nil] lpCreationTime: FILETIME; VAR [nil] lpLastAccessTime: FILETIME; VAR [nil] lpLastWriteTime: FILETIME): BOOL;
    (*END GetFileTime;*)

    PROCEDURE SetFileTime* (hFile: HANDLE; VAR [nil] lpCreationTime: FILETIME; VAR [nil] lpLastAccessTime: FILETIME; VAR [nil] lpLastWriteTime: FILETIME): BOOL;
    (*END SetFileTime;*)

    PROCEDURE CloseHandle* (hObject: HANDLE): BOOL;
    (*END CloseHandle;*)

    PROCEDURE DuplicateHandle* (hSourceProcessHandle: HANDLE; hSourceHandle: HANDLE; hTargetProcessHandle: HANDLE; VAR [nil] lpTargetHandle: HANDLE; dwDesiredAccess: SET; bInheritHandle: BOOL; dwOptions: SET): BOOL;
    (*END DuplicateHandle;*)

    PROCEDURE GetHandleInformation* (hObject: HANDLE; VAR [nil] lpdwFlags: SET): BOOL;
    (*END GetHandleInformation;*)

    PROCEDURE SetHandleInformation* (hObject: HANDLE; dwMask: INTEGER; dwFlags: SET): BOOL;
    (*END SetHandleInformation;*)

    PROCEDURE LoadModule* (lpModuleName: PtrSTR; lpParameterBlock: PtrVoid): INTEGER;
    (*END LoadModule;*)

    PROCEDURE WinExec* (lpCmdLine: PtrSTR; uCmdShow: INTEGER): INTEGER;
    (*END WinExec;*)

    PROCEDURE ClearCommBreak* (hFile: HANDLE): BOOL;
    (*END ClearCommBreak;*)

    PROCEDURE ClearCommError* (hFile: HANDLE; VAR [nil] lpErrors: SET; VAR [nil] lpStat: COMSTAT): BOOL;
    (*END ClearCommError;*)

    PROCEDURE SetupComm* (hFile: HANDLE; dwInQueue: INTEGER; dwOutQueue: INTEGER): BOOL;
    (*END SetupComm;*)

    PROCEDURE EscapeCommFunction* (hFile: HANDLE; dwFunc: INTEGER): BOOL;
    (*END EscapeCommFunction;*)

    PROCEDURE GetCommConfig* (hCommDev: HANDLE; VAR [nil] lpCC: COMMCONFIG; VAR [nil] lpdwSize: INTEGER): BOOL;
    (*END GetCommConfig;*)

    PROCEDURE GetCommMask* (hFile: HANDLE; VAR [nil] lpEvtMask: SET): BOOL;
    (*END GetCommMask;*)

    PROCEDURE GetCommProperties* (hFile: HANDLE; VAR [nil] lpCommProp: COMMPROP): BOOL;
    (*END GetCommProperties;*)

    PROCEDURE GetCommModemStatus* (hFile: HANDLE; VAR [nil] lpModemStat: SET): BOOL;
    (*END GetCommModemStatus;*)

    PROCEDURE GetCommState* (hFile: HANDLE; VAR [nil] lpDCB: DCB): BOOL;
    (*END GetCommState;*)

    PROCEDURE GetCommTimeouts* (hFile: HANDLE; VAR [nil] lpCommTimeouts: COMMTIMEOUTS): BOOL;
    (*END GetCommTimeouts;*)

    PROCEDURE PurgeComm* (hFile: HANDLE; dwFlags: SET): BOOL;
    (*END PurgeComm;*)

    PROCEDURE SetCommBreak* (hFile: HANDLE): BOOL;
    (*END SetCommBreak;*)

    PROCEDURE SetCommConfig* (hCommDev: HANDLE; VAR [nil] lpCC: COMMCONFIG; dwSize: INTEGER): BOOL;
    (*END SetCommConfig;*)

    PROCEDURE SetCommMask* (hFile: HANDLE; dwEvtMask: SET): BOOL;
    (*END SetCommMask;*)

    PROCEDURE SetCommState* (hFile: HANDLE; VAR [nil] lpDCB: DCB): BOOL;
    (*END SetCommState;*)

    PROCEDURE SetCommTimeouts* (hFile: HANDLE; VAR [nil] lpCommTimeouts: COMMTIMEOUTS): BOOL;
    (*END SetCommTimeouts;*)

    PROCEDURE TransmitCommChar* (hFile: HANDLE; cChar: SHORTCHAR): BOOL;
    (*END TransmitCommChar;*)

    PROCEDURE WaitCommEvent* (hFile: HANDLE; VAR [nil] lpEvtMask: SET; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END WaitCommEvent;*)

    PROCEDURE SetTapePosition* (hDevice: HANDLE; dwPositionMethod: INTEGER; dwPartition: INTEGER; dwOffsetLow: INTEGER; dwOffsetHigh: INTEGER; bImmediate: BOOL): INTEGER;
    (*END SetTapePosition;*)

    PROCEDURE GetTapePosition* (hDevice: HANDLE; dwPositionType: INTEGER; VAR [nil] lpdwPartition: INTEGER; VAR [nil] lpdwOffsetLow: INTEGER; VAR [nil] lpdwOffsetHigh: INTEGER): INTEGER;
    (*END GetTapePosition;*)

    PROCEDURE PrepareTape* (hDevice: HANDLE; dwOperation: INTEGER; bImmediate: BOOL): INTEGER;
    (*END PrepareTape;*)

    PROCEDURE EraseTape* (hDevice: HANDLE; dwEraseType: INTEGER; bImmediate: BOOL): INTEGER;
    (*END EraseTape;*)

    PROCEDURE CreateTapePartition* (hDevice: HANDLE; dwPartitionMethod: INTEGER; dwCount: INTEGER; dwSize: INTEGER): INTEGER;
    (*END CreateTapePartition;*)

    PROCEDURE WriteTapemark* (hDevice: HANDLE; dwTapemarkType: INTEGER; dwTapemarkCount: INTEGER; bImmediate: BOOL): INTEGER;
    (*END WriteTapemark;*)

    PROCEDURE GetTapeStatus* (hDevice: HANDLE): INTEGER;
    (*END GetTapeStatus;*)

    PROCEDURE GetTapeParameters* (hDevice: HANDLE; dwOperation: INTEGER; VAR [nil] lpdwSize: INTEGER; lpTapeInformation: PtrVoid): INTEGER;
    (*END GetTapeParameters;*)

    PROCEDURE SetTapeParameters* (hDevice: HANDLE; dwOperation: INTEGER; lpTapeInformation: PtrVoid): INTEGER;
    (*END SetTapeParameters;*)

    PROCEDURE Beep* (dwFreq: INTEGER; dwDuration: INTEGER): BOOL;
    (*END Beep;*)

    PROCEDURE MulDiv* (nNumber: INTEGER; nNumerator: INTEGER; nDenominator: INTEGER): INTEGER;
    (*END MulDiv;*)

    PROCEDURE GetSystemTime* (VAR [nil] lpSystemTime: SYSTEMTIME);
    (*END GetSystemTime;*)

    PROCEDURE GetSystemTimeAsFileTime* (VAR [nil] lpSystemTimeAsFileTime: FILETIME);
    (*END GetSystemTimeAsFileTime;*)

    PROCEDURE SetSystemTime* (VAR [nil] lpSystemTime: SYSTEMTIME): BOOL;
    (*END SetSystemTime;*)

    PROCEDURE GetLocalTime* (VAR [nil] lpSystemTime: SYSTEMTIME);
    (*END GetLocalTime;*)

    PROCEDURE SetLocalTime* (VAR [nil] lpSystemTime: SYSTEMTIME): BOOL;
    (*END SetLocalTime;*)

    PROCEDURE GetSystemInfo* (VAR [nil] lpSystemInfo: SYSTEM_INFO);
    (*END GetSystemInfo;*)

    PROCEDURE SystemTimeToTzSpecificLocalTime* (VAR [nil] lpTimeZoneInformation: TIME_ZONE_INFORMATION; VAR [nil] lpUniversalTime: SYSTEMTIME; VAR [nil] lpLocalTime: SYSTEMTIME): BOOL;
    (*END SystemTimeToTzSpecificLocalTime;*)

    PROCEDURE GetTimeZoneInformation* (VAR [nil] lpTimeZoneInformation: TIME_ZONE_INFORMATION): INTEGER;
    (*END GetTimeZoneInformation;*)

    PROCEDURE SetTimeZoneInformation* (VAR [nil] lpTimeZoneInformation: TIME_ZONE_INFORMATION): BOOL;
    (*END SetTimeZoneInformation;*)

    PROCEDURE SystemTimeToFileTime* (VAR [nil] lpSystemTime: SYSTEMTIME; VAR [nil] lpFileTime: FILETIME): BOOL;
    (*END SystemTimeToFileTime;*)

    PROCEDURE FileTimeToLocalFileTime* (VAR [nil] lpFileTime: FILETIME; VAR [nil] lpLocalFileTime: FILETIME): BOOL;
    (*END FileTimeToLocalFileTime;*)

    PROCEDURE LocalFileTimeToFileTime* (VAR [nil] lpLocalFileTime: FILETIME; VAR [nil] lpFileTime: FILETIME): BOOL;
    (*END LocalFileTimeToFileTime;*)

    PROCEDURE FileTimeToSystemTime* (VAR [nil] lpFileTime: FILETIME; VAR [nil] lpSystemTime: SYSTEMTIME): BOOL;
    (*END FileTimeToSystemTime;*)

    PROCEDURE CompareFileTime* (VAR [nil] lpFileTime1: FILETIME; VAR [nil] lpFileTime2: FILETIME): INTEGER;
    (*END CompareFileTime;*)

    PROCEDURE FileTimeToDosDateTime* (VAR [nil] lpFileTime: FILETIME; VAR [nil] lpFatDate: SHORTINT; VAR [nil] lpFatTime: SHORTINT): BOOL;
    (*END FileTimeToDosDateTime;*)

    PROCEDURE DosDateTimeToFileTime* (wFatDate: SHORTINT; wFatTime: SHORTINT; VAR [nil] lpFileTime: FILETIME): BOOL;
    (*END DosDateTimeToFileTime;*)

    PROCEDURE GetTickCount* (): INTEGER;
    (*END GetTickCount;*)

    PROCEDURE SetSystemTimeAdjustment* (dwTimeAdjustment: INTEGER; bTimeAdjustmentDisabled: BOOL): BOOL;
    (*END SetSystemTimeAdjustment;*)

    PROCEDURE GetSystemTimeAdjustment* (VAR [nil] lpTimeAdjustment: INTEGER; VAR [nil] lpTimeIncrement: INTEGER; VAR [nil] lpTimeAdjustmentDisabled: BOOL): BOOL;
    (*END GetSystemTimeAdjustment;*)

    PROCEDURE FormatMessageA* (dwFlags: SET; lpSource: PtrVoid; dwMessageId: INTEGER; dwLanguageId: INTEGER; lpBuffer: PtrSTR; nSize: INTEGER; VAR [nil] Arguments: PtrSTR): INTEGER;
    (*END FormatMessageA;*)

    PROCEDURE FormatMessageW* (dwFlags: SET; lpSource: PtrVoid; dwMessageId: INTEGER; dwLanguageId: INTEGER; lpBuffer: PtrWSTR; nSize: INTEGER; VAR [nil] Arguments: PtrSTR): INTEGER;
    (*END FormatMessageW;*)

    PROCEDURE FormatMessage* ["FormatMessageA"] (dwFlags: SET; lpSource: PtrVoid; dwMessageId: INTEGER; dwLanguageId: INTEGER; lpBuffer: PtrSTR; nSize: INTEGER; VAR [nil] Arguments: PtrSTR): INTEGER;
    (*END FormatMessage;*)

    PROCEDURE CreatePipe* (VAR [nil] hReadPipe: HANDLE; VAR [nil] hWritePipe: HANDLE; VAR [nil] lpPipeAttributes: SECURITY_ATTRIBUTES; nSize: INTEGER): BOOL;
    (*END CreatePipe;*)

    PROCEDURE ConnectNamedPipe* (hNamedPipe: HANDLE; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END ConnectNamedPipe;*)

    PROCEDURE DisconnectNamedPipe* (hNamedPipe: HANDLE): BOOL;
    (*END DisconnectNamedPipe;*)

    PROCEDURE SetNamedPipeHandleState* (hNamedPipe: HANDLE; VAR [nil] lpMode: INTEGER; VAR [nil] lpMaxCollectionCount: INTEGER; VAR [nil] lpCollectDataTimeout: INTEGER): BOOL;
    (*END SetNamedPipeHandleState;*)

    PROCEDURE GetNamedPipeInfo* (hNamedPipe: HANDLE; VAR [nil] lpFlags: INTEGER; VAR [nil] lpOutBufferSize: INTEGER; VAR [nil] lpInBufferSize: INTEGER; VAR [nil] lpMaxInstances: INTEGER): BOOL;
    (*END GetNamedPipeInfo;*)

    PROCEDURE PeekNamedPipe* (hNamedPipe: HANDLE; lpBuffer: PtrVoid; nBufferSize: INTEGER; VAR [nil] lpBytesRead: INTEGER; VAR [nil] lpTotalBytesAvail: INTEGER; VAR [nil] lpBytesLeftThisMessage: INTEGER): BOOL;
    (*END PeekNamedPipe;*)

    PROCEDURE TransactNamedPipe* (hNamedPipe: HANDLE; lpInBuffer: PtrVoid; nInBufferSize: INTEGER; lpOutBuffer: PtrVoid; nOutBufferSize: INTEGER; VAR [nil] lpBytesRead: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED): BOOL;
    (*END TransactNamedPipe;*)

    PROCEDURE CreateMailslotA* (lpName: PtrSTR; nMaxMessageSize: INTEGER; lReadTimeout: INTEGER; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): HANDLE;
    (*END CreateMailslotA;*)

    PROCEDURE CreateMailslotW* (lpName: PtrWSTR; nMaxMessageSize: INTEGER; lReadTimeout: INTEGER; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): HANDLE;
    (*END CreateMailslotW;*)

    PROCEDURE CreateMailslot* ["CreateMailslotA"] (lpName: PtrSTR; nMaxMessageSize: INTEGER; lReadTimeout: INTEGER; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): HANDLE;
    (*END CreateMailslot;*)

    PROCEDURE GetMailslotInfo* (hMailslot: HANDLE; VAR [nil] lpMaxMessageSize: INTEGER; VAR [nil] lpNextSize: INTEGER; VAR [nil] lpMessageCount: INTEGER; VAR [nil] lpReadTimeout: INTEGER): BOOL;
    (*END GetMailslotInfo;*)

    PROCEDURE SetMailslotInfo* (hMailslot: HANDLE; lReadTimeout: INTEGER): BOOL;
    (*END SetMailslotInfo;*)

    PROCEDURE MapViewOfFile* (hFileMappingObject: HANDLE; dwDesiredAccess: SET; dwFileOffsetHigh: INTEGER; dwFileOffsetLow: INTEGER; dwNumberOfBytesToMap: INTEGER): PtrVoid;
    (*END MapViewOfFile;*)

    PROCEDURE FlushViewOfFile* (lpBaseAddress: PtrVoid; dwNumberOfBytesToFlush: INTEGER): BOOL;
    (*END FlushViewOfFile;*)

    PROCEDURE UnmapViewOfFile* (lpBaseAddress: PtrVoid): BOOL;
    (*END UnmapViewOfFile;*)

    PROCEDURE lstrcmpA* (lpString1: PtrSTR; lpString2: PtrSTR): INTEGER;
    (*END lstrcmpA;*)

    PROCEDURE lstrcmpW* (lpString1: PtrWSTR; lpString2: PtrWSTR): INTEGER;
    (*END lstrcmpW;*)

    PROCEDURE lstrcmp* ["lstrcmpA"] (lpString1: PtrSTR; lpString2: PtrSTR): INTEGER;
    (*END lstrcmp;*)

    PROCEDURE lstrcmpiA* (lpString1: PtrSTR; lpString2: PtrSTR): INTEGER;
    (*END lstrcmpiA;*)

    PROCEDURE lstrcmpiW* (lpString1: PtrWSTR; lpString2: PtrWSTR): INTEGER;
    (*END lstrcmpiW;*)

    PROCEDURE lstrcmpi* ["lstrcmpiA"] (lpString1: PtrSTR; lpString2: PtrSTR): INTEGER;
    (*END lstrcmpi;*)

    PROCEDURE lstrcpynA* (lpString1: PtrSTR; lpString2: PtrSTR; iMaxLength: INTEGER): PtrSTR;
    (*END lstrcpynA;*)

    PROCEDURE lstrcpynW* (lpString1: PtrWSTR; lpString2: PtrWSTR; iMaxLength: INTEGER): PtrWSTR;
    (*END lstrcpynW;*)

    PROCEDURE lstrcpyn* ["lstrcpynA"] (lpString1: PtrSTR; lpString2: PtrSTR; iMaxLength: INTEGER): PtrSTR;
    (*END lstrcpyn;*)

    PROCEDURE lstrcpyA* (lpString1: PtrSTR; lpString2: PtrSTR): PtrSTR;
    (*END lstrcpyA;*)

    PROCEDURE lstrcpyW* (lpString1: PtrWSTR; lpString2: PtrWSTR): PtrWSTR;
    (*END lstrcpyW;*)

    PROCEDURE lstrcpy* ["lstrcpyA"] (lpString1: PtrSTR; lpString2: PtrSTR): PtrSTR;
    (*END lstrcpy;*)

    PROCEDURE lstrcatA* (lpString1: PtrSTR; lpString2: PtrSTR): PtrSTR;
    (*END lstrcatA;*)

    PROCEDURE lstrcatW* (lpString1: PtrWSTR; lpString2: PtrWSTR): PtrWSTR;
    (*END lstrcatW;*)

    PROCEDURE lstrcat* ["lstrcatA"] (lpString1: PtrSTR; lpString2: PtrSTR): PtrSTR;
    (*END lstrcat;*)

    PROCEDURE lstrlenA* (lpString: PtrSTR): INTEGER;
    (*END lstrlenA;*)

    PROCEDURE lstrlenW* (lpString: PtrWSTR): INTEGER;
    (*END lstrlenW;*)

    PROCEDURE lstrlen* ["lstrlenA"] (lpString: PtrSTR): INTEGER;
    (*END lstrlen;*)

    PROCEDURE OpenFile* (lpFileName: PtrSTR; VAR [nil] lpReOpenBuff: OFSTRUCT; uStyle: SET): HFILE;
    (*END OpenFile;*)

    PROCEDURE _lopen* (lpPathName: PtrSTR; iReadWrite: INTEGER): HFILE;
    (*END _lopen;*)

    PROCEDURE _lcreat* (lpPathName: PtrSTR; iAttribute: INTEGER): HFILE;
    (*END _lcreat;*)

    PROCEDURE _lread* (hFile: HFILE; lpBuffer: PtrVoid; uBytes: INTEGER): INTEGER;
    (*END _lread;*)

    PROCEDURE _lwrite* (hFile: HFILE; lpBuffer: PtrSTR; uBytes: INTEGER): INTEGER;
    (*END _lwrite;*)

    PROCEDURE _hread* (hFile: HFILE; lpBuffer: PtrVoid; lBytes: INTEGER): INTEGER;
    (*END _hread;*)

    PROCEDURE _hwrite* (hFile: HFILE; lpBuffer: PtrSTR; lBytes: INTEGER): INTEGER;
    (*END _hwrite;*)

    PROCEDURE _lclose* (hFile: HFILE): HFILE;
    (*END _lclose;*)

    PROCEDURE _llseek* (hFile: HFILE; lOffset: INTEGER; iOrigin: INTEGER): INTEGER;
    (*END _llseek;*)

    PROCEDURE IsTextUnicode* ["ADVAPI32.dll", ""] (lpBuffer: PtrVoid; cb: INTEGER; VAR [nil] lpi: SET): BOOL;
    (*END IsTextUnicode;*)

    PROCEDURE TlsAlloc* (): INTEGER;
    (*END TlsAlloc;*)

    PROCEDURE TlsGetValue* (dwTlsIndex: INTEGER): PtrVoid;
    (*END TlsGetValue;*)

    PROCEDURE TlsSetValue* (dwTlsIndex: INTEGER; lpTlsValue: PtrVoid): BOOL;
    (*END TlsSetValue;*)

    PROCEDURE TlsFree* (dwTlsIndex: INTEGER): BOOL;
    (*END TlsFree;*)

    PROCEDURE SleepEx* (dwMilliseconds: INTEGER; bAlertable: BOOL): INTEGER;
    (*END SleepEx;*)

    PROCEDURE WaitForSingleObjectEx* (hHandle: HANDLE; dwMilliseconds: INTEGER; bAlertable: BOOL): INTEGER;
    (*END WaitForSingleObjectEx;*)

    PROCEDURE WaitForMultipleObjectsEx* (nCount: INTEGER; VAR [nil] lpHandles: HANDLE; bWaitAll: BOOL; dwMilliseconds: INTEGER; bAlertable: BOOL): INTEGER;
    (*END WaitForMultipleObjectsEx;*)

    PROCEDURE SignalObjectAndWait* (hObjectToSignal: HANDLE; hObjectToWaitOn: HANDLE; dwMilliseconds: INTEGER; bAlertable: BOOL): INTEGER;
    (*END SignalObjectAndWait;*)

    PROCEDURE ReadFileEx* (hFile: HANDLE; lpBuffer: PtrVoid; nNumberOfBytesToRead: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED; lpCompletionRoutine: OVERLAPPED_COMPLETION_ROUTINE): BOOL;
    (*END ReadFileEx;*)

    PROCEDURE WriteFileEx* (hFile: HANDLE; lpBuffer: PtrVoid; nNumberOfBytesToWrite: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED; lpCompletionRoutine: OVERLAPPED_COMPLETION_ROUTINE): BOOL;
    (*END WriteFileEx;*)

    PROCEDURE BackupRead* (hFile: HANDLE; VAR [nil] lpBuffer: SHORTCHAR; nNumberOfBytesToRead: INTEGER; VAR [nil] lpNumberOfBytesRead: INTEGER; bAbort: BOOL; bProcessSecurity: BOOL; lpContext: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid): BOOL;
    (*END BackupRead;*)

    PROCEDURE BackupSeek* (hFile: HANDLE; dwLowBytesToSeek: INTEGER; dwHighBytesToSeek: INTEGER; VAR [nil] lpdwLowByteSeeked: INTEGER; VAR [nil] lpdwHighByteSeeked: INTEGER; lpContext: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid): BOOL;
    (*END BackupSeek;*)

    PROCEDURE BackupWrite* (hFile: HANDLE; VAR [nil] lpBuffer: SHORTCHAR; nNumberOfBytesToWrite: INTEGER; VAR [nil] lpNumberOfBytesWritten: INTEGER; bAbort: BOOL; bProcessSecurity: BOOL; lpContext: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid): BOOL;
    (*END BackupWrite;*)

    PROCEDURE CreateMutexA* (VAR [nil] lpMutexAttributes: SECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: PtrSTR): HANDLE;
    (*END CreateMutexA;*)

    PROCEDURE CreateMutexW* (VAR [nil] lpMutexAttributes: SECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: PtrWSTR): HANDLE;
    (*END CreateMutexW;*)

    PROCEDURE CreateMutex* ["CreateMutexA"] (VAR [nil] lpMutexAttributes: SECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: PtrSTR): HANDLE;
    (*END CreateMutex;*)

    PROCEDURE OpenMutexA* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenMutexA;*)

    PROCEDURE OpenMutexW* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrWSTR): HANDLE;
    (*END OpenMutexW;*)

    PROCEDURE OpenMutex* ["OpenMutexA"] (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenMutex;*)

    PROCEDURE CreateEventA* (VAR [nil] lpEventAttributes: SECURITY_ATTRIBUTES; bManualReset: BOOL; bInitialState: BOOL; lpName: PtrSTR): HANDLE;
    (*END CreateEventA;*)

    PROCEDURE CreateEventW* (VAR [nil] lpEventAttributes: SECURITY_ATTRIBUTES; bManualReset: BOOL; bInitialState: BOOL; lpName: PtrWSTR): HANDLE;
    (*END CreateEventW;*)

    PROCEDURE CreateEvent* ["CreateEventA"] (VAR [nil] lpEventAttributes: SECURITY_ATTRIBUTES; bManualReset: BOOL; bInitialState: BOOL; lpName: PtrSTR): HANDLE;
    (*END CreateEvent;*)

    PROCEDURE OpenEventA* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenEventA;*)

    PROCEDURE OpenEventW* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrWSTR): HANDLE;
    (*END OpenEventW;*)

    PROCEDURE OpenEvent* ["OpenEventA"] (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenEvent;*)

    PROCEDURE CreateSemaphoreA* (VAR [nil] lpSemaphoreAttributes: SECURITY_ATTRIBUTES; lInitialCount: INTEGER; lMaximumCount: INTEGER; lpName: PtrSTR): HANDLE;
    (*END CreateSemaphoreA;*)

    PROCEDURE CreateSemaphoreW* (VAR [nil] lpSemaphoreAttributes: SECURITY_ATTRIBUTES; lInitialCount: INTEGER; lMaximumCount: INTEGER; lpName: PtrWSTR): HANDLE;
    (*END CreateSemaphoreW;*)

    PROCEDURE CreateSemaphore* ["CreateSemaphoreA"] (VAR [nil] lpSemaphoreAttributes: SECURITY_ATTRIBUTES; lInitialCount: INTEGER; lMaximumCount: INTEGER; lpName: PtrSTR): HANDLE;
    (*END CreateSemaphore;*)

    PROCEDURE OpenSemaphoreA* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenSemaphoreA;*)

    PROCEDURE OpenSemaphoreW* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrWSTR): HANDLE;
    (*END OpenSemaphoreW;*)

    PROCEDURE OpenSemaphore* ["OpenSemaphoreA"] (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenSemaphore;*)

    PROCEDURE CreateWaitableTimerA* (VAR [nil] lpTimerAttributes: SECURITY_ATTRIBUTES; bManualReset: BOOL; lpTimerName: PtrSTR): HANDLE;
    (*END CreateWaitableTimerA;*)

    PROCEDURE CreateWaitableTimerW* (VAR [nil] lpTimerAttributes: SECURITY_ATTRIBUTES; bManualReset: BOOL; lpTimerName: PtrWSTR): HANDLE;
    (*END CreateWaitableTimerW;*)

    PROCEDURE CreateWaitableTimer* ["CreateWaitableTimerA"] (VAR [nil] lpTimerAttributes: SECURITY_ATTRIBUTES; bManualReset: BOOL; lpTimerName: PtrSTR): HANDLE;
    (*END CreateWaitableTimer;*)

    PROCEDURE OpenWaitableTimerA* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpTimerName: PtrSTR): HANDLE;
    (*END OpenWaitableTimerA;*)

    PROCEDURE OpenWaitableTimerW* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpTimerName: PtrWSTR): HANDLE;
    (*END OpenWaitableTimerW;*)

    PROCEDURE OpenWaitableTimer* ["OpenWaitableTimerA"] (dwDesiredAccess: SET; bInheritHandle: BOOL; lpTimerName: PtrSTR): HANDLE;
    (*END OpenWaitableTimer;*)

    PROCEDURE SetWaitableTimer* (hTimer: HANDLE; VAR [nil] lpDueTime: LONGINT; lPeriod: INTEGER; pfnCompletionRoutine: TIMERAPCROUTINE; lpArgToCompletionRoutine: PtrVoid; fResume: BOOL): BOOL;
    (*END SetWaitableTimer;*)

    PROCEDURE CancelWaitableTimer* (hTimer: HANDLE): BOOL;
    (*END CancelWaitableTimer;*)

    PROCEDURE CreateFileMappingA* (hFile: HANDLE; VAR [nil] lpFileMappingAttributes: SECURITY_ATTRIBUTES; flProtect: SET; dwMaximumSizeHigh: INTEGER; dwMaximumSizeLow: INTEGER; lpName: PtrSTR): HANDLE;
    (*END CreateFileMappingA;*)

    PROCEDURE CreateFileMappingW* (hFile: HANDLE; VAR [nil] lpFileMappingAttributes: SECURITY_ATTRIBUTES; flProtect: SET; dwMaximumSizeHigh: INTEGER; dwMaximumSizeLow: INTEGER; lpName: PtrWSTR): HANDLE;
    (*END CreateFileMappingW;*)

    PROCEDURE CreateFileMapping* ["CreateFileMappingA"] (hFile: HANDLE; VAR [nil] lpFileMappingAttributes: SECURITY_ATTRIBUTES; flProtect: SET; dwMaximumSizeHigh: INTEGER; dwMaximumSizeLow: INTEGER; lpName: PtrSTR): HANDLE;
    (*END CreateFileMapping;*)

    PROCEDURE OpenFileMappingA* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenFileMappingA;*)

    PROCEDURE OpenFileMappingW* (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrWSTR): HANDLE;
    (*END OpenFileMappingW;*)

    PROCEDURE OpenFileMapping* ["OpenFileMappingA"] (dwDesiredAccess: SET; bInheritHandle: BOOL; lpName: PtrSTR): HANDLE;
    (*END OpenFileMapping;*)

    PROCEDURE GetLogicalDriveStringsA* (nBufferLength: INTEGER; lpBuffer: PtrSTR): INTEGER;
    (*END GetLogicalDriveStringsA;*)

    PROCEDURE GetLogicalDriveStringsW* (nBufferLength: INTEGER; lpBuffer: PtrWSTR): INTEGER;
    (*END GetLogicalDriveStringsW;*)

    PROCEDURE GetLogicalDriveStrings* ["GetLogicalDriveStringsA"] (nBufferLength: INTEGER; lpBuffer: PtrSTR): INTEGER;
    (*END GetLogicalDriveStrings;*)

    PROCEDURE LoadLibraryA* (lpLibFileName: PtrSTR): HMODULE;
    (*END LoadLibraryA;*)

    PROCEDURE LoadLibraryW* (lpLibFileName: PtrWSTR): HMODULE;
    (*END LoadLibraryW;*)

    PROCEDURE LoadLibrary* ["LoadLibraryA"] (lpLibFileName: PtrSTR): HMODULE;
    (*END LoadLibrary;*)

    PROCEDURE LoadLibraryExA* (lpLibFileName: PtrSTR; hFile: HANDLE; dwFlags: SET): HMODULE;
    (*END LoadLibraryExA;*)

    PROCEDURE LoadLibraryExW* (lpLibFileName: PtrWSTR; hFile: HANDLE; dwFlags: SET): HMODULE;
    (*END LoadLibraryExW;*)

    PROCEDURE LoadLibraryEx* ["LoadLibraryExA"] (lpLibFileName: PtrSTR; hFile: HANDLE; dwFlags: SET): HMODULE;
    (*END LoadLibraryEx;*)

    PROCEDURE GetModuleFileNameA* (hModule: HMODULE; lpFilename: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetModuleFileNameA;*)

    PROCEDURE GetModuleFileNameW* (hModule: HMODULE; lpFilename: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GetModuleFileNameW;*)

    PROCEDURE GetModuleFileName* ["GetModuleFileNameA"] (hModule: HMODULE; lpFilename: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetModuleFileName;*)

    PROCEDURE GetModuleHandleA* (lpModuleName: PtrSTR): HMODULE;
    (*END GetModuleHandleA;*)

    PROCEDURE GetModuleHandleW* (lpModuleName: PtrWSTR): HMODULE;
    (*END GetModuleHandleW;*)

    PROCEDURE GetModuleHandle* ["GetModuleHandleA"] (lpModuleName: PtrSTR): HMODULE;
    (*END GetModuleHandle;*)

    PROCEDURE CreateProcessA* (lpApplicationName: PtrSTR; lpCommandLine: PtrSTR; VAR [nil] lpProcessAttributes: SECURITY_ATTRIBUTES; VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; bInheritHandles: BOOL; dwCreationFlags: SET; lpEnvironment: PtrVoid; lpCurrentDirectory: PtrSTR; VAR [nil] lpStartupInfo: STARTUPINFOA; VAR [nil] lpProcessInformation: PROCESS_INFORMATION): BOOL;
    (*END CreateProcessA;*)

    PROCEDURE CreateProcessW* (lpApplicationName: PtrWSTR; lpCommandLine: PtrWSTR; VAR [nil] lpProcessAttributes: SECURITY_ATTRIBUTES; VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; bInheritHandles: BOOL; dwCreationFlags: SET; lpEnvironment: PtrVoid; lpCurrentDirectory: PtrWSTR; VAR [nil] lpStartupInfo: STARTUPINFOW; VAR [nil] lpProcessInformation: PROCESS_INFORMATION): BOOL;
    (*END CreateProcessW;*)

    PROCEDURE CreateProcess* ["CreateProcessA"] (lpApplicationName: PtrSTR; lpCommandLine: PtrSTR; VAR [nil] lpProcessAttributes: SECURITY_ATTRIBUTES; VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; bInheritHandles: BOOL; dwCreationFlags: SET; lpEnvironment: PtrVoid; lpCurrentDirectory: PtrSTR; VAR [nil] lpStartupInfo: STARTUPINFOA; VAR [nil] lpProcessInformation: PROCESS_INFORMATION): BOOL;
    (*END CreateProcess;*)

    PROCEDURE SetProcessShutdownParameters* (dwLevel: INTEGER; dwFlags: SET): BOOL;
    (*END SetProcessShutdownParameters;*)

    PROCEDURE GetProcessShutdownParameters* (VAR [nil] lpdwLevel: INTEGER; VAR [nil] lpdwFlags: SET): BOOL;
    (*END GetProcessShutdownParameters;*)

    PROCEDURE GetProcessVersion* (ProcessId: INTEGER): INTEGER;
    (*END GetProcessVersion;*)

    PROCEDURE FatalAppExitA* (uAction: INTEGER; lpMessageText: PtrSTR);
    (*END FatalAppExitA;*)

    PROCEDURE FatalAppExitW* (uAction: INTEGER; lpMessageText: PtrWSTR);
    (*END FatalAppExitW;*)

    PROCEDURE FatalAppExit* ["FatalAppExitA"] (uAction: INTEGER; lpMessageText: PtrSTR);
    (*END FatalAppExit;*)

    PROCEDURE GetStartupInfoA* (VAR [nil] lpStartupInfo: STARTUPINFOA);
    (*END GetStartupInfoA;*)

    PROCEDURE GetStartupInfoW* (VAR [nil] lpStartupInfo: STARTUPINFOW);
    (*END GetStartupInfoW;*)

    PROCEDURE GetStartupInfo* ["GetStartupInfoA"] (VAR [nil] lpStartupInfo: STARTUPINFOA);
    (*END GetStartupInfo;*)

    PROCEDURE GetCommandLineA* (): PtrSTR;
    (*END GetCommandLineA;*)

    PROCEDURE GetCommandLineW* (): PtrWSTR;
    (*END GetCommandLineW;*)

    PROCEDURE GetCommandLine* ["GetCommandLineA"] (): PtrSTR;
    (*END GetCommandLine;*)

    PROCEDURE GetEnvironmentVariableA* (lpName: PtrSTR; lpBuffer: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetEnvironmentVariableA;*)

    PROCEDURE GetEnvironmentVariableW* (lpName: PtrWSTR; lpBuffer: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GetEnvironmentVariableW;*)

    PROCEDURE GetEnvironmentVariable* ["GetEnvironmentVariableA"] (lpName: PtrSTR; lpBuffer: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetEnvironmentVariable;*)

    PROCEDURE SetEnvironmentVariableA* (lpName: PtrSTR; lpValue: PtrSTR): BOOL;
    (*END SetEnvironmentVariableA;*)

    PROCEDURE SetEnvironmentVariableW* (lpName: PtrWSTR; lpValue: PtrWSTR): BOOL;
    (*END SetEnvironmentVariableW;*)

    PROCEDURE SetEnvironmentVariable* ["SetEnvironmentVariableA"] (lpName: PtrSTR; lpValue: PtrSTR): BOOL;
    (*END SetEnvironmentVariable;*)

    PROCEDURE ExpandEnvironmentStringsA* (lpSrc: PtrSTR; lpDst: PtrSTR; nSize: INTEGER): INTEGER;
    (*END ExpandEnvironmentStringsA;*)

    PROCEDURE ExpandEnvironmentStringsW* (lpSrc: PtrWSTR; lpDst: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END ExpandEnvironmentStringsW;*)

    PROCEDURE ExpandEnvironmentStrings* ["ExpandEnvironmentStringsA"] (lpSrc: PtrSTR; lpDst: PtrSTR; nSize: INTEGER): INTEGER;
    (*END ExpandEnvironmentStrings;*)

    PROCEDURE OutputDebugStringA* (lpOutputString: PtrSTR);
    (*END OutputDebugStringA;*)

    PROCEDURE OutputDebugStringW* (lpOutputString: PtrWSTR);
    (*END OutputDebugStringW;*)

    PROCEDURE OutputDebugString* ["OutputDebugStringA"] (lpOutputString: PtrSTR);
    (*END OutputDebugString;*)

    PROCEDURE FindResourceA* (hModule: HMODULE; lpName: PtrSTR; lpType: PtrSTR): HRSRC;
    (*END FindResourceA;*)

    PROCEDURE FindResourceW* (hModule: HMODULE; lpName: PtrWSTR; lpType: PtrWSTR): HRSRC;
    (*END FindResourceW;*)

    PROCEDURE FindResource* ["FindResourceA"] (hModule: HMODULE; lpName: PtrSTR; lpType: PtrSTR): HRSRC;
    (*END FindResource;*)

    PROCEDURE FindResourceExA* (hModule: HMODULE; lpType: PtrSTR; lpName: PtrSTR; wLanguage: SHORTINT): HRSRC;
    (*END FindResourceExA;*)

    PROCEDURE FindResourceExW* (hModule: HMODULE; lpType: PtrWSTR; lpName: PtrWSTR; wLanguage: SHORTINT): HRSRC;
    (*END FindResourceExW;*)

    PROCEDURE FindResourceEx* ["FindResourceExA"] (hModule: HMODULE; lpType: PtrSTR; lpName: PtrSTR; wLanguage: SHORTINT): HRSRC;
    (*END FindResourceEx;*)

    PROCEDURE EnumResourceTypesA* (hModule: HMODULE; lpEnumFunc: ENUMRESTYPEPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceTypesA;*)

    PROCEDURE EnumResourceTypesW* (hModule: HMODULE; lpEnumFunc: ENUMRESTYPEPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceTypesW;*)

    PROCEDURE EnumResourceTypes* ["EnumResourceTypesA"] (hModule: HMODULE; lpEnumFunc: ENUMRESTYPEPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceTypes;*)

    PROCEDURE EnumResourceNamesA* (hModule: HMODULE; lpType: PtrSTR; lpEnumFunc: ENUMRESNAMEPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceNamesA;*)

    PROCEDURE EnumResourceNamesW* (hModule: HMODULE; lpType: PtrWSTR; lpEnumFunc: ENUMRESNAMEPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceNamesW;*)

    PROCEDURE EnumResourceNames* ["EnumResourceNamesA"] (hModule: HMODULE; lpType: PtrSTR; lpEnumFunc: ENUMRESNAMEPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceNames;*)

    PROCEDURE EnumResourceLanguagesA* (hModule: HMODULE; lpType: PtrSTR; lpName: PtrSTR; lpEnumFunc: ENUMRESLANGPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceLanguagesA;*)

    PROCEDURE EnumResourceLanguagesW* (hModule: HMODULE; lpType: PtrWSTR; lpName: PtrWSTR; lpEnumFunc: ENUMRESLANGPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceLanguagesW;*)

    PROCEDURE EnumResourceLanguages* ["EnumResourceLanguagesA"] (hModule: HMODULE; lpType: PtrSTR; lpName: PtrSTR; lpEnumFunc: ENUMRESLANGPROC; lParam: INTEGER): BOOL;
    (*END EnumResourceLanguages;*)

    PROCEDURE BeginUpdateResourceA* (pFileName: PtrSTR; bDeleteExistingResources: BOOL): HANDLE;
    (*END BeginUpdateResourceA;*)

    PROCEDURE BeginUpdateResourceW* (pFileName: PtrWSTR; bDeleteExistingResources: BOOL): HANDLE;
    (*END BeginUpdateResourceW;*)

    PROCEDURE BeginUpdateResource* ["BeginUpdateResourceA"] (pFileName: PtrSTR; bDeleteExistingResources: BOOL): HANDLE;
    (*END BeginUpdateResource;*)

    PROCEDURE UpdateResourceA* (hUpdate: HANDLE; lpType: PtrSTR; lpName: PtrSTR; wLanguage: SHORTINT; lpData: PtrVoid; cbData: INTEGER): BOOL;
    (*END UpdateResourceA;*)

    PROCEDURE UpdateResourceW* (hUpdate: HANDLE; lpType: PtrWSTR; lpName: PtrWSTR; wLanguage: SHORTINT; lpData: PtrVoid; cbData: INTEGER): BOOL;
    (*END UpdateResourceW;*)

    PROCEDURE UpdateResource* ["UpdateResourceA"] (hUpdate: HANDLE; lpType: PtrSTR; lpName: PtrSTR; wLanguage: SHORTINT; lpData: PtrVoid; cbData: INTEGER): BOOL;
    (*END UpdateResource;*)

    PROCEDURE EndUpdateResourceA* (hUpdate: HANDLE; fDiscard: BOOL): BOOL;
    (*END EndUpdateResourceA;*)

    PROCEDURE EndUpdateResourceW* (hUpdate: HANDLE; fDiscard: BOOL): BOOL;
    (*END EndUpdateResourceW;*)

    PROCEDURE EndUpdateResource* ["EndUpdateResourceA"] (hUpdate: HANDLE; fDiscard: BOOL): BOOL;
    (*END EndUpdateResource;*)

    PROCEDURE GlobalAddAtomA* (lpString: PtrSTR): ATOM;
    (*END GlobalAddAtomA;*)

    PROCEDURE GlobalAddAtomW* (lpString: PtrWSTR): ATOM;
    (*END GlobalAddAtomW;*)

    PROCEDURE GlobalAddAtom* ["GlobalAddAtomA"] (lpString: PtrSTR): ATOM;
    (*END GlobalAddAtom;*)

    PROCEDURE GlobalFindAtomA* (lpString: PtrSTR): ATOM;
    (*END GlobalFindAtomA;*)

    PROCEDURE GlobalFindAtomW* (lpString: PtrWSTR): ATOM;
    (*END GlobalFindAtomW;*)

    PROCEDURE GlobalFindAtom* ["GlobalFindAtomA"] (lpString: PtrSTR): ATOM;
    (*END GlobalFindAtom;*)

    PROCEDURE GlobalGetAtomNameA* (nAtom: ATOM; lpBuffer: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GlobalGetAtomNameA;*)

    PROCEDURE GlobalGetAtomNameW* (nAtom: ATOM; lpBuffer: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GlobalGetAtomNameW;*)

    PROCEDURE GlobalGetAtomName* ["GlobalGetAtomNameA"] (nAtom: ATOM; lpBuffer: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GlobalGetAtomName;*)

    PROCEDURE AddAtomA* (lpString: PtrSTR): ATOM;
    (*END AddAtomA;*)

    PROCEDURE AddAtomW* (lpString: PtrWSTR): ATOM;
    (*END AddAtomW;*)

    PROCEDURE AddAtom* ["AddAtomA"] (lpString: PtrSTR): ATOM;
    (*END AddAtom;*)

    PROCEDURE FindAtomA* (lpString: PtrSTR): ATOM;
    (*END FindAtomA;*)

    PROCEDURE FindAtomW* (lpString: PtrWSTR): ATOM;
    (*END FindAtomW;*)

    PROCEDURE FindAtom* ["FindAtomA"] (lpString: PtrSTR): ATOM;
    (*END FindAtom;*)

    PROCEDURE GetAtomNameA* (nAtom: ATOM; lpBuffer: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetAtomNameA;*)

    PROCEDURE GetAtomNameW* (nAtom: ATOM; lpBuffer: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GetAtomNameW;*)

    PROCEDURE GetAtomName* ["GetAtomNameA"] (nAtom: ATOM; lpBuffer: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetAtomName;*)

    PROCEDURE GetProfileIntA* (lpAppName: PtrSTR; lpKeyName: PtrSTR; nDefault: INTEGER): INTEGER;
    (*END GetProfileIntA;*)

    PROCEDURE GetProfileIntW* (lpAppName: PtrWSTR; lpKeyName: PtrWSTR; nDefault: INTEGER): INTEGER;
    (*END GetProfileIntW;*)

    PROCEDURE GetProfileInt* ["GetProfileIntA"] (lpAppName: PtrSTR; lpKeyName: PtrSTR; nDefault: INTEGER): INTEGER;
    (*END GetProfileInt;*)

    PROCEDURE GetProfileStringA* (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpDefault: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetProfileStringA;*)

    PROCEDURE GetProfileStringW* (lpAppName: PtrWSTR; lpKeyName: PtrWSTR; lpDefault: PtrWSTR; lpReturnedString: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GetProfileStringW;*)

    PROCEDURE GetProfileString* ["GetProfileStringA"] (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpDefault: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetProfileString;*)

    PROCEDURE WriteProfileStringA* (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpString: PtrSTR): BOOL;
    (*END WriteProfileStringA;*)

    PROCEDURE WriteProfileStringW* (lpAppName: PtrWSTR; lpKeyName: PtrWSTR; lpString: PtrWSTR): BOOL;
    (*END WriteProfileStringW;*)

    PROCEDURE WriteProfileString* ["WriteProfileStringA"] (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpString: PtrSTR): BOOL;
    (*END WriteProfileString;*)

    PROCEDURE GetProfileSectionA* (lpAppName: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetProfileSectionA;*)

    PROCEDURE GetProfileSectionW* (lpAppName: PtrWSTR; lpReturnedString: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GetProfileSectionW;*)

    PROCEDURE GetProfileSection* ["GetProfileSectionA"] (lpAppName: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetProfileSection;*)

    PROCEDURE WriteProfileSectionA* (lpAppName: PtrSTR; lpString: PtrSTR): BOOL;
    (*END WriteProfileSectionA;*)

    PROCEDURE WriteProfileSectionW* (lpAppName: PtrWSTR; lpString: PtrWSTR): BOOL;
    (*END WriteProfileSectionW;*)

    PROCEDURE WriteProfileSection* ["WriteProfileSectionA"] (lpAppName: PtrSTR; lpString: PtrSTR): BOOL;
    (*END WriteProfileSection;*)

    PROCEDURE GetPrivateProfileIntA* (lpAppName: PtrSTR; lpKeyName: PtrSTR; nDefault: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileIntA;*)

    PROCEDURE GetPrivateProfileIntW* (lpAppName: PtrWSTR; lpKeyName: PtrWSTR; nDefault: INTEGER; lpFileName: PtrWSTR): INTEGER;
    (*END GetPrivateProfileIntW;*)

    PROCEDURE GetPrivateProfileInt* ["GetPrivateProfileIntA"] (lpAppName: PtrSTR; lpKeyName: PtrSTR; nDefault: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileInt;*)

    PROCEDURE GetPrivateProfileStringA* (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpDefault: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileStringA;*)

    PROCEDURE GetPrivateProfileStringW* (lpAppName: PtrWSTR; lpKeyName: PtrWSTR; lpDefault: PtrWSTR; lpReturnedString: PtrWSTR; nSize: INTEGER; lpFileName: PtrWSTR): INTEGER;
    (*END GetPrivateProfileStringW;*)

    PROCEDURE GetPrivateProfileString* ["GetPrivateProfileStringA"] (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpDefault: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileString;*)

    PROCEDURE WritePrivateProfileStringA* (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpString: PtrSTR; lpFileName: PtrSTR): BOOL;
    (*END WritePrivateProfileStringA;*)

    PROCEDURE WritePrivateProfileStringW* (lpAppName: PtrWSTR; lpKeyName: PtrWSTR; lpString: PtrWSTR; lpFileName: PtrWSTR): BOOL;
    (*END WritePrivateProfileStringW;*)

    PROCEDURE WritePrivateProfileString* ["WritePrivateProfileStringA"] (lpAppName: PtrSTR; lpKeyName: PtrSTR; lpString: PtrSTR; lpFileName: PtrSTR): BOOL;
    (*END WritePrivateProfileString;*)

    PROCEDURE GetPrivateProfileSectionA* (lpAppName: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileSectionA;*)

    PROCEDURE GetPrivateProfileSectionW* (lpAppName: PtrWSTR; lpReturnedString: PtrWSTR; nSize: INTEGER; lpFileName: PtrWSTR): INTEGER;
    (*END GetPrivateProfileSectionW;*)

    PROCEDURE GetPrivateProfileSection* ["GetPrivateProfileSectionA"] (lpAppName: PtrSTR; lpReturnedString: PtrSTR; nSize: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileSection;*)

    PROCEDURE WritePrivateProfileSectionA* (lpAppName: PtrSTR; lpString: PtrSTR; lpFileName: PtrSTR): BOOL;
    (*END WritePrivateProfileSectionA;*)

    PROCEDURE WritePrivateProfileSectionW* (lpAppName: PtrWSTR; lpString: PtrWSTR; lpFileName: PtrWSTR): BOOL;
    (*END WritePrivateProfileSectionW;*)

    PROCEDURE WritePrivateProfileSection* ["WritePrivateProfileSectionA"] (lpAppName: PtrSTR; lpString: PtrSTR; lpFileName: PtrSTR): BOOL;
    (*END WritePrivateProfileSection;*)

    PROCEDURE GetPrivateProfileSectionNamesA* (lpszReturnBuffer: PtrSTR; nSize: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileSectionNamesA;*)

    PROCEDURE GetPrivateProfileSectionNamesW* (lpszReturnBuffer: PtrWSTR; nSize: INTEGER; lpFileName: PtrWSTR): INTEGER;
    (*END GetPrivateProfileSectionNamesW;*)

    PROCEDURE GetPrivateProfileSectionNames* ["GetPrivateProfileSectionNamesA"] (lpszReturnBuffer: PtrSTR; nSize: INTEGER; lpFileName: PtrSTR): INTEGER;
    (*END GetPrivateProfileSectionNames;*)

    PROCEDURE GetPrivateProfileStructA* (lpszSection: PtrSTR; lpszKey: PtrSTR; lpStruct: PtrVoid; uSizeStruct: INTEGER; szFile: PtrSTR): BOOL;
    (*END GetPrivateProfileStructA;*)

    PROCEDURE GetPrivateProfileStructW* (lpszSection: PtrWSTR; lpszKey: PtrWSTR; lpStruct: PtrVoid; uSizeStruct: INTEGER; szFile: PtrWSTR): BOOL;
    (*END GetPrivateProfileStructW;*)

    PROCEDURE GetPrivateProfileStruct* ["GetPrivateProfileStructA"] (lpszSection: PtrSTR; lpszKey: PtrSTR; lpStruct: PtrVoid; uSizeStruct: INTEGER; szFile: PtrSTR): BOOL;
    (*END GetPrivateProfileStruct;*)

    PROCEDURE WritePrivateProfileStructA* (lpszSection: PtrSTR; lpszKey: PtrSTR; lpStruct: PtrVoid; uSizeStruct: INTEGER; szFile: PtrSTR): BOOL;
    (*END WritePrivateProfileStructA;*)

    PROCEDURE WritePrivateProfileStructW* (lpszSection: PtrWSTR; lpszKey: PtrWSTR; lpStruct: PtrVoid; uSizeStruct: INTEGER; szFile: PtrWSTR): BOOL;
    (*END WritePrivateProfileStructW;*)

    PROCEDURE WritePrivateProfileStruct* ["WritePrivateProfileStructA"] (lpszSection: PtrSTR; lpszKey: PtrSTR; lpStruct: PtrVoid; uSizeStruct: INTEGER; szFile: PtrSTR): BOOL;
    (*END WritePrivateProfileStruct;*)

    PROCEDURE GetDriveTypeA* (lpRootPathName: PtrSTR): INTEGER;
    (*END GetDriveTypeA;*)

    PROCEDURE GetDriveTypeW* (lpRootPathName: PtrWSTR): INTEGER;
    (*END GetDriveTypeW;*)

    PROCEDURE GetDriveType* ["GetDriveTypeA"] (lpRootPathName: PtrSTR): INTEGER;
    (*END GetDriveType;*)

    PROCEDURE GetSystemDirectoryA* (lpBuffer: PtrSTR; uSize: INTEGER): INTEGER;
    (*END GetSystemDirectoryA;*)

    PROCEDURE GetSystemDirectoryW* (lpBuffer: PtrWSTR; uSize: INTEGER): INTEGER;
    (*END GetSystemDirectoryW;*)

    PROCEDURE GetSystemDirectory* ["GetSystemDirectoryA"] (lpBuffer: PtrSTR; uSize: INTEGER): INTEGER;
    (*END GetSystemDirectory;*)

    PROCEDURE GetTempPathA* (nBufferLength: INTEGER; lpBuffer: PtrSTR): INTEGER;
    (*END GetTempPathA;*)

    PROCEDURE GetTempPathW* (nBufferLength: INTEGER; lpBuffer: PtrWSTR): INTEGER;
    (*END GetTempPathW;*)

    PROCEDURE GetTempPath* ["GetTempPathA"] (nBufferLength: INTEGER; lpBuffer: PtrSTR): INTEGER;
    (*END GetTempPath;*)

    PROCEDURE GetTempFileNameA* (lpPathName: PtrSTR; lpPrefixString: PtrSTR; uUnique: INTEGER; lpTempFileName: PtrSTR): INTEGER;
    (*END GetTempFileNameA;*)

    PROCEDURE GetTempFileNameW* (lpPathName: PtrWSTR; lpPrefixString: PtrWSTR; uUnique: INTEGER; lpTempFileName: PtrWSTR): INTEGER;
    (*END GetTempFileNameW;*)

    PROCEDURE GetTempFileName* ["GetTempFileNameA"] (lpPathName: PtrSTR; lpPrefixString: PtrSTR; uUnique: INTEGER; lpTempFileName: PtrSTR): INTEGER;
    (*END GetTempFileName;*)

    PROCEDURE GetWindowsDirectoryA* (lpBuffer: PtrSTR; uSize: INTEGER): INTEGER;
    (*END GetWindowsDirectoryA;*)

    PROCEDURE GetWindowsDirectoryW* (lpBuffer: PtrWSTR; uSize: INTEGER): INTEGER;
    (*END GetWindowsDirectoryW;*)

    PROCEDURE GetWindowsDirectory* ["GetWindowsDirectoryA"] (lpBuffer: PtrSTR; uSize: INTEGER): INTEGER;
    (*END GetWindowsDirectory;*)

    PROCEDURE SetCurrentDirectoryA* (lpPathName: PtrSTR): BOOL;
    (*END SetCurrentDirectoryA;*)

    PROCEDURE SetCurrentDirectoryW* (lpPathName: PtrWSTR): BOOL;
    (*END SetCurrentDirectoryW;*)

    PROCEDURE SetCurrentDirectory* ["SetCurrentDirectoryA"] (lpPathName: PtrSTR): BOOL;
    (*END SetCurrentDirectory;*)

    PROCEDURE GetCurrentDirectoryA* (nBufferLength: INTEGER; lpBuffer: PtrSTR): INTEGER;
    (*END GetCurrentDirectoryA;*)

    PROCEDURE GetCurrentDirectoryW* (nBufferLength: INTEGER; lpBuffer: PtrWSTR): INTEGER;
    (*END GetCurrentDirectoryW;*)

    PROCEDURE GetCurrentDirectory* ["GetCurrentDirectoryA"] (nBufferLength: INTEGER; lpBuffer: PtrSTR): INTEGER;
    (*END GetCurrentDirectory;*)

    PROCEDURE GetDiskFreeSpaceA* (lpRootPathName: PtrSTR; VAR [nil] lpSectorsPerCluster: INTEGER; VAR [nil] lpBytesPerSector: INTEGER; VAR [nil] lpNumberOfFreeClusters: INTEGER; VAR [nil] lpTotalNumberOfClusters: INTEGER): BOOL;
    (*END GetDiskFreeSpaceA;*)

    PROCEDURE GetDiskFreeSpaceW* (lpRootPathName: PtrWSTR; VAR [nil] lpSectorsPerCluster: INTEGER; VAR [nil] lpBytesPerSector: INTEGER; VAR [nil] lpNumberOfFreeClusters: INTEGER; VAR [nil] lpTotalNumberOfClusters: INTEGER): BOOL;
    (*END GetDiskFreeSpaceW;*)

    PROCEDURE GetDiskFreeSpace* ["GetDiskFreeSpaceA"] (lpRootPathName: PtrSTR; VAR [nil] lpSectorsPerCluster: INTEGER; VAR [nil] lpBytesPerSector: INTEGER; VAR [nil] lpNumberOfFreeClusters: INTEGER; VAR [nil] lpTotalNumberOfClusters: INTEGER): BOOL;
    (*END GetDiskFreeSpace;*)

    PROCEDURE CreateDirectoryA* (lpPathName: PtrSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): BOOL;
    (*END CreateDirectoryA;*)

    PROCEDURE CreateDirectoryW* (lpPathName: PtrWSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): BOOL;
    (*END CreateDirectoryW;*)

    PROCEDURE CreateDirectory* ["CreateDirectoryA"] (lpPathName: PtrSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): BOOL;
    (*END CreateDirectory;*)

    PROCEDURE CreateDirectoryExA* (lpTemplateDirectory: PtrSTR; lpNewDirectory: PtrSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): BOOL;
    (*END CreateDirectoryExA;*)

    PROCEDURE CreateDirectoryExW* (lpTemplateDirectory: PtrWSTR; lpNewDirectory: PtrWSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): BOOL;
    (*END CreateDirectoryExW;*)

    PROCEDURE CreateDirectoryEx* ["CreateDirectoryExA"] (lpTemplateDirectory: PtrSTR; lpNewDirectory: PtrSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): BOOL;
    (*END CreateDirectoryEx;*)

    PROCEDURE RemoveDirectoryA* (lpPathName: PtrSTR): BOOL;
    (*END RemoveDirectoryA;*)

    PROCEDURE RemoveDirectoryW* (lpPathName: PtrWSTR): BOOL;
    (*END RemoveDirectoryW;*)

    PROCEDURE RemoveDirectory* ["RemoveDirectoryA"] (lpPathName: PtrSTR): BOOL;
    (*END RemoveDirectory;*)

    PROCEDURE GetFullPathNameA* (lpFileName: PtrSTR; nBufferLength: INTEGER; lpBuffer: PtrSTR; VAR [nil] lpFilePart: PtrSTR): INTEGER;
    (*END GetFullPathNameA;*)

    PROCEDURE GetFullPathNameW* (lpFileName: PtrWSTR; nBufferLength: INTEGER; lpBuffer: PtrWSTR; VAR [nil] lpFilePart: PtrWSTR): INTEGER;
    (*END GetFullPathNameW;*)

    PROCEDURE GetFullPathName* ["GetFullPathNameA"] (lpFileName: PtrSTR; nBufferLength: INTEGER; lpBuffer: PtrSTR; VAR [nil] lpFilePart: PtrSTR): INTEGER;
    (*END GetFullPathName;*)

    PROCEDURE DefineDosDeviceA* (dwFlags: SET; lpDeviceName: PtrSTR; lpTargetPath: PtrSTR): BOOL;
    (*END DefineDosDeviceA;*)

    PROCEDURE DefineDosDeviceW* (dwFlags: SET; lpDeviceName: PtrWSTR; lpTargetPath: PtrWSTR): BOOL;
    (*END DefineDosDeviceW;*)

    PROCEDURE DefineDosDevice* ["DefineDosDeviceA"] (dwFlags: SET; lpDeviceName: PtrSTR; lpTargetPath: PtrSTR): BOOL;
    (*END DefineDosDevice;*)

    PROCEDURE QueryDosDeviceA* (lpDeviceName: PtrSTR; lpTargetPath: PtrSTR; ucchMax: INTEGER): INTEGER;
    (*END QueryDosDeviceA;*)

    PROCEDURE QueryDosDeviceW* (lpDeviceName: PtrWSTR; lpTargetPath: PtrWSTR; ucchMax: INTEGER): INTEGER;
    (*END QueryDosDeviceW;*)

    PROCEDURE QueryDosDevice* ["QueryDosDeviceA"] (lpDeviceName: PtrSTR; lpTargetPath: PtrSTR; ucchMax: INTEGER): INTEGER;
    (*END QueryDosDevice;*)

    PROCEDURE CreateFileA* (lpFileName: PtrSTR; dwDesiredAccess: SET; dwShareMode: SET; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES; dwCreationDisposition: INTEGER; dwFlagsAndAttributes: SET; hTemplateFile: HANDLE): HANDLE;
    (*END CreateFileA;*)

    PROCEDURE CreateFileW* (lpFileName: PtrWSTR; dwDesiredAccess: SET; dwShareMode: SET; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES; dwCreationDisposition: INTEGER; dwFlagsAndAttributes: SET; hTemplateFile: HANDLE): HANDLE;
    (*END CreateFileW;*)

    PROCEDURE CreateFile* ["CreateFileA"] (lpFileName: PtrSTR; dwDesiredAccess: SET; dwShareMode: SET; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES; dwCreationDisposition: INTEGER; dwFlagsAndAttributes: SET; hTemplateFile: HANDLE): HANDLE;
    (*END CreateFile;*)

    PROCEDURE SetFileAttributesA* (lpFileName: PtrSTR; dwFileAttributes: SET): BOOL;
    (*END SetFileAttributesA;*)

    PROCEDURE SetFileAttributesW* (lpFileName: PtrWSTR; dwFileAttributes: SET): BOOL;
    (*END SetFileAttributesW;*)

    PROCEDURE SetFileAttributes* ["SetFileAttributesA"] (lpFileName: PtrSTR; dwFileAttributes: SET): BOOL;
    (*END SetFileAttributes;*)

    PROCEDURE GetFileAttributesA* (lpFileName: PtrSTR): INTEGER;
    (*END GetFileAttributesA;*)

    PROCEDURE GetFileAttributesW* (lpFileName: PtrWSTR): INTEGER;
    (*END GetFileAttributesW;*)

    PROCEDURE GetFileAttributes* ["GetFileAttributesA"] (lpFileName: PtrSTR): INTEGER;
    (*END GetFileAttributes;*)

    PROCEDURE GetCompressedFileSizeA* (lpFileName: PtrSTR; VAR [nil] lpFileSizeHigh: INTEGER): INTEGER;
    (*END GetCompressedFileSizeA;*)

    PROCEDURE GetCompressedFileSizeW* (lpFileName: PtrWSTR; VAR [nil] lpFileSizeHigh: INTEGER): INTEGER;
    (*END GetCompressedFileSizeW;*)

    PROCEDURE GetCompressedFileSize* ["GetCompressedFileSizeA"] (lpFileName: PtrSTR; VAR [nil] lpFileSizeHigh: INTEGER): INTEGER;
    (*END GetCompressedFileSize;*)

    PROCEDURE DeleteFileA* (lpFileName: PtrSTR): BOOL;
    (*END DeleteFileA;*)

    PROCEDURE DeleteFileW* (lpFileName: PtrWSTR): BOOL;
    (*END DeleteFileW;*)

    PROCEDURE DeleteFile* ["DeleteFileA"] (lpFileName: PtrSTR): BOOL;
    (*END DeleteFile;*)

    PROCEDURE FindFirstFileExA* (lpFileName: PtrSTR; fInfoLevelId: FINDEX_INFO_LEVELS; lpFindFileData: PtrVoid; fSearchOp: FINDEX_SEARCH_OPS; lpSearchFilter: PtrVoid; dwAdditionalFlags: INTEGER): HANDLE;
    (*END FindFirstFileExA;*)

    PROCEDURE FindFirstFileExW* (lpFileName: PtrWSTR; fInfoLevelId: FINDEX_INFO_LEVELS; lpFindFileData: PtrVoid; fSearchOp: FINDEX_SEARCH_OPS; lpSearchFilter: PtrVoid; dwAdditionalFlags: INTEGER): HANDLE;
    (*END FindFirstFileExW;*)

    PROCEDURE FindFirstFileEx* ["FindFirstFileExA"] (lpFileName: PtrSTR; fInfoLevelId: FINDEX_INFO_LEVELS; lpFindFileData: PtrVoid; fSearchOp: FINDEX_SEARCH_OPS; lpSearchFilter: PtrVoid; dwAdditionalFlags: INTEGER): HANDLE;
    (*END FindFirstFileEx;*)

    PROCEDURE FindFirstFileA* (lpFileName: PtrSTR; VAR [nil] lpFindFileData: WIN32_FIND_DATAA): HANDLE;
    (*END FindFirstFileA;*)

    PROCEDURE FindFirstFileW* (lpFileName: PtrWSTR; VAR [nil] lpFindFileData: WIN32_FIND_DATAW): HANDLE;
    (*END FindFirstFileW;*)

    PROCEDURE FindFirstFile* ["FindFirstFileA"] (lpFileName: PtrSTR; VAR [nil] lpFindFileData: WIN32_FIND_DATAA): HANDLE;
    (*END FindFirstFile;*)

    PROCEDURE FindNextFileA* (hFindFile: HANDLE; VAR [nil] lpFindFileData: WIN32_FIND_DATAA): BOOL;
    (*END FindNextFileA;*)

    PROCEDURE FindNextFileW* (hFindFile: HANDLE; VAR [nil] lpFindFileData: WIN32_FIND_DATAW): BOOL;
    (*END FindNextFileW;*)

    PROCEDURE FindNextFile* ["FindNextFileA"] (hFindFile: HANDLE; VAR [nil] lpFindFileData: WIN32_FIND_DATAA): BOOL;
    (*END FindNextFile;*)

    PROCEDURE SearchPathA* (lpPath: PtrSTR; lpFileName: PtrSTR; lpExtension: PtrSTR; nBufferLength: INTEGER; lpBuffer: PtrSTR; VAR [nil] lpFilePart: PtrSTR): INTEGER;
    (*END SearchPathA;*)

    PROCEDURE SearchPathW* (lpPath: PtrWSTR; lpFileName: PtrWSTR; lpExtension: PtrWSTR; nBufferLength: INTEGER; lpBuffer: PtrWSTR; VAR [nil] lpFilePart: PtrWSTR): INTEGER;
    (*END SearchPathW;*)

    PROCEDURE SearchPath* ["SearchPathA"] (lpPath: PtrSTR; lpFileName: PtrSTR; lpExtension: PtrSTR; nBufferLength: INTEGER; lpBuffer: PtrSTR; lpFilePart: POINTER TO (*?*) ARRAY [untagged] OF PtrSTR): INTEGER;
    (*END SearchPath;*)

    PROCEDURE CopyFileA* (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR; bFailIfExists: BOOL): BOOL;
    (*END CopyFileA;*)

    PROCEDURE CopyFileW* (lpExistingFileName: PtrWSTR; lpNewFileName: PtrWSTR; bFailIfExists: BOOL): BOOL;
    (*END CopyFileW;*)

    PROCEDURE CopyFile* ["CopyFileA"] (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR; bFailIfExists: BOOL): BOOL;
    (*END CopyFile;*)

    PROCEDURE CopyFileExA* (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR; lpProgressRoutine: PROGRESS_ROUTINE; lpData: PtrVoid; VAR [nil] pbCancel: BOOL; dwCopyFlags: INTEGER): BOOL;
    (*END CopyFileExA;*)

    PROCEDURE CopyFileExW* (lpExistingFileName: PtrWSTR; lpNewFileName: PtrWSTR; lpProgressRoutine: PROGRESS_ROUTINE; lpData: PtrVoid; VAR [nil] pbCancel: BOOL; dwCopyFlags: INTEGER): BOOL;
    (*END CopyFileExW;*)

    PROCEDURE CopyFileEx* ["CopyFileExA"] (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR; lpProgressRoutine: PROGRESS_ROUTINE; lpData: PtrVoid; VAR [nil] pbCancel: BOOL; dwCopyFlags: INTEGER): BOOL;
    (*END CopyFileEx;*)

    PROCEDURE MoveFileA* (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR): BOOL;
    (*END MoveFileA;*)

    PROCEDURE MoveFileW* (lpExistingFileName: PtrWSTR; lpNewFileName: PtrWSTR): BOOL;
    (*END MoveFileW;*)

    PROCEDURE MoveFile* ["MoveFileA"] (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR): BOOL;
    (*END MoveFile;*)

    PROCEDURE MoveFileExA* (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR; dwFlags: SET): BOOL;
    (*END MoveFileExA;*)

    PROCEDURE MoveFileExW* (lpExistingFileName: PtrWSTR; lpNewFileName: PtrWSTR; dwFlags: SET): BOOL;
    (*END MoveFileExW;*)

    PROCEDURE MoveFileEx* ["MoveFileExA"] (lpExistingFileName: PtrSTR; lpNewFileName: PtrSTR; dwFlags: SET): BOOL;
    (*END MoveFileEx;*)

    PROCEDURE CreateNamedPipeA* (lpName: PtrSTR; dwOpenMode: INTEGER; dwPipeMode: INTEGER; nMaxInstances: INTEGER; nOutBufferSize: INTEGER; nInBufferSize: INTEGER; nDefaultTimeOut: INTEGER; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): HANDLE;
    (*END CreateNamedPipeA;*)

    PROCEDURE CreateNamedPipeW* (lpName: PtrWSTR; dwOpenMode: INTEGER; dwPipeMode: INTEGER; nMaxInstances: INTEGER; nOutBufferSize: INTEGER; nInBufferSize: INTEGER; nDefaultTimeOut: INTEGER; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): HANDLE;
    (*END CreateNamedPipeW;*)

    PROCEDURE CreateNamedPipe* ["CreateNamedPipeA"] (lpName: PtrSTR; dwOpenMode: INTEGER; dwPipeMode: INTEGER; nMaxInstances: INTEGER; nOutBufferSize: INTEGER; nInBufferSize: INTEGER; nDefaultTimeOut: INTEGER; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): HANDLE;
    (*END CreateNamedPipe;*)

    PROCEDURE GetNamedPipeHandleStateA* (hNamedPipe: HANDLE; VAR [nil] lpState: INTEGER; VAR [nil] lpCurInstances: INTEGER; VAR [nil] lpMaxCollectionCount: INTEGER; VAR [nil] lpCollectDataTimeout: INTEGER; lpUserName: PtrSTR; nMaxUserNameSize: INTEGER): BOOL;
    (*END GetNamedPipeHandleStateA;*)

    PROCEDURE GetNamedPipeHandleStateW* (hNamedPipe: HANDLE; VAR [nil] lpState: INTEGER; VAR [nil] lpCurInstances: INTEGER; VAR [nil] lpMaxCollectionCount: INTEGER; VAR [nil] lpCollectDataTimeout: INTEGER; lpUserName: PtrWSTR; nMaxUserNameSize: INTEGER): BOOL;
    (*END GetNamedPipeHandleStateW;*)

    PROCEDURE GetNamedPipeHandleState* ["GetNamedPipeHandleStateA"] (hNamedPipe: HANDLE; VAR [nil] lpState: INTEGER; VAR [nil] lpCurInstances: INTEGER; VAR [nil] lpMaxCollectionCount: INTEGER; VAR [nil] lpCollectDataTimeout: INTEGER; lpUserName: PtrSTR; nMaxUserNameSize: INTEGER): BOOL;
    (*END GetNamedPipeHandleState;*)

    PROCEDURE CallNamedPipeA* (lpNamedPipeName: PtrSTR; lpInBuffer: PtrVoid; nInBufferSize: INTEGER; lpOutBuffer: PtrVoid; nOutBufferSize: INTEGER; VAR [nil] lpBytesRead: INTEGER; nTimeOut: INTEGER): BOOL;
    (*END CallNamedPipeA;*)

    PROCEDURE CallNamedPipeW* (lpNamedPipeName: PtrWSTR; lpInBuffer: PtrVoid; nInBufferSize: INTEGER; lpOutBuffer: PtrVoid; nOutBufferSize: INTEGER; VAR [nil] lpBytesRead: INTEGER; nTimeOut: INTEGER): BOOL;
    (*END CallNamedPipeW;*)

    PROCEDURE CallNamedPipe* ["CallNamedPipeA"] (lpNamedPipeName: PtrSTR; lpInBuffer: PtrVoid; nInBufferSize: INTEGER; lpOutBuffer: PtrVoid; nOutBufferSize: INTEGER; VAR [nil] lpBytesRead: INTEGER; nTimeOut: INTEGER): BOOL;
    (*END CallNamedPipe;*)

    PROCEDURE WaitNamedPipeA* (lpNamedPipeName: PtrSTR; nTimeOut: INTEGER): BOOL;
    (*END WaitNamedPipeA;*)

    PROCEDURE WaitNamedPipeW* (lpNamedPipeName: PtrWSTR; nTimeOut: INTEGER): BOOL;
    (*END WaitNamedPipeW;*)

    PROCEDURE WaitNamedPipe* ["WaitNamedPipeA"] (lpNamedPipeName: PtrSTR; nTimeOut: INTEGER): BOOL;
    (*END WaitNamedPipe;*)

    PROCEDURE SetVolumeLabelA* (lpRootPathName: PtrSTR; lpVolumeName: PtrSTR): BOOL;
    (*END SetVolumeLabelA;*)

    PROCEDURE SetVolumeLabelW* (lpRootPathName: PtrWSTR; lpVolumeName: PtrWSTR): BOOL;
    (*END SetVolumeLabelW;*)

    PROCEDURE SetVolumeLabel* ["SetVolumeLabelA"] (lpRootPathName: PtrSTR; lpVolumeName: PtrSTR): BOOL;
    (*END SetVolumeLabel;*)

    PROCEDURE SetFileApisToOEM* ();
    (*END SetFileApisToOEM;*)

    PROCEDURE SetFileApisToANSI* ();
    (*END SetFileApisToANSI;*)

    PROCEDURE AreFileApisANSI* (): BOOL;
    (*END AreFileApisANSI;*)

    PROCEDURE GetVolumeInformationA* (lpRootPathName: PtrSTR; lpVolumeNameBuffer: PtrSTR; nVolumeNameSize: INTEGER; VAR [nil] lpVolumeSerialNumber: INTEGER; VAR [nil] lpMaximumComponentLength: INTEGER; VAR [nil] lpFileSystemFlags: SET; lpFileSystemNameBuffer: PtrSTR; nFileSystemNameSize: INTEGER): BOOL;
    (*END GetVolumeInformationA;*)

    PROCEDURE GetVolumeInformationW* (lpRootPathName: PtrWSTR; lpVolumeNameBuffer: PtrWSTR; nVolumeNameSize: INTEGER; VAR [nil] lpVolumeSerialNumber: INTEGER; VAR [nil] lpMaximumComponentLength: INTEGER; VAR [nil] lpFileSystemFlags: SET; lpFileSystemNameBuffer: PtrWSTR; nFileSystemNameSize: INTEGER): BOOL;
    (*END GetVolumeInformationW;*)

    PROCEDURE GetVolumeInformation* ["GetVolumeInformationA"] (lpRootPathName: PtrSTR; lpVolumeNameBuffer: PtrSTR; nVolumeNameSize: INTEGER; VAR [nil] lpVolumeSerialNumber: INTEGER; VAR [nil] lpMaximumComponentLength: INTEGER; VAR [nil] lpFileSystemFlags: SET; lpFileSystemNameBuffer: PtrSTR; nFileSystemNameSize: INTEGER): BOOL;
    (*END GetVolumeInformation;*)

    PROCEDURE ClearEventLogA* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; lpBackupFileName: PtrSTR): BOOL;
    (*END ClearEventLogA;*)

    PROCEDURE ClearEventLogW* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; lpBackupFileName: PtrWSTR): BOOL;
    (*END ClearEventLogW;*)

    PROCEDURE ClearEventLog* ["ADVAPI32.dll", "ClearEventLogA"] (hEventLog: HANDLE; lpBackupFileName: PtrSTR): BOOL;
    (*END ClearEventLog;*)

    PROCEDURE BackupEventLogA* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; lpBackupFileName: PtrSTR): BOOL;
    (*END BackupEventLogA;*)

    PROCEDURE BackupEventLogW* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; lpBackupFileName: PtrWSTR): BOOL;
    (*END BackupEventLogW;*)

    PROCEDURE BackupEventLog* ["ADVAPI32.dll", "BackupEventLogA"] (hEventLog: HANDLE; lpBackupFileName: PtrSTR): BOOL;
    (*END BackupEventLog;*)

    PROCEDURE CloseEventLog* ["ADVAPI32.dll", ""] (hEventLog: HANDLE): BOOL;
    (*END CloseEventLog;*)

    PROCEDURE DeregisterEventSource* ["ADVAPI32.dll", ""] (hEventLog: HANDLE): BOOL;
    (*END DeregisterEventSource;*)

    PROCEDURE NotifyChangeEventLog* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; hEvent: HANDLE): BOOL;
    (*END NotifyChangeEventLog;*)

    PROCEDURE GetNumberOfEventLogRecords* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; VAR [nil] NumberOfRecords: INTEGER): BOOL;
    (*END GetNumberOfEventLogRecords;*)

    PROCEDURE GetOldestEventLogRecord* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; VAR [nil] OldestRecord: INTEGER): BOOL;
    (*END GetOldestEventLogRecord;*)

    PROCEDURE OpenEventLogA* ["ADVAPI32.dll", ""] (lpUNCServerName: PtrSTR; lpSourceName: PtrSTR): HANDLE;
    (*END OpenEventLogA;*)

    PROCEDURE OpenEventLogW* ["ADVAPI32.dll", ""] (lpUNCServerName: PtrWSTR; lpSourceName: PtrWSTR): HANDLE;
    (*END OpenEventLogW;*)

    PROCEDURE OpenEventLog* ["ADVAPI32.dll", "OpenEventLogA"] (lpUNCServerName: PtrSTR; lpSourceName: PtrSTR): HANDLE;
    (*END OpenEventLog;*)

    PROCEDURE RegisterEventSourceA* ["ADVAPI32.dll", ""] (lpUNCServerName: PtrSTR; lpSourceName: PtrSTR): HANDLE;
    (*END RegisterEventSourceA;*)

    PROCEDURE RegisterEventSourceW* ["ADVAPI32.dll", ""] (lpUNCServerName: PtrWSTR; lpSourceName: PtrWSTR): HANDLE;
    (*END RegisterEventSourceW;*)

    PROCEDURE RegisterEventSource* ["ADVAPI32.dll", "RegisterEventSourceA"] (lpUNCServerName: PtrSTR; lpSourceName: PtrSTR): HANDLE;
    (*END RegisterEventSource;*)

    PROCEDURE OpenBackupEventLogA* ["ADVAPI32.dll", ""] (lpUNCServerName: PtrSTR; lpFileName: PtrSTR): HANDLE;
    (*END OpenBackupEventLogA;*)

    PROCEDURE OpenBackupEventLogW* ["ADVAPI32.dll", ""] (lpUNCServerName: PtrWSTR; lpFileName: PtrWSTR): HANDLE;
    (*END OpenBackupEventLogW;*)

    PROCEDURE OpenBackupEventLog* ["ADVAPI32.dll", "OpenBackupEventLogA"] (lpUNCServerName: PtrSTR; lpFileName: PtrSTR): HANDLE;
    (*END OpenBackupEventLog;*)

    PROCEDURE ReadEventLogA* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; dwReadFlags: SET; dwRecordOffset: INTEGER; lpBuffer: PtrVoid; nNumberOfBytesToRead: INTEGER; VAR [nil] pnBytesRead: INTEGER; VAR [nil] pnMinNumberOfBytesNeeded: INTEGER): BOOL;
    (*END ReadEventLogA;*)

    PROCEDURE ReadEventLogW* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; dwReadFlags: SET; dwRecordOffset: INTEGER; lpBuffer: PtrVoid; nNumberOfBytesToRead: INTEGER; VAR [nil] pnBytesRead: INTEGER; VAR [nil] pnMinNumberOfBytesNeeded: INTEGER): BOOL;
    (*END ReadEventLogW;*)

    PROCEDURE ReadEventLog* ["ADVAPI32.dll", "ReadEventLogA"] (hEventLog: HANDLE; dwReadFlags: SET; dwRecordOffset: INTEGER; lpBuffer: PtrVoid; nNumberOfBytesToRead: INTEGER; VAR [nil] pnBytesRead: INTEGER; VAR [nil] pnMinNumberOfBytesNeeded: INTEGER): BOOL;
    (*END ReadEventLog;*)

    PROCEDURE ReportEventA* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; wType: SHORTINT; wCategory: SHORTINT; dwEventID: INTEGER; lpUserSid: PSID; wNumStrings: SHORTINT; dwDataSize: INTEGER; VAR [nil] lpStrings: PtrSTR; lpRawData: PtrVoid): BOOL;
    (*END ReportEventA;*)

    PROCEDURE ReportEventW* ["ADVAPI32.dll", ""] (hEventLog: HANDLE; wType: SHORTINT; wCategory: SHORTINT; dwEventID: INTEGER; lpUserSid: PSID; wNumStrings: SHORTINT; dwDataSize: INTEGER; lpStrings: POINTER TO (*?*) ARRAY [untagged] OF PtrWSTR; lpRawData: PtrVoid): BOOL;
    (*END ReportEventW;*)

    PROCEDURE ReportEvent* ["ADVAPI32.dll", "ReportEventA"] (hEventLog: HANDLE; wType: SHORTINT; wCategory: SHORTINT; dwEventID: INTEGER; lpUserSid: PSID; wNumStrings: SHORTINT; dwDataSize: INTEGER; VAR [nil] lpStrings: PtrSTR; lpRawData: PtrVoid): BOOL;
    (*END ReportEvent;*)

    PROCEDURE DuplicateToken* ["ADVAPI32.dll", ""] (ExistingTokenHandle: HANDLE; ImpersonationLevel: SECURITY_IMPERSONATION_LEVEL; VAR [nil] DuplicateTokenHandle: HANDLE): BOOL;
    (*END DuplicateToken;*)

    PROCEDURE GetKernelObjectSecurity* ["ADVAPI32.dll", ""] (Handle: HANDLE; RequestedInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetKernelObjectSecurity;*)

    PROCEDURE ImpersonateNamedPipeClient* ["ADVAPI32.dll", ""] (hNamedPipe: HANDLE): BOOL;
    (*END ImpersonateNamedPipeClient;*)

    PROCEDURE ImpersonateSelf* ["ADVAPI32.dll", ""] (ImpersonationLevel: SECURITY_IMPERSONATION_LEVEL): BOOL;
    (*END ImpersonateSelf;*)

    PROCEDURE RevertToSelf* ["ADVAPI32.dll", ""] (): BOOL;
    (*END RevertToSelf;*)

    PROCEDURE SetThreadToken* ["ADVAPI32.dll", ""] (VAR [nil] Thread: HANDLE; Token: HANDLE): BOOL;
    (*END SetThreadToken;*)

    PROCEDURE AccessCheck* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; ClientToken: HANDLE; DesiredAccess: SET; VAR [nil] GenericMapping: GENERIC_MAPPING; VAR [nil] PrivilegeSet: PRIVILEGE_SET; VAR [nil] PrivilegeSetLength: INTEGER; VAR [nil] GrantedAccess: INTEGER; VAR [nil] AccessStatus: BOOL): BOOL;
    (*END AccessCheck;*)

    PROCEDURE OpenProcessToken* ["ADVAPI32.dll", ""] (ProcessHandle: HANDLE; DesiredAccess: SET; VAR [nil] TokenHandle: HANDLE): BOOL;
    (*END OpenProcessToken;*)

    PROCEDURE OpenThreadToken* ["ADVAPI32.dll", ""] (ThreadHandle: HANDLE; DesiredAccess: SET; OpenAsSelf: BOOL; VAR [nil] TokenHandle: HANDLE): BOOL;
    (*END OpenThreadToken;*)

    PROCEDURE GetTokenInformation* ["ADVAPI32.dll", ""] (TokenHandle: HANDLE; TokenInformationClass: TOKEN_INFORMATION_CLASS; TokenInformation: PtrVoid; TokenInformationLength: INTEGER; VAR [nil] ReturnLength: INTEGER): BOOL;
    (*END GetTokenInformation;*)

    PROCEDURE SetTokenInformation* ["ADVAPI32.dll", ""] (TokenHandle: HANDLE; TokenInformationClass: TOKEN_INFORMATION_CLASS; TokenInformation: PtrVoid; TokenInformationLength: INTEGER): BOOL;
    (*END SetTokenInformation;*)

    PROCEDURE AdjustTokenPrivileges* ["ADVAPI32.dll", ""] (TokenHandle: HANDLE; DisableAllPrivileges: BOOL; VAR [nil] NewState: TOKEN_PRIVILEGES; BufferLength: INTEGER; VAR [nil] PreviousState: TOKEN_PRIVILEGES; VAR [nil] ReturnLength: INTEGER): BOOL;
    (*END AdjustTokenPrivileges;*)

    PROCEDURE AdjustTokenGroups* ["ADVAPI32.dll", ""] (TokenHandle: HANDLE; ResetToDefault: BOOL; VAR [nil] NewState: TOKEN_GROUPS; BufferLength: INTEGER; VAR [nil] PreviousState: TOKEN_GROUPS; VAR [nil] ReturnLength: INTEGER): BOOL;
    (*END AdjustTokenGroups;*)

    PROCEDURE PrivilegeCheck* ["ADVAPI32.dll", ""] (ClientToken: HANDLE; VAR [nil] RequiredPrivileges: PRIVILEGE_SET; VAR [nil] pfResult: BOOL): BOOL;
    (*END PrivilegeCheck;*)

    PROCEDURE AccessCheckAndAuditAlarmA* ["ADVAPI32.dll", ""] (SubsystemName: PtrSTR; HandleId: PtrVoid; ObjectTypeName: PtrSTR; ObjectName: PtrSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR; DesiredAccess: SET; VAR [nil] GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL; VAR [nil] GrantedAccess: INTEGER; VAR [nil] AccessStatus: BOOL; VAR [nil] pfGenerateOnClose: BOOL): BOOL;
    (*END AccessCheckAndAuditAlarmA;*)

    PROCEDURE AccessCheckAndAuditAlarmW* ["ADVAPI32.dll", ""] (SubsystemName: PtrWSTR; HandleId: PtrVoid; ObjectTypeName: PtrWSTR; ObjectName: PtrWSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR; DesiredAccess: SET; VAR [nil] GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL; VAR [nil] GrantedAccess: INTEGER; VAR [nil] AccessStatus: BOOL; VAR [nil] pfGenerateOnClose: BOOL): BOOL;
    (*END AccessCheckAndAuditAlarmW;*)

    PROCEDURE AccessCheckAndAuditAlarm* ["ADVAPI32.dll", "AccessCheckAndAuditAlarmA"] (SubsystemName: PtrSTR; HandleId: PtrVoid; ObjectTypeName: PtrSTR; ObjectName: PtrSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR; DesiredAccess: SET; VAR [nil] GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL; VAR [nil] GrantedAccess: INTEGER; VAR [nil] AccessStatus: BOOL; VAR [nil] pfGenerateOnClose: BOOL): BOOL;
    (*END AccessCheckAndAuditAlarm;*)

    PROCEDURE ObjectOpenAuditAlarmA* ["ADVAPI32.dll", ""] (SubsystemName: PtrSTR; HandleId: PtrVoid; ObjectTypeName: PtrSTR; ObjectName: PtrSTR; pSecurityDescriptor: PSECURITY_DESCRIPTOR; ClientToken: HANDLE; DesiredAccess: SET; GrantedAccess: INTEGER; VAR [nil] Privileges: PRIVILEGE_SET; ObjectCreation: BOOL; AccessGranted: BOOL; VAR [nil] GenerateOnClose: BOOL): BOOL;
    (*END ObjectOpenAuditAlarmA;*)

    PROCEDURE ObjectOpenAuditAlarmW* ["ADVAPI32.dll", ""] (SubsystemName: PtrWSTR; HandleId: PtrVoid; ObjectTypeName: PtrWSTR; ObjectName: PtrWSTR; pSecurityDescriptor: PSECURITY_DESCRIPTOR; ClientToken: HANDLE; DesiredAccess: SET; GrantedAccess: INTEGER; VAR [nil] Privileges: PRIVILEGE_SET; ObjectCreation: BOOL; AccessGranted: BOOL; VAR [nil] GenerateOnClose: BOOL): BOOL;
    (*END ObjectOpenAuditAlarmW;*)

    PROCEDURE ObjectOpenAuditAlarm* ["ADVAPI32.dll", "ObjectOpenAuditAlarmA"] (SubsystemName: PtrSTR; HandleId: PtrVoid; ObjectTypeName: PtrSTR; ObjectName: PtrSTR; pSecurityDescriptor: PSECURITY_DESCRIPTOR; ClientToken: HANDLE; DesiredAccess: SET; GrantedAccess: INTEGER; VAR [nil] Privileges: PRIVILEGE_SET; ObjectCreation: BOOL; AccessGranted: BOOL; VAR [nil] GenerateOnClose: BOOL): BOOL;
    (*END ObjectOpenAuditAlarm;*)

    PROCEDURE ObjectPrivilegeAuditAlarmA* ["ADVAPI32.dll", ""] (SubsystemName: PtrSTR; HandleId: PtrVoid; ClientToken: HANDLE; DesiredAccess: SET; VAR [nil] Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL;
    (*END ObjectPrivilegeAuditAlarmA;*)

    PROCEDURE ObjectPrivilegeAuditAlarmW* ["ADVAPI32.dll", ""] (SubsystemName: PtrWSTR; HandleId: PtrVoid; ClientToken: HANDLE; DesiredAccess: SET; VAR [nil] Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL;
    (*END ObjectPrivilegeAuditAlarmW;*)

    PROCEDURE ObjectPrivilegeAuditAlarm* ["ADVAPI32.dll", "ObjectPrivilegeAuditAlarmA"] (SubsystemName: PtrSTR; HandleId: PtrVoid; ClientToken: HANDLE; DesiredAccess: SET; VAR [nil] Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL;
    (*END ObjectPrivilegeAuditAlarm;*)

    PROCEDURE ObjectCloseAuditAlarmA* ["ADVAPI32.dll", ""] (SubsystemName: PtrSTR; HandleId: PtrVoid; GenerateOnClose: BOOL): BOOL;
    (*END ObjectCloseAuditAlarmA;*)

    PROCEDURE ObjectCloseAuditAlarmW* ["ADVAPI32.dll", ""] (SubsystemName: PtrWSTR; HandleId: PtrVoid; GenerateOnClose: BOOL): BOOL;
    (*END ObjectCloseAuditAlarmW;*)

    PROCEDURE ObjectCloseAuditAlarm* ["ADVAPI32.dll", "ObjectCloseAuditAlarmA"] (SubsystemName: PtrSTR; HandleId: PtrVoid; GenerateOnClose: BOOL): BOOL;
    (*END ObjectCloseAuditAlarm;*)

    PROCEDURE PrivilegedServiceAuditAlarmA* ["ADVAPI32.dll", ""] (SubsystemName: PtrSTR; ServiceName: PtrSTR; ClientToken: HANDLE; VAR [nil] Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL;
    (*END PrivilegedServiceAuditAlarmA;*)

    PROCEDURE PrivilegedServiceAuditAlarmW* ["ADVAPI32.dll", ""] (SubsystemName: PtrWSTR; ServiceName: PtrWSTR; ClientToken: HANDLE; VAR [nil] Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL;
    (*END PrivilegedServiceAuditAlarmW;*)

    PROCEDURE PrivilegedServiceAuditAlarm* ["ADVAPI32.dll", "PrivilegedServiceAuditAlarmA"] (SubsystemName: PtrSTR; ServiceName: PtrSTR; ClientToken: HANDLE; VAR [nil] Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL;
    (*END PrivilegedServiceAuditAlarm;*)

    PROCEDURE IsValidSid* ["ADVAPI32.dll", ""] (pSid: PSID): BOOL;
    (*END IsValidSid;*)

    PROCEDURE EqualSid* ["ADVAPI32.dll", ""] (pSid1: PSID; pSid2: PSID): BOOL;
    (*END EqualSid;*)

    PROCEDURE EqualPrefixSid* ["ADVAPI32.dll", ""] (pSid1: PSID; pSid2: PSID): BOOL;
    (*END EqualPrefixSid;*)

    PROCEDURE GetSidLengthRequired* ["ADVAPI32.dll", ""] (nSubAuthorityCount: SHORTCHAR): INTEGER;
    (*END GetSidLengthRequired;*)

    PROCEDURE AllocateAndInitializeSid* ["ADVAPI32.dll", ""] (VAR [nil] pIdentifierAuthority: SID_IDENTIFIER_AUTHORITY; nSubAuthorityCount: SHORTCHAR; nSubAuthority0: INTEGER; nSubAuthority1: INTEGER; nSubAuthority2: INTEGER; nSubAuthority3: INTEGER; nSubAuthority4: INTEGER; nSubAuthority5: INTEGER; nSubAuthority6: INTEGER; nSubAuthority7: INTEGER; VAR [nil] pSid: PSID): BOOL;
    (*END AllocateAndInitializeSid;*)

    PROCEDURE FreeSid* ["ADVAPI32.dll", ""] (pSid: PSID): PtrVoid;
    (*END FreeSid;*)

    PROCEDURE InitializeSid* ["ADVAPI32.dll", ""] (Sid: PSID; VAR [nil] pIdentifierAuthority: SID_IDENTIFIER_AUTHORITY; nSubAuthorityCount: SHORTCHAR): BOOL;
    (*END InitializeSid;*)

    PROCEDURE GetSidIdentifierAuthority* ["ADVAPI32.dll", ""] (pSid: PSID): PtrSID_IDENTIFIER_AUTHORITY;
    (*END GetSidIdentifierAuthority;*)

    PROCEDURE GetSidSubAuthority* ["ADVAPI32.dll", ""] (pSid: PSID; nSubAuthority: INTEGER): RetGetSidSubAuthority;
    (*END GetSidSubAuthority;*)

    PROCEDURE GetSidSubAuthorityCount* ["ADVAPI32.dll", ""] (pSid: PSID): PtrSTR;
    (*END GetSidSubAuthorityCount;*)

    PROCEDURE GetLengthSid* ["ADVAPI32.dll", ""] (pSid: PSID): INTEGER;
    (*END GetLengthSid;*)

    PROCEDURE CopySid* ["ADVAPI32.dll", ""] (nDestinationSidLength: INTEGER; pDestinationSid: PSID; pSourceSid: PSID): BOOL;
    (*END CopySid;*)

    PROCEDURE AreAllAccessesGranted* ["ADVAPI32.dll", ""] (GrantedAccess: INTEGER; DesiredAccess: SET): BOOL;
    (*END AreAllAccessesGranted;*)

    PROCEDURE AreAnyAccessesGranted* ["ADVAPI32.dll", ""] (GrantedAccess: INTEGER; DesiredAccess: SET): BOOL;
    (*END AreAnyAccessesGranted;*)

    PROCEDURE MapGenericMask* ["ADVAPI32.dll", ""] (VAR [nil] AccessMask: INTEGER; VAR [nil] GenericMapping: GENERIC_MAPPING);
    (*END MapGenericMask;*)

    PROCEDURE IsValidAcl* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL): BOOL;
    (*END IsValidAcl;*)

    PROCEDURE InitializeAcl* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; nAclLength: INTEGER; dwAclRevision: INTEGER): BOOL;
    (*END InitializeAcl;*)

    PROCEDURE GetAclInformation* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; pAclInformation: PtrVoid; nAclInformationLength: INTEGER; dwAclInformationClass: ACL_INFORMATION_CLASS): BOOL;
    (*END GetAclInformation;*)

    PROCEDURE SetAclInformation* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; pAclInformation: PtrVoid; nAclInformationLength: INTEGER; dwAclInformationClass: ACL_INFORMATION_CLASS): BOOL;
    (*END SetAclInformation;*)

    PROCEDURE AddAce* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; dwAceRevision: INTEGER; dwStartingAceIndex: INTEGER; pAceList: PtrVoid; nAceListLength: INTEGER): BOOL;
    (*END AddAce;*)

    PROCEDURE DeleteAce* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; dwAceIndex: INTEGER): BOOL;
    (*END DeleteAce;*)

    PROCEDURE GetAce* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; dwAceIndex: INTEGER; pAce: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid): BOOL;
    (*END GetAce;*)

    PROCEDURE AddAccessAllowedAce* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; dwAceRevision: INTEGER; AccessMask: INTEGER; pSid: PSID): BOOL;
    (*END AddAccessAllowedAce;*)

    PROCEDURE AddAccessDeniedAce* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; dwAceRevision: INTEGER; AccessMask: INTEGER; pSid: PSID): BOOL;
    (*END AddAccessDeniedAce;*)

    PROCEDURE AddAuditAccessAce* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; dwAceRevision: INTEGER; dwAccessMask: INTEGER; pSid: PSID; bAuditSuccess: BOOL; bAuditFailure: BOOL): BOOL;
    (*END AddAuditAccessAce;*)

    PROCEDURE FindFirstFreeAce* ["ADVAPI32.dll", ""] (VAR [nil] pAcl: ACL; pAce: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid): BOOL;
    (*END FindFirstFreeAce;*)

    PROCEDURE InitializeSecurityDescriptor* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; dwRevision: INTEGER): BOOL;
    (*END InitializeSecurityDescriptor;*)

    PROCEDURE IsValidSecurityDescriptor* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL;
    (*END IsValidSecurityDescriptor;*)

    PROCEDURE GetSecurityDescriptorLength* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR): INTEGER;
    (*END GetSecurityDescriptorLength;*)

    PROCEDURE GetSecurityDescriptorControl* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] pControl: SHORTINT; VAR [nil] lpdwRevision: INTEGER): BOOL;
    (*END GetSecurityDescriptorControl;*)

    PROCEDURE SetSecurityDescriptorDacl* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; bDaclPresent: BOOL; VAR [nil] pDacl: ACL; bDaclDefaulted: BOOL): BOOL;
    (*END SetSecurityDescriptorDacl;*)

    PROCEDURE GetSecurityDescriptorDacl* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] lpbDaclPresent: BOOL; VAR [nil] pDacl: PtrACL; VAR [nil] lpbDaclDefaulted: BOOL): BOOL;
    (*END GetSecurityDescriptorDacl;*)

    PROCEDURE SetSecurityDescriptorSacl* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; bSaclPresent: BOOL; VAR [nil] pSacl: ACL; bSaclDefaulted: BOOL): BOOL;
    (*END SetSecurityDescriptorSacl;*)

    PROCEDURE GetSecurityDescriptorSacl* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] lpbSaclPresent: BOOL; VAR [nil] pSacl: PtrACL; VAR [nil] lpbSaclDefaulted: BOOL): BOOL;
    (*END GetSecurityDescriptorSacl;*)

    PROCEDURE SetSecurityDescriptorOwner* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; pOwner: PSID; bOwnerDefaulted: BOOL): BOOL;
    (*END SetSecurityDescriptorOwner;*)

    PROCEDURE GetSecurityDescriptorOwner* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] pOwner: PSID; VAR [nil] lpbOwnerDefaulted: BOOL): BOOL;
    (*END GetSecurityDescriptorOwner;*)

    PROCEDURE SetSecurityDescriptorGroup* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; pGroup: PSID; bGroupDefaulted: BOOL): BOOL;
    (*END SetSecurityDescriptorGroup;*)

    PROCEDURE GetSecurityDescriptorGroup* ["ADVAPI32.dll", ""] (pSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] pGroup: PSID; VAR [nil] lpbGroupDefaulted: BOOL): BOOL;
    (*END GetSecurityDescriptorGroup;*)

    PROCEDURE CreatePrivateObjectSecurity* ["ADVAPI32.dll", ""] (ParentDescriptor: PSECURITY_DESCRIPTOR; CreatorDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] NewDescriptor: PSECURITY_DESCRIPTOR; IsDirectoryObject: BOOL; Token: HANDLE; VAR [nil] GenericMapping: GENERIC_MAPPING): BOOL;
    (*END CreatePrivateObjectSecurity;*)

    PROCEDURE SetPrivateObjectSecurity* ["ADVAPI32.dll", ""] (SecurityInformation: SECURITY_INFORMATION; ModificationDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] ObjectsSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] GenericMapping: GENERIC_MAPPING; Token: HANDLE): BOOL;
    (*END SetPrivateObjectSecurity;*)

    PROCEDURE GetPrivateObjectSecurity* ["ADVAPI32.dll", ""] (ObjectDescriptor: PSECURITY_DESCRIPTOR; SecurityInformation: SECURITY_INFORMATION; ResultantDescriptor: PSECURITY_DESCRIPTOR; DescriptorLength: INTEGER; VAR [nil] ReturnLength: INTEGER): BOOL;
    (*END GetPrivateObjectSecurity;*)

    PROCEDURE DestroyPrivateObjectSecurity* ["ADVAPI32.dll", ""] (VAR [nil] ObjectDescriptor: PSECURITY_DESCRIPTOR): BOOL;
    (*END DestroyPrivateObjectSecurity;*)

    PROCEDURE MakeSelfRelativeSD* ["ADVAPI32.dll", ""] (pAbsoluteSecurityDescriptor: PSECURITY_DESCRIPTOR; pSelfRelativeSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] lpdwBufferLength: INTEGER): BOOL;
    (*END MakeSelfRelativeSD;*)

    PROCEDURE MakeAbsoluteSD* ["ADVAPI32.dll", ""] (pSelfRelativeSecurityDescriptor: PSECURITY_DESCRIPTOR; pAbsoluteSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] lpdwAbsoluteSecurityDescriptorSize: INTEGER; VAR [nil] pDacl: ACL; VAR [nil] lpdwDaclSize: INTEGER; VAR [nil] pSacl: ACL; VAR [nil] lpdwSaclSize: INTEGER; pOwner: PSID; VAR [nil] lpdwOwnerSize: INTEGER; pPrimaryGroup: PSID; VAR [nil] lpdwPrimaryGroupSize: INTEGER): BOOL;
    (*END MakeAbsoluteSD;*)

    PROCEDURE SetFileSecurityA* ["ADVAPI32.dll", ""] (lpFileName: PtrSTR; SecurityInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL;
    (*END SetFileSecurityA;*)

    PROCEDURE SetFileSecurityW* ["ADVAPI32.dll", ""] (lpFileName: PtrWSTR; SecurityInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL;
    (*END SetFileSecurityW;*)

    PROCEDURE SetFileSecurity* ["ADVAPI32.dll", "SetFileSecurityA"] (lpFileName: PtrSTR; SecurityInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL;
    (*END SetFileSecurity;*)

    PROCEDURE GetFileSecurityA* ["ADVAPI32.dll", ""] (lpFileName: PtrSTR; RequestedInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetFileSecurityA;*)

    PROCEDURE GetFileSecurityW* ["ADVAPI32.dll", ""] (lpFileName: PtrWSTR; RequestedInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetFileSecurityW;*)

    PROCEDURE GetFileSecurity* ["ADVAPI32.dll", "GetFileSecurityA"] (lpFileName: PtrSTR; RequestedInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetFileSecurity;*)

    PROCEDURE SetKernelObjectSecurity* ["ADVAPI32.dll", ""] (Handle: HANDLE; SecurityInformation: SECURITY_INFORMATION; SecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL;
    (*END SetKernelObjectSecurity;*)

    PROCEDURE FindFirstChangeNotificationA* (lpPathName: PtrSTR; bWatchSubtree: BOOL; dwNotifyFilter: SET): HANDLE;
    (*END FindFirstChangeNotificationA;*)

    PROCEDURE FindFirstChangeNotificationW* (lpPathName: PtrWSTR; bWatchSubtree: BOOL; dwNotifyFilter: SET): HANDLE;
    (*END FindFirstChangeNotificationW;*)

    PROCEDURE FindFirstChangeNotification* ["FindFirstChangeNotificationA"] (lpPathName: PtrSTR; bWatchSubtree: BOOL; dwNotifyFilter: SET): HANDLE;
    (*END FindFirstChangeNotification;*)

    PROCEDURE FindNextChangeNotification* (hChangeHandle: HANDLE): BOOL;
    (*END FindNextChangeNotification;*)

    PROCEDURE FindCloseChangeNotification* (hChangeHandle: HANDLE): BOOL;
    (*END FindCloseChangeNotification;*)

    PROCEDURE ReadDirectoryChangesW* (hDirectory: HANDLE; lpBuffer: PtrVoid; nBufferLength: INTEGER; bWatchSubtree: BOOL; dwNotifyFilter: SET; VAR [nil] lpBytesReturned: INTEGER; VAR [nil] lpOverlapped: OVERLAPPED; lpCompletionRoutine: OVERLAPPED_COMPLETION_ROUTINE): BOOL;
    (*END ReadDirectoryChangesW;*)

    PROCEDURE VirtualLock* (lpAddress: PtrVoid; dwSize: INTEGER): BOOL;
    (*END VirtualLock;*)

    PROCEDURE VirtualUnlock* (lpAddress: PtrVoid; dwSize: INTEGER): BOOL;
    (*END VirtualUnlock;*)

    PROCEDURE MapViewOfFileEx* (hFileMappingObject: HANDLE; dwDesiredAccess: SET; dwFileOffsetHigh: INTEGER; dwFileOffsetLow: INTEGER; dwNumberOfBytesToMap: INTEGER; lpBaseAddress: PtrVoid): PtrVoid;
    (*END MapViewOfFileEx;*)

    PROCEDURE SetPriorityClass* (hProcess: HANDLE; dwPriorityClass: INTEGER): BOOL;
    (*END SetPriorityClass;*)

    PROCEDURE GetPriorityClass* (hProcess: HANDLE): INTEGER;
    (*END GetPriorityClass;*)

    PROCEDURE IsBadReadPtr* (lp: PtrVoid; ucb: INTEGER): BOOL;
    (*END IsBadReadPtr;*)

    PROCEDURE IsBadWritePtr* (lp: PtrVoid; ucb: INTEGER): BOOL;
    (*END IsBadWritePtr;*)

    PROCEDURE IsBadHugeReadPtr* (lp: PtrVoid; ucb: INTEGER): BOOL;
    (*END IsBadHugeReadPtr;*)

    PROCEDURE IsBadHugeWritePtr* (lp: PtrVoid; ucb: INTEGER): BOOL;
    (*END IsBadHugeWritePtr;*)

    PROCEDURE IsBadCodePtr* (lpfn: FARPROC): BOOL;
    (*END IsBadCodePtr;*)

    PROCEDURE IsBadStringPtrA* (lpsz: PtrSTR; ucchMax: INTEGER): BOOL;
    (*END IsBadStringPtrA;*)

    PROCEDURE IsBadStringPtrW* (lpsz: PtrWSTR; ucchMax: INTEGER): BOOL;
    (*END IsBadStringPtrW;*)

    PROCEDURE IsBadStringPtr* ["IsBadStringPtrA"] (lpsz: PtrSTR; ucchMax: INTEGER): BOOL;
    (*END IsBadStringPtr;*)

    PROCEDURE LookupAccountSidA* ["ADVAPI32.dll", ""] (lpSystemName: PtrSTR; Sid: PSID; Name: PtrSTR; VAR [nil] cbName: INTEGER; ReferencedDomainName: PtrSTR; VAR [nil] cbReferencedDomainName: INTEGER; VAR [nil] peUse: SID_NAME_USE): BOOL;
    (*END LookupAccountSidA;*)

    PROCEDURE LookupAccountSidW* ["ADVAPI32.dll", ""] (lpSystemName: PtrWSTR; Sid: PSID; Name: PtrWSTR; VAR [nil] cbName: INTEGER; ReferencedDomainName: PtrWSTR; VAR [nil] cbReferencedDomainName: INTEGER; VAR [nil] peUse: SID_NAME_USE): BOOL;
    (*END LookupAccountSidW;*)

    PROCEDURE LookupAccountSid* ["ADVAPI32.dll", "LookupAccountSidA"] (lpSystemName: PtrSTR; Sid: PSID; Name: PtrSTR; VAR [nil] cbName: INTEGER; ReferencedDomainName: PtrSTR; VAR [nil] cbReferencedDomainName: INTEGER; VAR [nil] peUse: SID_NAME_USE): BOOL;
    (*END LookupAccountSid;*)

    PROCEDURE LookupAccountNameA* ["ADVAPI32.dll", ""] (lpSystemName: PtrSTR; lpAccountName: PtrSTR; Sid: PSID; VAR [nil] cbSid: INTEGER; ReferencedDomainName: PtrSTR; VAR [nil] cbReferencedDomainName: INTEGER; VAR [nil] peUse: SID_NAME_USE): BOOL;
    (*END LookupAccountNameA;*)

    PROCEDURE LookupAccountNameW* ["ADVAPI32.dll", ""] (lpSystemName: PtrWSTR; lpAccountName: PtrWSTR; Sid: PSID; VAR [nil] cbSid: INTEGER; ReferencedDomainName: PtrWSTR; VAR [nil] cbReferencedDomainName: INTEGER; VAR [nil] peUse: SID_NAME_USE): BOOL;
    (*END LookupAccountNameW;*)

    PROCEDURE LookupAccountName* ["ADVAPI32.dll", "LookupAccountNameA"] (lpSystemName: PtrSTR; lpAccountName: PtrSTR; Sid: PSID; VAR [nil] cbSid: INTEGER; ReferencedDomainName: PtrSTR; VAR [nil] cbReferencedDomainName: INTEGER; VAR [nil] peUse: SID_NAME_USE): BOOL;
    (*END LookupAccountName;*)

    PROCEDURE LookupPrivilegeValueA* ["ADVAPI32.dll", ""] (lpSystemName: PtrSTR; lpName: PtrSTR; VAR [nil] lpLuid: LONGINT): BOOL;
    (*END LookupPrivilegeValueA;*)

    PROCEDURE LookupPrivilegeValueW* ["ADVAPI32.dll", ""] (lpSystemName: PtrWSTR; lpName: PtrWSTR; VAR [nil] lpLuid: LONGINT): BOOL;
    (*END LookupPrivilegeValueW;*)

    PROCEDURE LookupPrivilegeValue* ["ADVAPI32.dll", "LookupPrivilegeValueA"] (lpSystemName: PtrSTR; lpName: PtrSTR; VAR [nil] lpLuid: LONGINT): BOOL;
    (*END LookupPrivilegeValue;*)

    PROCEDURE LookupPrivilegeNameA* ["ADVAPI32.dll", ""] (lpSystemName: PtrSTR; VAR [nil] lpLuid: LONGINT; lpName: PtrSTR; VAR [nil] cbName: INTEGER): BOOL;
    (*END LookupPrivilegeNameA;*)

    PROCEDURE LookupPrivilegeNameW* ["ADVAPI32.dll", ""] (lpSystemName: PtrWSTR; VAR [nil] lpLuid: LONGINT; lpName: PtrWSTR; VAR [nil] cbName: INTEGER): BOOL;
    (*END LookupPrivilegeNameW;*)

    PROCEDURE LookupPrivilegeName* ["ADVAPI32.dll", "LookupPrivilegeNameA"] (lpSystemName: PtrSTR; VAR [nil] lpLuid: LONGINT; lpName: PtrSTR; VAR [nil] cbName: INTEGER): BOOL;
    (*END LookupPrivilegeName;*)

    PROCEDURE LookupPrivilegeDisplayNameA* ["ADVAPI32.dll", ""] (lpSystemName: PtrSTR; lpName: PtrSTR; lpDisplayName: PtrSTR; VAR [nil] cbDisplayName: INTEGER; VAR [nil] lpLanguageId: INTEGER): BOOL;
    (*END LookupPrivilegeDisplayNameA;*)

    PROCEDURE LookupPrivilegeDisplayNameW* ["ADVAPI32.dll", ""] (lpSystemName: PtrWSTR; lpName: PtrWSTR; lpDisplayName: PtrWSTR; VAR [nil] cbDisplayName: INTEGER; VAR [nil] lpLanguageId: INTEGER): BOOL;
    (*END LookupPrivilegeDisplayNameW;*)

    PROCEDURE LookupPrivilegeDisplayName* ["ADVAPI32.dll", "LookupPrivilegeDisplayNameA"] (lpSystemName: PtrSTR; lpName: PtrSTR; lpDisplayName: PtrSTR; VAR [nil] cbDisplayName: INTEGER; VAR [nil] lpLanguageId: INTEGER): BOOL;
    (*END LookupPrivilegeDisplayName;*)

    PROCEDURE AllocateLocallyUniqueId* ["ADVAPI32.dll", ""] (VAR [nil] Luid: LONGINT): BOOL;
    (*END AllocateLocallyUniqueId;*)

    PROCEDURE BuildCommDCBA* (lpDef: PtrSTR; VAR [nil] lpDCB: DCB): BOOL;
    (*END BuildCommDCBA;*)

    PROCEDURE BuildCommDCBW* (lpDef: PtrWSTR; VAR [nil] lpDCB: DCB): BOOL;
    (*END BuildCommDCBW;*)

    PROCEDURE BuildCommDCB* ["BuildCommDCBA"] (lpDef: PtrSTR; VAR [nil] lpDCB: DCB): BOOL;
    (*END BuildCommDCB;*)

    PROCEDURE BuildCommDCBAndTimeoutsA* (lpDef: PtrSTR; VAR [nil] lpDCB: DCB; VAR [nil] lpCommTimeouts: COMMTIMEOUTS): BOOL;
    (*END BuildCommDCBAndTimeoutsA;*)

    PROCEDURE BuildCommDCBAndTimeoutsW* (lpDef: PtrWSTR; VAR [nil] lpDCB: DCB; VAR [nil] lpCommTimeouts: COMMTIMEOUTS): BOOL;
    (*END BuildCommDCBAndTimeoutsW;*)

    PROCEDURE BuildCommDCBAndTimeouts* ["BuildCommDCBAndTimeoutsA"] (lpDef: PtrSTR; VAR [nil] lpDCB: DCB; VAR [nil] lpCommTimeouts: COMMTIMEOUTS): BOOL;
    (*END BuildCommDCBAndTimeouts;*)

    PROCEDURE CommConfigDialogA* (lpszName: PtrSTR; hWnd: HWND; VAR [nil] lpCC: COMMCONFIG): BOOL;
    (*END CommConfigDialogA;*)

    PROCEDURE CommConfigDialogW* (lpszName: PtrWSTR; hWnd: HWND; VAR [nil] lpCC: COMMCONFIG): BOOL;
    (*END CommConfigDialogW;*)

    PROCEDURE CommConfigDialog* ["CommConfigDialogA"] (lpszName: PtrSTR; hWnd: HWND; VAR [nil] lpCC: COMMCONFIG): BOOL;
    (*END CommConfigDialog;*)

    PROCEDURE GetDefaultCommConfigA* (lpszName: PtrSTR; VAR [nil] lpCC: COMMCONFIG; VAR [nil] lpdwSize: INTEGER): BOOL;
    (*END GetDefaultCommConfigA;*)

    PROCEDURE GetDefaultCommConfigW* (lpszName: PtrWSTR; VAR [nil] lpCC: COMMCONFIG; VAR [nil] lpdwSize: INTEGER): BOOL;
    (*END GetDefaultCommConfigW;*)

    PROCEDURE GetDefaultCommConfig* ["GetDefaultCommConfigA"] (lpszName: PtrSTR; VAR [nil] lpCC: COMMCONFIG; VAR [nil] lpdwSize: INTEGER): BOOL;
    (*END GetDefaultCommConfig;*)

    PROCEDURE SetDefaultCommConfigA* (lpszName: PtrSTR; VAR [nil] lpCC: COMMCONFIG; dwSize: INTEGER): BOOL;
    (*END SetDefaultCommConfigA;*)

    PROCEDURE SetDefaultCommConfigW* (lpszName: PtrWSTR; VAR [nil] lpCC: COMMCONFIG; dwSize: INTEGER): BOOL;
    (*END SetDefaultCommConfigW;*)

    PROCEDURE SetDefaultCommConfig* ["SetDefaultCommConfigA"] (lpszName: PtrSTR; VAR [nil] lpCC: COMMCONFIG; dwSize: INTEGER): BOOL;
    (*END SetDefaultCommConfig;*)

    PROCEDURE GetComputerNameA* (lpBuffer: PtrSTR; VAR [nil] nSize: INTEGER): BOOL;
    (*END GetComputerNameA;*)

    PROCEDURE GetComputerNameW* (lpBuffer: PtrWSTR; VAR [nil] nSize: INTEGER): BOOL;
    (*END GetComputerNameW;*)

    PROCEDURE GetComputerName* ["GetComputerNameA"] (lpBuffer: PtrSTR; VAR [nil] nSize: INTEGER): BOOL;
    (*END GetComputerName;*)

    PROCEDURE SetComputerNameA* (lpComputerName: PtrSTR): BOOL;
    (*END SetComputerNameA;*)

    PROCEDURE SetComputerNameW* (lpComputerName: PtrWSTR): BOOL;
    (*END SetComputerNameW;*)

    PROCEDURE SetComputerName* ["SetComputerNameA"] (lpComputerName: PtrSTR): BOOL;
    (*END SetComputerName;*)

    PROCEDURE GetUserNameA* ["ADVAPI32.dll", ""] (lpBuffer: PtrSTR; VAR [nil] nSize: INTEGER): BOOL;
    (*END GetUserNameA;*)

    PROCEDURE GetUserNameW* ["ADVAPI32.dll", ""] (lpBuffer: PtrWSTR; VAR [nil] nSize: INTEGER): BOOL;
    (*END GetUserNameW;*)

    PROCEDURE GetUserName* ["ADVAPI32.dll", "GetUserNameA"] (lpBuffer: PtrSTR; VAR [nil] nSize: INTEGER): BOOL;
    (*END GetUserName;*)

    PROCEDURE LogonUserA* ["ADVAPI32.dll", ""] (lpszUsername: PtrSTR; lpszDomain: PtrSTR; lpszPassword: PtrSTR; dwLogonType: INTEGER; dwLogonProvider: INTEGER; VAR [nil] phToken: HANDLE): BOOL;
    (*END LogonUserA;*)

    PROCEDURE LogonUserW* ["ADVAPI32.dll", ""] (lpszUsername: PtrWSTR; lpszDomain: PtrWSTR; lpszPassword: PtrWSTR; dwLogonType: INTEGER; dwLogonProvider: INTEGER; VAR [nil] phToken: HANDLE): BOOL;
    (*END LogonUserW;*)

    PROCEDURE LogonUser* ["ADVAPI32.dll", "LogonUserA"] (lpszUsername: PtrSTR; lpszDomain: PtrSTR; lpszPassword: PtrSTR; dwLogonType: INTEGER; dwLogonProvider: INTEGER; VAR [nil] phToken: HANDLE): BOOL;
    (*END LogonUser;*)

    PROCEDURE ImpersonateLoggedOnUser* ["ADVAPI32.dll", ""] (hToken: HANDLE): BOOL;
    (*END ImpersonateLoggedOnUser;*)

    PROCEDURE CreateProcessAsUserA* ["ADVAPI32.dll", ""] (hToken: HANDLE; lpApplicationName: PtrSTR; lpCommandLine: PtrSTR; VAR [nil] lpProcessAttributes: SECURITY_ATTRIBUTES; VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; bInheritHandles: BOOL; dwCreationFlags: SET; lpEnvironment: PtrVoid; lpCurrentDirectory: PtrSTR; VAR [nil] lpStartupInfo: STARTUPINFOA; VAR [nil] lpProcessInformation: PROCESS_INFORMATION): BOOL;
    (*END CreateProcessAsUserA;*)

    PROCEDURE CreateProcessAsUserW* ["ADVAPI32.dll", ""] (hToken: HANDLE; lpApplicationName: PtrWSTR; lpCommandLine: PtrWSTR; VAR [nil] lpProcessAttributes: SECURITY_ATTRIBUTES; VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; bInheritHandles: BOOL; dwCreationFlags: SET; lpEnvironment: PtrVoid; lpCurrentDirectory: PtrWSTR; VAR [nil] lpStartupInfo: STARTUPINFOW; VAR [nil] lpProcessInformation: PROCESS_INFORMATION): BOOL;
    (*END CreateProcessAsUserW;*)

    PROCEDURE CreateProcessAsUser* ["ADVAPI32.dll", "CreateProcessAsUserA"] (hToken: HANDLE; lpApplicationName: PtrSTR; lpCommandLine: PtrSTR; VAR [nil] lpProcessAttributes: SECURITY_ATTRIBUTES; VAR [nil] lpThreadAttributes: SECURITY_ATTRIBUTES; bInheritHandles: BOOL; dwCreationFlags: SET; lpEnvironment: PtrVoid; lpCurrentDirectory: PtrSTR; VAR [nil] lpStartupInfo: STARTUPINFOA; VAR [nil] lpProcessInformation: PROCESS_INFORMATION): BOOL;
    (*END CreateProcessAsUser;*)

    PROCEDURE GetCurrentHwProfileA* ["ADVAPI32.dll", ""] (VAR [nil] lpHwProfileInfo: HW_PROFILE_INFOA): BOOL;
    (*END GetCurrentHwProfileA;*)

    PROCEDURE GetCurrentHwProfileW* ["ADVAPI32.dll", ""] (VAR [nil] lpHwProfileInfo: HW_PROFILE_INFOW): BOOL;
    (*END GetCurrentHwProfileW;*)

    PROCEDURE GetCurrentHwProfile* ["ADVAPI32.dll", "GetCurrentHwProfileA"] (VAR [nil] lpHwProfileInfo: HW_PROFILE_INFOA): BOOL;
    (*END GetCurrentHwProfile;*)

    PROCEDURE QueryPerformanceCounter* (VAR [nil] lpPerformanceCount: LONGINT): BOOL;
    (*END QueryPerformanceCounter;*)

    PROCEDURE QueryPerformanceFrequency* (VAR [nil] lpFrequency: LONGINT): BOOL;
    (*END QueryPerformanceFrequency;*)

    PROCEDURE GetVersionExA* (VAR [nil] lpVersionInformation: OSVERSIONINFOA): BOOL;
    (*END GetVersionExA;*)

    PROCEDURE GetVersionExW* (VAR [nil] lpVersionInformation: OSVERSIONINFOW): BOOL;
    (*END GetVersionExW;*)

    PROCEDURE GetVersionEx* ["GetVersionExA"] (VAR [nil] lpVersionInformation: OSVERSIONINFOA): BOOL;
    (*END GetVersionEx;*)

    PROCEDURE GetSystemPowerStatus* (VAR [nil] lpSystemPowerStatus: SYSTEM_POWER_STATUS): BOOL;
    (*END GetSystemPowerStatus;*)

    PROCEDURE SetSystemPowerState* (fSuspend: BOOL; fForce: BOOL): BOOL;
    (*END SetSystemPowerState;*)

    PROCEDURE AddFontResourceA* ["GDI32.dll", ""] (p0: PtrSTR): INTEGER;
    (*END AddFontResourceA;*)

    PROCEDURE AddFontResourceW* ["GDI32.dll", ""] (p0: PtrWSTR): INTEGER;
    (*END AddFontResourceW;*)

    PROCEDURE AddFontResource* ["GDI32.dll", "AddFontResourceA"] (p0: PtrSTR): INTEGER;
    (*END AddFontResource;*)

    PROCEDURE AnimatePalette* ["GDI32.dll", ""] (p0: HPALETTE; p1: INTEGER; p2: INTEGER; VAR [nil] p3: PALETTEENTRY): BOOL;
    (*END AnimatePalette;*)

    PROCEDURE Arc* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER): BOOL;
    (*END Arc;*)

    PROCEDURE BitBlt* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: HDC; p6: INTEGER; p7: INTEGER; p8: INTEGER): BOOL;
    (*END BitBlt;*)

    PROCEDURE CancelDC* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END CancelDC;*)

    PROCEDURE Chord* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER): BOOL;
    (*END Chord;*)

    PROCEDURE ChoosePixelFormat* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: PIXELFORMATDESCRIPTOR): INTEGER;
    (*END ChoosePixelFormat;*)

    PROCEDURE CloseMetaFile* ["GDI32.dll", ""] (p0: HDC): HMETAFILE;
    (*END CloseMetaFile;*)

    PROCEDURE CombineRgn* ["GDI32.dll", ""] (p0: HRGN; p1: HRGN; p2: HRGN; p3: INTEGER): INTEGER;
    (*END CombineRgn;*)

    PROCEDURE CopyMetaFileA* ["GDI32.dll", ""] (p0: HMETAFILE; p1: PtrSTR): HMETAFILE;
    (*END CopyMetaFileA;*)

    PROCEDURE CopyMetaFileW* ["GDI32.dll", ""] (p0: HMETAFILE; p1: PtrWSTR): HMETAFILE;
    (*END CopyMetaFileW;*)

    PROCEDURE CopyMetaFile* ["GDI32.dll", "CopyMetaFileA"] (p0: HMETAFILE; p1: PtrSTR): HMETAFILE;
    (*END CopyMetaFile;*)

    PROCEDURE CreateBitmap* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: PtrVoid): HBITMAP;
    (*END CreateBitmap;*)

    PROCEDURE CreateBitmapIndirect* ["GDI32.dll", ""] (VAR [nil] p0: BITMAP): HBITMAP;
    (*END CreateBitmapIndirect;*)

    PROCEDURE CreateBrushIndirect* ["GDI32.dll", ""] (VAR [nil] p0: LOGBRUSH): HBRUSH;
    (*END CreateBrushIndirect;*)

    PROCEDURE CreateCompatibleBitmap* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER): HBITMAP;
    (*END CreateCompatibleBitmap;*)

    PROCEDURE CreateDiscardableBitmap* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER): HBITMAP;
    (*END CreateDiscardableBitmap;*)

    PROCEDURE CreateCompatibleDC* ["GDI32.dll", ""] (p0: HDC): HDC;
    (*END CreateCompatibleDC;*)

    PROCEDURE CreateDCA* ["GDI32.dll", ""] (p0: PtrSTR; p1: PtrSTR; p2: PtrSTR; VAR [nil] p3: DEVMODEA): HDC;
    (*END CreateDCA;*)

    PROCEDURE CreateDCW* ["GDI32.dll", ""] (p0: PtrWSTR; p1: PtrWSTR; p2: PtrWSTR; VAR [nil] p3: DEVMODEW): HDC;
    (*END CreateDCW;*)

    PROCEDURE CreateDC* ["GDI32.dll", "CreateDCA"] (p0: PtrSTR; p1: PtrSTR; p2: PtrSTR; VAR [nil] p3: DEVMODEA): HDC;
    (*END CreateDC;*)

    PROCEDURE CreateDIBitmap* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: BITMAPINFOHEADER; p2: INTEGER; p3: PtrVoid; VAR [nil] p4: BITMAPINFO; p5: INTEGER): HBITMAP;
    (*END CreateDIBitmap;*)

    PROCEDURE CreateDIBPatternBrush* ["GDI32.dll", ""] (p0: HGLOBAL; p1: INTEGER): HBRUSH;
    (*END CreateDIBPatternBrush;*)

    PROCEDURE CreateDIBPatternBrushPt* ["GDI32.dll", ""] (p0: PtrVoid; p1: INTEGER): HBRUSH;
    (*END CreateDIBPatternBrushPt;*)

    PROCEDURE CreateEllipticRgn* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER): HRGN;
    (*END CreateEllipticRgn;*)

    PROCEDURE CreateEllipticRgnIndirect* ["GDI32.dll", ""] (VAR [nil] p0: RECT): HRGN;
    (*END CreateEllipticRgnIndirect;*)

    PROCEDURE CreateFontIndirectA* ["GDI32.dll", ""] (VAR [nil] p0: LOGFONTA): HFONT;
    (*END CreateFontIndirectA;*)

    PROCEDURE CreateFontIndirectW* ["GDI32.dll", ""] (VAR [nil] p0: LOGFONTW): HFONT;
    (*END CreateFontIndirectW;*)

    PROCEDURE CreateFontIndirect* ["GDI32.dll", "CreateFontIndirectA"] (VAR [nil] p0: LOGFONTA): HFONT;
    (*END CreateFontIndirect;*)

    PROCEDURE CreateFontA* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: INTEGER; p10: INTEGER; p11: INTEGER; p12: INTEGER; p13: PtrSTR): HFONT;
    (*END CreateFontA;*)

    PROCEDURE CreateFontW* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: INTEGER; p10: INTEGER; p11: INTEGER; p12: INTEGER; p13: PtrWSTR): HFONT;
    (*END CreateFontW;*)

    PROCEDURE CreateFont* ["GDI32.dll", "CreateFontA"] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: INTEGER; p10: INTEGER; p11: INTEGER; p12: INTEGER; p13: PtrSTR): HFONT;
    (*END CreateFont;*)

    PROCEDURE CreateHatchBrush* ["GDI32.dll", ""] (p0: INTEGER; p1: COLORREF): HBRUSH;
    (*END CreateHatchBrush;*)

    PROCEDURE CreateICA* ["GDI32.dll", ""] (p0: PtrSTR; p1: PtrSTR; p2: PtrSTR; VAR [nil] p3: DEVMODEA): HDC;
    (*END CreateICA;*)

    PROCEDURE CreateICW* ["GDI32.dll", ""] (p0: PtrWSTR; p1: PtrWSTR; p2: PtrWSTR; VAR [nil] p3: DEVMODEW): HDC;
    (*END CreateICW;*)

    PROCEDURE CreateIC* ["GDI32.dll", "CreateICA"] (p0: PtrSTR; p1: PtrSTR; p2: PtrSTR; VAR [nil] p3: DEVMODEA): HDC;
    (*END CreateIC;*)

    PROCEDURE CreateMetaFileA* ["GDI32.dll", ""] (p0: PtrSTR): HDC;
    (*END CreateMetaFileA;*)

    PROCEDURE CreateMetaFileW* ["GDI32.dll", ""] (p0: PtrWSTR): HDC;
    (*END CreateMetaFileW;*)

    PROCEDURE CreateMetaFile* ["GDI32.dll", "CreateMetaFileA"] (p0: PtrSTR): HDC;
    (*END CreateMetaFile;*)

    PROCEDURE CreatePalette* ["GDI32.dll", ""] (VAR [nil] p0: LOGPALETTE): HPALETTE;
    (*END CreatePalette;*)

    PROCEDURE CreatePen* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: COLORREF): HPEN;
    (*END CreatePen;*)

    PROCEDURE CreatePenIndirect* ["GDI32.dll", ""] (VAR [nil] p0: LOGPEN): HPEN;
    (*END CreatePenIndirect;*)

    PROCEDURE CreatePolyPolygonRgn* ["GDI32.dll", ""] (VAR [nil] p0: POINT; VAR [nil] p1: INTEGER; p2: INTEGER; p3: INTEGER): HRGN;
    (*END CreatePolyPolygonRgn;*)

    PROCEDURE CreatePatternBrush* ["GDI32.dll", ""] (p0: HBITMAP): HBRUSH;
    (*END CreatePatternBrush;*)

    PROCEDURE CreateRectRgn* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER): HRGN;
    (*END CreateRectRgn;*)

    PROCEDURE CreateRectRgnIndirect* ["GDI32.dll", ""] (VAR [nil] p0: RECT): HRGN;
    (*END CreateRectRgnIndirect;*)

    PROCEDURE CreateRoundRectRgn* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER): HRGN;
    (*END CreateRoundRectRgn;*)

    PROCEDURE CreateScalableFontResourceA* ["GDI32.dll", ""] (p0: INTEGER; p1: PtrSTR; p2: PtrSTR; p3: PtrSTR): BOOL;
    (*END CreateScalableFontResourceA;*)

    PROCEDURE CreateScalableFontResourceW* ["GDI32.dll", ""] (p0: INTEGER; p1: PtrWSTR; p2: PtrWSTR; p3: PtrWSTR): BOOL;
    (*END CreateScalableFontResourceW;*)

    PROCEDURE CreateScalableFontResource* ["GDI32.dll", "CreateScalableFontResourceA"] (p0: INTEGER; p1: PtrSTR; p2: PtrSTR; p3: PtrSTR): BOOL;
    (*END CreateScalableFontResource;*)

    PROCEDURE CreateSolidBrush* ["GDI32.dll", ""] (p0: COLORREF): HBRUSH;
    (*END CreateSolidBrush;*)

    PROCEDURE DeleteDC* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END DeleteDC;*)

    PROCEDURE DeleteMetaFile* ["GDI32.dll", ""] (p0: HMETAFILE): BOOL;
    (*END DeleteMetaFile;*)

    PROCEDURE DeleteObject* ["GDI32.dll", ""] (p0: HGDIOBJ): BOOL;
    (*END DeleteObject;*)

    PROCEDURE DescribePixelFormat* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: PIXELFORMATDESCRIPTOR): INTEGER;
    (*END DescribePixelFormat;*)

    PROCEDURE DeviceCapabilitiesA* ["WINSPOOL.dll", ""] (p0: PtrSTR; p1: PtrSTR; p2: SHORTINT; p3: PtrSTR; VAR [nil] p4: DEVMODEA): INTEGER;
    (*END DeviceCapabilitiesA;*)

    PROCEDURE DeviceCapabilitiesW* ["WINSPOOL.dll", ""] (p0: PtrWSTR; p1: PtrWSTR; p2: SHORTINT; p3: PtrWSTR; VAR [nil] p4: DEVMODEW): INTEGER;
    (*END DeviceCapabilitiesW;*)

    PROCEDURE DeviceCapabilities* ["WINSPOOL.dll", "DeviceCapabilitiesA"] (p0: PtrSTR; p1: PtrSTR; p2: SHORTINT; p3: PtrSTR; VAR [nil] p4: DEVMODEA): INTEGER;
    (*END DeviceCapabilities;*)

    PROCEDURE DrawEscape* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: PtrSTR): INTEGER;
    (*END DrawEscape;*)

    PROCEDURE Ellipse* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER): BOOL;
    (*END Ellipse;*)

    PROCEDURE EnumFontFamiliesExA* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: LOGFONTA; p2: FONTENUMPROCEXA; p3: LPARAM; p4: INTEGER): INTEGER;
    (*END EnumFontFamiliesExA;*)

    PROCEDURE EnumFontFamiliesExW* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: LOGFONTW; p2: FONTENUMPROCEXW; p3: LPARAM; p4: INTEGER): INTEGER;
    (*END EnumFontFamiliesExW;*)

    PROCEDURE EnumFontFamiliesEx* ["GDI32.dll", "EnumFontFamiliesExA"] (p0: HDC; VAR [nil] p1: LOGFONTA; p2: FONTENUMPROCEXA; p3: LPARAM; p4: INTEGER): INTEGER;
    (*END EnumFontFamiliesEx;*)

    PROCEDURE EnumFontFamiliesA* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR; p2: NEWFONTENUMPROCA; p3: LPARAM): INTEGER;
    (*END EnumFontFamiliesA;*)

    PROCEDURE EnumFontFamiliesW* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR; p2: NEWFONTENUMPROCW; p3: LPARAM): INTEGER;
    (*END EnumFontFamiliesW;*)

    PROCEDURE EnumFontFamilies* ["GDI32.dll", "EnumFontFamiliesA"] (p0: HDC; p1: PtrSTR; p2: NEWFONTENUMPROCA; p3: LPARAM): INTEGER;
    (*END EnumFontFamilies;*)

    PROCEDURE EnumFontsA* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR; p2: FONTENUMPROCA; p3: LPARAM): INTEGER;
    (*END EnumFontsA;*)

    PROCEDURE EnumFontsW* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR; p2: FONTENUMPROCW; p3: LPARAM): INTEGER;
    (*END EnumFontsW;*)

    PROCEDURE EnumFonts* ["GDI32.dll", "EnumFontsA"] (p0: HDC; p1: PtrSTR; p2: FONTENUMPROCA; p3: LPARAM): INTEGER;
    (*END EnumFonts;*)

    PROCEDURE EnumObjects* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: GOBJENUMPROC; p3: PtrVoid): INTEGER;
    (*END EnumObjects;*)

    PROCEDURE EqualRgn* ["GDI32.dll", ""] (p0: HRGN; p1: HRGN): BOOL;
    (*END EqualRgn;*)

    PROCEDURE Escape* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: PtrSTR; p4: PtrVoid): INTEGER;
    (*END Escape;*)

    PROCEDURE ExtEscape* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: PtrSTR; p4: INTEGER; p5: PtrSTR): INTEGER;
    (*END ExtEscape;*)

    PROCEDURE ExcludeClipRect* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER): INTEGER;
    (*END ExcludeClipRect;*)

    PROCEDURE ExtCreateRegion* ["GDI32.dll", ""] (VAR [nil] p0: XFORM; p1: INTEGER; VAR [nil] p2: RGNDATA): HRGN;
    (*END ExtCreateRegion;*)

    PROCEDURE ExtFloodFill* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: COLORREF; p4: INTEGER): BOOL;
    (*END ExtFloodFill;*)

    PROCEDURE FillRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN; p2: HBRUSH): BOOL;
    (*END FillRgn;*)

    PROCEDURE FloodFill* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: COLORREF): BOOL;
    (*END FloodFill;*)

    PROCEDURE FrameRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN; p2: HBRUSH; p3: INTEGER; p4: INTEGER): BOOL;
    (*END FrameRgn;*)

    PROCEDURE GetROP2* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetROP2;*)

    PROCEDURE GetAspectRatioFilterEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: SIZE): BOOL;
    (*END GetAspectRatioFilterEx;*)

    PROCEDURE GetBkColor* ["GDI32.dll", ""] (p0: HDC): COLORREF;
    (*END GetBkColor;*)

    PROCEDURE GetBkMode* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetBkMode;*)

    PROCEDURE GetBitmapBits* ["GDI32.dll", ""] (p0: HBITMAP; p1: INTEGER; p2: PtrVoid): INTEGER;
    (*END GetBitmapBits;*)

    PROCEDURE GetBitmapDimensionEx* ["GDI32.dll", ""] (p0: HBITMAP; VAR [nil] p1: SIZE): BOOL;
    (*END GetBitmapDimensionEx;*)

    PROCEDURE GetBoundsRect* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: RECT; p2: SET): SET;
    (*END GetBoundsRect;*)

    PROCEDURE GetBrushOrgEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT): BOOL;
    (*END GetBrushOrgEx;*)

    PROCEDURE GetCharWidthA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: INTEGER): BOOL;
    (*END GetCharWidthA;*)

    PROCEDURE GetCharWidthW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: INTEGER): BOOL;
    (*END GetCharWidthW;*)

    PROCEDURE GetCharWidth* ["GDI32.dll", "GetCharWidthA"] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: INTEGER): BOOL;
    (*END GetCharWidth;*)

    PROCEDURE GetCharWidth32A* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: INTEGER): BOOL;
    (*END GetCharWidth32A;*)

    PROCEDURE GetCharWidth32W* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: INTEGER): BOOL;
    (*END GetCharWidth32W;*)

    PROCEDURE GetCharWidth32* ["GDI32.dll", "GetCharWidth32A"] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: INTEGER): BOOL;
    (*END GetCharWidth32;*)

    PROCEDURE GetCharWidthFloatA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: SHORTREAL): BOOL;
    (*END GetCharWidthFloatA;*)

    PROCEDURE GetCharWidthFloatW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: SHORTREAL): BOOL;
    (*END GetCharWidthFloatW;*)

    PROCEDURE GetCharWidthFloat* ["GDI32.dll", "GetCharWidthFloatA"] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: SHORTREAL): BOOL;
    (*END GetCharWidthFloat;*)

    PROCEDURE GetCharABCWidthsA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: ABC): BOOL;
    (*END GetCharABCWidthsA;*)

    PROCEDURE GetCharABCWidthsW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: ABC): BOOL;
    (*END GetCharABCWidthsW;*)

    PROCEDURE GetCharABCWidths* ["GDI32.dll", "GetCharABCWidthsA"] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: ABC): BOOL;
    (*END GetCharABCWidths;*)

    PROCEDURE GetCharABCWidthsFloatA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: ABCFLOAT): BOOL;
    (*END GetCharABCWidthsFloatA;*)

    PROCEDURE GetCharABCWidthsFloatW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: ABCFLOAT): BOOL;
    (*END GetCharABCWidthsFloatW;*)

    PROCEDURE GetCharABCWidthsFloat* ["GDI32.dll", "GetCharABCWidthsFloatA"] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: ABCFLOAT): BOOL;
    (*END GetCharABCWidthsFloat;*)

    PROCEDURE GetClipBox* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: RECT): INTEGER;
    (*END GetClipBox;*)

    PROCEDURE GetClipRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN): INTEGER;
    (*END GetClipRgn;*)

    PROCEDURE GetMetaRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN): INTEGER;
    (*END GetMetaRgn;*)

    PROCEDURE GetCurrentObject* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): HGDIOBJ;
    (*END GetCurrentObject;*)

    PROCEDURE GetCurrentPositionEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT): BOOL;
    (*END GetCurrentPositionEx;*)

    PROCEDURE GetDeviceCaps* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END GetDeviceCaps;*)

    PROCEDURE GetDIBits* ["GDI32.dll", ""] (p0: HDC; p1: HBITMAP; p2: INTEGER; p3: INTEGER; p4: PtrVoid; VAR [nil] p5: BITMAPINFO; p6: INTEGER): INTEGER;
    (*END GetDIBits;*)

    PROCEDURE GetFontData* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: PtrVoid; p4: INTEGER): INTEGER;
    (*END GetFontData;*)

    PROCEDURE GetGlyphOutlineA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: GLYPHMETRICS; p4: INTEGER; p5: PtrVoid; VAR [nil] p6: MAT2): INTEGER;
    (*END GetGlyphOutlineA;*)

    PROCEDURE GetGlyphOutlineW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: GLYPHMETRICS; p4: INTEGER; p5: PtrVoid; VAR [nil] p6: MAT2): INTEGER;
    (*END GetGlyphOutlineW;*)

    PROCEDURE GetGlyphOutline* ["GDI32.dll", "GetGlyphOutlineA"] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: GLYPHMETRICS; p4: INTEGER; p5: PtrVoid; VAR [nil] p6: MAT2): INTEGER;
    (*END GetGlyphOutline;*)

    PROCEDURE GetGraphicsMode* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetGraphicsMode;*)

    PROCEDURE GetMapMode* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetMapMode;*)

    PROCEDURE GetMetaFileBitsEx* ["GDI32.dll", ""] (p0: HMETAFILE; p1: INTEGER; VAR [nil] p2: ARRAY [untagged] OF BYTE): INTEGER;
    (*END GetMetaFileBitsEx;*)

    PROCEDURE GetMetaFileA* ["GDI32.dll", ""] (p0: PtrSTR): HMETAFILE;
    (*END GetMetaFileA;*)

    PROCEDURE GetMetaFileW* ["GDI32.dll", ""] (p0: PtrWSTR): HMETAFILE;
    (*END GetMetaFileW;*)

    PROCEDURE GetMetaFile* ["GDI32.dll", "GetMetaFileA"] (p0: PtrSTR): HMETAFILE;
    (*END GetMetaFile;*)

    PROCEDURE GetNearestColor* ["GDI32.dll", ""] (p0: HDC; p1: COLORREF): COLORREF;
    (*END GetNearestColor;*)

    PROCEDURE GetNearestPaletteIndex* ["GDI32.dll", ""] (p0: HPALETTE; p1: COLORREF): INTEGER;
    (*END GetNearestPaletteIndex;*)

    PROCEDURE GetObjectType* ["GDI32.dll", ""] (h: HGDIOBJ): INTEGER;
    (*END GetObjectType;*)

    PROCEDURE GetOutlineTextMetricsA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; VAR [nil] p2: OUTLINETEXTMETRICA): INTEGER;
    (*END GetOutlineTextMetricsA;*)

    PROCEDURE GetOutlineTextMetricsW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; VAR [nil] p2: OUTLINETEXTMETRICW): INTEGER;
    (*END GetOutlineTextMetricsW;*)

    PROCEDURE GetOutlineTextMetrics* ["GDI32.dll", "GetOutlineTextMetricsA"] (p0: HDC; p1: INTEGER; VAR [nil] p2: OUTLINETEXTMETRICA): INTEGER;
    (*END GetOutlineTextMetrics;*)

    PROCEDURE GetPaletteEntries* ["GDI32.dll", ""] (p0: HPALETTE; p1: INTEGER; p2: INTEGER; VAR [nil] p3: PALETTEENTRY): INTEGER;
    (*END GetPaletteEntries;*)

    PROCEDURE GetPixel* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER): COLORREF;
    (*END GetPixel;*)

    PROCEDURE GetPixelFormat* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetPixelFormat;*)

    PROCEDURE GetPolyFillMode* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetPolyFillMode;*)

    PROCEDURE GetRasterizerCaps* ["GDI32.dll", ""] (VAR [nil] p0: RASTERIZER_STATUS; p1: INTEGER): BOOL;
    (*END GetRasterizerCaps;*)

    PROCEDURE GetRegionData* ["GDI32.dll", ""] (p0: HRGN; p1: INTEGER; VAR [nil] p2: RGNDATA): INTEGER;
    (*END GetRegionData;*)

    PROCEDURE GetRgnBox* ["GDI32.dll", ""] (p0: HRGN; VAR [nil] p1: RECT): INTEGER;
    (*END GetRgnBox;*)

    PROCEDURE GetStockObject* ["GDI32.dll", ""] (p0: INTEGER): HGDIOBJ;
    (*END GetStockObject;*)

    PROCEDURE GetStretchBltMode* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetStretchBltMode;*)

    PROCEDURE GetSystemPaletteEntries* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: PALETTEENTRY): INTEGER;
    (*END GetSystemPaletteEntries;*)

    PROCEDURE GetSystemPaletteUse* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetSystemPaletteUse;*)

    PROCEDURE GetTextCharacterExtra* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetTextCharacterExtra;*)

    PROCEDURE GetTextAlign* ["GDI32.dll", ""] (p0: HDC): SET;
    (*END GetTextAlign;*)

    PROCEDURE GetTextColor* ["GDI32.dll", ""] (p0: HDC): COLORREF;
    (*END GetTextColor;*)

    PROCEDURE GetTextExtentPointA* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END GetTextExtentPointA;*)

    PROCEDURE GetTextExtentPointW* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END GetTextExtentPointW;*)

    PROCEDURE GetTextExtentPoint* ["GDI32.dll", "GetTextExtentPointA"] (p0: HDC; p1: PtrSTR; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END GetTextExtentPoint;*)

    PROCEDURE GetTextExtentPoint32A* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END GetTextExtentPoint32A;*)

    PROCEDURE GetTextExtentPoint32W* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END GetTextExtentPoint32W;*)

    PROCEDURE GetTextExtentPoint32* ["GDI32.dll", "GetTextExtentPoint32A"] (p0: HDC; p1: PtrSTR; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END GetTextExtentPoint32;*)

    PROCEDURE GetTextExtentExPointA* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR; p2: INTEGER; p3: INTEGER; VAR [nil] p4: INTEGER; VAR [nil] p5: INTEGER; VAR [nil] p6: SIZE): BOOL;
    (*END GetTextExtentExPointA;*)

    PROCEDURE GetTextExtentExPointW* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR; p2: INTEGER; p3: INTEGER; VAR [nil] p4: INTEGER; VAR [nil] p5: INTEGER; VAR [nil] p6: SIZE): BOOL;
    (*END GetTextExtentExPointW;*)

    PROCEDURE GetTextExtentExPoint* ["GDI32.dll", "GetTextExtentExPointA"] (p0: HDC; p1: PtrSTR; p2: INTEGER; p3: INTEGER; VAR [nil] p4: INTEGER; VAR [nil] p5: INTEGER; VAR [nil] p6: SIZE): BOOL;
    (*END GetTextExtentExPoint;*)

    PROCEDURE GetTextCharset* ["GDI32.dll", ""] (hdc: HDC): INTEGER;
    (*END GetTextCharset;*)

    PROCEDURE GetTextCharsetInfo* ["GDI32.dll", ""] (hdc: HDC; VAR [nil] lpSig: FONTSIGNATURE; dwFlags: SET): INTEGER;
    (*END GetTextCharsetInfo;*)

    PROCEDURE TranslateCharsetInfo* ["GDI32.dll", ""] (VAR [nil] lpSrc: INTEGER; VAR [nil] lpCs: CHARSETINFO; dwFlags: SET): BOOL;
    (*END TranslateCharsetInfo;*)

    PROCEDURE GetFontLanguageInfo* ["GDI32.dll", ""] (p0: HDC): SET;
    (*END GetFontLanguageInfo;*)

    PROCEDURE GetCharacterPlacementA* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR; p2: INTEGER; p3: INTEGER; VAR [nil] p4: GCP_RESULTSA; p5: INTEGER): INTEGER;
    (*END GetCharacterPlacementA;*)

    PROCEDURE GetCharacterPlacementW* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR; p2: INTEGER; p3: INTEGER; VAR [nil] p4: GCP_RESULTSW; p5: INTEGER): INTEGER;
    (*END GetCharacterPlacementW;*)

    PROCEDURE GetCharacterPlacement* ["GDI32.dll", "GetCharacterPlacementA"] (p0: HDC; p1: PtrSTR; p2: INTEGER; p3: INTEGER; VAR [nil] p4: GCP_RESULTSA; p5: INTEGER): INTEGER;
    (*END GetCharacterPlacement;*)

    PROCEDURE GetViewportExtEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: SIZE): BOOL;
    (*END GetViewportExtEx;*)

    PROCEDURE GetViewportOrgEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT): BOOL;
    (*END GetViewportOrgEx;*)

    PROCEDURE GetWindowExtEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: SIZE): BOOL;
    (*END GetWindowExtEx;*)

    PROCEDURE GetWindowOrgEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT): BOOL;
    (*END GetWindowOrgEx;*)

    PROCEDURE IntersectClipRect* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER): INTEGER;
    (*END IntersectClipRect;*)

    PROCEDURE InvertRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN): BOOL;
    (*END InvertRgn;*)

    PROCEDURE LineDDA* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: LINEDDAPROC; p5: LPARAM): BOOL;
    (*END LineDDA;*)

    PROCEDURE LineTo* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER): BOOL;
    (*END LineTo;*)

    PROCEDURE MaskBlt* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: HDC; p6: INTEGER; p7: INTEGER; p8: HBITMAP; p9: INTEGER; p10: INTEGER; p11: INTEGER): BOOL;
    (*END MaskBlt;*)

    PROCEDURE PlgBlt* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: HDC; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: HBITMAP; p8: INTEGER; p9: INTEGER): BOOL;
    (*END PlgBlt;*)

    PROCEDURE OffsetClipRgn* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER): INTEGER;
    (*END OffsetClipRgn;*)

    PROCEDURE OffsetRgn* ["GDI32.dll", ""] (p0: HRGN; p1: INTEGER; p2: INTEGER): INTEGER;
    (*END OffsetRgn;*)

    PROCEDURE PatBlt* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER): BOOL;
    (*END PatBlt;*)

    PROCEDURE Pie* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER): BOOL;
    (*END Pie;*)

    PROCEDURE PlayMetaFile* ["GDI32.dll", ""] (p0: HDC; p1: HMETAFILE): BOOL;
    (*END PlayMetaFile;*)

    PROCEDURE PaintRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN): BOOL;
    (*END PaintRgn;*)

    PROCEDURE PolyPolygon* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; VAR [nil] p2: INTEGER; p3: INTEGER): BOOL;
    (*END PolyPolygon;*)

    PROCEDURE PtInRegion* ["GDI32.dll", ""] (p0: HRGN; p1: INTEGER; p2: INTEGER): BOOL;
    (*END PtInRegion;*)

    PROCEDURE PtVisible* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER): BOOL;
    (*END PtVisible;*)

    PROCEDURE RectInRegion* ["GDI32.dll", ""] (p0: HRGN; VAR [nil] p1: RECT): BOOL;
    (*END RectInRegion;*)

    PROCEDURE RectVisible* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: RECT): BOOL;
    (*END RectVisible;*)

    PROCEDURE Rectangle* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER): BOOL;
    (*END Rectangle;*)

    PROCEDURE RestoreDC* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): BOOL;
    (*END RestoreDC;*)

    PROCEDURE ResetDCA* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: DEVMODEA): HDC;
    (*END ResetDCA;*)

    PROCEDURE ResetDCW* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: DEVMODEW): HDC;
    (*END ResetDCW;*)

    PROCEDURE ResetDC* ["GDI32.dll", "ResetDCA"] (p0: HDC; VAR [nil] p1: DEVMODEA): HDC;
    (*END ResetDC;*)

    PROCEDURE RealizePalette* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END RealizePalette;*)

    PROCEDURE RemoveFontResourceA* ["GDI32.dll", ""] (p0: PtrSTR): BOOL;
    (*END RemoveFontResourceA;*)

    PROCEDURE RemoveFontResourceW* ["GDI32.dll", ""] (p0: PtrWSTR): BOOL;
    (*END RemoveFontResourceW;*)

    PROCEDURE RemoveFontResource* ["GDI32.dll", "RemoveFontResourceA"] (p0: PtrSTR): BOOL;
    (*END RemoveFontResource;*)

    PROCEDURE RoundRect* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER): BOOL;
    (*END RoundRect;*)

    PROCEDURE ResizePalette* ["GDI32.dll", ""] (p0: HPALETTE; p1: INTEGER): BOOL;
    (*END ResizePalette;*)

    PROCEDURE SaveDC* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END SaveDC;*)

    PROCEDURE SelectClipRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN): INTEGER;
    (*END SelectClipRgn;*)

    PROCEDURE ExtSelectClipRgn* ["GDI32.dll", ""] (p0: HDC; p1: HRGN; p2: INTEGER): INTEGER;
    (*END ExtSelectClipRgn;*)

    PROCEDURE SetMetaRgn* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END SetMetaRgn;*)

    PROCEDURE SelectObject* ["GDI32.dll", ""] (p0: HDC; p1: HGDIOBJ): HGDIOBJ;
    (*END SelectObject;*)

    PROCEDURE SelectPalette* ["GDI32.dll", ""] (p0: HDC; p1: HPALETTE; p2: BOOL): HPALETTE;
    (*END SelectPalette;*)

    PROCEDURE SetBkColor* ["GDI32.dll", ""] (p0: HDC; p1: COLORREF): COLORREF;
    (*END SetBkColor;*)

    PROCEDURE SetBkMode* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetBkMode;*)

    PROCEDURE SetBitmapBits* ["GDI32.dll", ""] (p0: HBITMAP; p1: INTEGER; p2: PtrVoid): INTEGER;
    (*END SetBitmapBits;*)

    PROCEDURE SetBoundsRect* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: RECT; p2: SET): SET;
    (*END SetBoundsRect;*)

    PROCEDURE SetDIBits* ["GDI32.dll", ""] (p0: HDC; p1: HBITMAP; p2: INTEGER; p3: INTEGER; p4: PtrVoid; VAR [nil] p5: BITMAPINFO; p6: INTEGER): INTEGER;
    (*END SetDIBits;*)

    PROCEDURE SetDIBitsToDevice* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: PtrVoid; VAR [nil] p10: BITMAPINFO; p11: INTEGER): INTEGER;
    (*END SetDIBitsToDevice;*)

    PROCEDURE SetMapperFlags* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetMapperFlags;*)

    PROCEDURE SetGraphicsMode* ["GDI32.dll", ""] (hdc: HDC; iMode: INTEGER): INTEGER;
    (*END SetGraphicsMode;*)

    PROCEDURE SetMapMode* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetMapMode;*)

    PROCEDURE SetMetaFileBitsEx* ["GDI32.dll", ""] (p0: INTEGER; VAR [nil] p1: ARRAY [untagged] OF BYTE): HMETAFILE;
    (*END SetMetaFileBitsEx;*)

    PROCEDURE SetPaletteEntries* ["GDI32.dll", ""] (p0: HPALETTE; p1: INTEGER; p2: INTEGER; VAR [nil] p3: PALETTEENTRY): INTEGER;
    (*END SetPaletteEntries;*)

    PROCEDURE SetPixel* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: COLORREF): COLORREF;
    (*END SetPixel;*)

    PROCEDURE SetPixelV* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: COLORREF): BOOL;
    (*END SetPixelV;*)

    PROCEDURE SetPixelFormat* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; VAR [nil] p2: PIXELFORMATDESCRIPTOR): BOOL;
    (*END SetPixelFormat;*)

    PROCEDURE SetPolyFillMode* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetPolyFillMode;*)

    PROCEDURE StretchBlt* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: HDC; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: INTEGER; p10: INTEGER): BOOL;
    (*END StretchBlt;*)

    PROCEDURE SetRectRgn* ["GDI32.dll", ""] (p0: HRGN; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER): BOOL;
    (*END SetRectRgn;*)

    PROCEDURE StretchDIBits* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: PtrVoid; VAR [nil] p10: BITMAPINFO; p11: INTEGER; p12: INTEGER): INTEGER;
    (*END StretchDIBits;*)

    PROCEDURE SetROP2* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetROP2;*)

    PROCEDURE SetStretchBltMode* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetStretchBltMode;*)

    PROCEDURE SetSystemPaletteUse* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetSystemPaletteUse;*)

    PROCEDURE SetTextCharacterExtra* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetTextCharacterExtra;*)

    PROCEDURE SetTextColor* ["GDI32.dll", ""] (p0: HDC; p1: COLORREF): COLORREF;
    (*END SetTextColor;*)

    PROCEDURE SetTextAlign* ["GDI32.dll", ""] (p0: HDC; p1: SET): SET;
    (*END SetTextAlign;*)

    PROCEDURE SetTextJustification* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER): BOOL;
    (*END SetTextJustification;*)

    PROCEDURE UpdateColors* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END UpdateColors;*)

    PROCEDURE PlayMetaFileRecord* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: HANDLETABLE; VAR [nil] p2: METARECORD; p3: INTEGER): BOOL;
    (*END PlayMetaFileRecord;*)

    PROCEDURE EnumMetaFile* ["GDI32.dll", ""] (p0: HDC; p1: HMETAFILE; p2: MFENUMPROC; p3: LPARAM): BOOL;
    (*END EnumMetaFile;*)

    PROCEDURE CloseEnhMetaFile* ["GDI32.dll", ""] (p0: HDC): HENHMETAFILE;
    (*END CloseEnhMetaFile;*)

    PROCEDURE CopyEnhMetaFileA* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: PtrSTR): HENHMETAFILE;
    (*END CopyEnhMetaFileA;*)

    PROCEDURE CopyEnhMetaFileW* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: PtrWSTR): HENHMETAFILE;
    (*END CopyEnhMetaFileW;*)

    PROCEDURE CopyEnhMetaFile* ["GDI32.dll", "CopyEnhMetaFileA"] (p0: HENHMETAFILE; p1: PtrSTR): HENHMETAFILE;
    (*END CopyEnhMetaFile;*)

    PROCEDURE CreateEnhMetaFileA* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR; VAR [nil] p2: RECT; p3: PtrSTR): HDC;
    (*END CreateEnhMetaFileA;*)

    PROCEDURE CreateEnhMetaFileW* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR; VAR [nil] p2: RECT; p3: PtrWSTR): HDC;
    (*END CreateEnhMetaFileW;*)

    PROCEDURE CreateEnhMetaFile* ["GDI32.dll", "CreateEnhMetaFileA"] (p0: HDC; p1: PtrSTR; VAR [nil] p2: RECT; p3: PtrSTR): HDC;
    (*END CreateEnhMetaFile;*)

    PROCEDURE DeleteEnhMetaFile* ["GDI32.dll", ""] (p0: HENHMETAFILE): BOOL;
    (*END DeleteEnhMetaFile;*)

    PROCEDURE EnumEnhMetaFile* ["GDI32.dll", ""] (p0: HDC; p1: HENHMETAFILE; p2: ENHMFENUMPROC; p3: PtrVoid; VAR [nil] p4: RECT): BOOL;
    (*END EnumEnhMetaFile;*)

    PROCEDURE GetEnhMetaFileA* ["GDI32.dll", ""] (p0: PtrSTR): HENHMETAFILE;
    (*END GetEnhMetaFileA;*)

    PROCEDURE GetEnhMetaFileW* ["GDI32.dll", ""] (p0: PtrWSTR): HENHMETAFILE;
    (*END GetEnhMetaFileW;*)

    PROCEDURE GetEnhMetaFile* ["GDI32.dll", "GetEnhMetaFileA"] (p0: PtrSTR): HENHMETAFILE;
    (*END GetEnhMetaFile;*)

    PROCEDURE GetEnhMetaFileBits* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: INTEGER; VAR [nil] p2: SHORTCHAR): INTEGER;
    (*END GetEnhMetaFileBits;*)

    PROCEDURE GetEnhMetaFileDescriptionA* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: INTEGER; p2: PtrSTR): INTEGER;
    (*END GetEnhMetaFileDescriptionA;*)

    PROCEDURE GetEnhMetaFileDescriptionW* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: INTEGER; p2: PtrWSTR): INTEGER;
    (*END GetEnhMetaFileDescriptionW;*)

    PROCEDURE GetEnhMetaFileDescription* ["GDI32.dll", "GetEnhMetaFileDescriptionA"] (p0: HENHMETAFILE; p1: INTEGER; p2: PtrSTR): INTEGER;
    (*END GetEnhMetaFileDescription;*)

    PROCEDURE GetEnhMetaFileHeader* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: INTEGER; VAR [nil] p2: ENHMETAHEADER): INTEGER;
    (*END GetEnhMetaFileHeader;*)

    PROCEDURE GetEnhMetaFilePaletteEntries* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: INTEGER; VAR [nil] p2: PALETTEENTRY): INTEGER;
    (*END GetEnhMetaFilePaletteEntries;*)

    PROCEDURE GetEnhMetaFilePixelFormat* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: INTEGER; VAR [nil] p2: PIXELFORMATDESCRIPTOR): INTEGER;
    (*END GetEnhMetaFilePixelFormat;*)

    PROCEDURE GetWinMetaFileBits* ["GDI32.dll", ""] (p0: HENHMETAFILE; p1: INTEGER; VAR [nil] p2: SHORTCHAR; p3: INTEGER; p4: HDC): INTEGER;
    (*END GetWinMetaFileBits;*)

    PROCEDURE PlayEnhMetaFile* ["GDI32.dll", ""] (p0: HDC; p1: HENHMETAFILE; VAR [nil] p2: RECT): BOOL;
    (*END PlayEnhMetaFile;*)

    PROCEDURE PlayEnhMetaFileRecord* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: HANDLETABLE; VAR [nil] p2: ENHMETARECORD; p3: INTEGER): BOOL;
    (*END PlayEnhMetaFileRecord;*)

    PROCEDURE SetEnhMetaFileBits* ["GDI32.dll", ""] (p0: INTEGER; VAR [nil] p1: SHORTCHAR): HENHMETAFILE;
    (*END SetEnhMetaFileBits;*)

    PROCEDURE SetWinMetaFileBits* ["GDI32.dll", ""] (p0: INTEGER; VAR [nil] p1: SHORTCHAR; p2: HDC; VAR [nil] p3: METAFILEPICT): HENHMETAFILE;
    (*END SetWinMetaFileBits;*)

    PROCEDURE GdiComment* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; VAR [nil] p2: SHORTCHAR): BOOL;
    (*END GdiComment;*)

    PROCEDURE GetTextMetricsA* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: TEXTMETRICA): BOOL;
    (*END GetTextMetricsA;*)

    PROCEDURE GetTextMetricsW* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: TEXTMETRICW): BOOL;
    (*END GetTextMetricsW;*)

    PROCEDURE GetTextMetrics* ["GDI32.dll", "GetTextMetricsA"] (p0: HDC; VAR [nil] p1: TEXTMETRICA): BOOL;
    (*END GetTextMetrics;*)

    PROCEDURE AngleArc* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: SHORTREAL; p5: SHORTREAL): BOOL;
    (*END AngleArc;*)

    PROCEDURE PolyPolyline* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; VAR [nil] p2: INTEGER; p3: INTEGER): BOOL;
    (*END PolyPolyline;*)

    PROCEDURE GetWorldTransform* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: XFORM): BOOL;
    (*END GetWorldTransform;*)

    PROCEDURE SetWorldTransform* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: XFORM): BOOL;
    (*END SetWorldTransform;*)

    PROCEDURE ModifyWorldTransform* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: XFORM; p2: INTEGER): BOOL;
    (*END ModifyWorldTransform;*)

    PROCEDURE CombineTransform* ["GDI32.dll", ""] (VAR [nil] p0: XFORM; VAR [nil] p1: XFORM; VAR [nil] p2: XFORM): BOOL;
    (*END CombineTransform;*)

    PROCEDURE CreateDIBSection* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: BITMAPINFO; p2: INTEGER; VAR [nil] p3: PtrVoid; p4: HANDLE; p5: INTEGER): HBITMAP;
    (*END CreateDIBSection;*)

    PROCEDURE GetDIBColorTable* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: RGBQUAD): INTEGER;
    (*END GetDIBColorTable;*)

    PROCEDURE SetDIBColorTable* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: ARRAY OF RGBQUAD): INTEGER;
    (*END SetDIBColorTable;*)

    PROCEDURE SetColorAdjustment* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: COLORADJUSTMENT): BOOL;
    (*END SetColorAdjustment;*)

    PROCEDURE GetColorAdjustment* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: COLORADJUSTMENT): BOOL;
    (*END GetColorAdjustment;*)

    PROCEDURE CreateHalftonePalette* ["GDI32.dll", ""] (p0: HDC): HPALETTE;
    (*END CreateHalftonePalette;*)

    PROCEDURE StartDocA* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: DOCINFOA): INTEGER;
    (*END StartDocA;*)

    PROCEDURE StartDocW* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: DOCINFOW): INTEGER;
    (*END StartDocW;*)

    PROCEDURE StartDoc* ["GDI32.dll", "StartDocA"] (p0: HDC; VAR [nil] p1: DOCINFOA): INTEGER;
    (*END StartDoc;*)

    PROCEDURE EndDoc* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END EndDoc;*)

    PROCEDURE StartPage* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END StartPage;*)

    PROCEDURE EndPage* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END EndPage;*)

    PROCEDURE AbortDoc* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END AbortDoc;*)

    PROCEDURE SetAbortProc* ["GDI32.dll", ""] (p0: HDC; p1: ABORTPROC): INTEGER;
    (*END SetAbortProc;*)

    PROCEDURE AbortPath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END AbortPath;*)

    PROCEDURE ArcTo* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER): BOOL;
    (*END ArcTo;*)

    PROCEDURE BeginPath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END BeginPath;*)

    PROCEDURE CloseFigure* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END CloseFigure;*)

    PROCEDURE EndPath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END EndPath;*)

    PROCEDURE FillPath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END FillPath;*)

    PROCEDURE FlattenPath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END FlattenPath;*)

    PROCEDURE GetPath* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; VAR [nil] p2: SHORTCHAR; p3: INTEGER): INTEGER;
    (*END GetPath;*)

    PROCEDURE PathToRegion* ["GDI32.dll", ""] (p0: HDC): HRGN;
    (*END PathToRegion;*)

    PROCEDURE PolyDraw* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; VAR [nil] p2: SHORTCHAR; p3: INTEGER): BOOL;
    (*END PolyDraw;*)

    PROCEDURE SelectClipPath* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): BOOL;
    (*END SelectClipPath;*)

    PROCEDURE SetArcDirection* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetArcDirection;*)

    PROCEDURE SetMiterLimit* ["GDI32.dll", ""] (p0: HDC; p1: SHORTREAL; VAR [nil] p2: SHORTREAL): BOOL;
    (*END SetMiterLimit;*)

    PROCEDURE StrokeAndFillPath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END StrokeAndFillPath;*)

    PROCEDURE StrokePath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END StrokePath;*)

    PROCEDURE WidenPath* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END WidenPath;*)

    PROCEDURE ExtCreatePen* ["GDI32.dll", ""] (p0: INTEGER; p1: INTEGER; VAR [nil] p2: LOGBRUSH; p3: INTEGER; VAR [nil] p4: INTEGER): HPEN;
    (*END ExtCreatePen;*)

    PROCEDURE GetMiterLimit* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: SHORTREAL): BOOL;
    (*END GetMiterLimit;*)

    PROCEDURE GetArcDirection* ["GDI32.dll", ""] (p0: HDC): INTEGER;
    (*END GetArcDirection;*)

    PROCEDURE GetObjectA* ["GDI32.dll", ""] (p0: HGDIOBJ; p1: INTEGER; p2: PtrVoid): INTEGER;
    (*END GetObjectA;*)

    PROCEDURE GetObjectW* ["GDI32.dll", ""] (p0: HGDIOBJ; p1: INTEGER; p2: PtrVoid): INTEGER;
    (*END GetObjectW;*)

    PROCEDURE GetObject* ["GDI32.dll", "GetObjectA"] (p0: HGDIOBJ; p1: INTEGER; p2: PtrVoid): INTEGER;
    (*END GetObject;*)

    PROCEDURE MoveToEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: POINT): BOOL;
    (*END MoveToEx;*)

    PROCEDURE TextOutA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: PtrSTR; p4: INTEGER): BOOL;
    (*END TextOutA;*)

    PROCEDURE TextOutW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: PtrWSTR; p4: INTEGER): BOOL;
    (*END TextOutW;*)

    PROCEDURE TextOut* ["GDI32.dll", "TextOutA"] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: PtrSTR; p4: INTEGER): BOOL;
    (*END TextOut;*)

    PROCEDURE ExtTextOutA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; VAR [nil] p4: RECT; p5: PtrSTR; p6: INTEGER; VAR [nil] p7: INTEGER): BOOL;
    (*END ExtTextOutA;*)

    PROCEDURE ExtTextOutW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; VAR [nil] p4: RECT; p5: PtrWSTR; p6: INTEGER; VAR [nil] p7: INTEGER): BOOL;
    (*END ExtTextOutW;*)

    PROCEDURE ExtTextOut* ["GDI32.dll", "ExtTextOutA"] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; VAR [nil] p4: RECT; p5: PtrSTR; p6: INTEGER; VAR [nil] p7: INTEGER): BOOL;
    (*END ExtTextOut;*)

    PROCEDURE PolyTextOutA* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POLYTEXTA; p2: INTEGER): BOOL;
    (*END PolyTextOutA;*)

    PROCEDURE PolyTextOutW* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POLYTEXTW; p2: INTEGER): BOOL;
    (*END PolyTextOutW;*)

    PROCEDURE PolyTextOut* ["GDI32.dll", "PolyTextOutA"] (p0: HDC; VAR [nil] p1: POLYTEXTA; p2: INTEGER): BOOL;
    (*END PolyTextOut;*)

    PROCEDURE CreatePolygonRgn* ["GDI32.dll", ""] (VAR [nil] p0: POINT; p1: INTEGER; p2: INTEGER): HRGN;
    (*END CreatePolygonRgn;*)

    PROCEDURE DPtoLP* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: INTEGER): BOOL;
    (*END DPtoLP;*)

    PROCEDURE LPtoDP* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: INTEGER): BOOL;
    (*END LPtoDP;*)

    PROCEDURE Polygon* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: INTEGER): BOOL;
    (*END Polygon;*)

    PROCEDURE Polyline* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: INTEGER): BOOL;
    (*END Polyline;*)

    PROCEDURE PolyBezier* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: INTEGER): BOOL;
    (*END PolyBezier;*)

    PROCEDURE PolyBezierTo* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: INTEGER): BOOL;
    (*END PolyBezierTo;*)

    PROCEDURE PolylineTo* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT; p2: INTEGER): BOOL;
    (*END PolylineTo;*)

    PROCEDURE SetViewportExtEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END SetViewportExtEx;*)

    PROCEDURE SetViewportOrgEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: POINT): BOOL;
    (*END SetViewportOrgEx;*)

    PROCEDURE SetWindowExtEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END SetWindowExtEx;*)

    PROCEDURE SetWindowOrgEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: POINT): BOOL;
    (*END SetWindowOrgEx;*)

    PROCEDURE OffsetViewportOrgEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: POINT): BOOL;
    (*END OffsetViewportOrgEx;*)

    PROCEDURE OffsetWindowOrgEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: POINT): BOOL;
    (*END OffsetWindowOrgEx;*)

    PROCEDURE ScaleViewportExtEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; VAR [nil] p5: SIZE): BOOL;
    (*END ScaleViewportExtEx;*)

    PROCEDURE ScaleWindowExtEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER; VAR [nil] p5: SIZE): BOOL;
    (*END ScaleWindowExtEx;*)

    PROCEDURE SetBitmapDimensionEx* ["GDI32.dll", ""] (p0: HBITMAP; p1: INTEGER; p2: INTEGER; VAR [nil] p3: SIZE): BOOL;
    (*END SetBitmapDimensionEx;*)

    PROCEDURE SetBrushOrgEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: POINT): BOOL;
    (*END SetBrushOrgEx;*)

    PROCEDURE GetTextFaceA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: PtrSTR): INTEGER;
    (*END GetTextFaceA;*)

    PROCEDURE GetTextFaceW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: PtrWSTR): INTEGER;
    (*END GetTextFaceW;*)

    PROCEDURE GetTextFace* ["GDI32.dll", "GetTextFaceA"] (p0: HDC; p1: INTEGER; p2: PtrSTR): INTEGER;
    (*END GetTextFace;*)

    PROCEDURE GetKerningPairsA* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; VAR [nil] p2: KERNINGPAIR): INTEGER;
    (*END GetKerningPairsA;*)

    PROCEDURE GetKerningPairsW* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; VAR [nil] p2: KERNINGPAIR): INTEGER;
    (*END GetKerningPairsW;*)

    PROCEDURE GetKerningPairs* ["GDI32.dll", "GetKerningPairsA"] (p0: HDC; p1: INTEGER; VAR [nil] p2: KERNINGPAIR): INTEGER;
    (*END GetKerningPairs;*)

    PROCEDURE GetDCOrgEx* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: POINT): BOOL;
    (*END GetDCOrgEx;*)

    PROCEDURE FixBrushOrgEx* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; VAR [nil] p3: POINT): BOOL;
    (*END FixBrushOrgEx;*)

    PROCEDURE UnrealizeObject* ["GDI32.dll", ""] (p0: HGDIOBJ): BOOL;
    (*END UnrealizeObject;*)

    PROCEDURE GdiFlush* ["GDI32.dll", ""] (): BOOL;
    (*END GdiFlush;*)

    PROCEDURE GdiSetBatchLimit* ["GDI32.dll", ""] (p0: INTEGER): INTEGER;
    (*END GdiSetBatchLimit;*)

    PROCEDURE GdiGetBatchLimit* ["GDI32.dll", ""] (): INTEGER;
    (*END GdiGetBatchLimit;*)

    PROCEDURE SetICMMode* ["GDI32.dll", ""] (p0: HDC; p1: INTEGER): INTEGER;
    (*END SetICMMode;*)

    PROCEDURE CheckColorsInGamut* ["GDI32.dll", ""] (p0: HDC; p1: PtrVoid; p2: PtrVoid; p3: INTEGER): BOOL;
    (*END CheckColorsInGamut;*)

    PROCEDURE GetColorSpace* ["GDI32.dll", ""] (p0: HDC): HANDLE;
    (*END GetColorSpace;*)

    PROCEDURE GetLogColorSpaceA* ["GDI32.dll", ""] (p0: HCOLORSPACE; VAR [nil] p1: LOGCOLORSPACEA; p2: INTEGER): BOOL;
    (*END GetLogColorSpaceA;*)

    PROCEDURE GetLogColorSpaceW* ["GDI32.dll", ""] (p0: HCOLORSPACE; VAR [nil] p1: LOGCOLORSPACEW; p2: INTEGER): BOOL;
    (*END GetLogColorSpaceW;*)

    PROCEDURE GetLogColorSpace* ["GDI32.dll", "GetLogColorSpaceA"] (p0: HCOLORSPACE; VAR [nil] p1: LOGCOLORSPACEA; p2: INTEGER): BOOL;
    (*END GetLogColorSpace;*)

    PROCEDURE CreateColorSpaceA* ["GDI32.dll", ""] (VAR [nil] p0: LOGCOLORSPACEA): HCOLORSPACE;
    (*END CreateColorSpaceA;*)

    PROCEDURE CreateColorSpaceW* ["GDI32.dll", ""] (VAR [nil] p0: LOGCOLORSPACEW): HCOLORSPACE;
    (*END CreateColorSpaceW;*)

    PROCEDURE CreateColorSpace* ["GDI32.dll", "CreateColorSpaceA"] (VAR [nil] p0: LOGCOLORSPACEA): HCOLORSPACE;
    (*END CreateColorSpace;*)

    PROCEDURE SetColorSpace* ["GDI32.dll", ""] (p0: HDC; p1: HCOLORSPACE): BOOL;
    (*END SetColorSpace;*)

    PROCEDURE DeleteColorSpace* ["GDI32.dll", ""] (p0: HCOLORSPACE): BOOL;
    (*END DeleteColorSpace;*)

    PROCEDURE GetICMProfileA* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: INTEGER; p2: PtrSTR): BOOL;
    (*END GetICMProfileA;*)

    PROCEDURE GetICMProfileW* ["GDI32.dll", ""] (p0: HDC; VAR [nil] p1: INTEGER; p2: PtrWSTR): BOOL;
    (*END GetICMProfileW;*)

    PROCEDURE GetICMProfile* ["GDI32.dll", "GetICMProfileA"] (p0: HDC; VAR [nil] p1: INTEGER; p2: PtrSTR): BOOL;
    (*END GetICMProfile;*)

    PROCEDURE SetICMProfileA* ["GDI32.dll", ""] (p0: HDC; p1: PtrSTR): BOOL;
    (*END SetICMProfileA;*)

    PROCEDURE SetICMProfileW* ["GDI32.dll", ""] (p0: HDC; p1: PtrWSTR): BOOL;
    (*END SetICMProfileW;*)

    PROCEDURE SetICMProfile* ["GDI32.dll", "SetICMProfileA"] (p0: HDC; p1: PtrSTR): BOOL;
    (*END SetICMProfile;*)

    PROCEDURE GetDeviceGammaRamp* ["GDI32.dll", ""] (p0: HDC; p1: PtrVoid): BOOL;
    (*END GetDeviceGammaRamp;*)

    PROCEDURE SetDeviceGammaRamp* ["GDI32.dll", ""] (p0: HDC; p1: PtrVoid): BOOL;
    (*END SetDeviceGammaRamp;*)

    PROCEDURE ColorMatchToTarget* ["GDI32.dll", ""] (p0: HDC; p1: HDC; p2: INTEGER): BOOL;
    (*END ColorMatchToTarget;*)

    PROCEDURE EnumICMProfilesA* ["GDI32.dll", ""] (p0: HDC; p1: ICMENUMPROCA; p2: LPARAM): INTEGER;
    (*END EnumICMProfilesA;*)

    PROCEDURE EnumICMProfilesW* ["GDI32.dll", ""] (p0: HDC; p1: ICMENUMPROCW; p2: LPARAM): INTEGER;
    (*END EnumICMProfilesW;*)

    PROCEDURE EnumICMProfiles* ["GDI32.dll", "EnumICMProfilesA"] (p0: HDC; p1: ICMENUMPROCA; p2: LPARAM): INTEGER;
    (*END EnumICMProfiles;*)

    PROCEDURE wglCopyContext* ["OPENGL32.dll", ""] (p0: HGLRC; p1: HGLRC; p2: INTEGER): BOOL;
    (*END wglCopyContext;*)

    PROCEDURE wglCreateContext* ["OPENGL32.dll", ""] (p0: HDC): HGLRC;
    (*END wglCreateContext;*)

    PROCEDURE wglCreateLayerContext* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER): HGLRC;
    (*END wglCreateLayerContext;*)

    PROCEDURE wglDeleteContext* ["OPENGL32.dll", ""] (p0: HGLRC): BOOL;
    (*END wglDeleteContext;*)

    PROCEDURE wglGetCurrentContext* ["OPENGL32.dll", ""] (): HGLRC;
    (*END wglGetCurrentContext;*)

    PROCEDURE wglGetCurrentDC* ["OPENGL32.dll", ""] (): HDC;
    (*END wglGetCurrentDC;*)

    PROCEDURE wglGetProcAddress* ["OPENGL32.dll", ""] (p0: PtrSTR): ROC;
    (*END wglGetProcAddress;*)

    PROCEDURE wglMakeCurrent* ["OPENGL32.dll", ""] (p0: HDC; p1: HGLRC): BOOL;
    (*END wglMakeCurrent;*)

    PROCEDURE wglShareLists* ["OPENGL32.dll", ""] (p0: HGLRC; p1: HGLRC): BOOL;
    (*END wglShareLists;*)

    PROCEDURE wglUseFontBitmapsA* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER): BOOL;
    (*END wglUseFontBitmapsA;*)

    PROCEDURE wglUseFontBitmapsW* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER): BOOL;
    (*END wglUseFontBitmapsW;*)

    PROCEDURE wglUseFontBitmaps* ["OPENGL32.dll", "wglUseFontBitmapsA"] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER): BOOL;
    (*END wglUseFontBitmaps;*)

    PROCEDURE SwapBuffers* ["GDI32.dll", ""] (p0: HDC): BOOL;
    (*END SwapBuffers;*)

    PROCEDURE wglUseFontOutlinesA* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: SHORTREAL; p5: SHORTREAL; p6: INTEGER; VAR [nil] p7: GLYPHMETRICSFLOAT): BOOL;
    (*END wglUseFontOutlinesA;*)

    PROCEDURE wglUseFontOutlinesW* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: SHORTREAL; p5: SHORTREAL; p6: INTEGER; VAR [nil] p7: GLYPHMETRICSFLOAT): BOOL;
    (*END wglUseFontOutlinesW;*)

    PROCEDURE wglUseFontOutlines* ["OPENGL32.dll", "wglUseFontOutlinesA"] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: SHORTREAL; p5: SHORTREAL; p6: INTEGER; VAR [nil] p7: GLYPHMETRICSFLOAT): BOOL;
    (*END wglUseFontOutlines;*)

    PROCEDURE wglDescribeLayerPlane* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; VAR [nil] p4: LAYERPLANEDESCRIPTOR): BOOL;
    (*END wglDescribeLayerPlane;*)

    PROCEDURE wglSetLayerPaletteEntries* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; VAR [nil] p4: COLORREF): INTEGER;
    (*END wglSetLayerPaletteEntries;*)

    PROCEDURE wglGetLayerPaletteEntries* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: INTEGER; p3: INTEGER; VAR [nil] p4: COLORREF): INTEGER;
    (*END wglGetLayerPaletteEntries;*)

    PROCEDURE wglRealizeLayerPalette* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER; p2: BOOL): BOOL;
    (*END wglRealizeLayerPalette;*)

    PROCEDURE wglSwapLayerBuffers* ["OPENGL32.dll", ""] (p0: HDC; p1: INTEGER): BOOL;
    (*END wglSwapLayerBuffers;*)

    PROCEDURE wvsprintfA* ["USER32.dll", ""] (p0: PtrSTR; p1: PtrSTR; arglist: PtrSTR): INTEGER;
    (*END wvsprintfA;*)

    PROCEDURE wvsprintfW* ["USER32.dll", ""] (p0: PtrWSTR; p1: PtrWSTR; arglist: PtrSTR): INTEGER;
    (*END wvsprintfW;*)

    PROCEDURE wvsprintf* ["USER32.dll", "wvsprintfA"] (p0: PtrSTR; p1: PtrSTR; arglist: PtrSTR): INTEGER;
    (*END wvsprintf;*)

    PROCEDURE [ccall] wsprintfA* ["USER32.dll", ""] (p0: PtrSTR; p1: PtrSTR): INTEGER;
    (*END wsprintfA;*)

    PROCEDURE [ccall] wsprintfW* ["USER32.dll", ""] (p0: PtrWSTR; p1: PtrWSTR): INTEGER;
    (*END wsprintfW;*)

    PROCEDURE [ccall] wsprintf* ["USER32.dll", "wsprintfA"] (p0: PtrSTR; p1: PtrSTR): INTEGER;
    (*END wsprintf;*)

    PROCEDURE LoadKeyboardLayoutA* ["USER32.dll", ""] (pwszKLID: PtrSTR; Flags: SET): HKL;
    (*END LoadKeyboardLayoutA;*)

    PROCEDURE LoadKeyboardLayoutW* ["USER32.dll", ""] (pwszKLID: PtrWSTR; Flags: SET): HKL;
    (*END LoadKeyboardLayoutW;*)

    PROCEDURE LoadKeyboardLayout* ["USER32.dll", "LoadKeyboardLayoutA"] (pwszKLID: PtrSTR; Flags: SET): HKL;
    (*END LoadKeyboardLayout;*)

    PROCEDURE ActivateKeyboardLayout* ["USER32.dll", ""] (hkl: HKL; Flags: SET): HKL;
    (*END ActivateKeyboardLayout;*)

    PROCEDURE ToUnicodeEx* ["USER32.dll", ""] (wVirtKey: INTEGER; wScanCode: INTEGER; VAR [nil] lpKeyState: SHORTCHAR; pwszBuff: PtrWSTR; cchBuff: INTEGER; wFlags: INTEGER; dwhkl: HKL): INTEGER;
    (*END ToUnicodeEx;*)

    PROCEDURE UnloadKeyboardLayout* ["USER32.dll", ""] (hkl: HKL): BOOL;
    (*END UnloadKeyboardLayout;*)

    PROCEDURE GetKeyboardLayoutNameA* ["USER32.dll", ""] (pwszKLID: PtrSTR): BOOL;
    (*END GetKeyboardLayoutNameA;*)

    PROCEDURE GetKeyboardLayoutNameW* ["USER32.dll", ""] (pwszKLID: PtrWSTR): BOOL;
    (*END GetKeyboardLayoutNameW;*)

    PROCEDURE GetKeyboardLayoutName* ["USER32.dll", "GetKeyboardLayoutNameA"] (pwszKLID: PtrSTR): BOOL;
    (*END GetKeyboardLayoutName;*)

    PROCEDURE GetKeyboardLayoutList* ["USER32.dll", ""] (nBuff: INTEGER; VAR [nil] lpList: HKL): INTEGER;
    (*END GetKeyboardLayoutList;*)

    PROCEDURE GetKeyboardLayout* ["USER32.dll", ""] (dwLayout: INTEGER): HKL;
    (*END GetKeyboardLayout;*)

    PROCEDURE CreateDesktopA* ["USER32.dll", ""] (lpszDesktop: PtrSTR; lpszDevice: PtrSTR; VAR [nil] pDevmode: DEVMODEA; dwFlags: SET; dwDesiredAccess: SET; VAR [nil] lpsa: SECURITY_ATTRIBUTES): HDESK;
    (*END CreateDesktopA;*)

    PROCEDURE CreateDesktopW* ["USER32.dll", ""] (lpszDesktop: PtrWSTR; lpszDevice: PtrWSTR; VAR [nil] pDevmode: DEVMODEW; dwFlags: SET; dwDesiredAccess: SET; VAR [nil] lpsa: SECURITY_ATTRIBUTES): HDESK;
    (*END CreateDesktopW;*)

    PROCEDURE CreateDesktop* ["USER32.dll", "CreateDesktopA"] (lpszDesktop: PtrSTR; lpszDevice: PtrSTR; VAR [nil] pDevmode: DEVMODEA; dwFlags: SET; dwDesiredAccess: SET; VAR [nil] lpsa: SECURITY_ATTRIBUTES): HDESK;
    (*END CreateDesktop;*)

    PROCEDURE OpenDesktopA* ["USER32.dll", ""] (lpszDesktop: PtrSTR; dwFlags: SET; fInherit: BOOL; dwDesiredAccess: SET): HDESK;
    (*END OpenDesktopA;*)

    PROCEDURE OpenDesktopW* ["USER32.dll", ""] (lpszDesktop: PtrWSTR; dwFlags: SET; fInherit: BOOL; dwDesiredAccess: SET): HDESK;
    (*END OpenDesktopW;*)

    PROCEDURE OpenDesktop* ["USER32.dll", "OpenDesktopA"] (lpszDesktop: PtrSTR; dwFlags: SET; fInherit: BOOL; dwDesiredAccess: SET): HDESK;
    (*END OpenDesktop;*)

    PROCEDURE OpenInputDesktop* ["USER32.dll", ""] (dwFlags: SET; fInherit: BOOL; dwDesiredAccess: SET): HDESK;
    (*END OpenInputDesktop;*)

    PROCEDURE EnumDesktopsA* ["USER32.dll", ""] (hwinsta: HWINSTA; lpEnumFunc: DESKTOPENUMPROCA; lParam: LPARAM): BOOL;
    (*END EnumDesktopsA;*)

    PROCEDURE EnumDesktopsW* ["USER32.dll", ""] (hwinsta: HWINSTA; lpEnumFunc: DESKTOPENUMPROCW; lParam: LPARAM): BOOL;
    (*END EnumDesktopsW;*)

    PROCEDURE EnumDesktops* ["USER32.dll", "EnumDesktopsA"] (hwinsta: HWINSTA; lpEnumFunc: DESKTOPENUMPROCA; lParam: LPARAM): BOOL;
    (*END EnumDesktops;*)

    PROCEDURE EnumDesktopWindows* ["USER32.dll", ""] (hDesktop: HDESK; lpfn: WNDENUMPROC; lParam: LPARAM): BOOL;
    (*END EnumDesktopWindows;*)

    PROCEDURE SwitchDesktop* ["USER32.dll", ""] (hDesktop: HDESK): BOOL;
    (*END SwitchDesktop;*)

    PROCEDURE SetThreadDesktop* ["USER32.dll", ""] (hDesktop: HDESK): BOOL;
    (*END SetThreadDesktop;*)

    PROCEDURE CloseDesktop* ["USER32.dll", ""] (hDesktop: HDESK): BOOL;
    (*END CloseDesktop;*)

    PROCEDURE GetThreadDesktop* ["USER32.dll", ""] (dwThreadId: INTEGER): HDESK;
    (*END GetThreadDesktop;*)

    PROCEDURE CreateWindowStationA* ["USER32.dll", ""] (lpwinsta: PtrSTR; dwReserved: INTEGER; dwDesiredAccess: SET; VAR [nil] lpsa: SECURITY_ATTRIBUTES): HWINSTA;
    (*END CreateWindowStationA;*)

    PROCEDURE CreateWindowStationW* ["USER32.dll", ""] (lpwinsta: PtrWSTR; dwReserved: INTEGER; dwDesiredAccess: SET; VAR [nil] lpsa: SECURITY_ATTRIBUTES): HWINSTA;
    (*END CreateWindowStationW;*)

    PROCEDURE CreateWindowStation* ["USER32.dll", "CreateWindowStationA"] (lpwinsta: PtrSTR; dwReserved: INTEGER; dwDesiredAccess: SET; VAR [nil] lpsa: SECURITY_ATTRIBUTES): HWINSTA;
    (*END CreateWindowStation;*)

    PROCEDURE OpenWindowStationA* ["USER32.dll", ""] (lpszWinSta: PtrSTR; fInherit: BOOL; dwDesiredAccess: SET): HWINSTA;
    (*END OpenWindowStationA;*)

    PROCEDURE OpenWindowStationW* ["USER32.dll", ""] (lpszWinSta: PtrWSTR; fInherit: BOOL; dwDesiredAccess: SET): HWINSTA;
    (*END OpenWindowStationW;*)

    PROCEDURE OpenWindowStation* ["USER32.dll", "OpenWindowStationA"] (lpszWinSta: PtrSTR; fInherit: BOOL; dwDesiredAccess: SET): HWINSTA;
    (*END OpenWindowStation;*)

    PROCEDURE EnumWindowStationsA* ["USER32.dll", ""] (lpEnumFunc: WINSTAENUMPROCA; lParam: LPARAM): BOOL;
    (*END EnumWindowStationsA;*)

    PROCEDURE EnumWindowStationsW* ["USER32.dll", ""] (lpEnumFunc: WINSTAENUMPROCW; lParam: LPARAM): BOOL;
    (*END EnumWindowStationsW;*)

    PROCEDURE EnumWindowStations* ["USER32.dll", "EnumWindowStationsA"] (lpEnumFunc: WINSTAENUMPROCA; lParam: LPARAM): BOOL;
    (*END EnumWindowStations;*)

    PROCEDURE CloseWindowStation* ["USER32.dll", ""] (hWinSta: HWINSTA): BOOL;
    (*END CloseWindowStation;*)

    PROCEDURE SetProcessWindowStation* ["USER32.dll", ""] (hWinSta: HWINSTA): BOOL;
    (*END SetProcessWindowStation;*)

    PROCEDURE GetProcessWindowStation* ["USER32.dll", ""] (): HWINSTA;
    (*END GetProcessWindowStation;*)

    PROCEDURE SetUserObjectSecurity* ["USER32.dll", ""] (hObj: HANDLE; VAR [nil] pSIRequested: INTEGER; pSID: PSECURITY_DESCRIPTOR): BOOL;
    (*END SetUserObjectSecurity;*)

    PROCEDURE GetUserObjectSecurity* ["USER32.dll", ""] (hObj: HANDLE; VAR [nil] pSIRequested: INTEGER; pSID: PSECURITY_DESCRIPTOR; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetUserObjectSecurity;*)

    PROCEDURE GetUserObjectInformationA* ["USER32.dll", ""] (hObj: HANDLE; nIndex: INTEGER; pvInfo: PtrVoid; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetUserObjectInformationA;*)

    PROCEDURE GetUserObjectInformationW* ["USER32.dll", ""] (hObj: HANDLE; nIndex: INTEGER; pvInfo: PtrVoid; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetUserObjectInformationW;*)

    PROCEDURE GetUserObjectInformation* ["USER32.dll", "GetUserObjectInformationA"] (hObj: HANDLE; nIndex: INTEGER; pvInfo: PtrVoid; nLength: INTEGER; VAR [nil] lpnLengthNeeded: INTEGER): BOOL;
    (*END GetUserObjectInformation;*)

    PROCEDURE SetUserObjectInformationA* ["USER32.dll", ""] (hObj: HANDLE; nIndex: INTEGER; pvInfo: PtrVoid; nLength: INTEGER): BOOL;
    (*END SetUserObjectInformationA;*)

    PROCEDURE SetUserObjectInformationW* ["USER32.dll", ""] (hObj: HANDLE; nIndex: INTEGER; pvInfo: PtrVoid; nLength: INTEGER): BOOL;
    (*END SetUserObjectInformationW;*)

    PROCEDURE SetUserObjectInformation* ["USER32.dll", "SetUserObjectInformationA"] (hObj: HANDLE; nIndex: INTEGER; pvInfo: PtrVoid; nLength: INTEGER): BOOL;
    (*END SetUserObjectInformation;*)

    PROCEDURE RegisterWindowMessageA* ["USER32.dll", ""] (lpString: PtrSTR): INTEGER;
    (*END RegisterWindowMessageA;*)

    PROCEDURE RegisterWindowMessageW* ["USER32.dll", ""] (lpString: PtrWSTR): INTEGER;
    (*END RegisterWindowMessageW;*)

    PROCEDURE RegisterWindowMessage* ["USER32.dll", "RegisterWindowMessageA"] (lpString: PtrSTR): INTEGER;
    (*END RegisterWindowMessage;*)

    PROCEDURE DrawEdge* ["USER32.dll", ""] (hdc: HDC; VAR [nil] qrc: RECT; edge: SET; grfFlags: SET): BOOL;
    (*END DrawEdge;*)

    PROCEDURE DrawFrameControl* ["USER32.dll", ""] (p0: HDC; VAR [nil] p1: RECT; p2: INTEGER; p3: SET): BOOL;
    (*END DrawFrameControl;*)

    PROCEDURE DrawCaption* ["USER32.dll", ""] (p0: HWND; p1: HDC; VAR [nil] p2: RECT; p3: INTEGER): BOOL;
    (*END DrawCaption;*)

    PROCEDURE DrawAnimatedRects* ["USER32.dll", ""] (hwnd: HWND; idAni: INTEGER; VAR [nil] lprcFrom: RECT; VAR [nil] lprcTo: RECT): BOOL;
    (*END DrawAnimatedRects;*)

    PROCEDURE GetMessageA* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG; hWnd: HWND; wMsgFilterMin: INTEGER; wMsgFilterMax: INTEGER): BOOL;
    (*END GetMessageA;*)

    PROCEDURE GetMessageW* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG; hWnd: HWND; wMsgFilterMin: INTEGER; wMsgFilterMax: INTEGER): BOOL;
    (*END GetMessageW;*)

    PROCEDURE GetMessage* ["USER32.dll", "GetMessageA"] (VAR [nil] lpMsg: MSG; hWnd: HWND; wMsgFilterMin: INTEGER; wMsgFilterMax: INTEGER): BOOL;
    (*END GetMessage;*)

    PROCEDURE TranslateMessage* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG): BOOL;
    (*END TranslateMessage;*)

    PROCEDURE DispatchMessageA* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG): INTEGER;
    (*END DispatchMessageA;*)

    PROCEDURE DispatchMessageW* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG): INTEGER;
    (*END DispatchMessageW;*)

    PROCEDURE DispatchMessage* ["USER32.dll", "DispatchMessageA"] (VAR [nil] lpMsg: MSG): INTEGER;
    (*END DispatchMessage;*)

    PROCEDURE SetMessageQueue* ["USER32.dll", ""] (cMessagesMax: INTEGER): BOOL;
    (*END SetMessageQueue;*)

    PROCEDURE PeekMessageA* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG; hWnd: HWND; wMsgFilterMin: INTEGER; wMsgFilterMax: INTEGER; wRemoveMsg: INTEGER): BOOL;
    (*END PeekMessageA;*)

    PROCEDURE PeekMessageW* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG; hWnd: HWND; wMsgFilterMin: INTEGER; wMsgFilterMax: INTEGER; wRemoveMsg: INTEGER): BOOL;
    (*END PeekMessageW;*)

    PROCEDURE PeekMessage* ["USER32.dll", "PeekMessageA"] (VAR [nil] lpMsg: MSG; hWnd: HWND; wMsgFilterMin: INTEGER; wMsgFilterMax: INTEGER; wRemoveMsg: INTEGER): BOOL;
    (*END PeekMessage;*)

    PROCEDURE RegisterHotKey* ["USER32.dll", ""] (hWnd: HWND; id: INTEGER; fsModifiers: INTEGER; vk: INTEGER): BOOL;
    (*END RegisterHotKey;*)

    PROCEDURE UnregisterHotKey* ["USER32.dll", ""] (hWnd: HWND; id: INTEGER): BOOL;
    (*END UnregisterHotKey;*)

    PROCEDURE ExitWindowsEx* ["USER32.dll", ""] (uFlags: SET; dwReserved: INTEGER): BOOL;
    (*END ExitWindowsEx;*)

    PROCEDURE SwapMouseButton* ["USER32.dll", ""] (fSwap: BOOL): BOOL;
    (*END SwapMouseButton;*)

    PROCEDURE GetMessagePos* ["USER32.dll", ""] (): INTEGER;
    (*END GetMessagePos;*)

    PROCEDURE GetMessageTime* ["USER32.dll", ""] (): INTEGER;
    (*END GetMessageTime;*)

    PROCEDURE GetMessageExtraInfo* ["USER32.dll", ""] (): INTEGER;
    (*END GetMessageExtraInfo;*)

    PROCEDURE SetMessageExtraInfo* ["USER32.dll", ""] (lParam: LPARAM): LPARAM;
    (*END SetMessageExtraInfo;*)

    PROCEDURE SendMessageA* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END SendMessageA;*)

    PROCEDURE SendMessageW* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END SendMessageW;*)

    PROCEDURE SendMessage* ["USER32.dll", "SendMessageA"] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END SendMessage;*)

    PROCEDURE SendMessageTimeoutA* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM; fuFlags: SET; uTimeout: INTEGER; VAR [nil] lpdwResult: INTEGER): LRESULT;
    (*END SendMessageTimeoutA;*)

    PROCEDURE SendMessageTimeoutW* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM; fuFlags: SET; uTimeout: INTEGER; VAR [nil] lpdwResult: INTEGER): LRESULT;
    (*END SendMessageTimeoutW;*)

    PROCEDURE SendMessageTimeout* ["USER32.dll", "SendMessageTimeoutA"] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM; fuFlags: SET; uTimeout: INTEGER; VAR [nil] lpdwResult: INTEGER): LRESULT;
    (*END SendMessageTimeout;*)

    PROCEDURE SendNotifyMessageA* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END SendNotifyMessageA;*)

    PROCEDURE SendNotifyMessageW* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END SendNotifyMessageW;*)

    PROCEDURE SendNotifyMessage* ["USER32.dll", "SendNotifyMessageA"] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END SendNotifyMessage;*)

    PROCEDURE SendMessageCallbackA* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM; lpResultCallBack: SENDASYNCPROC; dwData: INTEGER): BOOL;
    (*END SendMessageCallbackA;*)

    PROCEDURE SendMessageCallbackW* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM; lpResultCallBack: SENDASYNCPROC; dwData: INTEGER): BOOL;
    (*END SendMessageCallbackW;*)

    PROCEDURE SendMessageCallback* ["USER32.dll", "SendMessageCallbackA"] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM; lpResultCallBack: SENDASYNCPROC; dwData: INTEGER): BOOL;
    (*END SendMessageCallback;*)

    PROCEDURE BroadcastSystemMessageA* ["USER32.dll", ""] (p0: SET; VAR [nil] p1: SET; p2: INTEGER; p3: WPARAM; p4: LPARAM): INTEGER;
    (*END BroadcastSystemMessageA;*)

    PROCEDURE BroadcastSystemMessageW* ["USER32.dll", ""] (p0: SET; VAR [nil] p1: SET; p2: INTEGER; p3: WPARAM; p4: LPARAM): INTEGER;
    (*END BroadcastSystemMessageW;*)

    PROCEDURE BroadcastSystemMessage* ["USER32.dll", "BroadcastSystemMessageA"] (p0: SET; VAR [nil] p1: SET; p2: INTEGER; p3: WPARAM; p4: LPARAM): INTEGER;
    (*END BroadcastSystemMessage;*)

    PROCEDURE PostMessageA* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END PostMessageA;*)

    PROCEDURE PostMessageW* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END PostMessageW;*)

    PROCEDURE PostMessage* ["USER32.dll", "PostMessageA"] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END PostMessage;*)

    PROCEDURE PostThreadMessageA* ["USER32.dll", ""] (idThread: INTEGER; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END PostThreadMessageA;*)

    PROCEDURE PostThreadMessageW* ["USER32.dll", ""] (idThread: INTEGER; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END PostThreadMessageW;*)

    PROCEDURE PostThreadMessage* ["USER32.dll", "PostThreadMessageA"] (idThread: INTEGER; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): BOOL;
    (*END PostThreadMessage;*)

    PROCEDURE AttachThreadInput* ["USER32.dll", ""] (idAttach: INTEGER; idAttachTo: INTEGER; fAttach: BOOL): BOOL;
    (*END AttachThreadInput;*)

    PROCEDURE ReplyMessage* ["USER32.dll", ""] (lResult: LRESULT): BOOL;
    (*END ReplyMessage;*)

    PROCEDURE WaitMessage* ["USER32.dll", ""] (): BOOL;
    (*END WaitMessage;*)

    PROCEDURE WaitForInputIdle* ["USER32.dll", ""] (hProcess: HANDLE; dwMilliseconds: INTEGER): INTEGER;
    (*END WaitForInputIdle;*)

    PROCEDURE DefWindowProcA* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefWindowProcA;*)

    PROCEDURE DefWindowProcW* ["USER32.dll", ""] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefWindowProcW;*)

    PROCEDURE DefWindowProc* ["USER32.dll", "DefWindowProcA"] (hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefWindowProc;*)

    PROCEDURE PostQuitMessage* ["USER32.dll", ""] (nExitCode: INTEGER);
    (*END PostQuitMessage;*)

    PROCEDURE CallWindowProcA* ["USER32.dll", ""] (lpPrevWndFunc: FARPROC; hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END CallWindowProcA;*)

    PROCEDURE CallWindowProcW* ["USER32.dll", ""] (lpPrevWndFunc: FARPROC; hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END CallWindowProcW;*)

    PROCEDURE CallWindowProc* ["USER32.dll", "CallWindowProcA"] (lpPrevWndFunc: FARPROC; hWnd: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END CallWindowProc;*)

    PROCEDURE InSendMessage* ["USER32.dll", ""] (): BOOL;
    (*END InSendMessage;*)

    PROCEDURE GetDoubleClickTime* ["USER32.dll", ""] (): INTEGER;
    (*END GetDoubleClickTime;*)

    PROCEDURE SetDoubleClickTime* ["USER32.dll", ""] (p0: INTEGER): BOOL;
    (*END SetDoubleClickTime;*)

    PROCEDURE RegisterClassA* ["USER32.dll", ""] (VAR [nil] lpWndClass: WNDCLASSA): ATOM;
    (*END RegisterClassA;*)

    PROCEDURE RegisterClassW* ["USER32.dll", ""] (VAR [nil] lpWndClass: WNDCLASSW): ATOM;
    (*END RegisterClassW;*)

    PROCEDURE RegisterClass* ["USER32.dll", "RegisterClassA"] (VAR [nil] lpWndClass: WNDCLASSA): ATOM;
    (*END RegisterClass;*)

    PROCEDURE UnregisterClassA* ["USER32.dll", ""] (lpClassName: PtrSTR; hInstance: HINSTANCE): BOOL;
    (*END UnregisterClassA;*)

    PROCEDURE UnregisterClassW* ["USER32.dll", ""] (lpClassName: PtrWSTR; hInstance: HINSTANCE): BOOL;
    (*END UnregisterClassW;*)

    PROCEDURE UnregisterClass* ["USER32.dll", "UnregisterClassA"] (lpClassName: PtrSTR; hInstance: HINSTANCE): BOOL;
    (*END UnregisterClass;*)

    PROCEDURE GetClassInfoA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpClassName: PtrSTR; VAR [nil] lpWndClass: WNDCLASSA): BOOL;
    (*END GetClassInfoA;*)

    PROCEDURE GetClassInfoW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpClassName: PtrWSTR; VAR [nil] lpWndClass: WNDCLASSW): BOOL;
    (*END GetClassInfoW;*)

    PROCEDURE GetClassInfo* ["USER32.dll", "GetClassInfoA"] (hInstance: HINSTANCE; lpClassName: PtrSTR; VAR [nil] lpWndClass: WNDCLASSA): BOOL;
    (*END GetClassInfo;*)

    PROCEDURE RegisterClassExA* ["USER32.dll", ""] (VAR [nil] p0: WNDCLASSEXA): ATOM;
    (*END RegisterClassExA;*)

    PROCEDURE RegisterClassExW* ["USER32.dll", ""] (VAR [nil] p0: WNDCLASSEXW): ATOM;
    (*END RegisterClassExW;*)

    PROCEDURE RegisterClassEx* ["USER32.dll", "RegisterClassExA"] (VAR [nil] p0: WNDCLASSEXA): ATOM;
    (*END RegisterClassEx;*)

    PROCEDURE GetClassInfoExA* ["USER32.dll", ""] (p0: HINSTANCE; p1: PtrSTR; VAR [nil] p2: WNDCLASSEXA): BOOL;
    (*END GetClassInfoExA;*)

    PROCEDURE GetClassInfoExW* ["USER32.dll", ""] (p0: HINSTANCE; p1: PtrWSTR; VAR [nil] p2: WNDCLASSEXW): BOOL;
    (*END GetClassInfoExW;*)

    PROCEDURE GetClassInfoEx* ["USER32.dll", "GetClassInfoExA"] (p0: HINSTANCE; p1: PtrSTR; VAR [nil] p2: WNDCLASSEXA): BOOL;
    (*END GetClassInfoEx;*)

    PROCEDURE CreateWindowExA* ["USER32.dll", ""] (dwExStyle: SET; lpClassName: PtrSTR; lpWindowName: PtrSTR; dwStyle: SET; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER; hWndParent: HWND; hMenu: HMENU; hInstance: HINSTANCE; lpParam: PtrVoid): HWND;
    (*END CreateWindowExA;*)

    PROCEDURE CreateWindowExW* ["USER32.dll", ""] (dwExStyle: SET; lpClassName: PtrWSTR; lpWindowName: PtrWSTR; dwStyle: SET; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER; hWndParent: HWND; hMenu: HMENU; hInstance: HINSTANCE; lpParam: PtrVoid): HWND;
    (*END CreateWindowExW;*)

    PROCEDURE CreateWindowEx* ["USER32.dll", "CreateWindowExA"] (dwExStyle: SET; lpClassName: PtrSTR; lpWindowName: PtrSTR; dwStyle: SET; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER; hWndParent: HWND; hMenu: HMENU; hInstance: HINSTANCE; lpParam: PtrVoid): HWND;
    (*END CreateWindowEx;*)

    PROCEDURE IsWindow* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END IsWindow;*)

    PROCEDURE IsMenu* ["USER32.dll", ""] (hMenu: HMENU): BOOL;
    (*END IsMenu;*)

    PROCEDURE IsChild* ["USER32.dll", ""] (hWndParent: HWND; hWnd: HWND): BOOL;
    (*END IsChild;*)

    PROCEDURE DestroyWindow* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END DestroyWindow;*)

    PROCEDURE ShowWindow* ["USER32.dll", ""] (hWnd: HWND; nCmdShow: INTEGER): BOOL;
    (*END ShowWindow;*)

    PROCEDURE ShowWindowAsync* ["USER32.dll", ""] (hWnd: HWND; nCmdShow: INTEGER): BOOL;
    (*END ShowWindowAsync;*)

    PROCEDURE FlashWindow* ["USER32.dll", ""] (hWnd: HWND; bInvert: BOOL): BOOL;
    (*END FlashWindow;*)

    PROCEDURE ShowOwnedPopups* ["USER32.dll", ""] (hWnd: HWND; fShow: BOOL): BOOL;
    (*END ShowOwnedPopups;*)

    PROCEDURE OpenIcon* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END OpenIcon;*)

    PROCEDURE CloseWindow* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END CloseWindow;*)

    PROCEDURE MoveWindow* ["USER32.dll", ""] (hWnd: HWND; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER; bRepaint: BOOL): BOOL;
    (*END MoveWindow;*)

    PROCEDURE SetWindowPos* ["USER32.dll", ""] (hWnd: HWND; hWndInsertAfter: HWND; X: INTEGER; Y: INTEGER; cx: INTEGER; cy: INTEGER; uFlags: SET): BOOL;
    (*END SetWindowPos;*)

    PROCEDURE GetWindowPlacement* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpwndpl: WINDOWPLACEMENT): BOOL;
    (*END GetWindowPlacement;*)

    PROCEDURE SetWindowPlacement* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpwndpl: WINDOWPLACEMENT): BOOL;
    (*END SetWindowPlacement;*)

    PROCEDURE BeginDeferWindowPos* ["USER32.dll", ""] (nNumWindows: INTEGER): HDWP;
    (*END BeginDeferWindowPos;*)

    PROCEDURE DeferWindowPos* ["USER32.dll", ""] (hWinPosInfo: HDWP; hWnd: HWND; hWndInsertAfter: HWND; x: INTEGER; y: INTEGER; cx: INTEGER; cy: INTEGER; uFlags: SET): HDWP;
    (*END DeferWindowPos;*)

    PROCEDURE EndDeferWindowPos* ["USER32.dll", ""] (hWinPosInfo: HDWP): BOOL;
    (*END EndDeferWindowPos;*)

    PROCEDURE IsWindowVisible* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END IsWindowVisible;*)

    PROCEDURE IsIconic* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END IsIconic;*)

    PROCEDURE AnyPopup* ["USER32.dll", ""] (): BOOL;
    (*END AnyPopup;*)

    PROCEDURE BringWindowToTop* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END BringWindowToTop;*)

    PROCEDURE IsZoomed* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END IsZoomed;*)

    PROCEDURE CreateDialogParamA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpTemplateName: PtrSTR; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): HWND;
    (*END CreateDialogParamA;*)

    PROCEDURE CreateDialogParamW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpTemplateName: PtrWSTR; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): HWND;
    (*END CreateDialogParamW;*)

    PROCEDURE CreateDialogParam* ["USER32.dll", "CreateDialogParamA"] (hInstance: HINSTANCE; lpTemplateName: PtrSTR; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): HWND;
    (*END CreateDialogParam;*)

    PROCEDURE CreateDialogIndirectParamA* ["USER32.dll", ""] (hInstance: HINSTANCE; VAR [nil] lpTemplate: DLGTEMPLATE; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): HWND;
    (*END CreateDialogIndirectParamA;*)

    PROCEDURE CreateDialogIndirectParamW* ["USER32.dll", ""] (hInstance: HINSTANCE; VAR [nil] lpTemplate: DLGTEMPLATE; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): HWND;
    (*END CreateDialogIndirectParamW;*)

    PROCEDURE CreateDialogIndirectParam* ["USER32.dll", "CreateDialogIndirectParamA"] (hInstance: HINSTANCE; VAR [nil] lpTemplate: DLGTEMPLATE; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): HWND;
    (*END CreateDialogIndirectParam;*)

    PROCEDURE DialogBoxParamA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpTemplateName: PtrSTR; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): INTEGER;
    (*END DialogBoxParamA;*)

    PROCEDURE DialogBoxParamW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpTemplateName: PtrWSTR; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): INTEGER;
    (*END DialogBoxParamW;*)

    PROCEDURE DialogBoxParam* ["USER32.dll", "DialogBoxParamA"] (hInstance: HINSTANCE; lpTemplateName: PtrSTR; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): INTEGER;
    (*END DialogBoxParam;*)

    PROCEDURE DialogBoxIndirectParamA* ["USER32.dll", ""] (hInstance: HINSTANCE; VAR [nil] hDialogTemplate: DLGTEMPLATE; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): INTEGER;
    (*END DialogBoxIndirectParamA;*)

    PROCEDURE DialogBoxIndirectParamW* ["USER32.dll", ""] (hInstance: HINSTANCE; VAR [nil] hDialogTemplate: DLGTEMPLATE; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): INTEGER;
    (*END DialogBoxIndirectParamW;*)

    PROCEDURE DialogBoxIndirectParam* ["USER32.dll", "DialogBoxIndirectParamA"] (hInstance: HINSTANCE; VAR [nil] hDialogTemplate: DLGTEMPLATE; hWndParent: HWND; lpDialogFunc: DLGPROC; dwInitParam: LPARAM): INTEGER;
    (*END DialogBoxIndirectParam;*)

    PROCEDURE EndDialog* ["USER32.dll", ""] (hDlg: HWND; nResult: INTEGER): BOOL;
    (*END EndDialog;*)

    PROCEDURE GetDlgItem* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER): HWND;
    (*END GetDlgItem;*)

    PROCEDURE SetDlgItemInt* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; uValue: INTEGER; bSigned: BOOL): BOOL;
    (*END SetDlgItemInt;*)

    PROCEDURE GetDlgItemInt* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; VAR [nil] lpTranslated: BOOL; bSigned: BOOL): INTEGER;
    (*END GetDlgItemInt;*)

    PROCEDURE SetDlgItemTextA* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; lpString: PtrSTR): BOOL;
    (*END SetDlgItemTextA;*)

    PROCEDURE SetDlgItemTextW* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; lpString: PtrWSTR): BOOL;
    (*END SetDlgItemTextW;*)

    PROCEDURE SetDlgItemText* ["USER32.dll", "SetDlgItemTextA"] (hDlg: HWND; nIDDlgItem: INTEGER; lpString: PtrSTR): BOOL;
    (*END SetDlgItemText;*)

    PROCEDURE GetDlgItemTextA* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; lpString: PtrSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetDlgItemTextA;*)

    PROCEDURE GetDlgItemTextW* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; lpString: PtrWSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetDlgItemTextW;*)

    PROCEDURE GetDlgItemText* ["USER32.dll", "GetDlgItemTextA"] (hDlg: HWND; nIDDlgItem: INTEGER; lpString: PtrSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetDlgItemText;*)

    PROCEDURE CheckDlgButton* ["USER32.dll", ""] (hDlg: HWND; nIDButton: INTEGER; uCheck: SET): BOOL;
    (*END CheckDlgButton;*)

    PROCEDURE CheckRadioButton* ["USER32.dll", ""] (hDlg: HWND; nIDFirstButton: INTEGER; nIDLastButton: INTEGER; nIDCheckButton: INTEGER): BOOL;
    (*END CheckRadioButton;*)

    PROCEDURE IsDlgButtonChecked* ["USER32.dll", ""] (hDlg: HWND; nIDButton: INTEGER): INTEGER;
    (*END IsDlgButtonChecked;*)

    PROCEDURE SendDlgItemMessageA* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): INTEGER;
    (*END SendDlgItemMessageA;*)

    PROCEDURE SendDlgItemMessageW* ["USER32.dll", ""] (hDlg: HWND; nIDDlgItem: INTEGER; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): INTEGER;
    (*END SendDlgItemMessageW;*)

    PROCEDURE SendDlgItemMessage* ["USER32.dll", "SendDlgItemMessageA"] (hDlg: HWND; nIDDlgItem: INTEGER; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): INTEGER;
    (*END SendDlgItemMessage;*)

    PROCEDURE GetNextDlgGroupItem* ["USER32.dll", ""] (hDlg: HWND; hCtl: HWND; bPrevious: BOOL): HWND;
    (*END GetNextDlgGroupItem;*)

    PROCEDURE GetNextDlgTabItem* ["USER32.dll", ""] (hDlg: HWND; hCtl: HWND; bPrevious: BOOL): HWND;
    (*END GetNextDlgTabItem;*)

    PROCEDURE GetDlgCtrlID* ["USER32.dll", ""] (hWnd: HWND): INTEGER;
    (*END GetDlgCtrlID;*)

    PROCEDURE GetDialogBaseUnits* ["USER32.dll", ""] (): INTEGER;
    (*END GetDialogBaseUnits;*)

    PROCEDURE DefDlgProcA* ["USER32.dll", ""] (hDlg: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefDlgProcA;*)

    PROCEDURE DefDlgProcW* ["USER32.dll", ""] (hDlg: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefDlgProcW;*)

    PROCEDURE DefDlgProc* ["USER32.dll", "DefDlgProcA"] (hDlg: HWND; Msg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefDlgProc;*)

    PROCEDURE CallMsgFilterA* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG; nCode: INTEGER): BOOL;
    (*END CallMsgFilterA;*)

    PROCEDURE CallMsgFilterW* ["USER32.dll", ""] (VAR [nil] lpMsg: MSG; nCode: INTEGER): BOOL;
    (*END CallMsgFilterW;*)

    PROCEDURE CallMsgFilter* ["USER32.dll", "CallMsgFilterA"] (VAR [nil] lpMsg: MSG; nCode: INTEGER): BOOL;
    (*END CallMsgFilter;*)

    PROCEDURE OpenClipboard* ["USER32.dll", ""] (hWndNewOwner: HWND): BOOL;
    (*END OpenClipboard;*)

    PROCEDURE CloseClipboard* ["USER32.dll", ""] (): BOOL;
    (*END CloseClipboard;*)

    PROCEDURE GetClipboardOwner* ["USER32.dll", ""] (): HWND;
    (*END GetClipboardOwner;*)

    PROCEDURE SetClipboardViewer* ["USER32.dll", ""] (hWndNewViewer: HWND): HWND;
    (*END SetClipboardViewer;*)

    PROCEDURE GetClipboardViewer* ["USER32.dll", ""] (): HWND;
    (*END GetClipboardViewer;*)

    PROCEDURE ChangeClipboardChain* ["USER32.dll", ""] (hWndRemove: HWND; hWndNewNext: HWND): BOOL;
    (*END ChangeClipboardChain;*)

    PROCEDURE SetClipboardData* ["USER32.dll", ""] (uFormat: INTEGER; hMem: HANDLE): HANDLE;
    (*END SetClipboardData;*)

    PROCEDURE GetClipboardData* ["USER32.dll", ""] (uFormat: INTEGER): HANDLE;
    (*END GetClipboardData;*)

    PROCEDURE RegisterClipboardFormatA* ["USER32.dll", ""] (lpszFormat: PtrSTR): INTEGER;
    (*END RegisterClipboardFormatA;*)

    PROCEDURE RegisterClipboardFormatW* ["USER32.dll", ""] (lpszFormat: PtrWSTR): INTEGER;
    (*END RegisterClipboardFormatW;*)

    PROCEDURE RegisterClipboardFormat* ["USER32.dll", "RegisterClipboardFormatA"] (lpszFormat: PtrSTR): INTEGER;
    (*END RegisterClipboardFormat;*)

    PROCEDURE CountClipboardFormats* ["USER32.dll", ""] (): INTEGER;
    (*END CountClipboardFormats;*)

    PROCEDURE EnumClipboardFormats* ["USER32.dll", ""] (format: INTEGER): INTEGER;
    (*END EnumClipboardFormats;*)

    PROCEDURE GetClipboardFormatNameA* ["USER32.dll", ""] (format: INTEGER; lpszFormatName: PtrSTR; cchMaxCount: INTEGER): INTEGER;
    (*END GetClipboardFormatNameA;*)

    PROCEDURE GetClipboardFormatNameW* ["USER32.dll", ""] (format: INTEGER; lpszFormatName: PtrWSTR; cchMaxCount: INTEGER): INTEGER;
    (*END GetClipboardFormatNameW;*)

    PROCEDURE GetClipboardFormatName* ["USER32.dll", "GetClipboardFormatNameA"] (format: INTEGER; lpszFormatName: PtrSTR; cchMaxCount: INTEGER): INTEGER;
    (*END GetClipboardFormatName;*)

    PROCEDURE EmptyClipboard* ["USER32.dll", ""] (): BOOL;
    (*END EmptyClipboard;*)

    PROCEDURE IsClipboardFormatAvailable* ["USER32.dll", ""] (format: INTEGER): BOOL;
    (*END IsClipboardFormatAvailable;*)

    PROCEDURE GetPriorityClipboardFormat* ["USER32.dll", ""] (VAR [nil] paFormatPriorityList: INTEGER; cFormats: INTEGER): INTEGER;
    (*END GetPriorityClipboardFormat;*)

    PROCEDURE GetOpenClipboardWindow* ["USER32.dll", ""] (): HWND;
    (*END GetOpenClipboardWindow;*)

    PROCEDURE CharToOemA* ["USER32.dll", ""] (lpszSrc: PtrSTR; lpszDst: PtrSTR): BOOL;
    (*END CharToOemA;*)

    PROCEDURE CharToOemW* ["USER32.dll", ""] (lpszSrc: PtrWSTR; lpszDst: PtrSTR): BOOL;
    (*END CharToOemW;*)

    PROCEDURE CharToOem* ["USER32.dll", "CharToOemA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR): BOOL;
    (*END CharToOem;*)

    PROCEDURE OemToCharA* ["USER32.dll", ""] (lpszSrc: PtrSTR; lpszDst: PtrSTR): BOOL;
    (*END OemToCharA;*)

    PROCEDURE OemToCharW* ["USER32.dll", ""] (lpszSrc: PtrSTR; lpszDst: PtrWSTR): BOOL;
    (*END OemToCharW;*)

    PROCEDURE OemToChar* ["USER32.dll", "OemToCharA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR): BOOL;
    (*END OemToChar;*)

    PROCEDURE CharToOemBuffA* ["USER32.dll", ""] (lpszSrc: PtrSTR; lpszDst: PtrSTR; cchDstLength: INTEGER): BOOL;
    (*END CharToOemBuffA;*)

    PROCEDURE CharToOemBuffW* ["USER32.dll", ""] (lpszSrc: PtrWSTR; lpszDst: PtrSTR; cchDstLength: INTEGER): BOOL;
    (*END CharToOemBuffW;*)

    PROCEDURE CharToOemBuff* ["USER32.dll", "CharToOemBuffA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR; cchDstLength: INTEGER): BOOL;
    (*END CharToOemBuff;*)

    PROCEDURE OemToCharBuffA* ["USER32.dll", ""] (lpszSrc: PtrSTR; lpszDst: PtrSTR; cchDstLength: INTEGER): BOOL;
    (*END OemToCharBuffA;*)

    PROCEDURE OemToCharBuffW* ["USER32.dll", ""] (lpszSrc: PtrSTR; lpszDst: PtrWSTR; cchDstLength: INTEGER): BOOL;
    (*END OemToCharBuffW;*)

    PROCEDURE OemToCharBuff* ["USER32.dll", "OemToCharBuffA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR; cchDstLength: INTEGER): BOOL;
    (*END OemToCharBuff;*)

    PROCEDURE CharUpperA* ["USER32.dll", ""] (lpsz: PtrSTR): PtrSTR;
    (*END CharUpperA;*)

    PROCEDURE CharUpperW* ["USER32.dll", ""] (lpsz: PtrWSTR): PtrWSTR;
    (*END CharUpperW;*)

    PROCEDURE CharUpper* ["USER32.dll", "CharUpperA"] (lpsz: PtrSTR): PtrSTR;
    (*END CharUpper;*)

    PROCEDURE CharUpperBuffA* ["USER32.dll", ""] (lpsz: PtrSTR; cchLength: INTEGER): INTEGER;
    (*END CharUpperBuffA;*)

    PROCEDURE CharUpperBuffW* ["USER32.dll", ""] (lpsz: PtrWSTR; cchLength: INTEGER): INTEGER;
    (*END CharUpperBuffW;*)

    PROCEDURE CharUpperBuff* ["USER32.dll", "CharUpperBuffA"] (lpsz: PtrSTR; cchLength: INTEGER): INTEGER;
    (*END CharUpperBuff;*)

    PROCEDURE CharLowerA* ["USER32.dll", ""] (lpsz: PtrSTR): PtrSTR;
    (*END CharLowerA;*)

    PROCEDURE CharLowerW* ["USER32.dll", ""] (lpsz: PtrWSTR): PtrWSTR;
    (*END CharLowerW;*)

    PROCEDURE CharLower* ["USER32.dll", "CharLowerA"] (lpsz: PtrSTR): PtrSTR;
    (*END CharLower;*)

    PROCEDURE CharLowerBuffA* ["USER32.dll", ""] (lpsz: PtrSTR; cchLength: INTEGER): INTEGER;
    (*END CharLowerBuffA;*)

    PROCEDURE CharLowerBuffW* ["USER32.dll", ""] (lpsz: PtrWSTR; cchLength: INTEGER): INTEGER;
    (*END CharLowerBuffW;*)

    PROCEDURE CharLowerBuff* ["USER32.dll", "CharLowerBuffA"] (lpsz: PtrSTR; cchLength: INTEGER): INTEGER;
    (*END CharLowerBuff;*)

    PROCEDURE CharNextA* ["USER32.dll", ""] (lpsz: PtrSTR): PtrSTR;
    (*END CharNextA;*)

    PROCEDURE CharNextW* ["USER32.dll", ""] (lpsz: PtrWSTR): PtrWSTR;
    (*END CharNextW;*)

    PROCEDURE CharNext* ["USER32.dll", "CharNextA"] (lpsz: PtrSTR): PtrSTR;
    (*END CharNext;*)

    PROCEDURE CharPrevA* ["USER32.dll", ""] (lpszStart: PtrSTR; lpszCurrent: PtrSTR): PtrSTR;
    (*END CharPrevA;*)

    PROCEDURE CharPrevW* ["USER32.dll", ""] (lpszStart: PtrWSTR; lpszCurrent: PtrWSTR): PtrWSTR;
    (*END CharPrevW;*)

    PROCEDURE CharPrev* ["USER32.dll", "CharPrevA"] (lpszStart: PtrSTR; lpszCurrent: PtrSTR): PtrSTR;
    (*END CharPrev;*)

    PROCEDURE CharNextExA* ["USER32.dll", ""] (CodePage: SHORTINT; lpCurrentChar: PtrSTR; dwFlags: SET): PtrSTR;
    (*END CharNextExA;*)

    PROCEDURE CharPrevExA* ["USER32.dll", ""] (CodePage: SHORTINT; lpStart: PtrSTR; lpCurrentChar: PtrSTR; dwFlags: SET): PtrSTR;
    (*END CharPrevExA;*)

    PROCEDURE AnsiToOem* ["USER32.dll", "CharToOemA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR): BOOL;
    (*END AnsiToOem;*)

    PROCEDURE OemToAnsi* ["USER32.dll", "OemToCharA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR): BOOL;
    (*END OemToAnsi;*)

    PROCEDURE AnsiToOemBuff* ["USER32.dll", "CharToOemBuffA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR; cchDstLength: INTEGER): BOOL;
    (*END AnsiToOemBuff;*)

    PROCEDURE OemToAnsiBuff* ["USER32.dll", "OemToCharBuffA"] (lpszSrc: PtrSTR; lpszDst: PtrSTR; cchDstLength: INTEGER): BOOL;
    (*END OemToAnsiBuff;*)

    PROCEDURE AnsiUpper* ["USER32.dll", "CharUpperA"] (lpsz: PtrSTR): PtrSTR;
    (*END AnsiUpper;*)

    PROCEDURE AnsiUpperBuff* ["USER32.dll", "CharUpperBuffA"] (lpsz: PtrSTR; cchLength: INTEGER): INTEGER;
    (*END AnsiUpperBuff;*)

    PROCEDURE AnsiLower* ["USER32.dll", "CharLowerA"] (lpsz: PtrSTR): PtrSTR;
    (*END AnsiLower;*)

    PROCEDURE AnsiLowerBuff* ["USER32.dll", "CharLowerBuffA"] (lpsz: PtrSTR; cchLength: INTEGER): INTEGER;
    (*END AnsiLowerBuff;*)

    PROCEDURE AnsiNext* ["USER32.dll", "CharNextA"] (lpsz: PtrSTR): PtrSTR;
    (*END AnsiNext;*)

    PROCEDURE AnsiPrev* ["USER32.dll", "CharPrevA"] (lpszStart: PtrSTR; lpszCurrent: PtrSTR): PtrSTR;
    (*END AnsiPrev;*)

    PROCEDURE IsCharAlphaA* ["USER32.dll", ""] (ch: SHORTCHAR): BOOL;
    (*END IsCharAlphaA;*)

    PROCEDURE IsCharAlphaW* ["USER32.dll", ""] (ch: CHAR): BOOL;
    (*END IsCharAlphaW;*)

    PROCEDURE IsCharAlpha* ["USER32.dll", "IsCharAlphaA"] (ch: SHORTCHAR): BOOL;
    (*END IsCharAlpha;*)

    PROCEDURE IsCharAlphaNumericA* ["USER32.dll", ""] (ch: SHORTCHAR): BOOL;
    (*END IsCharAlphaNumericA;*)

    PROCEDURE IsCharAlphaNumericW* ["USER32.dll", ""] (ch: CHAR): BOOL;
    (*END IsCharAlphaNumericW;*)

    PROCEDURE IsCharAlphaNumeric* ["USER32.dll", "IsCharAlphaNumericA"] (ch: SHORTCHAR): BOOL;
    (*END IsCharAlphaNumeric;*)

    PROCEDURE IsCharUpperA* ["USER32.dll", ""] (ch: SHORTCHAR): BOOL;
    (*END IsCharUpperA;*)

    PROCEDURE IsCharUpperW* ["USER32.dll", ""] (ch: CHAR): BOOL;
    (*END IsCharUpperW;*)

    PROCEDURE IsCharUpper* ["USER32.dll", "IsCharUpperA"] (ch: SHORTCHAR): BOOL;
    (*END IsCharUpper;*)

    PROCEDURE IsCharLowerA* ["USER32.dll", ""] (ch: SHORTCHAR): BOOL;
    (*END IsCharLowerA;*)

    PROCEDURE IsCharLowerW* ["USER32.dll", ""] (ch: CHAR): BOOL;
    (*END IsCharLowerW;*)

    PROCEDURE IsCharLower* ["USER32.dll", "IsCharLowerA"] (ch: SHORTCHAR): BOOL;
    (*END IsCharLower;*)

    PROCEDURE SetFocus* ["USER32.dll", ""] (hWnd: HWND): HWND;
    (*END SetFocus;*)

    PROCEDURE GetActiveWindow* ["USER32.dll", ""] (): HWND;
    (*END GetActiveWindow;*)

    PROCEDURE GetFocus* ["USER32.dll", ""] (): HWND;
    (*END GetFocus;*)

    PROCEDURE GetKBCodePage* ["USER32.dll", ""] (): INTEGER;
    (*END GetKBCodePage;*)

    PROCEDURE GetKeyState* ["USER32.dll", ""] (nVirtKey: INTEGER): SHORTINT;
    (*END GetKeyState;*)

    PROCEDURE GetAsyncKeyState* ["USER32.dll", ""] (vKey: INTEGER): SHORTINT;
    (*END GetAsyncKeyState;*)

    PROCEDURE GetKeyboardState* ["USER32.dll", ""] (VAR [nil] lpKeyState: SHORTCHAR): BOOL;
    (*END GetKeyboardState;*)

    PROCEDURE SetKeyboardState* ["USER32.dll", ""] (VAR [nil] lpKeyState: SHORTCHAR): BOOL;
    (*END SetKeyboardState;*)

    PROCEDURE GetKeyNameTextA* ["USER32.dll", ""] (lParam: INTEGER; lpString: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetKeyNameTextA;*)

    PROCEDURE GetKeyNameTextW* ["USER32.dll", ""] (lParam: INTEGER; lpString: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GetKeyNameTextW;*)

    PROCEDURE GetKeyNameText* ["USER32.dll", "GetKeyNameTextA"] (lParam: INTEGER; lpString: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetKeyNameText;*)

    PROCEDURE GetKeyboardType* ["USER32.dll", ""] (nTypeFlag: INTEGER): INTEGER;
    (*END GetKeyboardType;*)

    PROCEDURE ToAscii* ["USER32.dll", ""] (uVirtKey: INTEGER; uScanCode: INTEGER; VAR [nil] lpKeyState: SHORTCHAR; VAR [nil] lpChar: SHORTINT; uFlags: SET): INTEGER;
    (*END ToAscii;*)

    PROCEDURE ToAsciiEx* ["USER32.dll", ""] (uVirtKey: INTEGER; uScanCode: INTEGER; VAR [nil] lpKeyState: SHORTCHAR; VAR [nil] lpChar: SHORTINT; uFlags: SET; dwhkl: HKL): INTEGER;
    (*END ToAsciiEx;*)

    PROCEDURE ToUnicode* ["USER32.dll", ""] (wVirtKey: INTEGER; wScanCode: INTEGER; VAR [nil] lpKeyState: SHORTCHAR; pwszBuff: PtrWSTR; cchBuff: INTEGER; wFlags: INTEGER): INTEGER;
    (*END ToUnicode;*)

    PROCEDURE OemKeyScan* ["USER32.dll", ""] (wOemChar: SHORTINT): INTEGER;
    (*END OemKeyScan;*)

    PROCEDURE VkKeyScanA* ["USER32.dll", ""] (ch: SHORTCHAR): SHORTINT;
    (*END VkKeyScanA;*)

    PROCEDURE VkKeyScanW* ["USER32.dll", ""] (ch: CHAR): SHORTINT;
    (*END VkKeyScanW;*)

    PROCEDURE VkKeyScan* ["USER32.dll", "VkKeyScanA"] (ch: SHORTCHAR): SHORTINT;
    (*END VkKeyScan;*)

    PROCEDURE VkKeyScanExA* ["USER32.dll", ""] (ch: SHORTCHAR; dwhkl: HKL): SHORTINT;
    (*END VkKeyScanExA;*)

    PROCEDURE VkKeyScanExW* ["USER32.dll", ""] (ch: CHAR; dwhkl: HKL): SHORTINT;
    (*END VkKeyScanExW;*)

    PROCEDURE VkKeyScanEx* ["USER32.dll", "VkKeyScanExA"] (ch: SHORTCHAR; dwhkl: HKL): SHORTINT;
    (*END VkKeyScanEx;*)

    PROCEDURE keybd_event* ["USER32.dll", ""] (bVk: SHORTCHAR; bScan: SHORTCHAR; dwFlags: SET; dwExtraInfo: INTEGER);
    (*END keybd_event;*)

    PROCEDURE mouse_event* ["USER32.dll", ""] (dwFlags: SET; dx: INTEGER; dy: INTEGER; cButtons: INTEGER; dwExtraInfo: INTEGER);
    (*END mouse_event;*)

    PROCEDURE MapVirtualKeyA* ["USER32.dll", ""] (uCode: INTEGER; uMapType: INTEGER): INTEGER;
    (*END MapVirtualKeyA;*)

    PROCEDURE MapVirtualKeyW* ["USER32.dll", ""] (uCode: INTEGER; uMapType: INTEGER): INTEGER;
    (*END MapVirtualKeyW;*)

    PROCEDURE MapVirtualKey* ["USER32.dll", "MapVirtualKeyA"] (uCode: INTEGER; uMapType: INTEGER): INTEGER;
    (*END MapVirtualKey;*)

    PROCEDURE MapVirtualKeyExA* ["USER32.dll", ""] (uCode: INTEGER; uMapType: INTEGER; dwhkl: HKL): INTEGER;
    (*END MapVirtualKeyExA;*)

    PROCEDURE MapVirtualKeyExW* ["USER32.dll", ""] (uCode: INTEGER; uMapType: INTEGER; dwhkl: HKL): INTEGER;
    (*END MapVirtualKeyExW;*)

    PROCEDURE MapVirtualKeyEx* ["USER32.dll", "MapVirtualKeyExA"] (uCode: INTEGER; uMapType: INTEGER; dwhkl: HKL): INTEGER;
    (*END MapVirtualKeyEx;*)

    PROCEDURE GetInputState* ["USER32.dll", ""] (): BOOL;
    (*END GetInputState;*)

    PROCEDURE GetQueueStatus* ["USER32.dll", ""] (flags: SET): INTEGER;
    (*END GetQueueStatus;*)

    PROCEDURE GetCapture* ["USER32.dll", ""] (): HWND;
    (*END GetCapture;*)

    PROCEDURE SetCapture* ["USER32.dll", ""] (hWnd: HWND): HWND;
    (*END SetCapture;*)

    PROCEDURE ReleaseCapture* ["USER32.dll", ""] (): BOOL;
    (*END ReleaseCapture;*)

    PROCEDURE MsgWaitForMultipleObjects* ["USER32.dll", ""] (nCount: INTEGER; VAR [nil] pHandles: HANDLE; fWaitAll: BOOL; dwMilliseconds: INTEGER; dwWakeMask: INTEGER): INTEGER;
    (*END MsgWaitForMultipleObjects;*)

    PROCEDURE MsgWaitForMultipleObjectsEx* ["USER32.dll", ""] (nCount: INTEGER; VAR [nil] pHandles: HANDLE; dwMilliseconds: INTEGER; dwWakeMask: INTEGER; dwFlags: SET): INTEGER;
    (*END MsgWaitForMultipleObjectsEx;*)

    PROCEDURE SetTimer* ["USER32.dll", ""] (hWnd: HWND; nIDEvent: INTEGER; uElapse: INTEGER; lpTimerFunc: TIMERPROC): INTEGER;
    (*END SetTimer;*)

    PROCEDURE KillTimer* ["USER32.dll", ""] (hWnd: HWND; uIDEvent: INTEGER): BOOL;
    (*END KillTimer;*)

    PROCEDURE IsWindowUnicode* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END IsWindowUnicode;*)

    PROCEDURE EnableWindow* ["USER32.dll", ""] (hWnd: HWND; bEnable: BOOL): BOOL;
    (*END EnableWindow;*)

    PROCEDURE IsWindowEnabled* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END IsWindowEnabled;*)

    PROCEDURE LoadAcceleratorsA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpTableName: PtrSTR): HACCEL;
    (*END LoadAcceleratorsA;*)

    PROCEDURE LoadAcceleratorsW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpTableName: PtrWSTR): HACCEL;
    (*END LoadAcceleratorsW;*)

    PROCEDURE LoadAccelerators* ["USER32.dll", "LoadAcceleratorsA"] (hInstance: HINSTANCE; lpTableName: PtrSTR): HACCEL;
    (*END LoadAccelerators;*)

    PROCEDURE CreateAcceleratorTableA* ["USER32.dll", ""] (VAR [nil] p0: ACCEL; p1: INTEGER): HACCEL;
    (*END CreateAcceleratorTableA;*)

    PROCEDURE CreateAcceleratorTableW* ["USER32.dll", ""] (VAR [nil] p0: ACCEL; p1: INTEGER): HACCEL;
    (*END CreateAcceleratorTableW;*)

    PROCEDURE CreateAcceleratorTable* ["USER32.dll", "CreateAcceleratorTableA"] (VAR [nil] p0: ACCEL; p1: INTEGER): HACCEL;
    (*END CreateAcceleratorTable;*)

    PROCEDURE DestroyAcceleratorTable* ["USER32.dll", ""] (hAccel: HACCEL): BOOL;
    (*END DestroyAcceleratorTable;*)

    PROCEDURE CopyAcceleratorTableA* ["USER32.dll", ""] (hAccelSrc: HACCEL; VAR [nil] lpAccelDst: ACCEL; cAccelEntries: INTEGER): INTEGER;
    (*END CopyAcceleratorTableA;*)

    PROCEDURE CopyAcceleratorTableW* ["USER32.dll", ""] (hAccelSrc: HACCEL; VAR [nil] lpAccelDst: ACCEL; cAccelEntries: INTEGER): INTEGER;
    (*END CopyAcceleratorTableW;*)

    PROCEDURE CopyAcceleratorTable* ["USER32.dll", "CopyAcceleratorTableA"] (hAccelSrc: HACCEL; VAR [nil] lpAccelDst: ACCEL; cAccelEntries: INTEGER): INTEGER;
    (*END CopyAcceleratorTable;*)

    PROCEDURE TranslateAcceleratorA* ["USER32.dll", ""] (hWnd: HWND; hAccTable: HACCEL; VAR [nil] lpMsg: MSG): INTEGER;
    (*END TranslateAcceleratorA;*)

    PROCEDURE TranslateAcceleratorW* ["USER32.dll", ""] (hWnd: HWND; hAccTable: HACCEL; VAR [nil] lpMsg: MSG): INTEGER;
    (*END TranslateAcceleratorW;*)

    PROCEDURE TranslateAccelerator* ["USER32.dll", "TranslateAcceleratorA"] (hWnd: HWND; hAccTable: HACCEL; VAR [nil] lpMsg: MSG): INTEGER;
    (*END TranslateAccelerator;*)

    PROCEDURE GetSystemMetrics* ["USER32.dll", ""] (nIndex: INTEGER): INTEGER;
    (*END GetSystemMetrics;*)

    PROCEDURE LoadMenuA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpMenuName: PtrSTR): HMENU;
    (*END LoadMenuA;*)

    PROCEDURE LoadMenuW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpMenuName: PtrWSTR): HMENU;
    (*END LoadMenuW;*)

    PROCEDURE LoadMenu* ["USER32.dll", "LoadMenuA"] (hInstance: HINSTANCE; lpMenuName: PtrSTR): HMENU;
    (*END LoadMenu;*)

    PROCEDURE LoadMenuIndirectA* ["USER32.dll", ""] (lpMenuTemplate: PtrMENUTEMPLATEA): HMENU;
    (*END LoadMenuIndirectA;*)

    PROCEDURE LoadMenuIndirectW* ["USER32.dll", ""] (lpMenuTemplate: PtrMENUTEMPLATEW): HMENU;
    (*END LoadMenuIndirectW;*)

    PROCEDURE LoadMenuIndirect* ["USER32.dll", "LoadMenuIndirectA"] (lpMenuTemplate: PtrMENUTEMPLATEA): HMENU;
    (*END LoadMenuIndirect;*)

    PROCEDURE GetMenu* ["USER32.dll", ""] (hWnd: HWND): HMENU;
    (*END GetMenu;*)

    PROCEDURE SetMenu* ["USER32.dll", ""] (hWnd: HWND; hMenu: HMENU): BOOL;
    (*END SetMenu;*)

    PROCEDURE ChangeMenuA* ["USER32.dll", ""] (hMenu: HMENU; cmd: INTEGER; lpszNewItem: PtrSTR; cmdInsert: INTEGER; flags: SET): BOOL;
    (*END ChangeMenuA;*)

    PROCEDURE ChangeMenuW* ["USER32.dll", ""] (hMenu: HMENU; cmd: INTEGER; lpszNewItem: PtrWSTR; cmdInsert: INTEGER; flags: SET): BOOL;
    (*END ChangeMenuW;*)

    PROCEDURE ChangeMenu* ["USER32.dll", "ChangeMenuA"] (hMenu: HMENU; cmd: INTEGER; lpszNewItem: PtrSTR; cmdInsert: INTEGER; flags: SET): BOOL;
    (*END ChangeMenu;*)

    PROCEDURE HiliteMenuItem* ["USER32.dll", ""] (hWnd: HWND; hMenu: HMENU; uIDHiliteItem: INTEGER; uHilite: INTEGER): BOOL;
    (*END HiliteMenuItem;*)

    PROCEDURE GetMenuStringA* ["USER32.dll", ""] (hMenu: HMENU; uIDItem: INTEGER; lpString: PtrSTR; nMaxCount: INTEGER; uFlag: SET): INTEGER;
    (*END GetMenuStringA;*)

    PROCEDURE GetMenuStringW* ["USER32.dll", ""] (hMenu: HMENU; uIDItem: INTEGER; lpString: PtrWSTR; nMaxCount: INTEGER; uFlag: SET): INTEGER;
    (*END GetMenuStringW;*)

    PROCEDURE GetMenuString* ["USER32.dll", "GetMenuStringA"] (hMenu: HMENU; uIDItem: INTEGER; lpString: PtrSTR; nMaxCount: INTEGER; uFlag: SET): INTEGER;
    (*END GetMenuString;*)

    PROCEDURE GetMenuState* ["USER32.dll", ""] (hMenu: HMENU; uId: INTEGER; uFlags: SET): INTEGER;
    (*END GetMenuState;*)

    PROCEDURE DrawMenuBar* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END DrawMenuBar;*)

    PROCEDURE GetSystemMenu* ["USER32.dll", ""] (hWnd: HWND; bRevert: BOOL): HMENU;
    (*END GetSystemMenu;*)

    PROCEDURE CreateMenu* ["USER32.dll", ""] (): HMENU;
    (*END CreateMenu;*)

    PROCEDURE CreatePopupMenu* ["USER32.dll", ""] (): HMENU;
    (*END CreatePopupMenu;*)

    PROCEDURE DestroyMenu* ["USER32.dll", ""] (hMenu: HMENU): BOOL;
    (*END DestroyMenu;*)

    PROCEDURE CheckMenuItem* ["USER32.dll", ""] (hMenu: HMENU; uIDCheckItem: INTEGER; uCheck: SET): INTEGER;
    (*END CheckMenuItem;*)

    PROCEDURE EnableMenuItem* ["USER32.dll", ""] (hMenu: HMENU; uIDEnableItem: INTEGER; uEnable: SET): BOOL;
    (*END EnableMenuItem;*)

    PROCEDURE GetSubMenu* ["USER32.dll", ""] (hMenu: HMENU; nPos: INTEGER): HMENU;
    (*END GetSubMenu;*)

    PROCEDURE GetMenuItemID* ["USER32.dll", ""] (hMenu: HMENU; nPos: INTEGER): INTEGER;
    (*END GetMenuItemID;*)

    PROCEDURE GetMenuItemCount* ["USER32.dll", ""] (hMenu: HMENU): INTEGER;
    (*END GetMenuItemCount;*)

    PROCEDURE InsertMenuA* ["USER32.dll", ""] (hMenu: HMENU; uPosition: INTEGER; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrSTR): BOOL;
    (*END InsertMenuA;*)

    PROCEDURE InsertMenuW* ["USER32.dll", ""] (hMenu: HMENU; uPosition: INTEGER; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrWSTR): BOOL;
    (*END InsertMenuW;*)

    PROCEDURE InsertMenu* ["USER32.dll", "InsertMenuA"] (hMenu: HMENU; uPosition: INTEGER; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrSTR): BOOL;
    (*END InsertMenu;*)

    PROCEDURE AppendMenuA* ["USER32.dll", ""] (hMenu: HMENU; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrSTR): BOOL;
    (*END AppendMenuA;*)

    PROCEDURE AppendMenuW* ["USER32.dll", ""] (hMenu: HMENU; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrWSTR): BOOL;
    (*END AppendMenuW;*)

    PROCEDURE AppendMenu* ["USER32.dll", "AppendMenuA"] (hMenu: HMENU; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrSTR): BOOL;
    (*END AppendMenu;*)

    PROCEDURE ModifyMenuA* ["USER32.dll", ""] (hMnu: HMENU; uPosition: INTEGER; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrSTR): BOOL;
    (*END ModifyMenuA;*)

    PROCEDURE ModifyMenuW* ["USER32.dll", ""] (hMnu: HMENU; uPosition: INTEGER; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrWSTR): BOOL;
    (*END ModifyMenuW;*)

    PROCEDURE ModifyMenu* ["USER32.dll", "ModifyMenuA"] (hMnu: HMENU; uPosition: INTEGER; uFlags: SET; uIDNewItem: INTEGER; lpNewItem: PtrSTR): BOOL;
    (*END ModifyMenu;*)

    PROCEDURE RemoveMenu* ["USER32.dll", ""] (hMenu: HMENU; uPosition: INTEGER; uFlags: SET): BOOL;
    (*END RemoveMenu;*)

    PROCEDURE DeleteMenu* ["USER32.dll", ""] (hMenu: HMENU; uPosition: INTEGER; uFlags: SET): BOOL;
    (*END DeleteMenu;*)

    PROCEDURE SetMenuItemBitmaps* ["USER32.dll", ""] (hMenu: HMENU; uPosition: INTEGER; uFlags: SET; hBitmapUnchecked: HBITMAP; hBitmapChecked: HBITMAP): BOOL;
    (*END SetMenuItemBitmaps;*)

    PROCEDURE GetMenuCheckMarkDimensions* ["USER32.dll", ""] (): INTEGER;
    (*END GetMenuCheckMarkDimensions;*)

    PROCEDURE TrackPopupMenu* ["USER32.dll", ""] (hMenu: HMENU; uFlags: SET; x: INTEGER; y: INTEGER; nReserved: INTEGER; hWnd: HWND; VAR [nil] prcRect: RECT): BOOL;
    (*END TrackPopupMenu;*)

    PROCEDURE TrackPopupMenuEx* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: HWND; VAR [nil] p5: TPMPARAMS): BOOL;
    (*END TrackPopupMenuEx;*)

    PROCEDURE InsertMenuItemA* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOA): BOOL;
    (*END InsertMenuItemA;*)

    PROCEDURE InsertMenuItemW* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOW): BOOL;
    (*END InsertMenuItemW;*)

    PROCEDURE InsertMenuItem* ["USER32.dll", "InsertMenuItemA"] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOA): BOOL;
    (*END InsertMenuItem;*)

    PROCEDURE GetMenuItemInfoA* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOA): BOOL;
    (*END GetMenuItemInfoA;*)

    PROCEDURE GetMenuItemInfoW* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOW): BOOL;
    (*END GetMenuItemInfoW;*)

    PROCEDURE GetMenuItemInfo* ["USER32.dll", "GetMenuItemInfoA"] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOA): BOOL;
    (*END GetMenuItemInfo;*)

    PROCEDURE SetMenuItemInfoA* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOA): BOOL;
    (*END SetMenuItemInfoA;*)

    PROCEDURE SetMenuItemInfoW* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOW): BOOL;
    (*END SetMenuItemInfoW;*)

    PROCEDURE SetMenuItemInfo* ["USER32.dll", "SetMenuItemInfoA"] (p0: HMENU; p1: INTEGER; p2: BOOL; VAR [nil] p3: MENUITEMINFOA): BOOL;
    (*END SetMenuItemInfo;*)

    PROCEDURE GetMenuDefaultItem* ["USER32.dll", ""] (hMenu: HMENU; fByPos: INTEGER; gmdiFlags: SET): INTEGER;
    (*END GetMenuDefaultItem;*)

    PROCEDURE SetMenuDefaultItem* ["USER32.dll", ""] (hMenu: HMENU; uItem: INTEGER; fByPos: INTEGER): BOOL;
    (*END SetMenuDefaultItem;*)

    PROCEDURE GetMenuItemRect* ["USER32.dll", ""] (hWnd: HWND; hMenu: HMENU; uItem: INTEGER; VAR [nil] lprcItem: RECT): BOOL;
    (*END GetMenuItemRect;*)

    PROCEDURE MenuItemFromPoint* ["USER32.dll", ""] (hWnd: HWND; hMenu: HMENU; ptScreen: POINT): INTEGER;
    (*END MenuItemFromPoint;*)

    PROCEDURE DragObject* ["USER32.dll", ""] (p0: HWND; p1: HWND; p2: INTEGER; p3: INTEGER; p4: HCURSOR): INTEGER;
    (*END DragObject;*)

    PROCEDURE DragDetect* ["USER32.dll", ""] (p0: HWND; p1: POINT): BOOL;
    (*END DragDetect;*)

    PROCEDURE DrawIcon* ["USER32.dll", ""] (hDC: HDC; X: INTEGER; Y: INTEGER; hIcon: HICON): BOOL;
    (*END DrawIcon;*)

    PROCEDURE DrawTextA* ["USER32.dll", ""] (hDC: HDC; lpString: PtrSTR; nCount: INTEGER; VAR [nil] lpRect: RECT; uFormat: SET): INTEGER;
    (*END DrawTextA;*)

    PROCEDURE DrawTextW* ["USER32.dll", ""] (hDC: HDC; lpString: PtrWSTR; nCount: INTEGER; VAR [nil] lpRect: RECT; uFormat: SET): INTEGER;
    (*END DrawTextW;*)

    PROCEDURE DrawText* ["USER32.dll", "DrawTextA"] (hDC: HDC; lpString: PtrSTR; nCount: INTEGER; VAR [nil] lpRect: RECT; uFormat: SET): INTEGER;
    (*END DrawText;*)

    PROCEDURE DrawTextExA* ["USER32.dll", ""] (p0: HDC; p1: PtrSTR; p2: INTEGER; VAR [nil] p3: RECT; p4: INTEGER; VAR [nil] p5: DRAWTEXTPARAMS): INTEGER;
    (*END DrawTextExA;*)

    PROCEDURE DrawTextExW* ["USER32.dll", ""] (p0: HDC; p1: PtrWSTR; p2: INTEGER; VAR [nil] p3: RECT; p4: INTEGER; VAR [nil] p5: DRAWTEXTPARAMS): INTEGER;
    (*END DrawTextExW;*)

    PROCEDURE DrawTextEx* ["USER32.dll", "DrawTextExA"] (p0: HDC; p1: PtrSTR; p2: INTEGER; VAR [nil] p3: RECT; p4: INTEGER; VAR [nil] p5: DRAWTEXTPARAMS): INTEGER;
    (*END DrawTextEx;*)

    PROCEDURE GrayStringA* ["USER32.dll", ""] (hDC: HDC; hBrush: HBRUSH; lpOutputFunc: GRAYSTRINGPROC; lpData: LPARAM; nCount: INTEGER; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER): BOOL;
    (*END GrayStringA;*)

    PROCEDURE GrayStringW* ["USER32.dll", ""] (hDC: HDC; hBrush: HBRUSH; lpOutputFunc: GRAYSTRINGPROC; lpData: LPARAM; nCount: INTEGER; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER): BOOL;
    (*END GrayStringW;*)

    PROCEDURE GrayString* ["USER32.dll", "GrayStringA"] (hDC: HDC; hBrush: HBRUSH; lpOutputFunc: GRAYSTRINGPROC; lpData: LPARAM; nCount: INTEGER; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER): BOOL;
    (*END GrayString;*)

    PROCEDURE DrawStateA* ["USER32.dll", ""] (p0: HDC; p1: HBRUSH; p2: DRAWSTATEPROC; p3: LPARAM; p4: WPARAM; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: SET): BOOL;
    (*END DrawStateA;*)

    PROCEDURE DrawStateW* ["USER32.dll", ""] (p0: HDC; p1: HBRUSH; p2: DRAWSTATEPROC; p3: LPARAM; p4: WPARAM; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: SET): BOOL;
    (*END DrawStateW;*)

    PROCEDURE DrawState* ["USER32.dll", "DrawStateA"] (p0: HDC; p1: HBRUSH; p2: DRAWSTATEPROC; p3: LPARAM; p4: WPARAM; p5: INTEGER; p6: INTEGER; p7: INTEGER; p8: INTEGER; p9: SET): BOOL;
    (*END DrawState;*)

    PROCEDURE TabbedTextOutA* ["USER32.dll", ""] (hDC: HDC; X: INTEGER; Y: INTEGER; lpString: PtrSTR; nCount: INTEGER; nTabPositions: INTEGER; VAR [nil] lpnTabStopPositions: INTEGER; nTabOrigin: INTEGER): INTEGER;
    (*END TabbedTextOutA;*)

    PROCEDURE TabbedTextOutW* ["USER32.dll", ""] (hDC: HDC; X: INTEGER; Y: INTEGER; lpString: PtrWSTR; nCount: INTEGER; nTabPositions: INTEGER; VAR [nil] lpnTabStopPositions: INTEGER; nTabOrigin: INTEGER): INTEGER;
    (*END TabbedTextOutW;*)

    PROCEDURE TabbedTextOut* ["USER32.dll", "TabbedTextOutA"] (hDC: HDC; X: INTEGER; Y: INTEGER; lpString: PtrSTR; nCount: INTEGER; nTabPositions: INTEGER; VAR [nil] lpnTabStopPositions: INTEGER; nTabOrigin: INTEGER): INTEGER;
    (*END TabbedTextOut;*)

    PROCEDURE GetTabbedTextExtentA* ["USER32.dll", ""] (hDC: HDC; lpString: PtrSTR; nCount: INTEGER; nTabPositions: INTEGER; VAR [nil] lpnTabStopPositions: INTEGER): INTEGER;
    (*END GetTabbedTextExtentA;*)

    PROCEDURE GetTabbedTextExtentW* ["USER32.dll", ""] (hDC: HDC; lpString: PtrWSTR; nCount: INTEGER; nTabPositions: INTEGER; VAR [nil] lpnTabStopPositions: INTEGER): INTEGER;
    (*END GetTabbedTextExtentW;*)

    PROCEDURE GetTabbedTextExtent* ["USER32.dll", "GetTabbedTextExtentA"] (hDC: HDC; lpString: PtrSTR; nCount: INTEGER; nTabPositions: INTEGER; VAR [nil] lpnTabStopPositions: INTEGER): INTEGER;
    (*END GetTabbedTextExtent;*)

    PROCEDURE UpdateWindow* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END UpdateWindow;*)

    PROCEDURE SetActiveWindow* ["USER32.dll", ""] (hWnd: HWND): HWND;
    (*END SetActiveWindow;*)

    PROCEDURE GetForegroundWindow* ["USER32.dll", ""] (): HWND;
    (*END GetForegroundWindow;*)

    PROCEDURE PaintDesktop* ["USER32.dll", ""] (hdc: HDC): BOOL;
    (*END PaintDesktop;*)

    PROCEDURE SetForegroundWindow* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END SetForegroundWindow;*)

    PROCEDURE WindowFromDC* ["USER32.dll", ""] (hDC: HDC): HWND;
    (*END WindowFromDC;*)

    PROCEDURE GetDC* ["USER32.dll", ""] (hWnd: HWND): HDC;
    (*END GetDC;*)

    PROCEDURE GetDCEx* ["USER32.dll", ""] (hWnd: HWND; hrgnClip: HRGN; flags: SET): HDC;
    (*END GetDCEx;*)

    PROCEDURE GetWindowDC* ["USER32.dll", ""] (hWnd: HWND): HDC;
    (*END GetWindowDC;*)

    PROCEDURE ReleaseDC* ["USER32.dll", ""] (hWnd: HWND; hDC: HDC): INTEGER;
    (*END ReleaseDC;*)

    PROCEDURE BeginPaint* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpPaint: PAINTSTRUCT): HDC;
    (*END BeginPaint;*)

    PROCEDURE EndPaint* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpPaint: PAINTSTRUCT): BOOL;
    (*END EndPaint;*)

    PROCEDURE GetUpdateRect* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpRect: RECT; bErase: BOOL): BOOL;
    (*END GetUpdateRect;*)

    PROCEDURE GetUpdateRgn* ["USER32.dll", ""] (hWnd: HWND; hRgn: HRGN; bErase: BOOL): INTEGER;
    (*END GetUpdateRgn;*)

    PROCEDURE SetWindowRgn* ["USER32.dll", ""] (hWnd: HWND; hRgn: HRGN; bRedraw: BOOL): INTEGER;
    (*END SetWindowRgn;*)

    PROCEDURE GetWindowRgn* ["USER32.dll", ""] (hWnd: HWND; hRgn: HRGN): INTEGER;
    (*END GetWindowRgn;*)

    PROCEDURE ExcludeUpdateRgn* ["USER32.dll", ""] (hDC: HDC; hWnd: HWND): INTEGER;
    (*END ExcludeUpdateRgn;*)

    PROCEDURE InvalidateRect* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpRect: RECT; bErase: BOOL): BOOL;
    (*END InvalidateRect;*)

    PROCEDURE ValidateRect* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpRect: RECT): BOOL;
    (*END ValidateRect;*)

    PROCEDURE InvalidateRgn* ["USER32.dll", ""] (hWnd: HWND; hRgn: HRGN; bErase: BOOL): BOOL;
    (*END InvalidateRgn;*)

    PROCEDURE ValidateRgn* ["USER32.dll", ""] (hWnd: HWND; hRgn: HRGN): BOOL;
    (*END ValidateRgn;*)

    PROCEDURE RedrawWindow* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lprcUpdate: RECT; hrgnUpdate: HRGN; flags: SET): BOOL;
    (*END RedrawWindow;*)

    PROCEDURE LockWindowUpdate* ["USER32.dll", ""] (hWndLock: HWND): BOOL;
    (*END LockWindowUpdate;*)

    PROCEDURE ScrollWindow* ["USER32.dll", ""] (hWnd: HWND; XAmount: INTEGER; YAmount: INTEGER; VAR [nil] lpRect: RECT; VAR [nil] lpClipRect: RECT): BOOL;
    (*END ScrollWindow;*)

    PROCEDURE ScrollDC* ["USER32.dll", ""] (hDC: HDC; dx: INTEGER; dy: INTEGER; VAR [nil] lprcScroll: RECT; VAR [nil] lprcClip: RECT; hrgnUpdate: HRGN; VAR [nil] lprcUpdate: RECT): BOOL;
    (*END ScrollDC;*)

    PROCEDURE ScrollWindowEx* ["USER32.dll", ""] (hWnd: HWND; dx: INTEGER; dy: INTEGER; VAR [nil] prcScroll: RECT; VAR [nil] prcClip: RECT; hrgnUpdate: HRGN; VAR [nil] prcUpdate: RECT; flags: SET): INTEGER;
    (*END ScrollWindowEx;*)

    PROCEDURE SetScrollPos* ["USER32.dll", ""] (hWnd: HWND; nBar: INTEGER; nPos: INTEGER; bRedraw: BOOL): INTEGER;
    (*END SetScrollPos;*)

    PROCEDURE GetScrollPos* ["USER32.dll", ""] (hWnd: HWND; nBar: INTEGER): INTEGER;
    (*END GetScrollPos;*)

    PROCEDURE SetScrollRange* ["USER32.dll", ""] (hWnd: HWND; nBar: INTEGER; nMinPos: INTEGER; nMaxPos: INTEGER; bRedraw: BOOL): BOOL;
    (*END SetScrollRange;*)

    PROCEDURE GetScrollRange* ["USER32.dll", ""] (hWnd: HWND; nBar: INTEGER; VAR [nil] lpMinPos: INTEGER; VAR [nil] lpMaxPos: INTEGER): BOOL;
    (*END GetScrollRange;*)

    PROCEDURE ShowScrollBar* ["USER32.dll", ""] (hWnd: HWND; wBar: INTEGER; bShow: BOOL): BOOL;
    (*END ShowScrollBar;*)

    PROCEDURE EnableScrollBar* ["USER32.dll", ""] (hWnd: HWND; wSBflags: INTEGER; wArrows: INTEGER): BOOL;
    (*END EnableScrollBar;*)

    PROCEDURE SetPropA* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrSTR; hData: HANDLE): BOOL;
    (*END SetPropA;*)

    PROCEDURE SetPropW* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrWSTR; hData: HANDLE): BOOL;
    (*END SetPropW;*)

    PROCEDURE SetProp* ["USER32.dll", "SetPropA"] (hWnd: HWND; lpString: PtrSTR; hData: HANDLE): BOOL;
    (*END SetProp;*)

    PROCEDURE GetPropA* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrSTR): HANDLE;
    (*END GetPropA;*)

    PROCEDURE GetPropW* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrWSTR): HANDLE;
    (*END GetPropW;*)

    PROCEDURE GetProp* ["USER32.dll", "GetPropA"] (hWnd: HWND; lpString: PtrSTR): HANDLE;
    (*END GetProp;*)

    PROCEDURE RemovePropA* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrSTR): HANDLE;
    (*END RemovePropA;*)

    PROCEDURE RemovePropW* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrWSTR): HANDLE;
    (*END RemovePropW;*)

    PROCEDURE RemoveProp* ["USER32.dll", "RemovePropA"] (hWnd: HWND; lpString: PtrSTR): HANDLE;
    (*END RemoveProp;*)

    PROCEDURE EnumPropsExA* ["USER32.dll", ""] (hWnd: HWND; lpEnumFunc: ROPENUMPROCEXA; lParam: LPARAM): INTEGER;
    (*END EnumPropsExA;*)

    PROCEDURE EnumPropsExW* ["USER32.dll", ""] (hWnd: HWND; lpEnumFunc: ROPENUMPROCEXW; lParam: LPARAM): INTEGER;
    (*END EnumPropsExW;*)

    PROCEDURE EnumPropsEx* ["USER32.dll", "EnumPropsExA"] (hWnd: HWND; lpEnumFunc: ROPENUMPROCEXA; lParam: LPARAM): INTEGER;
    (*END EnumPropsEx;*)

    PROCEDURE EnumPropsA* ["USER32.dll", ""] (hWnd: HWND; lpEnumFunc: ROPENUMPROCA): INTEGER;
    (*END EnumPropsA;*)

    PROCEDURE EnumPropsW* ["USER32.dll", ""] (hWnd: HWND; lpEnumFunc: ROPENUMPROCW): INTEGER;
    (*END EnumPropsW;*)

    PROCEDURE EnumProps* ["USER32.dll", "EnumPropsA"] (hWnd: HWND; lpEnumFunc: ROPENUMPROCA): INTEGER;
    (*END EnumProps;*)

    PROCEDURE SetWindowTextA* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrSTR): BOOL;
    (*END SetWindowTextA;*)

    PROCEDURE SetWindowTextW* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrWSTR): BOOL;
    (*END SetWindowTextW;*)

    PROCEDURE SetWindowText* ["USER32.dll", "SetWindowTextA"] (hWnd: HWND; lpString: PtrSTR): BOOL;
    (*END SetWindowText;*)

    PROCEDURE GetWindowTextA* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetWindowTextA;*)

    PROCEDURE GetWindowTextW* ["USER32.dll", ""] (hWnd: HWND; lpString: PtrWSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetWindowTextW;*)

    PROCEDURE GetWindowText* ["USER32.dll", "GetWindowTextA"] (hWnd: HWND; lpString: PtrSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetWindowText;*)

    PROCEDURE GetWindowTextLengthA* ["USER32.dll", ""] (hWnd: HWND): INTEGER;
    (*END GetWindowTextLengthA;*)

    PROCEDURE GetWindowTextLengthW* ["USER32.dll", ""] (hWnd: HWND): INTEGER;
    (*END GetWindowTextLengthW;*)

    PROCEDURE GetWindowTextLength* ["USER32.dll", "GetWindowTextLengthA"] (hWnd: HWND): INTEGER;
    (*END GetWindowTextLength;*)

    PROCEDURE GetClientRect* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpRect: RECT): BOOL;
    (*END GetClientRect;*)

    PROCEDURE GetWindowRect* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpRect: RECT): BOOL;
    (*END GetWindowRect;*)

    PROCEDURE AdjustWindowRect* ["USER32.dll", ""] (VAR [nil] lpRect: RECT; dwStyle: SET; bMenu: BOOL): BOOL;
    (*END AdjustWindowRect;*)

    PROCEDURE AdjustWindowRectEx* ["USER32.dll", ""] (VAR [nil] lpRect: RECT; dwStyle: SET; bMenu: BOOL; dwExStyle: SET): BOOL;
    (*END AdjustWindowRectEx;*)

    PROCEDURE SetWindowContextHelpId* ["USER32.dll", ""] (p0: HWND; p1: INTEGER): BOOL;
    (*END SetWindowContextHelpId;*)

    PROCEDURE GetWindowContextHelpId* ["USER32.dll", ""] (p0: HWND): INTEGER;
    (*END GetWindowContextHelpId;*)

    PROCEDURE SetMenuContextHelpId* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER): BOOL;
    (*END SetMenuContextHelpId;*)

    PROCEDURE GetMenuContextHelpId* ["USER32.dll", ""] (p0: HMENU): INTEGER;
    (*END GetMenuContextHelpId;*)

    PROCEDURE MessageBoxA* ["USER32.dll", ""] (hWnd: HWND; lpText: PtrSTR; lpCaption: PtrSTR; uType: SET): INTEGER;
    (*END MessageBoxA;*)

    PROCEDURE MessageBoxW* ["USER32.dll", ""] (hWnd: HWND; lpText: PtrWSTR; lpCaption: PtrWSTR; uType: SET): INTEGER;
    (*END MessageBoxW;*)

    PROCEDURE MessageBox* ["USER32.dll", "MessageBoxA"] (hWnd: HWND; lpText: PtrSTR; lpCaption: PtrSTR; uType: SET): INTEGER;
    (*END MessageBox;*)

    PROCEDURE MessageBoxExA* ["USER32.dll", ""] (hWnd: HWND; lpText: PtrSTR; lpCaption: PtrSTR; uType: SET; wLanguageId: SHORTINT): INTEGER;
    (*END MessageBoxExA;*)

    PROCEDURE MessageBoxExW* ["USER32.dll", ""] (hWnd: HWND; lpText: PtrWSTR; lpCaption: PtrWSTR; uType: SET; wLanguageId: SHORTINT): INTEGER;
    (*END MessageBoxExW;*)

    PROCEDURE MessageBoxEx* ["USER32.dll", "MessageBoxExA"] (hWnd: HWND; lpText: PtrSTR; lpCaption: PtrSTR; uType: SET; wLanguageId: SHORTINT): INTEGER;
    (*END MessageBoxEx;*)

    PROCEDURE MessageBoxIndirectA* ["USER32.dll", ""] (VAR [nil] p0: MSGBOXPARAMSA): INTEGER;
    (*END MessageBoxIndirectA;*)

    PROCEDURE MessageBoxIndirectW* ["USER32.dll", ""] (VAR [nil] p0: MSGBOXPARAMSW): INTEGER;
    (*END MessageBoxIndirectW;*)

    PROCEDURE MessageBoxIndirect* ["USER32.dll", "MessageBoxIndirectA"] (VAR [nil] p0: MSGBOXPARAMSA): INTEGER;
    (*END MessageBoxIndirect;*)

    PROCEDURE MessageBeep* ["USER32.dll", ""] (uType: SET): BOOL;
    (*END MessageBeep;*)

    PROCEDURE ShowCursor* ["USER32.dll", ""] (bShow: BOOL): INTEGER;
    (*END ShowCursor;*)

    PROCEDURE SetCursorPos* ["USER32.dll", ""] (X: INTEGER; Y: INTEGER): BOOL;
    (*END SetCursorPos;*)

    PROCEDURE SetCursor* ["USER32.dll", ""] (hCursor: HCURSOR): HCURSOR;
    (*END SetCursor;*)

    PROCEDURE GetCursorPos* ["USER32.dll", ""] (VAR [nil] lpPoint: POINT): BOOL;
    (*END GetCursorPos;*)

    PROCEDURE ClipCursor* ["USER32.dll", ""] (VAR [nil] lpRect: RECT): BOOL;
    (*END ClipCursor;*)

    PROCEDURE GetClipCursor* ["USER32.dll", ""] (VAR [nil] lpRect: RECT): BOOL;
    (*END GetClipCursor;*)

    PROCEDURE GetCursor* ["USER32.dll", ""] (): HCURSOR;
    (*END GetCursor;*)

    PROCEDURE CreateCaret* ["USER32.dll", ""] (hWnd: HWND; hBitmap: HBITMAP; nWidth: INTEGER; nHeight: INTEGER): BOOL;
    (*END CreateCaret;*)

    PROCEDURE GetCaretBlinkTime* ["USER32.dll", ""] (): INTEGER;
    (*END GetCaretBlinkTime;*)

    PROCEDURE SetCaretBlinkTime* ["USER32.dll", ""] (uMSeconds: INTEGER): BOOL;
    (*END SetCaretBlinkTime;*)

    PROCEDURE DestroyCaret* ["USER32.dll", ""] (): BOOL;
    (*END DestroyCaret;*)

    PROCEDURE HideCaret* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END HideCaret;*)

    PROCEDURE ShowCaret* ["USER32.dll", ""] (hWnd: HWND): BOOL;
    (*END ShowCaret;*)

    PROCEDURE SetCaretPos* ["USER32.dll", ""] (X: INTEGER; Y: INTEGER): BOOL;
    (*END SetCaretPos;*)

    PROCEDURE GetCaretPos* ["USER32.dll", ""] (VAR [nil] lpPoint: POINT): BOOL;
    (*END GetCaretPos;*)

    PROCEDURE ClientToScreen* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpPoint: POINT): BOOL;
    (*END ClientToScreen;*)

    PROCEDURE ScreenToClient* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpPoint: POINT): BOOL;
    (*END ScreenToClient;*)

    PROCEDURE MapWindowPoints* ["USER32.dll", ""] (hWndFrom: HWND; hWndTo: HWND; VAR [nil] lpPoints: POINT; cPoints: INTEGER): INTEGER;
    (*END MapWindowPoints;*)

    PROCEDURE WindowFromPoint* ["USER32.dll", ""] (Point: POINT): HWND;
    (*END WindowFromPoint;*)

    PROCEDURE ChildWindowFromPoint* ["USER32.dll", ""] (hWndParent: HWND; Point: POINT): HWND;
    (*END ChildWindowFromPoint;*)

    PROCEDURE ChildWindowFromPointEx* ["USER32.dll", ""] (p0: HWND; p1: POINT; p2: SET): HWND;
    (*END ChildWindowFromPointEx;*)

    PROCEDURE GetSysColor* ["USER32.dll", ""] (nIndex: INTEGER): INTEGER;
    (*END GetSysColor;*)

    PROCEDURE GetSysColorBrush* ["USER32.dll", ""] (nIndex: INTEGER): HBRUSH;
    (*END GetSysColorBrush;*)

    PROCEDURE SetSysColors* ["USER32.dll", ""] (cElements: INTEGER; VAR [nil] lpaElements: INTEGER; VAR [nil] lpaRgbValues: COLORREF): BOOL;
    (*END SetSysColors;*)

    PROCEDURE DrawFocusRect* ["USER32.dll", ""] (hDC: HDC; VAR [nil] lprc: RECT): BOOL;
    (*END DrawFocusRect;*)

    PROCEDURE FillRect* ["USER32.dll", ""] (hDC: HDC; VAR [nil] lprc: RECT; hbr: HBRUSH): INTEGER;
    (*END FillRect;*)

    PROCEDURE FrameRect* ["USER32.dll", ""] (hDC: HDC; VAR [nil] lprc: RECT; hbr: HBRUSH): INTEGER;
    (*END FrameRect;*)

    PROCEDURE InvertRect* ["USER32.dll", ""] (hDC: HDC; VAR [nil] lprc: RECT): BOOL;
    (*END InvertRect;*)

    PROCEDURE SetRect* ["USER32.dll", ""] (VAR [nil] lprc: RECT; xLeft: INTEGER; yTop: INTEGER; xRight: INTEGER; yBottom: INTEGER): BOOL;
    (*END SetRect;*)

    PROCEDURE SetRectEmpty* ["USER32.dll", ""] (VAR [nil] lprc: RECT): BOOL;
    (*END SetRectEmpty;*)

    PROCEDURE CopyRect* ["USER32.dll", ""] (VAR [nil] lprcDst: RECT; VAR [nil] lprcSrc: RECT): BOOL;
    (*END CopyRect;*)

    PROCEDURE InflateRect* ["USER32.dll", ""] (VAR [nil] lprc: RECT; dx: INTEGER; dy: INTEGER): BOOL;
    (*END InflateRect;*)

    PROCEDURE IntersectRect* ["USER32.dll", ""] (VAR [nil] lprcDst: RECT; VAR [nil] lprcSrc1: RECT; VAR [nil] lprcSrc2: RECT): BOOL;
    (*END IntersectRect;*)

    PROCEDURE UnionRect* ["USER32.dll", ""] (VAR [nil] lprcDst: RECT; VAR [nil] lprcSrc1: RECT; VAR [nil] lprcSrc2: RECT): BOOL;
    (*END UnionRect;*)

    PROCEDURE SubtractRect* ["USER32.dll", ""] (VAR [nil] lprcDst: RECT; VAR [nil] lprcSrc1: RECT; VAR [nil] lprcSrc2: RECT): BOOL;
    (*END SubtractRect;*)

    PROCEDURE OffsetRect* ["USER32.dll", ""] (VAR [nil] lprc: RECT; dx: INTEGER; dy: INTEGER): BOOL;
    (*END OffsetRect;*)

    PROCEDURE IsRectEmpty* ["USER32.dll", ""] (VAR [nil] lprc: RECT): BOOL;
    (*END IsRectEmpty;*)

    PROCEDURE EqualRect* ["USER32.dll", ""] (VAR [nil] lprc1: RECT; VAR [nil] lprc2: RECT): BOOL;
    (*END EqualRect;*)

    PROCEDURE PtInRect* ["USER32.dll", ""] (VAR [nil] lprc: RECT; pt: POINT): BOOL;
    (*END PtInRect;*)

    PROCEDURE GetWindowWord* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER): SHORTINT;
    (*END GetWindowWord;*)

    PROCEDURE SetWindowWord* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER; wNewWord: SHORTINT): SHORTINT;
    (*END SetWindowWord;*)

    PROCEDURE GetWindowLongA* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER): INTEGER;
    (*END GetWindowLongA;*)

    PROCEDURE GetWindowLongW* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER): INTEGER;
    (*END GetWindowLongW;*)

    PROCEDURE GetWindowLong* ["USER32.dll", "GetWindowLongA"] (hWnd: HWND; nIndex: INTEGER): INTEGER;
    (*END GetWindowLong;*)

    PROCEDURE SetWindowLongA* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER; dwNewLong: INTEGER): INTEGER;
    (*END SetWindowLongA;*)

    PROCEDURE SetWindowLongW* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER; dwNewLong: INTEGER): INTEGER;
    (*END SetWindowLongW;*)

    PROCEDURE SetWindowLong* ["USER32.dll", "SetWindowLongA"] (hWnd: HWND; nIndex: INTEGER; dwNewLong: INTEGER): INTEGER;
    (*END SetWindowLong;*)

    PROCEDURE GetClassWord* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER): SHORTINT;
    (*END GetClassWord;*)

    PROCEDURE SetClassWord* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER; wNewWord: SHORTINT): SHORTINT;
    (*END SetClassWord;*)

    PROCEDURE GetClassLongA* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER): INTEGER;
    (*END GetClassLongA;*)

    PROCEDURE GetClassLongW* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER): INTEGER;
    (*END GetClassLongW;*)

    PROCEDURE GetClassLong* ["USER32.dll", "GetClassLongA"] (hWnd: HWND; nIndex: INTEGER): INTEGER;
    (*END GetClassLong;*)

    PROCEDURE SetClassLongA* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER; dwNewLong: INTEGER): INTEGER;
    (*END SetClassLongA;*)

    PROCEDURE SetClassLongW* ["USER32.dll", ""] (hWnd: HWND; nIndex: INTEGER; dwNewLong: INTEGER): INTEGER;
    (*END SetClassLongW;*)

    PROCEDURE SetClassLong* ["USER32.dll", "SetClassLongA"] (hWnd: HWND; nIndex: INTEGER; dwNewLong: INTEGER): INTEGER;
    (*END SetClassLong;*)

    PROCEDURE GetDesktopWindow* ["USER32.dll", ""] (): HWND;
    (*END GetDesktopWindow;*)

    PROCEDURE GetParent* ["USER32.dll", ""] (hWnd: HWND): HWND;
    (*END GetParent;*)

    PROCEDURE SetParent* ["USER32.dll", ""] (hWndChild: HWND; hWndNewParent: HWND): HWND;
    (*END SetParent;*)

    PROCEDURE EnumChildWindows* ["USER32.dll", ""] (hWndParent: HWND; lpEnumFunc: WNDENUMPROC; lParam: LPARAM): BOOL;
    (*END EnumChildWindows;*)

    PROCEDURE FindWindowA* ["USER32.dll", ""] (lpClassName: PtrSTR; lpWindowName: PtrSTR): HWND;
    (*END FindWindowA;*)

    PROCEDURE FindWindowW* ["USER32.dll", ""] (lpClassName: PtrWSTR; lpWindowName: PtrWSTR): HWND;
    (*END FindWindowW;*)

    PROCEDURE FindWindow* ["USER32.dll", "FindWindowA"] (lpClassName: PtrSTR; lpWindowName: PtrSTR): HWND;
    (*END FindWindow;*)

    PROCEDURE FindWindowExA* ["USER32.dll", ""] (p0: HWND; p1: HWND; p2: PtrSTR; p3: PtrSTR): HWND;
    (*END FindWindowExA;*)

    PROCEDURE FindWindowExW* ["USER32.dll", ""] (p0: HWND; p1: HWND; p2: PtrWSTR; p3: PtrWSTR): HWND;
    (*END FindWindowExW;*)

    PROCEDURE FindWindowEx* ["USER32.dll", "FindWindowExA"] (p0: HWND; p1: HWND; p2: PtrSTR; p3: PtrSTR): HWND;
    (*END FindWindowEx;*)

    PROCEDURE EnumWindows* ["USER32.dll", ""] (lpEnumFunc: WNDENUMPROC; lParam: LPARAM): BOOL;
    (*END EnumWindows;*)

    PROCEDURE EnumThreadWindows* ["USER32.dll", ""] (dwThreadId: INTEGER; lpfn: WNDENUMPROC; lParam: LPARAM): BOOL;
    (*END EnumThreadWindows;*)

    PROCEDURE GetClassNameA* ["USER32.dll", ""] (hWnd: HWND; lpClassName: PtrSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetClassNameA;*)

    PROCEDURE GetClassNameW* ["USER32.dll", ""] (hWnd: HWND; lpClassName: PtrWSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetClassNameW;*)

    PROCEDURE GetClassName* ["USER32.dll", "GetClassNameA"] (hWnd: HWND; lpClassName: PtrSTR; nMaxCount: INTEGER): INTEGER;
    (*END GetClassName;*)

    PROCEDURE GetTopWindow* ["USER32.dll", ""] (hWnd: HWND): HWND;
    (*END GetTopWindow;*)

    PROCEDURE GetWindowThreadProcessId* ["USER32.dll", ""] (hWnd: HWND; VAR [nil] lpdwProcessId: INTEGER): INTEGER;
    (*END GetWindowThreadProcessId;*)

    PROCEDURE GetLastActivePopup* ["USER32.dll", ""] (hWnd: HWND): HWND;
    (*END GetLastActivePopup;*)

    PROCEDURE GetWindow* ["USER32.dll", ""] (hWnd: HWND; uCmd: INTEGER): HWND;
    (*END GetWindow;*)

    PROCEDURE SetWindowsHookA* ["USER32.dll", ""] (nFilterType: INTEGER; pfnFilterProc: HOOKPROC): HOOKPROC;
    (*END SetWindowsHookA;*)

    PROCEDURE SetWindowsHookW* ["USER32.dll", ""] (nFilterType: INTEGER; pfnFilterProc: HOOKPROC): HOOKPROC;
    (*END SetWindowsHookW;*)

    PROCEDURE SetWindowsHook* ["USER32.dll", "SetWindowsHookA"] (nFilterType: INTEGER; pfnFilterProc: HOOKPROC): HOOKPROC;
    (*END SetWindowsHook;*)

    PROCEDURE UnhookWindowsHook* ["USER32.dll", ""] (nCode: INTEGER; pfnFilterProc: HOOKPROC): BOOL;
    (*END UnhookWindowsHook;*)

    PROCEDURE SetWindowsHookExA* ["USER32.dll", ""] (idHook: INTEGER; lpfn: HOOKPROC; hmod: HINSTANCE; dwThreadId: INTEGER): HHOOK;
    (*END SetWindowsHookExA;*)

    PROCEDURE SetWindowsHookExW* ["USER32.dll", ""] (idHook: INTEGER; lpfn: HOOKPROC; hmod: HINSTANCE; dwThreadId: INTEGER): HHOOK;
    (*END SetWindowsHookExW;*)

    PROCEDURE SetWindowsHookEx* ["USER32.dll", "SetWindowsHookExA"] (idHook: INTEGER; lpfn: HOOKPROC; hmod: HINSTANCE; dwThreadId: INTEGER): HHOOK;
    (*END SetWindowsHookEx;*)

    PROCEDURE UnhookWindowsHookEx* ["USER32.dll", ""] (hhk: HHOOK): BOOL;
    (*END UnhookWindowsHookEx;*)

    PROCEDURE CallNextHookEx* ["USER32.dll", ""] (hhk: HHOOK; nCode: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END CallNextHookEx;*)

    PROCEDURE CheckMenuRadioItem* ["USER32.dll", ""] (p0: HMENU; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER): BOOL;
    (*END CheckMenuRadioItem;*)

    PROCEDURE LoadBitmapA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpBitmapName: PtrSTR): HBITMAP;
    (*END LoadBitmapA;*)

    PROCEDURE LoadBitmapW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpBitmapName: PtrWSTR): HBITMAP;
    (*END LoadBitmapW;*)

    PROCEDURE LoadBitmap* ["USER32.dll", "LoadBitmapA"] (hInstance: HINSTANCE; lpBitmapName: PtrSTR): HBITMAP;
    (*END LoadBitmap;*)

    PROCEDURE LoadCursorA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpCursorName: PtrSTR): HCURSOR;
    (*END LoadCursorA;*)

    PROCEDURE LoadCursorW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpCursorName: PtrWSTR): HCURSOR;
    (*END LoadCursorW;*)

    PROCEDURE LoadCursor* ["USER32.dll", "LoadCursorA"] (hInstance: HINSTANCE; lpCursorName: PtrSTR): HCURSOR;
    (*END LoadCursor;*)

    PROCEDURE LoadCursorFromFileA* ["USER32.dll", ""] (lpFileName: PtrSTR): HCURSOR;
    (*END LoadCursorFromFileA;*)

    PROCEDURE LoadCursorFromFileW* ["USER32.dll", ""] (lpFileName: PtrWSTR): HCURSOR;
    (*END LoadCursorFromFileW;*)

    PROCEDURE LoadCursorFromFile* ["USER32.dll", "LoadCursorFromFileA"] (lpFileName: PtrSTR): HCURSOR;
    (*END LoadCursorFromFile;*)

    PROCEDURE CreateCursor* ["USER32.dll", ""] (hInst: HINSTANCE; xHotSpot: INTEGER; yHotSpot: INTEGER; nWidth: INTEGER; nHeight: INTEGER; pvANDPlane: PtrVoid; pvXORPlane: PtrVoid): HCURSOR;
    (*END CreateCursor;*)

    PROCEDURE DestroyCursor* ["USER32.dll", ""] (hCursor: HCURSOR): BOOL;
    (*END DestroyCursor;*)

    PROCEDURE SetSystemCursor* ["USER32.dll", ""] (hcur: HCURSOR; id: INTEGER): BOOL;
    (*END SetSystemCursor;*)

    PROCEDURE LoadIconA* ["USER32.dll", ""] (hInstance: HINSTANCE; lpIconName: PtrSTR): HICON;
    (*END LoadIconA;*)

    PROCEDURE LoadIconW* ["USER32.dll", ""] (hInstance: HINSTANCE; lpIconName: PtrWSTR): HICON;
    (*END LoadIconW;*)

    PROCEDURE LoadIcon* ["USER32.dll", "LoadIconA"] (hInstance: HINSTANCE; lpIconName: PtrSTR): HICON;
    (*END LoadIcon;*)

    PROCEDURE CreateIcon* ["USER32.dll", ""] (hInstance: HINSTANCE; nWidth: INTEGER; nHeight: INTEGER; cPlanes: SHORTCHAR; cBitsPixel: SHORTCHAR; VAR [nil] lpbANDbits: SHORTCHAR; VAR [nil] lpbXORbits: SHORTCHAR): HICON;
    (*END CreateIcon;*)

    PROCEDURE DestroyIcon* ["USER32.dll", ""] (hIcon: HICON): BOOL;
    (*END DestroyIcon;*)

    PROCEDURE LookupIconIdFromDirectory* ["USER32.dll", ""] (VAR [nil] presbits: SHORTCHAR; fIcon: BOOL): INTEGER;
    (*END LookupIconIdFromDirectory;*)

    PROCEDURE LookupIconIdFromDirectoryEx* ["USER32.dll", ""] (VAR [nil] presbits: SHORTCHAR; fIcon: BOOL; cxDesired: INTEGER; cyDesired: INTEGER; Flags: SET): INTEGER;
    (*END LookupIconIdFromDirectoryEx;*)

    PROCEDURE CreateIconFromResource* ["USER32.dll", ""] (VAR [nil] presbits: SHORTCHAR; dwResSize: INTEGER; fIcon: BOOL; dwVer: INTEGER): HICON;
    (*END CreateIconFromResource;*)

    PROCEDURE CreateIconFromResourceEx* ["USER32.dll", ""] (VAR [nil] presbits: SHORTCHAR; dwResSize: INTEGER; fIcon: BOOL; dwVer: INTEGER; cxDesired: INTEGER; cyDesired: INTEGER; Flags: SET): HICON;
    (*END CreateIconFromResourceEx;*)

    PROCEDURE LoadImageA* ["USER32.dll", ""] (p0: HINSTANCE; p1: PtrSTR; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER): HANDLE;
    (*END LoadImageA;*)

    PROCEDURE LoadImageW* ["USER32.dll", ""] (p0: HINSTANCE; p1: PtrWSTR; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER): HANDLE;
    (*END LoadImageW;*)

    PROCEDURE LoadImage* ["USER32.dll", "LoadImageA"] (p0: HINSTANCE; p1: PtrSTR; p2: INTEGER; p3: INTEGER; p4: INTEGER; p5: INTEGER): HANDLE;
    (*END LoadImage;*)

    PROCEDURE CopyImage* ["USER32.dll", ""] (p0: HANDLE; p1: INTEGER; p2: INTEGER; p3: INTEGER; p4: INTEGER): HANDLE;
    (*END CopyImage;*)

    PROCEDURE DrawIconEx* ["USER32.dll", ""] (hdc: HDC; xLeft: INTEGER; yTop: INTEGER; hIcon: HICON; cxWidth: INTEGER; cyWidth: INTEGER; istepIfAniCur: INTEGER; hbrFlickerFreeDraw: HBRUSH; diFlags: SET): BOOL;
    (*END DrawIconEx;*)

    PROCEDURE CreateIconIndirect* ["USER32.dll", ""] (VAR [nil] piconinfo: ICONINFO): HICON;
    (*END CreateIconIndirect;*)

    PROCEDURE CopyIcon* ["USER32.dll", ""] (hIcon: HICON): HICON;
    (*END CopyIcon;*)

    PROCEDURE GetIconInfo* ["USER32.dll", ""] (hIcon: HICON; VAR [nil] piconinfo: ICONINFO): BOOL;
    (*END GetIconInfo;*)

    PROCEDURE LoadStringA* ["USER32.dll", ""] (hInstance: HINSTANCE; uID: INTEGER; lpBuffer: PtrSTR; nBufferMax: INTEGER): INTEGER;
    (*END LoadStringA;*)

    PROCEDURE LoadStringW* ["USER32.dll", ""] (hInstance: HINSTANCE; uID: INTEGER; lpBuffer: PtrWSTR; nBufferMax: INTEGER): INTEGER;
    (*END LoadStringW;*)

    PROCEDURE LoadString* ["USER32.dll", "LoadStringA"] (hInstance: HINSTANCE; uID: INTEGER; lpBuffer: PtrSTR; nBufferMax: INTEGER): INTEGER;
    (*END LoadString;*)

    PROCEDURE IsDialogMessageA* ["USER32.dll", ""] (hDlg: HWND; VAR [nil] lpMsg: MSG): BOOL;
    (*END IsDialogMessageA;*)

    PROCEDURE IsDialogMessageW* ["USER32.dll", ""] (hDlg: HWND; VAR [nil] lpMsg: MSG): BOOL;
    (*END IsDialogMessageW;*)

    PROCEDURE IsDialogMessage* ["USER32.dll", "IsDialogMessageA"] (hDlg: HWND; VAR [nil] lpMsg: MSG): BOOL;
    (*END IsDialogMessage;*)

    PROCEDURE MapDialogRect* ["USER32.dll", ""] (hDlg: HWND; VAR [nil] lpRect: RECT): BOOL;
    (*END MapDialogRect;*)

    PROCEDURE DlgDirListA* ["USER32.dll", ""] (hDlg: HWND; lpPathSpec: PtrSTR; nIDListBox: INTEGER; nIDStaticPath: INTEGER; uFileType: SET): INTEGER;
    (*END DlgDirListA;*)

    PROCEDURE DlgDirListW* ["USER32.dll", ""] (hDlg: HWND; lpPathSpec: PtrWSTR; nIDListBox: INTEGER; nIDStaticPath: INTEGER; uFileType: SET): INTEGER;
    (*END DlgDirListW;*)

    PROCEDURE DlgDirList* ["USER32.dll", "DlgDirListA"] (hDlg: HWND; lpPathSpec: PtrSTR; nIDListBox: INTEGER; nIDStaticPath: INTEGER; uFileType: SET): INTEGER;
    (*END DlgDirList;*)

    PROCEDURE DlgDirSelectExA* ["USER32.dll", ""] (hDlg: HWND; lpString: PtrSTR; nCount: INTEGER; nIDListBox: INTEGER): BOOL;
    (*END DlgDirSelectExA;*)

    PROCEDURE DlgDirSelectExW* ["USER32.dll", ""] (hDlg: HWND; lpString: PtrWSTR; nCount: INTEGER; nIDListBox: INTEGER): BOOL;
    (*END DlgDirSelectExW;*)

    PROCEDURE DlgDirSelectEx* ["USER32.dll", "DlgDirSelectExA"] (hDlg: HWND; lpString: PtrSTR; nCount: INTEGER; nIDListBox: INTEGER): BOOL;
    (*END DlgDirSelectEx;*)

    PROCEDURE DlgDirListComboBoxA* ["USER32.dll", ""] (hDlg: HWND; lpPathSpec: PtrSTR; nIDComboBox: INTEGER; nIDStaticPath: INTEGER; uFiletype: INTEGER): INTEGER;
    (*END DlgDirListComboBoxA;*)

    PROCEDURE DlgDirListComboBoxW* ["USER32.dll", ""] (hDlg: HWND; lpPathSpec: PtrWSTR; nIDComboBox: INTEGER; nIDStaticPath: INTEGER; uFiletype: INTEGER): INTEGER;
    (*END DlgDirListComboBoxW;*)

    PROCEDURE DlgDirListComboBox* ["USER32.dll", "DlgDirListComboBoxA"] (hDlg: HWND; lpPathSpec: PtrSTR; nIDComboBox: INTEGER; nIDStaticPath: INTEGER; uFiletype: INTEGER): INTEGER;
    (*END DlgDirListComboBox;*)

    PROCEDURE DlgDirSelectComboBoxExA* ["USER32.dll", ""] (hDlg: HWND; lpString: PtrSTR; nCount: INTEGER; nIDComboBox: INTEGER): BOOL;
    (*END DlgDirSelectComboBoxExA;*)

    PROCEDURE DlgDirSelectComboBoxExW* ["USER32.dll", ""] (hDlg: HWND; lpString: PtrWSTR; nCount: INTEGER; nIDComboBox: INTEGER): BOOL;
    (*END DlgDirSelectComboBoxExW;*)

    PROCEDURE DlgDirSelectComboBoxEx* ["USER32.dll", "DlgDirSelectComboBoxExA"] (hDlg: HWND; lpString: PtrSTR; nCount: INTEGER; nIDComboBox: INTEGER): BOOL;
    (*END DlgDirSelectComboBoxEx;*)

    PROCEDURE SetScrollInfo* ["USER32.dll", ""] (p0: HWND; p1: INTEGER; VAR [nil] p2: SCROLLINFO; p3: BOOL): INTEGER;
    (*END SetScrollInfo;*)

    PROCEDURE GetScrollInfo* ["USER32.dll", ""] (p0: HWND; p1: INTEGER; VAR [nil] p2: SCROLLINFO): BOOL;
    (*END GetScrollInfo;*)

    PROCEDURE DefFrameProcA* ["USER32.dll", ""] (hWnd: HWND; hWndMDIClient: HWND; uMsg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefFrameProcA;*)

    PROCEDURE DefFrameProcW* ["USER32.dll", ""] (hWnd: HWND; hWndMDIClient: HWND; uMsg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefFrameProcW;*)

    PROCEDURE DefFrameProc* ["USER32.dll", "DefFrameProcA"] (hWnd: HWND; hWndMDIClient: HWND; uMsg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefFrameProc;*)

    PROCEDURE DefMDIChildProcA* ["USER32.dll", ""] (hWnd: HWND; uMsg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefMDIChildProcA;*)

    PROCEDURE DefMDIChildProcW* ["USER32.dll", ""] (hWnd: HWND; uMsg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefMDIChildProcW;*)

    PROCEDURE DefMDIChildProc* ["USER32.dll", "DefMDIChildProcA"] (hWnd: HWND; uMsg: INTEGER; wParam: WPARAM; lParam: LPARAM): LRESULT;
    (*END DefMDIChildProc;*)

    PROCEDURE TranslateMDISysAccel* ["USER32.dll", ""] (hWndClient: HWND; VAR [nil] lpMsg: MSG): BOOL;
    (*END TranslateMDISysAccel;*)

    PROCEDURE ArrangeIconicWindows* ["USER32.dll", ""] (hWnd: HWND): INTEGER;
    (*END ArrangeIconicWindows;*)

    PROCEDURE CreateMDIWindowA* ["USER32.dll", ""] (lpClassName: PtrSTR; lpWindowName: PtrSTR; dwStyle: SET; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER; hWndParent: HWND; hInstance: HINSTANCE; lParam: LPARAM): HWND;
    (*END CreateMDIWindowA;*)

    PROCEDURE CreateMDIWindowW* ["USER32.dll", ""] (lpClassName: PtrWSTR; lpWindowName: PtrWSTR; dwStyle: SET; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER; hWndParent: HWND; hInstance: HINSTANCE; lParam: LPARAM): HWND;
    (*END CreateMDIWindowW;*)

    PROCEDURE CreateMDIWindow* ["USER32.dll", "CreateMDIWindowA"] (lpClassName: PtrSTR; lpWindowName: PtrSTR; dwStyle: SET; X: INTEGER; Y: INTEGER; nWidth: INTEGER; nHeight: INTEGER; hWndParent: HWND; hInstance: HINSTANCE; lParam: LPARAM): HWND;
    (*END CreateMDIWindow;*)

    PROCEDURE TileWindows* ["USER32.dll", ""] (hwndParent: HWND; wHow: INTEGER; VAR [nil] lpRect: RECT; cKids: INTEGER; VAR [nil] lpKids: HWND): SHORTINT;
    (*END TileWindows;*)

    PROCEDURE CascadeWindows* ["USER32.dll", ""] (hwndParent: HWND; wHow: INTEGER; VAR [nil] lpRect: RECT; cKids: INTEGER; VAR [nil] lpKids: HWND): SHORTINT;
    (*END CascadeWindows;*)

    PROCEDURE WinHelpA* ["USER32.dll", ""] (hWndMain: HWND; lpszHelp: PtrSTR; uCommand: INTEGER; dwData: INTEGER): BOOL;
    (*END WinHelpA;*)

    PROCEDURE WinHelpW* ["USER32.dll", ""] (hWndMain: HWND; lpszHelp: PtrWSTR; uCommand: INTEGER; dwData: INTEGER): BOOL;
    (*END WinHelpW;*)

    PROCEDURE WinHelp* ["USER32.dll", "WinHelpA"] (hWndMain: HWND; lpszHelp: PtrSTR; uCommand: INTEGER; dwData: INTEGER): BOOL;
    (*END WinHelp;*)

    PROCEDURE ChangeDisplaySettingsA* ["USER32.dll", ""] (VAR [nil] lpDevMode: DEVMODEA; dwFlags: SET): INTEGER;
    (*END ChangeDisplaySettingsA;*)

    PROCEDURE ChangeDisplaySettingsW* ["USER32.dll", ""] (VAR [nil] lpDevMode: DEVMODEW; dwFlags: SET): INTEGER;
    (*END ChangeDisplaySettingsW;*)

    PROCEDURE ChangeDisplaySettings* ["USER32.dll", "ChangeDisplaySettingsA"] (VAR [nil] lpDevMode: DEVMODEA; dwFlags: SET): INTEGER;
    (*END ChangeDisplaySettings;*)

    PROCEDURE EnumDisplaySettingsA* ["USER32.dll", ""] (lpszDeviceName: PtrSTR; iModeNum: INTEGER; VAR [nil] lpDevMode: DEVMODEA): BOOL;
    (*END EnumDisplaySettingsA;*)

    PROCEDURE EnumDisplaySettingsW* ["USER32.dll", ""] (lpszDeviceName: PtrWSTR; iModeNum: INTEGER; VAR [nil] lpDevMode: DEVMODEW): BOOL;
    (*END EnumDisplaySettingsW;*)

    PROCEDURE EnumDisplaySettings* ["USER32.dll", "EnumDisplaySettingsA"] (lpszDeviceName: PtrSTR; iModeNum: INTEGER; VAR [nil] lpDevMode: DEVMODEA): BOOL;
    (*END EnumDisplaySettings;*)

    PROCEDURE SystemParametersInfoA* ["USER32.dll", ""] (uiAction: INTEGER; uiParam: INTEGER; pvParam: PtrVoid; fWinIni: INTEGER): BOOL;
    (*END SystemParametersInfoA;*)

    PROCEDURE SystemParametersInfoW* ["USER32.dll", ""] (uiAction: INTEGER; uiParam: INTEGER; pvParam: PtrVoid; fWinIni: INTEGER): BOOL;
    (*END SystemParametersInfoW;*)

    PROCEDURE SystemParametersInfo* ["USER32.dll", "SystemParametersInfoA"] (uiAction: INTEGER; uiParam: INTEGER; pvParam: PtrVoid; fWinIni: INTEGER): BOOL;
    (*END SystemParametersInfo;*)

    PROCEDURE SetDebugErrorLevel* ["USER32.dll", ""] (dwLevel: INTEGER);
    (*END SetDebugErrorLevel;*)

    PROCEDURE SetLastErrorEx* ["USER32.dll", ""] (dwErrCode: INTEGER; dwType: INTEGER);
    (*END SetLastErrorEx;*)

    PROCEDURE IsValidCodePage* (CodePage: INTEGER): BOOL;
    (*END IsValidCodePage;*)

    PROCEDURE GetACP* (): INTEGER;
    (*END GetACP;*)

    PROCEDURE GetOEMCP* (): INTEGER;
    (*END GetOEMCP;*)

    PROCEDURE GetCPInfo* (CodePage: INTEGER; VAR [nil] lpCPInfo: CPINFO): BOOL;
    (*END GetCPInfo;*)

    PROCEDURE IsDBCSLeadByte* (TestChar: SHORTCHAR): BOOL;
    (*END IsDBCSLeadByte;*)

    PROCEDURE IsDBCSLeadByteEx* (CodePage: INTEGER; TestChar: SHORTCHAR): BOOL;
    (*END IsDBCSLeadByteEx;*)

    PROCEDURE MultiByteToWideChar* (CodePage: INTEGER; dwFlags: SET; lpMultiByteStr: PtrSTR; cchMultiByte: INTEGER; lpWideCharStr: PtrWSTR; cchWideChar: INTEGER): INTEGER;
    (*END MultiByteToWideChar;*)

    PROCEDURE WideCharToMultiByte* (CodePage: INTEGER; dwFlags: SET; lpWideCharStr: PtrWSTR; cchWideChar: INTEGER; lpMultiByteStr: PtrSTR; cchMultiByte: INTEGER; lpDefaultChar: PtrSTR; VAR [nil] lpUsedDefaultChar: BOOL): INTEGER;
    (*END WideCharToMultiByte;*)

    PROCEDURE CompareStringA* (Locale: LCID; dwCmpFlags: SET; lpString1: PtrSTR; cchCount1: INTEGER; lpString2: PtrSTR; cchCount2: INTEGER): INTEGER;
    (*END CompareStringA;*)

    PROCEDURE CompareStringW* (Locale: LCID; dwCmpFlags: SET; lpString1: PtrWSTR; cchCount1: INTEGER; lpString2: PtrWSTR; cchCount2: INTEGER): INTEGER;
    (*END CompareStringW;*)

    PROCEDURE CompareString* ["CompareStringA"] (Locale: LCID; dwCmpFlags: SET; lpString1: PtrSTR; cchCount1: INTEGER; lpString2: PtrSTR; cchCount2: INTEGER): INTEGER;
    (*END CompareString;*)

    PROCEDURE LCMapStringA* (Locale: LCID; dwMapFlags: SET; lpSrcStr: PtrSTR; cchSrc: INTEGER; lpDestStr: PtrSTR; cchDest: INTEGER): INTEGER;
    (*END LCMapStringA;*)

    PROCEDURE LCMapStringW* (Locale: LCID; dwMapFlags: SET; lpSrcStr: PtrWSTR; cchSrc: INTEGER; lpDestStr: PtrWSTR; cchDest: INTEGER): INTEGER;
    (*END LCMapStringW;*)

    PROCEDURE LCMapString* ["LCMapStringA"] (Locale: LCID; dwMapFlags: SET; lpSrcStr: PtrSTR; cchSrc: INTEGER; lpDestStr: PtrSTR; cchDest: INTEGER): INTEGER;
    (*END LCMapString;*)

    PROCEDURE GetLocaleInfoA* (Locale: LCID; LCType: LCTYPE; lpLCData: PtrSTR; cchData: INTEGER): INTEGER;
    (*END GetLocaleInfoA;*)

    PROCEDURE GetLocaleInfoW* (Locale: LCID; LCType: LCTYPE; lpLCData: PtrWSTR; cchData: INTEGER): INTEGER;
    (*END GetLocaleInfoW;*)

    PROCEDURE GetLocaleInfo* ["GetLocaleInfoA"] (Locale: LCID; LCType: LCTYPE; lpLCData: PtrSTR; cchData: INTEGER): INTEGER;
    (*END GetLocaleInfo;*)

    PROCEDURE SetLocaleInfoA* (Locale: LCID; LCType: LCTYPE; lpLCData: PtrSTR): BOOL;
    (*END SetLocaleInfoA;*)

    PROCEDURE SetLocaleInfoW* (Locale: LCID; LCType: LCTYPE; lpLCData: PtrWSTR): BOOL;
    (*END SetLocaleInfoW;*)

    PROCEDURE SetLocaleInfo* ["SetLocaleInfoA"] (Locale: LCID; LCType: LCTYPE; lpLCData: PtrSTR): BOOL;
    (*END SetLocaleInfo;*)

    PROCEDURE GetTimeFormatA* (Locale: LCID; dwFlags: SET; VAR [nil] lpTime: SYSTEMTIME; lpFormat: PtrSTR; lpTimeStr: PtrSTR; cchTime: INTEGER): INTEGER;
    (*END GetTimeFormatA;*)

    PROCEDURE GetTimeFormatW* (Locale: LCID; dwFlags: SET; VAR [nil] lpTime: SYSTEMTIME; lpFormat: PtrWSTR; lpTimeStr: PtrWSTR; cchTime: INTEGER): INTEGER;
    (*END GetTimeFormatW;*)

    PROCEDURE GetTimeFormat* ["GetTimeFormatA"] (Locale: LCID; dwFlags: SET; VAR [nil] lpTime: SYSTEMTIME; lpFormat: PtrSTR; lpTimeStr: PtrSTR; cchTime: INTEGER): INTEGER;
    (*END GetTimeFormat;*)

    PROCEDURE GetDateFormatA* (Locale: LCID; dwFlags: SET; VAR [nil] lpDate: SYSTEMTIME; lpFormat: PtrSTR; lpDateStr: PtrSTR; cchDate: INTEGER): INTEGER;
    (*END GetDateFormatA;*)

    PROCEDURE GetDateFormatW* (Locale: LCID; dwFlags: SET; VAR [nil] lpDate: SYSTEMTIME; lpFormat: PtrWSTR; lpDateStr: PtrWSTR; cchDate: INTEGER): INTEGER;
    (*END GetDateFormatW;*)

    PROCEDURE GetDateFormat* ["GetDateFormatA"] (Locale: LCID; dwFlags: SET; VAR [nil] lpDate: SYSTEMTIME; lpFormat: PtrSTR; lpDateStr: PtrSTR; cchDate: INTEGER): INTEGER;
    (*END GetDateFormat;*)

    PROCEDURE GetNumberFormatA* (Locale: LCID; dwFlags: SET; lpValue: PtrSTR; VAR [nil] lpFormat: NUMBERFMTA; lpNumberStr: PtrSTR; cchNumber: INTEGER): INTEGER;
    (*END GetNumberFormatA;*)

    PROCEDURE GetNumberFormatW* (Locale: LCID; dwFlags: SET; lpValue: PtrWSTR; VAR [nil] lpFormat: NUMBERFMTW; lpNumberStr: PtrWSTR; cchNumber: INTEGER): INTEGER;
    (*END GetNumberFormatW;*)

    PROCEDURE GetNumberFormat* ["GetNumberFormatA"] (Locale: LCID; dwFlags: SET; lpValue: PtrSTR; VAR [nil] lpFormat: NUMBERFMTA; lpNumberStr: PtrSTR; cchNumber: INTEGER): INTEGER;
    (*END GetNumberFormat;*)

    PROCEDURE GetCurrencyFormatA* (Locale: LCID; dwFlags: SET; lpValue: PtrSTR; VAR [nil] lpFormat: CURRENCYFMTA; lpCurrencyStr: PtrSTR; cchCurrency: INTEGER): INTEGER;
    (*END GetCurrencyFormatA;*)

    PROCEDURE GetCurrencyFormatW* (Locale: LCID; dwFlags: SET; lpValue: PtrWSTR; VAR [nil] lpFormat: CURRENCYFMTW; lpCurrencyStr: PtrWSTR; cchCurrency: INTEGER): INTEGER;
    (*END GetCurrencyFormatW;*)

    PROCEDURE GetCurrencyFormat* ["GetCurrencyFormatA"] (Locale: LCID; dwFlags: SET; lpValue: PtrSTR; VAR [nil] lpFormat: CURRENCYFMTA; lpCurrencyStr: PtrSTR; cchCurrency: INTEGER): INTEGER;
    (*END GetCurrencyFormat;*)

    PROCEDURE EnumCalendarInfoA* (lpCalInfoEnumProc: CALINFO_ENUMPROCA; Locale: LCID; Calendar: CALID; CalType: CALTYPE): BOOL;
    (*END EnumCalendarInfoA;*)

    PROCEDURE EnumCalendarInfoW* (lpCalInfoEnumProc: CALINFO_ENUMPROCW; Locale: LCID; Calendar: CALID; CalType: CALTYPE): BOOL;
    (*END EnumCalendarInfoW;*)

    PROCEDURE EnumCalendarInfo* ["EnumCalendarInfoA"] (lpCalInfoEnumProc: CALINFO_ENUMPROCA; Locale: LCID; Calendar: CALID; CalType: CALTYPE): BOOL;
    (*END EnumCalendarInfo;*)

    PROCEDURE EnumTimeFormatsA* (lpTimeFmtEnumProc: TIMEFMT_ENUMPROCA; Locale: LCID; dwFlags: SET): BOOL;
    (*END EnumTimeFormatsA;*)

    PROCEDURE EnumTimeFormatsW* (lpTimeFmtEnumProc: TIMEFMT_ENUMPROCW; Locale: LCID; dwFlags: SET): BOOL;
    (*END EnumTimeFormatsW;*)

    PROCEDURE EnumTimeFormats* ["EnumTimeFormatsA"] (lpTimeFmtEnumProc: TIMEFMT_ENUMPROCA; Locale: LCID; dwFlags: SET): BOOL;
    (*END EnumTimeFormats;*)

    PROCEDURE EnumDateFormatsA* (lpDateFmtEnumProc: DATEFMT_ENUMPROCA; Locale: LCID; dwFlags: SET): BOOL;
    (*END EnumDateFormatsA;*)

    PROCEDURE EnumDateFormatsW* (lpDateFmtEnumProc: DATEFMT_ENUMPROCW; Locale: LCID; dwFlags: SET): BOOL;
    (*END EnumDateFormatsW;*)

    PROCEDURE EnumDateFormats* ["EnumDateFormatsA"] (lpDateFmtEnumProc: DATEFMT_ENUMPROCA; Locale: LCID; dwFlags: SET): BOOL;
    (*END EnumDateFormats;*)

    PROCEDURE IsValidLocale* (Locale: LCID; dwFlags: SET): BOOL;
    (*END IsValidLocale;*)

    PROCEDURE ConvertDefaultLocale* (Locale: LCID): LCID;
    (*END ConvertDefaultLocale;*)

    PROCEDURE GetThreadLocale* (): LCID;
    (*END GetThreadLocale;*)

    PROCEDURE SetThreadLocale* (Locale: LCID): BOOL;
    (*END SetThreadLocale;*)

    PROCEDURE GetSystemDefaultLangID* (): LANGID;
    (*END GetSystemDefaultLangID;*)

    PROCEDURE GetUserDefaultLangID* (): LANGID;
    (*END GetUserDefaultLangID;*)

    PROCEDURE GetSystemDefaultLCID* (): LCID;
    (*END GetSystemDefaultLCID;*)

    PROCEDURE GetUserDefaultLCID* (): LCID;
    (*END GetUserDefaultLCID;*)

    PROCEDURE GetStringTypeExA* (Locale: LCID; dwInfoType: SET; lpSrcStr: PtrSTR; cchSrc: INTEGER; VAR [nil] lpCharType: SHORTINT): BOOL;
    (*END GetStringTypeExA;*)

    PROCEDURE GetStringTypeExW* (Locale: LCID; dwInfoType: SET; lpSrcStr: PtrWSTR; cchSrc: INTEGER; VAR [nil] lpCharType: SHORTINT): BOOL;
    (*END GetStringTypeExW;*)

    PROCEDURE GetStringTypeEx* ["GetStringTypeExA"] (Locale: LCID; dwInfoType: SET; lpSrcStr: PtrSTR; cchSrc: INTEGER; VAR [nil] lpCharType: SHORTINT): BOOL;
    (*END GetStringTypeEx;*)

    PROCEDURE GetStringTypeA* (Locale: LCID; dwInfoType: SET; lpSrcStr: PtrSTR; cchSrc: INTEGER; VAR [nil] lpCharType: SHORTINT): BOOL;
    (*END GetStringTypeA;*)

    PROCEDURE GetStringTypeW* (dwInfoType: SET; lpSrcStr: PtrWSTR; cchSrc: INTEGER; VAR [nil] lpCharType: SHORTINT): BOOL;
    (*END GetStringTypeW;*)

    PROCEDURE FoldStringA* (dwMapFlags: SET; lpSrcStr: PtrSTR; cchSrc: INTEGER; lpDestStr: PtrSTR; cchDest: INTEGER): INTEGER;
    (*END FoldStringA;*)

    PROCEDURE FoldStringW* (dwMapFlags: SET; lpSrcStr: PtrWSTR; cchSrc: INTEGER; lpDestStr: PtrWSTR; cchDest: INTEGER): INTEGER;
    (*END FoldStringW;*)

    PROCEDURE FoldString* ["FoldStringA"] (dwMapFlags: SET; lpSrcStr: PtrSTR; cchSrc: INTEGER; lpDestStr: PtrSTR; cchDest: INTEGER): INTEGER;
    (*END FoldString;*)

    PROCEDURE EnumSystemLocalesA* (lpLocaleEnumProc: LOCALE_ENUMPROCA; dwFlags: SET): BOOL;
    (*END EnumSystemLocalesA;*)

    PROCEDURE EnumSystemLocalesW* (lpLocaleEnumProc: LOCALE_ENUMPROCW; dwFlags: SET): BOOL;
    (*END EnumSystemLocalesW;*)

    PROCEDURE EnumSystemLocales* ["EnumSystemLocalesA"] (lpLocaleEnumProc: LOCALE_ENUMPROCA; dwFlags: SET): BOOL;
    (*END EnumSystemLocales;*)

    PROCEDURE EnumSystemCodePagesA* (lpCodePageEnumProc: CODEPAGE_ENUMPROCA; dwFlags: SET): BOOL;
    (*END EnumSystemCodePagesA;*)

    PROCEDURE EnumSystemCodePagesW* (lpCodePageEnumProc: CODEPAGE_ENUMPROCW; dwFlags: SET): BOOL;
    (*END EnumSystemCodePagesW;*)

    PROCEDURE EnumSystemCodePages* ["EnumSystemCodePagesA"] (lpCodePageEnumProc: CODEPAGE_ENUMPROCA; dwFlags: SET): BOOL;
    (*END EnumSystemCodePages;*)

    PROCEDURE PeekConsoleInputA* (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsRead: INTEGER): BOOL;
    (*END PeekConsoleInputA;*)

    PROCEDURE PeekConsoleInputW* (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsRead: INTEGER): BOOL;
    (*END PeekConsoleInputW;*)

    PROCEDURE PeekConsoleInput* ["PeekConsoleInputA"] (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsRead: INTEGER): BOOL;
    (*END PeekConsoleInput;*)

    PROCEDURE ReadConsoleInputA* (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsRead: INTEGER): BOOL;
    (*END ReadConsoleInputA;*)

    PROCEDURE ReadConsoleInputW* (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsRead: INTEGER): BOOL;
    (*END ReadConsoleInputW;*)

    PROCEDURE ReadConsoleInput* ["ReadConsoleInputA"] (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsRead: INTEGER): BOOL;
    (*END ReadConsoleInput;*)

    PROCEDURE WriteConsoleInputA* (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsWritten: INTEGER): BOOL;
    (*END WriteConsoleInputA;*)

    PROCEDURE WriteConsoleInputW* (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsWritten: INTEGER): BOOL;
    (*END WriteConsoleInputW;*)

    PROCEDURE WriteConsoleInput* ["WriteConsoleInputA"] (hConsoleInput: HANDLE; VAR [nil] lpBuffer: INPUT_RECORD; nLength: INTEGER; VAR [nil] lpNumberOfEventsWritten: INTEGER): BOOL;
    (*END WriteConsoleInput;*)

    PROCEDURE ReadConsoleOutputA* (hConsoleOutput: HANDLE; VAR [nil] lpBuffer: CHAR_INFO; dwBufferSize: COORD; dwBufferCoord: COORD; VAR [nil] lpReadRegion: SMALL_RECT): BOOL;
    (*END ReadConsoleOutputA;*)

    PROCEDURE ReadConsoleOutputW* (hConsoleOutput: HANDLE; VAR [nil] lpBuffer: CHAR_INFO; dwBufferSize: COORD; dwBufferCoord: COORD; VAR [nil] lpReadRegion: SMALL_RECT): BOOL;
    (*END ReadConsoleOutputW;*)

    PROCEDURE ReadConsoleOutput* ["ReadConsoleOutputA"] (hConsoleOutput: HANDLE; VAR [nil] lpBuffer: CHAR_INFO; dwBufferSize: COORD; dwBufferCoord: COORD; VAR [nil] lpReadRegion: SMALL_RECT): BOOL;
    (*END ReadConsoleOutput;*)

    PROCEDURE WriteConsoleOutputA* (hConsoleOutput: HANDLE; VAR [nil] lpBuffer: CHAR_INFO; dwBufferSize: COORD; dwBufferCoord: COORD; VAR [nil] lpWriteRegion: SMALL_RECT): BOOL;
    (*END WriteConsoleOutputA;*)

    PROCEDURE WriteConsoleOutputW* (hConsoleOutput: HANDLE; VAR [nil] lpBuffer: CHAR_INFO; dwBufferSize: COORD; dwBufferCoord: COORD; VAR [nil] lpWriteRegion: SMALL_RECT): BOOL;
    (*END WriteConsoleOutputW;*)

    PROCEDURE WriteConsoleOutput* ["WriteConsoleOutputA"] (hConsoleOutput: HANDLE; VAR [nil] lpBuffer: CHAR_INFO; dwBufferSize: COORD; dwBufferCoord: COORD; VAR [nil] lpWriteRegion: SMALL_RECT): BOOL;
    (*END WriteConsoleOutput;*)

    PROCEDURE ReadConsoleOutputCharacterA* (hConsoleOutput: HANDLE; lpCharacter: PtrSTR; nLength: INTEGER; dwReadCoord: COORD; VAR [nil] lpNumberOfCharsRead: INTEGER): BOOL;
    (*END ReadConsoleOutputCharacterA;*)

    PROCEDURE ReadConsoleOutputCharacterW* (hConsoleOutput: HANDLE; lpCharacter: PtrWSTR; nLength: INTEGER; dwReadCoord: COORD; VAR [nil] lpNumberOfCharsRead: INTEGER): BOOL;
    (*END ReadConsoleOutputCharacterW;*)

    PROCEDURE ReadConsoleOutputCharacter* ["ReadConsoleOutputCharacterA"] (hConsoleOutput: HANDLE; lpCharacter: PtrSTR; nLength: INTEGER; dwReadCoord: COORD; VAR [nil] lpNumberOfCharsRead: INTEGER): BOOL;
    (*END ReadConsoleOutputCharacter;*)

    PROCEDURE ReadConsoleOutputAttribute* (hConsoleOutput: HANDLE; VAR [nil] lpAttribute: SHORTINT; nLength: INTEGER; dwReadCoord: COORD; VAR [nil] lpNumberOfAttrsRead: INTEGER): BOOL;
    (*END ReadConsoleOutputAttribute;*)

    PROCEDURE WriteConsoleOutputCharacterA* (hConsoleOutput: HANDLE; lpCharacter: PtrSTR; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfCharsWritten: INTEGER): BOOL;
    (*END WriteConsoleOutputCharacterA;*)

    PROCEDURE WriteConsoleOutputCharacterW* (hConsoleOutput: HANDLE; lpCharacter: PtrWSTR; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfCharsWritten: INTEGER): BOOL;
    (*END WriteConsoleOutputCharacterW;*)

    PROCEDURE WriteConsoleOutputCharacter* ["WriteConsoleOutputCharacterA"] (hConsoleOutput: HANDLE; lpCharacter: PtrSTR; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfCharsWritten: INTEGER): BOOL;
    (*END WriteConsoleOutputCharacter;*)

    PROCEDURE WriteConsoleOutputAttribute* (hConsoleOutput: HANDLE; VAR [nil] lpAttribute: SHORTINT; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfAttrsWritten: INTEGER): BOOL;
    (*END WriteConsoleOutputAttribute;*)

    PROCEDURE FillConsoleOutputCharacterA* (hConsoleOutput: HANDLE; cCharacter: SHORTCHAR; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfCharsWritten: INTEGER): BOOL;
    (*END FillConsoleOutputCharacterA;*)

    PROCEDURE FillConsoleOutputCharacterW* (hConsoleOutput: HANDLE; cCharacter: CHAR; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfCharsWritten: INTEGER): BOOL;
    (*END FillConsoleOutputCharacterW;*)

    PROCEDURE FillConsoleOutputCharacter* ["FillConsoleOutputCharacterA"] (hConsoleOutput: HANDLE; cCharacter: SHORTCHAR; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfCharsWritten: INTEGER): BOOL;
    (*END FillConsoleOutputCharacter;*)

    PROCEDURE FillConsoleOutputAttribute* (hConsoleOutput: HANDLE; wAttribute: SHORTINT; nLength: INTEGER; dwWriteCoord: COORD; VAR [nil] lpNumberOfAttrsWritten: INTEGER): BOOL;
    (*END FillConsoleOutputAttribute;*)

    PROCEDURE GetConsoleMode* (hConsoleHandle: HANDLE; VAR [nil] lpMode: SET): BOOL;
    (*END GetConsoleMode;*)

    PROCEDURE GetNumberOfConsoleInputEvents* (hConsoleInput: HANDLE; VAR [nil] lpNumberOfEvents: INTEGER): BOOL;
    (*END GetNumberOfConsoleInputEvents;*)

    PROCEDURE GetConsoleScreenBufferInfo* (hConsoleOutput: HANDLE; VAR [nil] lpConsoleScreenBufferInfo: CONSOLE_SCREEN_BUFFER_INFO): BOOL;
    (*END GetConsoleScreenBufferInfo;*)

    PROCEDURE GetLargestConsoleWindowSize* (hConsoleOutput: HANDLE): INTEGER;
    (*END GetLargestConsoleWindowSize;*)

    PROCEDURE GetConsoleCursorInfo* (hConsoleOutput: HANDLE; VAR [nil] lpConsoleCursorInfo: CONSOLE_CURSOR_INFO): BOOL;
    (*END GetConsoleCursorInfo;*)

    PROCEDURE GetNumberOfConsoleMouseButtons* (VAR [nil] lpNumberOfMouseButtons: INTEGER): BOOL;
    (*END GetNumberOfConsoleMouseButtons;*)

    PROCEDURE SetConsoleMode* (hConsoleHandle: HANDLE; dwMode: SET): BOOL;
    (*END SetConsoleMode;*)

    PROCEDURE SetConsoleActiveScreenBuffer* (hConsoleOutput: HANDLE): BOOL;
    (*END SetConsoleActiveScreenBuffer;*)

    PROCEDURE FlushConsoleInputBuffer* (hConsoleInput: HANDLE): BOOL;
    (*END FlushConsoleInputBuffer;*)

    PROCEDURE SetConsoleScreenBufferSize* (hConsoleOutput: HANDLE; dwSize: COORD): BOOL;
    (*END SetConsoleScreenBufferSize;*)

    PROCEDURE SetConsoleCursorPosition* (hConsoleOutput: HANDLE; dwCursorPosition: COORD): BOOL;
    (*END SetConsoleCursorPosition;*)

    PROCEDURE SetConsoleCursorInfo* (hConsoleOutput: HANDLE; VAR [nil] lpConsoleCursorInfo: CONSOLE_CURSOR_INFO): BOOL;
    (*END SetConsoleCursorInfo;*)

    PROCEDURE ScrollConsoleScreenBufferA* (hConsoleOutput: HANDLE; VAR [nil] lpScrollRectangle: SMALL_RECT; VAR [nil] lpClipRectangle: SMALL_RECT; dwDestinationOrigin: COORD; VAR [nil] lpFill: CHAR_INFO): BOOL;
    (*END ScrollConsoleScreenBufferA;*)

    PROCEDURE ScrollConsoleScreenBufferW* (hConsoleOutput: HANDLE; VAR [nil] lpScrollRectangle: SMALL_RECT; VAR [nil] lpClipRectangle: SMALL_RECT; dwDestinationOrigin: COORD; VAR [nil] lpFill: CHAR_INFO): BOOL;
    (*END ScrollConsoleScreenBufferW;*)

    PROCEDURE ScrollConsoleScreenBuffer* ["ScrollConsoleScreenBufferA"] (hConsoleOutput: HANDLE; VAR [nil] lpScrollRectangle: SMALL_RECT; VAR [nil] lpClipRectangle: SMALL_RECT; dwDestinationOrigin: COORD; VAR [nil] lpFill: CHAR_INFO): BOOL;
    (*END ScrollConsoleScreenBuffer;*)

    PROCEDURE SetConsoleWindowInfo* (hConsoleOutput: HANDLE; bAbsolute: BOOL; VAR [nil] lpConsoleWindow: SMALL_RECT): BOOL;
    (*END SetConsoleWindowInfo;*)

    PROCEDURE SetConsoleTextAttribute* (hConsoleOutput: HANDLE; wAttributes: SHORTINT): BOOL;
    (*END SetConsoleTextAttribute;*)

    PROCEDURE SetConsoleCtrlHandler* (HandlerRoutine: HANDLER_ROUTINE; Add: BOOL): BOOL;
    (*END SetConsoleCtrlHandler;*)

    PROCEDURE GenerateConsoleCtrlEvent* (dwCtrlEvent: INTEGER; dwProcessGroupId: INTEGER): BOOL;
    (*END GenerateConsoleCtrlEvent;*)

    PROCEDURE AllocConsole* (): BOOL;
    (*END AllocConsole;*)

    PROCEDURE FreeConsole* (): BOOL;
    (*END FreeConsole;*)

    PROCEDURE GetConsoleTitleA* (lpConsoleTitle: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetConsoleTitleA;*)

    PROCEDURE GetConsoleTitleW* (lpConsoleTitle: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END GetConsoleTitleW;*)

    PROCEDURE GetConsoleTitle* ["GetConsoleTitleA"] (lpConsoleTitle: PtrSTR; nSize: INTEGER): INTEGER;
    (*END GetConsoleTitle;*)

    PROCEDURE SetConsoleTitleA* (lpConsoleTitle: PtrSTR): BOOL;
    (*END SetConsoleTitleA;*)

    PROCEDURE SetConsoleTitleW* (lpConsoleTitle: PtrWSTR): BOOL;
    (*END SetConsoleTitleW;*)

    PROCEDURE SetConsoleTitle* ["SetConsoleTitleA"] (lpConsoleTitle: PtrSTR): BOOL;
    (*END SetConsoleTitle;*)

    PROCEDURE ReadConsoleA* (hConsoleInput: HANDLE; lpBuffer: PtrVoid; nNumberOfCharsToRead: INTEGER; VAR [nil] lpNumberOfCharsRead: INTEGER; lpReserved: PtrVoid): BOOL;
    (*END ReadConsoleA;*)

    PROCEDURE ReadConsoleW* (hConsoleInput: HANDLE; lpBuffer: PtrVoid; nNumberOfCharsToRead: INTEGER; VAR [nil] lpNumberOfCharsRead: INTEGER; lpReserved: PtrVoid): BOOL;
    (*END ReadConsoleW;*)

    PROCEDURE ReadConsole* ["ReadConsoleA"] (hConsoleInput: HANDLE; lpBuffer: PtrVoid; nNumberOfCharsToRead: INTEGER; VAR [nil] lpNumberOfCharsRead: INTEGER; lpReserved: PtrVoid): BOOL;
    (*END ReadConsole;*)

    PROCEDURE WriteConsoleA* (hConsoleOutput: HANDLE; lpBuffer: PtrVoid; nNumberOfCharsToWrite: INTEGER; VAR [nil] lpNumberOfCharsWritten: INTEGER; lpReserved: PtrVoid): BOOL;
    (*END WriteConsoleA;*)

    PROCEDURE WriteConsoleW* (hConsoleOutput: HANDLE; lpBuffer: PtrVoid; nNumberOfCharsToWrite: INTEGER; VAR [nil] lpNumberOfCharsWritten: INTEGER; lpReserved: PtrVoid): BOOL;
    (*END WriteConsoleW;*)

    PROCEDURE WriteConsole* ["WriteConsoleA"] (hConsoleOutput: HANDLE; lpBuffer: PtrVoid; nNumberOfCharsToWrite: INTEGER; VAR [nil] lpNumberOfCharsWritten: INTEGER; lpReserved: PtrVoid): BOOL;
    (*END WriteConsole;*)

    PROCEDURE CreateConsoleScreenBuffer* (dwDesiredAccess: SET; dwShareMode: SET; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES; dwFlags: SET; lpScreenBufferData: PtrVoid): HANDLE;
    (*END CreateConsoleScreenBuffer;*)

    PROCEDURE GetConsoleCP* (): INTEGER;
    (*END GetConsoleCP;*)

    PROCEDURE SetConsoleCP* (wCodePageID: INTEGER): BOOL;
    (*END SetConsoleCP;*)

    PROCEDURE GetConsoleOutputCP* (): INTEGER;
    (*END GetConsoleOutputCP;*)

    PROCEDURE SetConsoleOutputCP* (wCodePageID: INTEGER): BOOL;
    (*END SetConsoleOutputCP;*)

    PROCEDURE VerFindFileA* ["VERSION.dll", ""] (uFlags: SET; szFileName: PtrSTR; szWinDir: PtrSTR; szAppDir: PtrSTR; szCurDir: PtrSTR; VAR [nil] lpuCurDirLen: INTEGER; szDestDir: PtrSTR; VAR [nil] lpuDestDirLen: INTEGER): SET;
    (*END VerFindFileA;*)

    PROCEDURE VerFindFileW* ["VERSION.dll", ""] (uFlags: SET; szFileName: PtrWSTR; szWinDir: PtrWSTR; szAppDir: PtrWSTR; szCurDir: PtrWSTR; VAR [nil] lpuCurDirLen: INTEGER; szDestDir: PtrWSTR; VAR [nil] lpuDestDirLen: INTEGER): SET;
    (*END VerFindFileW;*)

    PROCEDURE VerFindFile* ["VERSION.dll", "VerFindFileA"] (uFlags: SET; szFileName: PtrSTR; szWinDir: PtrSTR; szAppDir: PtrSTR; szCurDir: PtrSTR; VAR [nil] lpuCurDirLen: INTEGER; szDestDir: PtrSTR; VAR [nil] lpuDestDirLen: INTEGER): SET;
    (*END VerFindFile;*)

    PROCEDURE VerInstallFileA* ["VERSION.dll", ""] (uFlags: SET; szSrcFileName: PtrSTR; szDestFileName: PtrSTR; szSrcDir: PtrSTR; szDestDir: PtrSTR; szCurDir: PtrSTR; szTmpFile: PtrSTR; VAR [nil] lpuTmpFileLen: INTEGER): SET;
    (*END VerInstallFileA;*)

    PROCEDURE VerInstallFileW* ["VERSION.dll", ""] (uFlags: SET; szSrcFileName: PtrWSTR; szDestFileName: PtrWSTR; szSrcDir: PtrWSTR; szDestDir: PtrWSTR; szCurDir: PtrWSTR; szTmpFile: PtrWSTR; VAR [nil] lpuTmpFileLen: INTEGER): SET;
    (*END VerInstallFileW;*)

    PROCEDURE VerInstallFile* ["VERSION.dll", "VerInstallFileA"] (uFlags: SET; szSrcFileName: PtrSTR; szDestFileName: PtrSTR; szSrcDir: PtrSTR; szDestDir: PtrSTR; szCurDir: PtrSTR; szTmpFile: PtrSTR; VAR [nil] lpuTmpFileLen: INTEGER): SET;
    (*END VerInstallFile;*)

    PROCEDURE GetFileVersionInfoSizeA* ["VERSION.dll", ""] (lptstrFilename: PtrSTR; VAR [nil] lpdwHandle: INTEGER): INTEGER;
    (*END GetFileVersionInfoSizeA;*)

    PROCEDURE GetFileVersionInfoSizeW* ["VERSION.dll", ""] (lptstrFilename: PtrWSTR; VAR [nil] lpdwHandle: INTEGER): INTEGER;
    (*END GetFileVersionInfoSizeW;*)

    PROCEDURE GetFileVersionInfoSize* ["VERSION.dll", "GetFileVersionInfoSizeA"] (lptstrFilename: PtrSTR; VAR [nil] lpdwHandle: INTEGER): INTEGER;
    (*END GetFileVersionInfoSize;*)

    PROCEDURE GetFileVersionInfoA* ["VERSION.dll", ""] (lptstrFilename: PtrSTR; dwHandle: INTEGER; dwLen: INTEGER; lpData: PtrVoid): BOOL;
    (*END GetFileVersionInfoA;*)

    PROCEDURE GetFileVersionInfoW* ["VERSION.dll", ""] (lptstrFilename: PtrWSTR; dwHandle: INTEGER; dwLen: INTEGER; lpData: PtrVoid): BOOL;
    (*END GetFileVersionInfoW;*)

    PROCEDURE GetFileVersionInfo* ["VERSION.dll", "GetFileVersionInfoA"] (lptstrFilename: PtrSTR; dwHandle: INTEGER; dwLen: INTEGER; lpData: PtrVoid): BOOL;
    (*END GetFileVersionInfo;*)

    PROCEDURE VerLanguageNameA* (wLang: INTEGER; szLang: PtrSTR; nSize: INTEGER): INTEGER;
    (*END VerLanguageNameA;*)

    PROCEDURE VerLanguageNameW* (wLang: INTEGER; szLang: PtrWSTR; nSize: INTEGER): INTEGER;
    (*END VerLanguageNameW;*)

    PROCEDURE VerLanguageName* ["VerLanguageNameA"] (wLang: INTEGER; szLang: PtrSTR; nSize: INTEGER): INTEGER;
    (*END VerLanguageName;*)

    PROCEDURE VerQueryValueA* ["VERSION.dll", ""] (pBlock: PtrVoid; lpSubBlock: PtrSTR; lplpBuffer: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid; VAR [nil] puLen: INTEGER): BOOL;
    (*END VerQueryValueA;*)

    PROCEDURE VerQueryValueW* ["VERSION.dll", ""] (pBlock: PtrVoid; lpSubBlock: PtrWSTR; lplpBuffer: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid; VAR [nil] puLen: INTEGER): BOOL;
    (*END VerQueryValueW;*)

    PROCEDURE VerQueryValue* ["VERSION.dll", "VerQueryValueA"] (pBlock: PtrVoid; lpSubBlock: PtrSTR; lplpBuffer: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid; VAR [nil] puLen: INTEGER): BOOL;
    (*END VerQueryValue;*)

    PROCEDURE RegCloseKey* ["ADVAPI32.dll", ""] (hKey: HKEY): INTEGER;
    (*END RegCloseKey;*)

    PROCEDURE RegConnectRegistryA* ["ADVAPI32.dll", ""] (lpMachineName: PtrSTR; hKey: HKEY; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegConnectRegistryA;*)

    PROCEDURE RegConnectRegistryW* ["ADVAPI32.dll", ""] (lpMachineName: PtrWSTR; hKey: HKEY; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegConnectRegistryW;*)

    PROCEDURE RegConnectRegistry* ["ADVAPI32.dll", "RegConnectRegistryA"] (lpMachineName: PtrSTR; hKey: HKEY; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegConnectRegistry;*)

    PROCEDURE RegCreateKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegCreateKeyA;*)

    PROCEDURE RegCreateKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegCreateKeyW;*)

    PROCEDURE RegCreateKey* ["ADVAPI32.dll", "RegCreateKeyA"] (hKey: HKEY; lpSubKey: PtrSTR; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegCreateKey;*)

    PROCEDURE RegCreateKeyExA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; Reserved: INTEGER; lpClass: PtrSTR; dwOptions: SET; samDesired: REGSAM; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES; VAR [nil] phkResult: HKEY; VAR [nil] lpdwDisposition: INTEGER): INTEGER;
    (*END RegCreateKeyExA;*)

    PROCEDURE RegCreateKeyExW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; Reserved: INTEGER; lpClass: PtrWSTR; dwOptions: SET; samDesired: REGSAM; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES; VAR [nil] phkResult: HKEY; VAR [nil] lpdwDisposition: INTEGER): INTEGER;
    (*END RegCreateKeyExW;*)

    PROCEDURE RegCreateKeyEx* ["ADVAPI32.dll", "RegCreateKeyExA"] (hKey: HKEY; lpSubKey: PtrSTR; Reserved: INTEGER; lpClass: PtrSTR; dwOptions: SET; samDesired: REGSAM; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES; VAR [nil] phkResult: HKEY; VAR [nil] lpdwDisposition: INTEGER): INTEGER;
    (*END RegCreateKeyEx;*)

    PROCEDURE RegDeleteKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR): INTEGER;
    (*END RegDeleteKeyA;*)

    PROCEDURE RegDeleteKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR): INTEGER;
    (*END RegDeleteKeyW;*)

    PROCEDURE RegDeleteKey* ["ADVAPI32.dll", "RegDeleteKeyA"] (hKey: HKEY; lpSubKey: PtrSTR): INTEGER;
    (*END RegDeleteKey;*)

    PROCEDURE RegDeleteValueA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpValueName: PtrSTR): INTEGER;
    (*END RegDeleteValueA;*)

    PROCEDURE RegDeleteValueW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpValueName: PtrWSTR): INTEGER;
    (*END RegDeleteValueW;*)

    PROCEDURE RegDeleteValue* ["ADVAPI32.dll", "RegDeleteValueA"] (hKey: HKEY; lpValueName: PtrSTR): INTEGER;
    (*END RegDeleteValue;*)

    PROCEDURE RegEnumKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; dwIndex: INTEGER; lpName: PtrSTR; cbName: INTEGER): INTEGER;
    (*END RegEnumKeyA;*)

    PROCEDURE RegEnumKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; dwIndex: INTEGER; lpName: PtrWSTR; cbName: INTEGER): INTEGER;
    (*END RegEnumKeyW;*)

    PROCEDURE RegEnumKey* ["ADVAPI32.dll", "RegEnumKeyA"] (hKey: HKEY; dwIndex: INTEGER; lpName: PtrSTR; cbName: INTEGER): INTEGER;
    (*END RegEnumKey;*)

    PROCEDURE RegEnumKeyExA* ["ADVAPI32.dll", ""] (hKey: HKEY; dwIndex: INTEGER; lpName: PtrSTR; VAR [nil] lpcbName: INTEGER; VAR [nil] lpReserved: INTEGER; lpClass: PtrSTR; VAR [nil] lpcbClass: INTEGER; VAR [nil] lpftLastWriteTime: FILETIME): INTEGER;
    (*END RegEnumKeyExA;*)

    PROCEDURE RegEnumKeyExW* ["ADVAPI32.dll", ""] (hKey: HKEY; dwIndex: INTEGER; lpName: PtrWSTR; VAR [nil] lpcbName: INTEGER; VAR [nil] lpReserved: INTEGER; lpClass: PtrWSTR; VAR [nil] lpcbClass: INTEGER; VAR [nil] lpftLastWriteTime: FILETIME): INTEGER;
    (*END RegEnumKeyExW;*)

    PROCEDURE RegEnumKeyEx* ["ADVAPI32.dll", "RegEnumKeyExA"] (hKey: HKEY; dwIndex: INTEGER; lpName: PtrSTR; VAR [nil] lpcbName: INTEGER; VAR [nil] lpReserved: INTEGER; lpClass: PtrSTR; VAR [nil] lpcbClass: INTEGER; VAR [nil] lpftLastWriteTime: FILETIME): INTEGER;
    (*END RegEnumKeyEx;*)

    PROCEDURE RegEnumValueA* ["ADVAPI32.dll", ""] (hKey: HKEY; dwIndex: INTEGER; lpValueName: PtrSTR; VAR [nil] lpcbValueName: INTEGER; VAR [nil] lpReserved: INTEGER; VAR [nil] lpType: INTEGER; VAR [nil] lpData: SHORTCHAR; VAR [nil] lpcbData: INTEGER): INTEGER;
    (*END RegEnumValueA;*)

    PROCEDURE RegEnumValueW* ["ADVAPI32.dll", ""] (hKey: HKEY; dwIndex: INTEGER; lpValueName: PtrWSTR; VAR [nil] lpcbValueName: INTEGER; VAR [nil] lpReserved: INTEGER; VAR [nil] lpType: INTEGER; VAR [nil] lpData: SHORTCHAR; VAR [nil] lpcbData: INTEGER): INTEGER;
    (*END RegEnumValueW;*)

    PROCEDURE RegEnumValue* ["ADVAPI32.dll", "RegEnumValueA"] (hKey: HKEY; dwIndex: INTEGER; lpValueName: PtrSTR; VAR [nil] lpcbValueName: INTEGER; VAR [nil] lpReserved: INTEGER; VAR [nil] lpType: INTEGER; VAR [nil] lpData: SHORTCHAR; VAR [nil] lpcbData: INTEGER): INTEGER;
    (*END RegEnumValue;*)

    PROCEDURE RegFlushKey* ["ADVAPI32.dll", ""] (hKey: HKEY): INTEGER;
    (*END RegFlushKey;*)

    PROCEDURE RegGetKeySecurity* ["ADVAPI32.dll", ""] (hKey: HKEY; SecurityInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR; VAR [nil] lpcbSecurityDescriptor: INTEGER): INTEGER;
    (*END RegGetKeySecurity;*)

    PROCEDURE RegLoadKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; lpFile: PtrSTR): INTEGER;
    (*END RegLoadKeyA;*)

    PROCEDURE RegLoadKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; lpFile: PtrWSTR): INTEGER;
    (*END RegLoadKeyW;*)

    PROCEDURE RegLoadKey* ["ADVAPI32.dll", "RegLoadKeyA"] (hKey: HKEY; lpSubKey: PtrSTR; lpFile: PtrSTR): INTEGER;
    (*END RegLoadKey;*)

    PROCEDURE RegNotifyChangeKeyValue* ["ADVAPI32.dll", ""] (hKey: HKEY; bWatchSubtree: BOOL; dwNotifyFilter: SET; hEvent: HANDLE; fAsynchronus: BOOL): INTEGER;
    (*END RegNotifyChangeKeyValue;*)

    PROCEDURE RegOpenKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegOpenKeyA;*)

    PROCEDURE RegOpenKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegOpenKeyW;*)

    PROCEDURE RegOpenKey* ["ADVAPI32.dll", "RegOpenKeyA"] (hKey: HKEY; lpSubKey: PtrSTR; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegOpenKey;*)

    PROCEDURE RegOpenKeyExA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; ulOptions: INTEGER; samDesired: REGSAM; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegOpenKeyExA;*)

    PROCEDURE RegOpenKeyExW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; ulOptions: INTEGER; samDesired: REGSAM; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegOpenKeyExW;*)

    PROCEDURE RegOpenKeyEx* ["ADVAPI32.dll", "RegOpenKeyExA"] (hKey: HKEY; lpSubKey: PtrSTR; ulOptions: INTEGER; samDesired: REGSAM; VAR [nil] phkResult: HKEY): INTEGER;
    (*END RegOpenKeyEx;*)

    PROCEDURE RegQueryInfoKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpClass: PtrSTR; VAR [nil] lpcbClass: INTEGER; VAR [nil] lpReserved: INTEGER; VAR [nil] lpcSubKeys: INTEGER; VAR [nil] lpcbMaxSubKeyLen: INTEGER; VAR [nil] lpcbMaxClassLen: INTEGER; VAR [nil] lpcValues: INTEGER; VAR [nil] lpcbMaxValueNameLen: INTEGER; VAR [nil] lpcbMaxValueLen: INTEGER; VAR [nil] lpcbSecurityDescriptor: INTEGER; VAR [nil] lpftLastWriteTime: FILETIME): INTEGER;
    (*END RegQueryInfoKeyA;*)

    PROCEDURE RegQueryInfoKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpClass: PtrWSTR; VAR [nil] lpcbClass: INTEGER; VAR [nil] lpReserved: INTEGER; VAR [nil] lpcSubKeys: INTEGER; VAR [nil] lpcbMaxSubKeyLen: INTEGER; VAR [nil] lpcbMaxClassLen: INTEGER; VAR [nil] lpcValues: INTEGER; VAR [nil] lpcbMaxValueNameLen: INTEGER; VAR [nil] lpcbMaxValueLen: INTEGER; VAR [nil] lpcbSecurityDescriptor: INTEGER; VAR [nil] lpftLastWriteTime: FILETIME): INTEGER;
    (*END RegQueryInfoKeyW;*)

    PROCEDURE RegQueryInfoKey* ["ADVAPI32.dll", "RegQueryInfoKeyA"] (hKey: HKEY; lpClass: PtrSTR; VAR [nil] lpcbClass: INTEGER; VAR [nil] lpReserved: INTEGER; VAR [nil] lpcSubKeys: INTEGER; VAR [nil] lpcbMaxSubKeyLen: INTEGER; VAR [nil] lpcbMaxClassLen: INTEGER; VAR [nil] lpcValues: INTEGER; VAR [nil] lpcbMaxValueNameLen: INTEGER; VAR [nil] lpcbMaxValueLen: INTEGER; VAR [nil] lpcbSecurityDescriptor: INTEGER; VAR [nil] lpftLastWriteTime: FILETIME): INTEGER;
    (*END RegQueryInfoKey;*)

    PROCEDURE RegQueryValueA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; lpValue: PtrSTR; VAR [nil] lpcbValue: INTEGER): INTEGER;
    (*END RegQueryValueA;*)

    PROCEDURE RegQueryValueW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; lpValue: PtrWSTR; VAR [nil] lpcbValue: INTEGER): INTEGER;
    (*END RegQueryValueW;*)

    PROCEDURE RegQueryValue* ["ADVAPI32.dll", "RegQueryValueA"] (hKey: HKEY; lpSubKey: PtrSTR; lpValue: PtrSTR; VAR [nil] lpcbValue: INTEGER): INTEGER;
    (*END RegQueryValue;*)

    PROCEDURE RegQueryMultipleValuesA* ["ADVAPI32.dll", ""] (hKey: HKEY; VAR [nil] val_list: VALENTA; num_vals: INTEGER; lpValueBuf: PtrSTR; VAR [nil] ldwTotsize: INTEGER): INTEGER;
    (*END RegQueryMultipleValuesA;*)

    PROCEDURE RegQueryMultipleValuesW* ["ADVAPI32.dll", ""] (hKey: HKEY; VAR [nil] val_list: VALENTW; num_vals: INTEGER; lpValueBuf: PtrWSTR; VAR [nil] ldwTotsize: INTEGER): INTEGER;
    (*END RegQueryMultipleValuesW;*)

    PROCEDURE RegQueryMultipleValues* ["ADVAPI32.dll", "RegQueryMultipleValuesA"] (hKey: HKEY; VAR [nil] val_list: VALENTA; num_vals: INTEGER; lpValueBuf: PtrSTR; VAR [nil] ldwTotsize: INTEGER): INTEGER;
    (*END RegQueryMultipleValues;*)

    PROCEDURE RegQueryValueExA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpValueName: PtrSTR; VAR [nil] lpReserved: INTEGER; VAR [nil] lpType: INTEGER; VAR [nil] lpData: SHORTCHAR; VAR [nil] lpcbData: INTEGER): INTEGER;
    (*END RegQueryValueExA;*)

    PROCEDURE RegQueryValueExW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpValueName: PtrWSTR; VAR [nil] lpReserved: INTEGER; VAR [nil] lpType: INTEGER; VAR [nil] lpData: SHORTCHAR; VAR [nil] lpcbData: INTEGER): INTEGER;
    (*END RegQueryValueExW;*)

    PROCEDURE RegQueryValueEx* ["ADVAPI32.dll", "RegQueryValueExA"] (hKey: HKEY; lpValueName: PtrSTR; VAR [nil] lpReserved: INTEGER; VAR [nil] lpType: INTEGER; VAR [nil] lpData: SHORTCHAR; VAR [nil] lpcbData: INTEGER): INTEGER;
    (*END RegQueryValueEx;*)

    PROCEDURE RegReplaceKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; lpNewFile: PtrSTR; lpOldFile: PtrSTR): INTEGER;
    (*END RegReplaceKeyA;*)

    PROCEDURE RegReplaceKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; lpNewFile: PtrWSTR; lpOldFile: PtrWSTR): INTEGER;
    (*END RegReplaceKeyW;*)

    PROCEDURE RegReplaceKey* ["ADVAPI32.dll", "RegReplaceKeyA"] (hKey: HKEY; lpSubKey: PtrSTR; lpNewFile: PtrSTR; lpOldFile: PtrSTR): INTEGER;
    (*END RegReplaceKey;*)

    PROCEDURE RegRestoreKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpFile: PtrSTR; dwFlags: SET): INTEGER;
    (*END RegRestoreKeyA;*)

    PROCEDURE RegRestoreKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpFile: PtrWSTR; dwFlags: SET): INTEGER;
    (*END RegRestoreKeyW;*)

    PROCEDURE RegRestoreKey* ["ADVAPI32.dll", "RegRestoreKeyA"] (hKey: HKEY; lpFile: PtrSTR; dwFlags: SET): INTEGER;
    (*END RegRestoreKey;*)

    PROCEDURE RegSaveKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpFile: PtrSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): INTEGER;
    (*END RegSaveKeyA;*)

    PROCEDURE RegSaveKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpFile: PtrWSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): INTEGER;
    (*END RegSaveKeyW;*)

    PROCEDURE RegSaveKey* ["ADVAPI32.dll", "RegSaveKeyA"] (hKey: HKEY; lpFile: PtrSTR; VAR [nil] lpSecurityAttributes: SECURITY_ATTRIBUTES): INTEGER;
    (*END RegSaveKey;*)

    PROCEDURE RegSetKeySecurity* ["ADVAPI32.dll", ""] (hKey: HKEY; SecurityInformation: SECURITY_INFORMATION; pSecurityDescriptor: PSECURITY_DESCRIPTOR): INTEGER;
    (*END RegSetKeySecurity;*)

    PROCEDURE RegSetValueA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR; dwType: INTEGER; lpData: PtrSTR; cbData: INTEGER): INTEGER;
    (*END RegSetValueA;*)

    PROCEDURE RegSetValueW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR; dwType: INTEGER; lpData: PtrWSTR; cbData: INTEGER): INTEGER;
    (*END RegSetValueW;*)

    PROCEDURE RegSetValue* ["ADVAPI32.dll", "RegSetValueA"] (hKey: HKEY; lpSubKey: PtrSTR; dwType: INTEGER; lpData: PtrSTR; cbData: INTEGER): INTEGER;
    (*END RegSetValue;*)

    PROCEDURE RegSetValueExA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpValueName: PtrSTR; Reserved: INTEGER; dwType: INTEGER; VAR [nil] lpData: SHORTCHAR; cbData: INTEGER): INTEGER;
    (*END RegSetValueExA;*)

    PROCEDURE RegSetValueExW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpValueName: PtrWSTR; Reserved: INTEGER; dwType: INTEGER; lpData: PtrWSTR; cbData: INTEGER): INTEGER;
    (*END RegSetValueExW;*)

    PROCEDURE RegSetValueEx* ["ADVAPI32.dll", "RegSetValueExA"] (hKey: HKEY; lpValueName: PtrSTR; Reserved: INTEGER; dwType: INTEGER; VAR [nil] lpData: SHORTCHAR; cbData: INTEGER): INTEGER;
    (*END RegSetValueEx;*)

    PROCEDURE RegUnLoadKeyA* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrSTR): INTEGER;
    (*END RegUnLoadKeyA;*)

    PROCEDURE RegUnLoadKeyW* ["ADVAPI32.dll", ""] (hKey: HKEY; lpSubKey: PtrWSTR): INTEGER;
    (*END RegUnLoadKeyW;*)

    PROCEDURE RegUnLoadKey* ["ADVAPI32.dll", "RegUnLoadKeyA"] (hKey: HKEY; lpSubKey: PtrSTR): INTEGER;
    (*END RegUnLoadKey;*)

    PROCEDURE InitiateSystemShutdownA* ["ADVAPI32.dll", ""] (lpMachineName: PtrSTR; lpMessage: PtrSTR; dwTimeout: INTEGER; bForceAppsClosed: BOOL; bRebootAfterShutdown: BOOL): BOOL;
    (*END InitiateSystemShutdownA;*)

    PROCEDURE InitiateSystemShutdownW* ["ADVAPI32.dll", ""] (lpMachineName: PtrWSTR; lpMessage: PtrWSTR; dwTimeout: INTEGER; bForceAppsClosed: BOOL; bRebootAfterShutdown: BOOL): BOOL;
    (*END InitiateSystemShutdownW;*)

    PROCEDURE InitiateSystemShutdown* ["ADVAPI32.dll", "InitiateSystemShutdownA"] (lpMachineName: PtrSTR; lpMessage: PtrSTR; dwTimeout: INTEGER; bForceAppsClosed: BOOL; bRebootAfterShutdown: BOOL): BOOL;
    (*END InitiateSystemShutdown;*)

    PROCEDURE AbortSystemShutdownA* ["ADVAPI32.dll", ""] (lpMachineName: PtrSTR): BOOL;
    (*END AbortSystemShutdownA;*)

    PROCEDURE AbortSystemShutdownW* ["ADVAPI32.dll", ""] (lpMachineName: PtrWSTR): BOOL;
    (*END AbortSystemShutdownW;*)

    PROCEDURE AbortSystemShutdown* ["ADVAPI32.dll", "AbortSystemShutdownA"] (lpMachineName: PtrSTR): BOOL;
    (*END AbortSystemShutdown;*)

    PROCEDURE DdeSetQualityOfService* ["USER32.dll", ""] (hwndClient: HWND; VAR [nil] pqosNew: SECURITY_QUALITY_OF_SERVICE; VAR [nil] pqosPrev: SECURITY_QUALITY_OF_SERVICE): BOOL;
    (*END DdeSetQualityOfService;*)

    PROCEDURE ImpersonateDdeClientWindow* ["USER32.dll", ""] (hWndClient: HWND; hWndServer: HWND): BOOL;
    (*END ImpersonateDdeClientWindow;*)

    PROCEDURE PackDDElParam* ["USER32.dll", ""] (msg: INTEGER; uiLo: INTEGER; uiHi: INTEGER): INTEGER;
    (*END PackDDElParam;*)

    PROCEDURE UnpackDDElParam* ["USER32.dll", ""] (msg: INTEGER; lParam: INTEGER; VAR [nil] puiLo: INTEGER; VAR [nil] puiHi: INTEGER): BOOL;
    (*END UnpackDDElParam;*)

    PROCEDURE FreeDDElParam* ["USER32.dll", ""] (msg: INTEGER; lParam: INTEGER): BOOL;
    (*END FreeDDElParam;*)

    PROCEDURE ReuseDDElParam* ["USER32.dll", ""] (lParam: INTEGER; msgIn: INTEGER; msgOut: INTEGER; uiLo: INTEGER; uiHi: INTEGER): INTEGER;
    (*END ReuseDDElParam;*)

    PROCEDURE DdeInitializeA* ["USER32.dll", ""] (VAR [nil] pidInst: INTEGER; pfnCallback: FNCALLBACK; afCmd: INTEGER; ulRes: INTEGER): INTEGER;
    (*END DdeInitializeA;*)

    PROCEDURE DdeInitializeW* ["USER32.dll", ""] (VAR [nil] pidInst: INTEGER; pfnCallback: FNCALLBACK; afCmd: INTEGER; ulRes: INTEGER): INTEGER;
    (*END DdeInitializeW;*)

    PROCEDURE DdeInitialize* ["USER32.dll", "DdeInitializeA"] (VAR [nil] pidInst: INTEGER; pfnCallback: FNCALLBACK; afCmd: INTEGER; ulRes: INTEGER): INTEGER;
    (*END DdeInitialize;*)

    PROCEDURE DdeUninitialize* ["USER32.dll", ""] (idInst: INTEGER): BOOL;
    (*END DdeUninitialize;*)

    PROCEDURE DdeConnectList* ["USER32.dll", ""] (idInst: INTEGER; hszService: HSZ; hszTopic: HSZ; hConvList: HCONVLIST; VAR [nil] pCC: CONVCONTEXT): HCONVLIST;
    (*END DdeConnectList;*)

    PROCEDURE DdeQueryNextServer* ["USER32.dll", ""] (hConvList: HCONVLIST; hConvPrev: HCONV): HCONV;
    (*END DdeQueryNextServer;*)

    PROCEDURE DdeDisconnectList* ["USER32.dll", ""] (hConvList: HCONVLIST): BOOL;
    (*END DdeDisconnectList;*)

    PROCEDURE DdeConnect* ["USER32.dll", ""] (idInst: INTEGER; hszService: HSZ; hszTopic: HSZ; VAR [nil] pCC: CONVCONTEXT): HCONV;
    (*END DdeConnect;*)

    PROCEDURE DdeDisconnect* ["USER32.dll", ""] (hConv: HCONV): BOOL;
    (*END DdeDisconnect;*)

    PROCEDURE DdeReconnect* ["USER32.dll", ""] (hConv: HCONV): HCONV;
    (*END DdeReconnect;*)

    PROCEDURE DdeQueryConvInfo* ["USER32.dll", ""] (hConv: HCONV; idTransaction: INTEGER; VAR [nil] pConvInfo: CONVINFO): INTEGER;
    (*END DdeQueryConvInfo;*)

    PROCEDURE DdeSetUserHandle* ["USER32.dll", ""] (hConv: HCONV; id: INTEGER; hUser: INTEGER): BOOL;
    (*END DdeSetUserHandle;*)

    PROCEDURE DdeAbandonTransaction* ["USER32.dll", ""] (idInst: INTEGER; hConv: HCONV; idTransaction: INTEGER): BOOL;
    (*END DdeAbandonTransaction;*)

    PROCEDURE DdePostAdvise* ["USER32.dll", ""] (idInst: INTEGER; hszTopic: HSZ; hszItem: HSZ): BOOL;
    (*END DdePostAdvise;*)

    PROCEDURE DdeEnableCallback* ["USER32.dll", ""] (idInst: INTEGER; hConv: HCONV; wCmd: INTEGER): BOOL;
    (*END DdeEnableCallback;*)

    PROCEDURE DdeImpersonateClient* ["USER32.dll", ""] (hConv: HCONV): BOOL;
    (*END DdeImpersonateClient;*)

    PROCEDURE DdeNameService* ["USER32.dll", ""] (idInst: INTEGER; hsz1: HSZ; hsz2: HSZ; afCmd: INTEGER): HDDEDATA;
    (*END DdeNameService;*)

    PROCEDURE DdeClientTransaction* ["USER32.dll", ""] (VAR [nil] pData: SHORTCHAR; cbData: INTEGER; hConv: HCONV; hszItem: HSZ; wFmt: INTEGER; wType: INTEGER; dwTimeout: INTEGER; VAR [nil] pdwResult: INTEGER): HDDEDATA;
    (*END DdeClientTransaction;*)

    PROCEDURE DdeCreateDataHandle* ["USER32.dll", ""] (idInst: INTEGER; VAR [nil] pSrc: SHORTCHAR; cb: INTEGER; cbOff: INTEGER; hszItem: HSZ; wFmt: INTEGER; afCmd: INTEGER): HDDEDATA;
    (*END DdeCreateDataHandle;*)

    PROCEDURE DdeAddData* ["USER32.dll", ""] (hData: HDDEDATA; VAR [nil] pSrc: SHORTCHAR; cb: INTEGER; cbOff: INTEGER): HDDEDATA;
    (*END DdeAddData;*)

    PROCEDURE DdeGetData* ["USER32.dll", ""] (hData: HDDEDATA; VAR [nil] pDst: SHORTCHAR; cbMax: INTEGER; cbOff: INTEGER): INTEGER;
    (*END DdeGetData;*)

    PROCEDURE DdeAccessData* ["USER32.dll", ""] (hData: HDDEDATA; VAR [nil] pcbDataSize: INTEGER): RetDdeAccessData;
    (*END DdeAccessData;*)

    PROCEDURE DdeUnaccessData* ["USER32.dll", ""] (hData: HDDEDATA): BOOL;
    (*END DdeUnaccessData;*)

    PROCEDURE DdeFreeDataHandle* ["USER32.dll", ""] (hData: HDDEDATA): BOOL;
    (*END DdeFreeDataHandle;*)

    PROCEDURE DdeGetLastError* ["USER32.dll", ""] (idInst: INTEGER): INTEGER;
    (*END DdeGetLastError;*)

    PROCEDURE DdeCreateStringHandleA* ["USER32.dll", ""] (idInst: INTEGER; psz: PtrSTR; iCodePage: INTEGER): HSZ;
    (*END DdeCreateStringHandleA;*)

    PROCEDURE DdeCreateStringHandleW* ["USER32.dll", ""] (idInst: INTEGER; psz: PtrWSTR; iCodePage: INTEGER): HSZ;
    (*END DdeCreateStringHandleW;*)

    PROCEDURE DdeCreateStringHandle* ["USER32.dll", "DdeCreateStringHandleA"] (idInst: INTEGER; psz: PtrSTR; iCodePage: INTEGER): HSZ;
    (*END DdeCreateStringHandle;*)

    PROCEDURE DdeQueryStringA* ["USER32.dll", ""] (idInst: INTEGER; hsz: HSZ; psz: PtrSTR; cchMax: INTEGER; iCodePage: INTEGER): INTEGER;
    (*END DdeQueryStringA;*)

    PROCEDURE DdeQueryStringW* ["USER32.dll", ""] (idInst: INTEGER; hsz: HSZ; psz: PtrWSTR; cchMax: INTEGER; iCodePage: INTEGER): INTEGER;
    (*END DdeQueryStringW;*)

    PROCEDURE DdeQueryString* ["USER32.dll", "DdeQueryStringA"] (idInst: INTEGER; hsz: HSZ; psz: PtrSTR; cchMax: INTEGER; iCodePage: INTEGER): INTEGER;
    (*END DdeQueryString;*)

    PROCEDURE DdeFreeStringHandle* ["USER32.dll", ""] (idInst: INTEGER; hsz: HSZ): BOOL;
    (*END DdeFreeStringHandle;*)

    PROCEDURE DdeKeepStringHandle* ["USER32.dll", ""] (idInst: INTEGER; hsz: HSZ): BOOL;
    (*END DdeKeepStringHandle;*)

    PROCEDURE DdeCmpStringHandles* ["USER32.dll", ""] (hsz1: HSZ; hsz2: HSZ): INTEGER;
    (*END DdeCmpStringHandles;*)

    PROCEDURE LZStart* ["LZ32.dll", ""] (): INTEGER;
    (*END LZStart;*)

    PROCEDURE LZDone* ["LZ32.dll", ""] ();
    (*END LZDone;*)

    PROCEDURE CopyLZFile* ["LZ32.dll", ""] (p0: INTEGER; p1: INTEGER): INTEGER;
    (*END CopyLZFile;*)

    PROCEDURE LZCopy* ["LZ32.dll", ""] (p0: INTEGER; p1: INTEGER): INTEGER;
    (*END LZCopy;*)

    PROCEDURE LZInit* ["LZ32.dll", ""] (p0: INTEGER): INTEGER;
    (*END LZInit;*)

    PROCEDURE GetExpandedNameA* ["LZ32.dll", ""] (p0: PtrSTR; p1: PtrSTR): INTEGER;
    (*END GetExpandedNameA;*)

    PROCEDURE GetExpandedNameW* ["LZ32.dll", ""] (p0: PtrWSTR; p1: PtrWSTR): INTEGER;
    (*END GetExpandedNameW;*)

    PROCEDURE GetExpandedName* ["LZ32.dll", "GetExpandedNameA"] (p0: PtrSTR; p1: PtrSTR): INTEGER;
    (*END GetExpandedName;*)

    PROCEDURE LZOpenFileA* ["LZ32.dll", ""] (p0: PtrSTR; VAR [nil] p1: OFSTRUCT; p2: SHORTINT): INTEGER;
    (*END LZOpenFileA;*)

    PROCEDURE LZOpenFileW* ["LZ32.dll", ""] (p0: PtrWSTR; VAR [nil] p1: OFSTRUCT; p2: SHORTINT): INTEGER;
    (*END LZOpenFileW;*)

    PROCEDURE LZOpenFile* ["LZ32.dll", "LZOpenFileA"] (p0: PtrSTR; VAR [nil] p1: OFSTRUCT; p2: SHORTINT): INTEGER;
    (*END LZOpenFile;*)

    PROCEDURE LZSeek* ["LZ32.dll", ""] (p0: INTEGER; p1: INTEGER; p2: INTEGER): INTEGER;
    (*END LZSeek;*)

    PROCEDURE LZRead* ["LZ32.dll", ""] (p0: INTEGER; p1: PtrSTR; p2: INTEGER): INTEGER;
    (*END LZRead;*)

    PROCEDURE LZClose* ["LZ32.dll", ""] (p0: INTEGER);
    (*END LZClose;*)

    PROCEDURE DragQueryFileA* ["SHELL32.dll", ""] (p0: HDROP; p1: INTEGER; p2: PtrSTR; p3: INTEGER): INTEGER;
    (*END DragQueryFileA;*)

    PROCEDURE DragQueryFileW* ["SHELL32.dll", ""] (p0: HDROP; p1: INTEGER; p2: PtrWSTR; p3: INTEGER): INTEGER;
    (*END DragQueryFileW;*)

    PROCEDURE DragQueryFile* ["SHELL32.dll", "DragQueryFileA"] (p0: HDROP; p1: INTEGER; p2: PtrSTR; p3: INTEGER): INTEGER;
    (*END DragQueryFile;*)

    PROCEDURE DragQueryPoint* ["SHELL32.dll", ""] (p0: HDROP; VAR [nil] p1: POINT): BOOL;
    (*END DragQueryPoint;*)

    PROCEDURE DragFinish* ["SHELL32.dll", ""] (p0: HDROP);
    (*END DragFinish;*)

    PROCEDURE DragAcceptFiles* ["SHELL32.dll", ""] (p0: HWND; p1: BOOL);
    (*END DragAcceptFiles;*)

    PROCEDURE ShellExecuteA* ["SHELL32.dll", ""] (hwnd: HWND; lpOperation: PtrSTR; lpFile: PtrSTR; lpParameters: PtrSTR; lpDirectory: PtrSTR; nShowCmd: INTEGER): HINSTANCE;
    (*END ShellExecuteA;*)

    PROCEDURE ShellExecuteW* ["SHELL32.dll", ""] (hwnd: HWND; lpOperation: PtrWSTR; lpFile: PtrWSTR; lpParameters: PtrWSTR; lpDirectory: PtrWSTR; nShowCmd: INTEGER): HINSTANCE;
    (*END ShellExecuteW;*)

    PROCEDURE ShellExecute* ["SHELL32.dll", "ShellExecuteA"] (hwnd: HWND; lpOperation: PtrSTR; lpFile: PtrSTR; lpParameters: PtrSTR; lpDirectory: PtrSTR; nShowCmd: INTEGER): HINSTANCE;
    (*END ShellExecute;*)

    PROCEDURE FindExecutableA* ["SHELL32.dll", ""] (lpFile: PtrSTR; lpDirectory: PtrSTR; lpResult: PtrSTR): HINSTANCE;
    (*END FindExecutableA;*)

    PROCEDURE FindExecutableW* ["SHELL32.dll", ""] (lpFile: PtrWSTR; lpDirectory: PtrWSTR; lpResult: PtrWSTR): HINSTANCE;
    (*END FindExecutableW;*)

    PROCEDURE FindExecutable* ["SHELL32.dll", "FindExecutableA"] (lpFile: PtrSTR; lpDirectory: PtrSTR; lpResult: PtrSTR): HINSTANCE;
    (*END FindExecutable;*)

    PROCEDURE CommandLineToArgvW* ["SHELL32.dll", ""] (lpCmdLine: PtrWSTR; VAR [nil] pNumArgs: INTEGER): RetCommandLineToArgvW;
    (*END CommandLineToArgvW;*)

    PROCEDURE ShellAboutA* ["SHELL32.dll", ""] (hWnd: HWND; szApp: PtrSTR; szOtherStuff: PtrSTR; hIcon: HICON): INTEGER;
    (*END ShellAboutA;*)

    PROCEDURE ShellAboutW* ["SHELL32.dll", ""] (hWnd: HWND; szApp: PtrWSTR; szOtherStuff: PtrWSTR; hIcon: HICON): INTEGER;
    (*END ShellAboutW;*)

    PROCEDURE ShellAbout* ["SHELL32.dll", "ShellAboutA"] (hWnd: HWND; szApp: PtrSTR; szOtherStuff: PtrSTR; hIcon: HICON): INTEGER;
    (*END ShellAbout;*)

    PROCEDURE DuplicateIcon* ["SHELL32.dll", ""] (hInst: HINSTANCE; hIcon: HICON): HICON;
    (*END DuplicateIcon;*)

    PROCEDURE ExtractAssociatedIconA* ["SHELL32.dll", ""] (hInst: HINSTANCE; lpIconPath: PtrSTR; VAR [nil] lpiIcon: SHORTINT): HICON;
    (*END ExtractAssociatedIconA;*)

    PROCEDURE ExtractAssociatedIconW* ["SHELL32.dll", ""] (hInst: HINSTANCE; lpIconPath: PtrWSTR; VAR [nil] lpiIcon: SHORTINT): HICON;
    (*END ExtractAssociatedIconW;*)

    PROCEDURE ExtractAssociatedIcon* ["SHELL32.dll", "ExtractAssociatedIconA"] (hInst: HINSTANCE; lpIconPath: PtrSTR; VAR [nil] lpiIcon: SHORTINT): HICON;
    (*END ExtractAssociatedIcon;*)

    PROCEDURE ExtractIconA* ["SHELL32.dll", ""] (hInst: HINSTANCE; lpszExeFileName: PtrSTR; nIconIndex: INTEGER): HICON;
    (*END ExtractIconA;*)

    PROCEDURE ExtractIconW* ["SHELL32.dll", ""] (hInst: HINSTANCE; lpszExeFileName: PtrWSTR; nIconIndex: INTEGER): HICON;
    (*END ExtractIconW;*)

    PROCEDURE ExtractIcon* ["SHELL32.dll", "ExtractIconA"] (hInst: HINSTANCE; lpszExeFileName: PtrSTR; nIconIndex: INTEGER): HICON;
    (*END ExtractIcon;*)

    PROCEDURE SHAppBarMessage* ["SHELL32.dll", ""] (dwMessage: INTEGER; VAR [nil] pData: APPBARDATA): INTEGER;
    (*END SHAppBarMessage;*)

    PROCEDURE DoEnvironmentSubstA* ["SHELL32.dll", ""] (szString: PtrSTR; cbString: INTEGER): INTEGER;
    (*END DoEnvironmentSubstA;*)

    PROCEDURE DoEnvironmentSubstW* ["SHELL32.dll", ""] (szString: PtrWSTR; cbString: INTEGER): INTEGER;
    (*END DoEnvironmentSubstW;*)

    PROCEDURE DoEnvironmentSubst* ["SHELL32.dll", "DoEnvironmentSubstA"] (szString: PtrSTR; cbString: INTEGER): INTEGER;
    (*END DoEnvironmentSubst;*)

    PROCEDURE ExtractIconExA* ["SHELL32.dll", ""] (lpszFile: PtrSTR; nIconIndex: INTEGER; VAR [nil] phiconLarge: HICON; VAR [nil] phiconSmall: HICON; nIcons: INTEGER): INTEGER;
    (*END ExtractIconExA;*)

    PROCEDURE ExtractIconExW* ["SHELL32.dll", ""] (lpszFile: PtrWSTR; nIconIndex: INTEGER; VAR [nil] phiconLarge: HICON; VAR [nil] phiconSmall: HICON; nIcons: INTEGER): INTEGER;
    (*END ExtractIconExW;*)

    PROCEDURE ExtractIconEx* ["SHELL32.dll", "ExtractIconExA"] (lpszFile: PtrSTR; nIconIndex: INTEGER; VAR [nil] phiconLarge: HICON; VAR [nil] phiconSmall: HICON; nIcons: INTEGER): INTEGER;
    (*END ExtractIconEx;*)

    PROCEDURE SHFileOperationA* ["SHELL32.dll", ""] (VAR [nil] lpFileOp: SHFILEOPSTRUCTA): INTEGER;
    (*END SHFileOperationA;*)

    PROCEDURE SHFileOperationW* ["SHELL32.dll", ""] (VAR [nil] lpFileOp: SHFILEOPSTRUCTW): INTEGER;
    (*END SHFileOperationW;*)

    PROCEDURE SHFileOperation* ["SHELL32.dll", "SHFileOperationA"] (VAR [nil] lpFileOp: SHFILEOPSTRUCTA): INTEGER;
    (*END SHFileOperation;*)

    PROCEDURE SHFreeNameMappings* ["SHELL32.dll", ""] (hNameMappings: HANDLE);
    (*END SHFreeNameMappings;*)

    PROCEDURE ShellExecuteExA* ["SHELL32.dll", ""] (VAR [nil] lpExecInfo: SHELLEXECUTEINFOA): BOOL;
    (*END ShellExecuteExA;*)

    PROCEDURE ShellExecuteExW* ["SHELL32.dll", ""] (VAR [nil] lpExecInfo: SHELLEXECUTEINFOW): BOOL;
    (*END ShellExecuteExW;*)

    PROCEDURE ShellExecuteEx* ["SHELL32.dll", "ShellExecuteExA"] (VAR [nil] lpExecInfo: SHELLEXECUTEINFOA): BOOL;
    (*END ShellExecuteEx;*)

    PROCEDURE Shell_NotifyIconA* ["SHELL32.dll", ""] (dwMessage: INTEGER; VAR [nil] lpData: NOTIFYICONDATAA): BOOL;
    (*END Shell_NotifyIconA;*)

    PROCEDURE Shell_NotifyIconW* ["SHELL32.dll", ""] (dwMessage: INTEGER; VAR [nil] lpData: NOTIFYICONDATAW): BOOL;
    (*END Shell_NotifyIconW;*)

    PROCEDURE Shell_NotifyIcon* ["SHELL32.dll", "Shell_NotifyIconA"] (dwMessage: INTEGER; VAR [nil] lpData: NOTIFYICONDATAA): BOOL;
    (*END Shell_NotifyIcon;*)

    PROCEDURE SHGetFileInfoA* ["SHELL32.dll", ""] (pszPath: PtrSTR; dwFileAttributes: SET; VAR [nil] psfi: SHFILEINFOA; cbFileInfo: INTEGER; uFlags: SET): INTEGER;
    (*END SHGetFileInfoA;*)

    PROCEDURE SHGetFileInfoW* ["SHELL32.dll", ""] (pszPath: PtrWSTR; dwFileAttributes: SET; VAR [nil] psfi: SHFILEINFOW; cbFileInfo: INTEGER; uFlags: SET): INTEGER;
    (*END SHGetFileInfoW;*)

    PROCEDURE SHGetFileInfo* ["SHELL32.dll", "SHGetFileInfoA"] (pszPath: PtrSTR; dwFileAttributes: SET; VAR [nil] psfi: SHFILEINFOA; cbFileInfo: INTEGER; uFlags: SET): INTEGER;
    (*END SHGetFileInfo;*)

    PROCEDURE SHGetNewLinkInfoA* ["SHELL32.dll", ""] (pszLinkTo: PtrSTR; pszDir: PtrSTR; pszName: PtrSTR; VAR [nil] pfMustCopy: BOOL; uFlags: SET): BOOL;
    (*END SHGetNewLinkInfoA;*)

    PROCEDURE SHGetNewLinkInfoW* ["SHELL32.dll", ""] (pszLinkTo: PtrWSTR; pszDir: PtrWSTR; pszName: PtrWSTR; VAR [nil] pfMustCopy: BOOL; uFlags: SET): BOOL;
    (*END SHGetNewLinkInfoW;*)

    PROCEDURE SHGetNewLinkInfo* ["SHELL32.dll", "SHGetNewLinkInfoA"] (pszLinkTo: PtrSTR; pszDir: PtrSTR; pszName: PtrSTR; VAR [nil] pfMustCopy: BOOL; uFlags: SET): BOOL;
    (*END SHGetNewLinkInfo;*)

    PROCEDURE CreatePropertySheetPageA* ["COMCTL32.dll", ""] (VAR [nil] p0: PROPSHEETPAGEA): Ptr_PSP;
    (*END CreatePropertySheetPageA;*)

    PROCEDURE CreatePropertySheetPageW* ["COMCTL32.dll", ""] (VAR [nil] p0: PROPSHEETPAGEW): Ptr_PSP;
    (*END CreatePropertySheetPageW;*)

    PROCEDURE DestroyPropertySheetPage* ["COMCTL32.dll", ""] (p0: Ptr_PSP): BOOL;
    (*END DestroyPropertySheetPage;*)

    PROCEDURE PropertySheetA* ["COMCTL32.dll", ""] (VAR [nil] p0: PROPSHEETHEADERA): INTEGER;
    (*END PropertySheetA;*)

    PROCEDURE PropertySheetW* ["COMCTL32.dll", ""] (VAR [nil] p0: PROPSHEETHEADERW): INTEGER;
    (*END PropertySheetW;*)

    PROCEDURE CreatePropertySheetPage* ["COMCTL32.dll", "CreatePropertySheetPageA"] (VAR [nil] p0: PROPSHEETPAGEA): Ptr_PSP;
    (*END CreatePropertySheetPage;*)

    PROCEDURE PropertySheet* ["COMCTL32.dll", "PropertySheetA"] (VAR [nil] p0: PROPSHEETHEADERA): INTEGER;
    (*END PropertySheet;*)

    PROCEDURE EnumPrintersA* ["WINSPOOL.dll", ""] (Flags: SET; Name: PtrSTR; Level: INTEGER; VAR [nil] pPrinterEnum: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintersA;*)

    PROCEDURE EnumPrintersW* ["WINSPOOL.dll", ""] (Flags: SET; Name: PtrWSTR; Level: INTEGER; VAR [nil] pPrinterEnum: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintersW;*)

    PROCEDURE EnumPrinters* ["WINSPOOL.dll", "EnumPrintersA"] (Flags: SET; Name: PtrSTR; Level: INTEGER; VAR [nil] pPrinterEnum: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrinters;*)

    PROCEDURE OpenPrinterA* ["WINSPOOL.dll", ""] (pPrinterName: PtrSTR; VAR [nil] phPrinter: HANDLE; VAR [nil] pDefault: PRINTER_DEFAULTSA): BOOL;
    (*END OpenPrinterA;*)

    PROCEDURE OpenPrinterW* ["WINSPOOL.dll", ""] (pPrinterName: PtrWSTR; VAR [nil] phPrinter: HANDLE; VAR [nil] pDefault: PRINTER_DEFAULTSW): BOOL;
    (*END OpenPrinterW;*)

    PROCEDURE OpenPrinter* ["WINSPOOL.dll", "OpenPrinterA"] (pPrinterName: PtrSTR; VAR [nil] phPrinter: HANDLE; VAR [nil] pDefault: PRINTER_DEFAULTSA): BOOL;
    (*END OpenPrinter;*)

    PROCEDURE ResetPrinterA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; VAR [nil] pDefault: PRINTER_DEFAULTSA): BOOL;
    (*END ResetPrinterA;*)

    PROCEDURE ResetPrinterW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; VAR [nil] pDefault: PRINTER_DEFAULTSW): BOOL;
    (*END ResetPrinterW;*)

    PROCEDURE ResetPrinter* ["WINSPOOL.dll", "ResetPrinterA"] (hPrinter: HANDLE; VAR [nil] pDefault: PRINTER_DEFAULTSA): BOOL;
    (*END ResetPrinter;*)

    PROCEDURE SetJobA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; JobId: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; Command: INTEGER): BOOL;
    (*END SetJobA;*)

    PROCEDURE SetJobW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; JobId: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; Command: INTEGER): BOOL;
    (*END SetJobW;*)

    PROCEDURE SetJob* ["WINSPOOL.dll", "SetJobA"] (hPrinter: HANDLE; JobId: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; Command: INTEGER): BOOL;
    (*END SetJob;*)

    PROCEDURE GetJobA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; JobId: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetJobA;*)

    PROCEDURE GetJobW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; JobId: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetJobW;*)

    PROCEDURE GetJob* ["WINSPOOL.dll", "GetJobA"] (hPrinter: HANDLE; JobId: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetJob;*)

    PROCEDURE EnumJobsA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; FirstJob: INTEGER; NoJobs: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumJobsA;*)

    PROCEDURE EnumJobsW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; FirstJob: INTEGER; NoJobs: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumJobsW;*)

    PROCEDURE EnumJobs* ["WINSPOOL.dll", "EnumJobsA"] (hPrinter: HANDLE; FirstJob: INTEGER; NoJobs: INTEGER; Level: INTEGER; VAR [nil] pJob: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumJobs;*)

    PROCEDURE AddPrinterA* ["WINSPOOL.dll", ""] (pName: PtrSTR; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR): HANDLE;
    (*END AddPrinterA;*)

    PROCEDURE AddPrinterW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR): HANDLE;
    (*END AddPrinterW;*)

    PROCEDURE AddPrinter* ["WINSPOOL.dll", "AddPrinterA"] (pName: PtrSTR; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR): HANDLE;
    (*END AddPrinter;*)

    PROCEDURE DeletePrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE): BOOL;
    (*END DeletePrinter;*)

    PROCEDURE SetPrinterA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR; Command: INTEGER): BOOL;
    (*END SetPrinterA;*)

    PROCEDURE SetPrinterW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR; Command: INTEGER): BOOL;
    (*END SetPrinterW;*)

    PROCEDURE SetPrinter* ["WINSPOOL.dll", "SetPrinterA"] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR; Command: INTEGER): BOOL;
    (*END SetPrinter;*)

    PROCEDURE GetPrinterA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterA;*)

    PROCEDURE GetPrinterW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterW;*)

    PROCEDURE GetPrinter* ["WINSPOOL.dll", "GetPrinterA"] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pPrinter: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinter;*)

    PROCEDURE AddPrinterDriverA* ["WINSPOOL.dll", ""] (pName: PtrSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR): BOOL;
    (*END AddPrinterDriverA;*)

    PROCEDURE AddPrinterDriverW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR): BOOL;
    (*END AddPrinterDriverW;*)

    PROCEDURE AddPrinterDriver* ["WINSPOOL.dll", "AddPrinterDriverA"] (pName: PtrSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR): BOOL;
    (*END AddPrinterDriver;*)

    PROCEDURE EnumPrinterDriversA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrinterDriversA;*)

    PROCEDURE EnumPrinterDriversW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrinterDriversW;*)

    PROCEDURE EnumPrinterDrivers* ["WINSPOOL.dll", "EnumPrinterDriversA"] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrinterDrivers;*)

    PROCEDURE GetPrinterDriverA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterDriverA;*)

    PROCEDURE GetPrinterDriverW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pEnvironment: PtrWSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterDriverW;*)

    PROCEDURE GetPrinterDriver* ["WINSPOOL.dll", "GetPrinterDriverA"] (hPrinter: HANDLE; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pDriverInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterDriver;*)

    PROCEDURE GetPrinterDriverDirectoryA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pDriverDirectory: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterDriverDirectoryA;*)

    PROCEDURE GetPrinterDriverDirectoryW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; Level: INTEGER; VAR [nil] pDriverDirectory: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterDriverDirectoryW;*)

    PROCEDURE GetPrinterDriverDirectory* ["WINSPOOL.dll", "GetPrinterDriverDirectoryA"] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pDriverDirectory: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrinterDriverDirectory;*)

    PROCEDURE DeletePrinterDriverA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; pDriverName: PtrSTR): BOOL;
    (*END DeletePrinterDriverA;*)

    PROCEDURE DeletePrinterDriverW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; pDriverName: PtrWSTR): BOOL;
    (*END DeletePrinterDriverW;*)

    PROCEDURE DeletePrinterDriver* ["WINSPOOL.dll", "DeletePrinterDriverA"] (pName: PtrSTR; pEnvironment: PtrSTR; pDriverName: PtrSTR): BOOL;
    (*END DeletePrinterDriver;*)

    PROCEDURE AddPrintProcessorA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; pPathName: PtrSTR; pPrintProcessorName: PtrSTR): BOOL;
    (*END AddPrintProcessorA;*)

    PROCEDURE AddPrintProcessorW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; pPathName: PtrWSTR; pPrintProcessorName: PtrWSTR): BOOL;
    (*END AddPrintProcessorW;*)

    PROCEDURE AddPrintProcessor* ["WINSPOOL.dll", "AddPrintProcessorA"] (pName: PtrSTR; pEnvironment: PtrSTR; pPathName: PtrSTR; pPrintProcessorName: PtrSTR): BOOL;
    (*END AddPrintProcessor;*)

    PROCEDURE EnumPrintProcessorsA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pPrintProcessorInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintProcessorsA;*)

    PROCEDURE EnumPrintProcessorsW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; Level: INTEGER; VAR [nil] pPrintProcessorInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintProcessorsW;*)

    PROCEDURE EnumPrintProcessors* ["WINSPOOL.dll", "EnumPrintProcessorsA"] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pPrintProcessorInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintProcessors;*)

    PROCEDURE GetPrintProcessorDirectoryA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pPrintProcessorInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrintProcessorDirectoryA;*)

    PROCEDURE GetPrintProcessorDirectoryW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; Level: INTEGER; VAR [nil] pPrintProcessorInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrintProcessorDirectoryW;*)

    PROCEDURE GetPrintProcessorDirectory* ["WINSPOOL.dll", "GetPrintProcessorDirectoryA"] (pName: PtrSTR; pEnvironment: PtrSTR; Level: INTEGER; VAR [nil] pPrintProcessorInfo: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetPrintProcessorDirectory;*)

    PROCEDURE EnumPrintProcessorDatatypesA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pPrintProcessorName: PtrSTR; Level: INTEGER; VAR [nil] pDatatypes: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintProcessorDatatypesA;*)

    PROCEDURE EnumPrintProcessorDatatypesW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pPrintProcessorName: PtrWSTR; Level: INTEGER; VAR [nil] pDatatypes: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintProcessorDatatypesW;*)

    PROCEDURE EnumPrintProcessorDatatypes* ["WINSPOOL.dll", "EnumPrintProcessorDatatypesA"] (pName: PtrSTR; pPrintProcessorName: PtrSTR; Level: INTEGER; VAR [nil] pDatatypes: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPrintProcessorDatatypes;*)

    PROCEDURE DeletePrintProcessorA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; pPrintProcessorName: PtrSTR): BOOL;
    (*END DeletePrintProcessorA;*)

    PROCEDURE DeletePrintProcessorW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; pPrintProcessorName: PtrWSTR): BOOL;
    (*END DeletePrintProcessorW;*)

    PROCEDURE DeletePrintProcessor* ["WINSPOOL.dll", "DeletePrintProcessorA"] (pName: PtrSTR; pEnvironment: PtrSTR; pPrintProcessorName: PtrSTR): BOOL;
    (*END DeletePrintProcessor;*)

    PROCEDURE StartDocPrinterA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pDocInfo: SHORTCHAR): INTEGER;
    (*END StartDocPrinterA;*)

    PROCEDURE StartDocPrinterW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pDocInfo: SHORTCHAR): INTEGER;
    (*END StartDocPrinterW;*)

    PROCEDURE StartDocPrinter* ["WINSPOOL.dll", "StartDocPrinterA"] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pDocInfo: SHORTCHAR): INTEGER;
    (*END StartDocPrinter;*)

    PROCEDURE StartPagePrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE): BOOL;
    (*END StartPagePrinter;*)

    PROCEDURE WritePrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pBuf: PtrVoid; cbBuf: INTEGER; VAR [nil] pcWritten: INTEGER): BOOL;
    (*END WritePrinter;*)

    PROCEDURE EndPagePrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE): BOOL;
    (*END EndPagePrinter;*)

    PROCEDURE AbortPrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE): BOOL;
    (*END AbortPrinter;*)

    PROCEDURE ReadPrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pBuf: PtrVoid; cbBuf: INTEGER; VAR [nil] pNoBytesRead: INTEGER): BOOL;
    (*END ReadPrinter;*)

    PROCEDURE EndDocPrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE): BOOL;
    (*END EndDocPrinter;*)

    PROCEDURE AddJobA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pData: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END AddJobA;*)

    PROCEDURE AddJobW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pData: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END AddJobW;*)

    PROCEDURE AddJob* ["WINSPOOL.dll", "AddJobA"] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pData: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END AddJob;*)

    PROCEDURE ScheduleJob* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; JobId: INTEGER): BOOL;
    (*END ScheduleJob;*)

    PROCEDURE PrinterProperties* ["WINSPOOL.dll", ""] (hWnd: HWND; hPrinter: HANDLE): BOOL;
    (*END PrinterProperties;*)

    PROCEDURE DocumentPropertiesA* ["WINSPOOL.dll", ""] (hWnd: HWND; hPrinter: HANDLE; pDeviceName: PtrSTR; VAR [nil] pDevModeOutput: DEVMODEA; VAR [nil] pDevModeInput: DEVMODEA; fMode: SET): INTEGER;
    (*END DocumentPropertiesA;*)

    PROCEDURE DocumentPropertiesW* ["WINSPOOL.dll", ""] (hWnd: HWND; hPrinter: HANDLE; pDeviceName: PtrWSTR; VAR [nil] pDevModeOutput: DEVMODEW; VAR [nil] pDevModeInput: DEVMODEW; fMode: SET): INTEGER;
    (*END DocumentPropertiesW;*)

    PROCEDURE DocumentProperties* ["WINSPOOL.dll", "DocumentPropertiesA"] (hWnd: HWND; hPrinter: HANDLE; pDeviceName: PtrSTR; VAR [nil] pDevModeOutput: DEVMODEA; VAR [nil] pDevModeInput: DEVMODEA; fMode: SET): INTEGER;
    (*END DocumentProperties;*)

    PROCEDURE AdvancedDocumentPropertiesA* ["WINSPOOL.dll", ""] (hWnd: HWND; hPrinter: HANDLE; pDeviceName: PtrSTR; VAR [nil] pDevModeOutput: DEVMODEA; VAR [nil] pDevModeInput: DEVMODEA): INTEGER;
    (*END AdvancedDocumentPropertiesA;*)

    PROCEDURE AdvancedDocumentPropertiesW* ["WINSPOOL.dll", ""] (hWnd: HWND; hPrinter: HANDLE; pDeviceName: PtrWSTR; VAR [nil] pDevModeOutput: DEVMODEW; VAR [nil] pDevModeInput: DEVMODEW): INTEGER;
    (*END AdvancedDocumentPropertiesW;*)

    PROCEDURE AdvancedDocumentProperties* ["WINSPOOL.dll", "AdvancedDocumentPropertiesA"] (hWnd: HWND; hPrinter: HANDLE; pDeviceName: PtrSTR; VAR [nil] pDevModeOutput: DEVMODEA; VAR [nil] pDevModeInput: DEVMODEA): INTEGER;
    (*END AdvancedDocumentProperties;*)

    PROCEDURE GetPrinterDataA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pValueName: PtrSTR; VAR [nil] pType: INTEGER; VAR [nil] pData: SHORTCHAR; nSize: INTEGER; VAR [nil] pcbNeeded: INTEGER): INTEGER;
    (*END GetPrinterDataA;*)

    PROCEDURE GetPrinterDataW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pValueName: PtrWSTR; VAR [nil] pType: INTEGER; VAR [nil] pData: SHORTCHAR; nSize: INTEGER; VAR [nil] pcbNeeded: INTEGER): INTEGER;
    (*END GetPrinterDataW;*)

    PROCEDURE GetPrinterData* ["WINSPOOL.dll", "GetPrinterDataA"] (hPrinter: HANDLE; pValueName: PtrSTR; VAR [nil] pType: INTEGER; VAR [nil] pData: SHORTCHAR; nSize: INTEGER; VAR [nil] pcbNeeded: INTEGER): INTEGER;
    (*END GetPrinterData;*)

    PROCEDURE SetPrinterDataA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pValueName: PtrSTR; Type: INTEGER; VAR [nil] pData: SHORTCHAR; cbData: INTEGER): INTEGER;
    (*END SetPrinterDataA;*)

    PROCEDURE SetPrinterDataW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pValueName: PtrWSTR; Type: INTEGER; VAR [nil] pData: SHORTCHAR; cbData: INTEGER): INTEGER;
    (*END SetPrinterDataW;*)

    PROCEDURE SetPrinterData* ["WINSPOOL.dll", "SetPrinterDataA"] (hPrinter: HANDLE; pValueName: PtrSTR; Type: INTEGER; VAR [nil] pData: SHORTCHAR; cbData: INTEGER): INTEGER;
    (*END SetPrinterData;*)

    PROCEDURE WaitForPrinterChange* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Flags: SET): INTEGER;
    (*END WaitForPrinterChange;*)

    PROCEDURE FindFirstPrinterChangeNotification* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; fdwFlags: SET; fdwOptions: INTEGER; pPrinterNotifyOptions: PtrVoid): HANDLE;
    (*END FindFirstPrinterChangeNotification;*)

    PROCEDURE FindNextPrinterChangeNotification* ["WINSPOOL.dll", ""] (hChange: HANDLE; VAR [nil] pdwChange: INTEGER; pvReserved: PtrVoid; ppPrinterNotifyInfo: POINTER TO (*?*) ARRAY [untagged] OF PtrVoid): BOOL;
    (*END FindNextPrinterChangeNotification;*)

    PROCEDURE FreePrinterNotifyInfo* ["WINSPOOL.dll", ""] (VAR [nil] pPrinterNotifyInfo: PRINTER_NOTIFY_INFO): BOOL;
    (*END FreePrinterNotifyInfo;*)

    PROCEDURE FindClosePrinterChangeNotification* ["WINSPOOL.dll", ""] (hChange: HANDLE): BOOL;
    (*END FindClosePrinterChangeNotification;*)

    PROCEDURE PrinterMessageBoxA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Error: INTEGER; hWnd: HWND; pText: PtrSTR; pCaption: PtrSTR; dwType: INTEGER): INTEGER;
    (*END PrinterMessageBoxA;*)

    PROCEDURE PrinterMessageBoxW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Error: INTEGER; hWnd: HWND; pText: PtrWSTR; pCaption: PtrWSTR; dwType: INTEGER): INTEGER;
    (*END PrinterMessageBoxW;*)

    PROCEDURE PrinterMessageBox* ["WINSPOOL.dll", "PrinterMessageBoxA"] (hPrinter: HANDLE; Error: INTEGER; hWnd: HWND; pText: PtrSTR; pCaption: PtrSTR; dwType: INTEGER): INTEGER;
    (*END PrinterMessageBox;*)

    PROCEDURE ClosePrinter* ["WINSPOOL.dll", ""] (hPrinter: HANDLE): BOOL;
    (*END ClosePrinter;*)

    PROCEDURE AddFormA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pForm: SHORTCHAR): BOOL;
    (*END AddFormA;*)

    PROCEDURE AddFormW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pForm: SHORTCHAR): BOOL;
    (*END AddFormW;*)

    PROCEDURE AddForm* ["WINSPOOL.dll", "AddFormA"] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pForm: SHORTCHAR): BOOL;
    (*END AddForm;*)

    PROCEDURE DeleteFormA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pFormName: PtrSTR): BOOL;
    (*END DeleteFormA;*)

    PROCEDURE DeleteFormW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pFormName: PtrWSTR): BOOL;
    (*END DeleteFormW;*)

    PROCEDURE DeleteForm* ["WINSPOOL.dll", "DeleteFormA"] (hPrinter: HANDLE; pFormName: PtrSTR): BOOL;
    (*END DeleteForm;*)

    PROCEDURE GetFormA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pFormName: PtrSTR; Level: INTEGER; VAR [nil] pForm: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetFormA;*)

    PROCEDURE GetFormW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pFormName: PtrWSTR; Level: INTEGER; VAR [nil] pForm: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetFormW;*)

    PROCEDURE GetForm* ["WINSPOOL.dll", "GetFormA"] (hPrinter: HANDLE; pFormName: PtrSTR; Level: INTEGER; VAR [nil] pForm: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER): BOOL;
    (*END GetForm;*)

    PROCEDURE SetFormA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pFormName: PtrSTR; Level: INTEGER; VAR [nil] pForm: SHORTCHAR): BOOL;
    (*END SetFormA;*)

    PROCEDURE SetFormW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; pFormName: PtrWSTR; Level: INTEGER; VAR [nil] pForm: SHORTCHAR): BOOL;
    (*END SetFormW;*)

    PROCEDURE SetForm* ["WINSPOOL.dll", "SetFormA"] (hPrinter: HANDLE; pFormName: PtrSTR; Level: INTEGER; VAR [nil] pForm: SHORTCHAR): BOOL;
    (*END SetForm;*)

    PROCEDURE EnumFormsA* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pForm: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumFormsA;*)

    PROCEDURE EnumFormsW* ["WINSPOOL.dll", ""] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pForm: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumFormsW;*)

    PROCEDURE EnumForms* ["WINSPOOL.dll", "EnumFormsA"] (hPrinter: HANDLE; Level: INTEGER; VAR [nil] pForm: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumForms;*)

    PROCEDURE EnumMonitorsA* ["WINSPOOL.dll", ""] (pName: PtrSTR; Level: INTEGER; VAR [nil] pMonitors: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumMonitorsA;*)

    PROCEDURE EnumMonitorsW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; Level: INTEGER; VAR [nil] pMonitors: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumMonitorsW;*)

    PROCEDURE EnumMonitors* ["WINSPOOL.dll", "EnumMonitorsA"] (pName: PtrSTR; Level: INTEGER; VAR [nil] pMonitors: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumMonitors;*)

    PROCEDURE AddMonitorA* ["WINSPOOL.dll", ""] (pName: PtrSTR; Level: INTEGER; VAR [nil] pMonitors: SHORTCHAR): BOOL;
    (*END AddMonitorA;*)

    PROCEDURE AddMonitorW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; Level: INTEGER; VAR [nil] pMonitors: SHORTCHAR): BOOL;
    (*END AddMonitorW;*)

    PROCEDURE AddMonitor* ["WINSPOOL.dll", "AddMonitorA"] (pName: PtrSTR; Level: INTEGER; VAR [nil] pMonitors: SHORTCHAR): BOOL;
    (*END AddMonitor;*)

    PROCEDURE DeleteMonitorA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; pMonitorName: PtrSTR): BOOL;
    (*END DeleteMonitorA;*)

    PROCEDURE DeleteMonitorW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; pMonitorName: PtrWSTR): BOOL;
    (*END DeleteMonitorW;*)

    PROCEDURE DeleteMonitor* ["WINSPOOL.dll", "DeleteMonitorA"] (pName: PtrSTR; pEnvironment: PtrSTR; pMonitorName: PtrSTR): BOOL;
    (*END DeleteMonitor;*)

    PROCEDURE EnumPortsA* ["WINSPOOL.dll", ""] (pName: PtrSTR; Level: INTEGER; VAR [nil] pPorts: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPortsA;*)

    PROCEDURE EnumPortsW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; Level: INTEGER; VAR [nil] pPorts: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPortsW;*)

    PROCEDURE EnumPorts* ["WINSPOOL.dll", "EnumPortsA"] (pName: PtrSTR; Level: INTEGER; VAR [nil] pPorts: SHORTCHAR; cbBuf: INTEGER; VAR [nil] pcbNeeded: INTEGER; VAR [nil] pcReturned: INTEGER): BOOL;
    (*END EnumPorts;*)

    PROCEDURE AddPortA* ["WINSPOOL.dll", ""] (pName: PtrSTR; hWnd: HWND; pMonitorName: PtrSTR): BOOL;
    (*END AddPortA;*)

    PROCEDURE AddPortW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; hWnd: HWND; pMonitorName: PtrWSTR): BOOL;
    (*END AddPortW;*)

    PROCEDURE AddPort* ["WINSPOOL.dll", "AddPortA"] (pName: PtrSTR; hWnd: HWND; pMonitorName: PtrSTR): BOOL;
    (*END AddPort;*)

    PROCEDURE ConfigurePortA* ["WINSPOOL.dll", ""] (pName: PtrSTR; hWnd: HWND; pPortName: PtrSTR): BOOL;
    (*END ConfigurePortA;*)

    PROCEDURE ConfigurePortW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; hWnd: HWND; pPortName: PtrWSTR): BOOL;
    (*END ConfigurePortW;*)

    PROCEDURE ConfigurePort* ["WINSPOOL.dll", "ConfigurePortA"] (pName: PtrSTR; hWnd: HWND; pPortName: PtrSTR): BOOL;
    (*END ConfigurePort;*)

    PROCEDURE DeletePortA* ["WINSPOOL.dll", ""] (pName: PtrSTR; hWnd: HWND; pPortName: PtrSTR): BOOL;
    (*END DeletePortA;*)

    PROCEDURE DeletePortW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; hWnd: HWND; pPortName: PtrWSTR): BOOL;
    (*END DeletePortW;*)

    PROCEDURE DeletePort* ["WINSPOOL.dll", "DeletePortA"] (pName: PtrSTR; hWnd: HWND; pPortName: PtrSTR): BOOL;
    (*END DeletePort;*)

    PROCEDURE AddPrinterConnectionA* ["WINSPOOL.dll", ""] (pName: PtrSTR): BOOL;
    (*END AddPrinterConnectionA;*)

    PROCEDURE AddPrinterConnectionW* ["WINSPOOL.dll", ""] (pName: PtrWSTR): BOOL;
    (*END AddPrinterConnectionW;*)

    PROCEDURE AddPrinterConnection* ["WINSPOOL.dll", "AddPrinterConnectionA"] (pName: PtrSTR): BOOL;
    (*END AddPrinterConnection;*)

    PROCEDURE DeletePrinterConnectionA* ["WINSPOOL.dll", ""] (pName: PtrSTR): BOOL;
    (*END DeletePrinterConnectionA;*)

    PROCEDURE DeletePrinterConnectionW* ["WINSPOOL.dll", ""] (pName: PtrWSTR): BOOL;
    (*END DeletePrinterConnectionW;*)

    PROCEDURE DeletePrinterConnection* ["WINSPOOL.dll", "DeletePrinterConnectionA"] (pName: PtrSTR): BOOL;
    (*END DeletePrinterConnection;*)

    PROCEDURE ConnectToPrinterDlg* ["WINSPOOL.dll", ""] (hwnd: HWND; Flags: SET): HANDLE;
    (*END ConnectToPrinterDlg;*)

    PROCEDURE AddPrintProvidorA* ["WINSPOOL.dll", ""] (pName: PtrSTR; level: INTEGER; VAR [nil] pProvidorInfo: SHORTCHAR): BOOL;
    (*END AddPrintProvidorA;*)

    PROCEDURE AddPrintProvidorW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; level: INTEGER; VAR [nil] pProvidorInfo: SHORTCHAR): BOOL;
    (*END AddPrintProvidorW;*)

    PROCEDURE AddPrintProvidor* ["WINSPOOL.dll", "AddPrintProvidorA"] (pName: PtrSTR; level: INTEGER; VAR [nil] pProvidorInfo: SHORTCHAR): BOOL;
    (*END AddPrintProvidor;*)

    PROCEDURE DeletePrintProvidorA* ["WINSPOOL.dll", ""] (pName: PtrSTR; pEnvironment: PtrSTR; pPrintProvidorName: PtrSTR): BOOL;
    (*END DeletePrintProvidorA;*)

    PROCEDURE DeletePrintProvidorW* ["WINSPOOL.dll", ""] (pName: PtrWSTR; pEnvironment: PtrWSTR; pPrintProvidorName: PtrWSTR): BOOL;
    (*END DeletePrintProvidorW;*)

    PROCEDURE DeletePrintProvidor* ["WINSPOOL.dll", "DeletePrintProvidorA"] (pName: PtrSTR; pEnvironment: PtrSTR; pPrintProvidorName: PtrSTR): BOOL;
    (*END DeletePrintProvidor;*)

    PROCEDURE ChangeServiceConfigA* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwServiceType: SET; dwStartType: INTEGER; dwErrorControl: INTEGER; lpBinaryPathName: PtrSTR; lpLoadOrderGroup: PtrSTR; VAR [nil] lpdwTagId: INTEGER; lpDependencies: PtrSTR; lpServiceStartName: PtrSTR; lpPassword: PtrSTR; lpDisplayName: PtrSTR): BOOL;
    (*END ChangeServiceConfigA;*)

    PROCEDURE ChangeServiceConfigW* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwServiceType: SET; dwStartType: INTEGER; dwErrorControl: INTEGER; lpBinaryPathName: PtrWSTR; lpLoadOrderGroup: PtrWSTR; VAR [nil] lpdwTagId: INTEGER; lpDependencies: PtrWSTR; lpServiceStartName: PtrWSTR; lpPassword: PtrWSTR; lpDisplayName: PtrWSTR): BOOL;
    (*END ChangeServiceConfigW;*)

    PROCEDURE ChangeServiceConfig* ["ADVAPI32.dll", "ChangeServiceConfigA"] (hService: SC_HANDLE; dwServiceType: SET; dwStartType: INTEGER; dwErrorControl: INTEGER; lpBinaryPathName: PtrSTR; lpLoadOrderGroup: PtrSTR; VAR [nil] lpdwTagId: INTEGER; lpDependencies: PtrSTR; lpServiceStartName: PtrSTR; lpPassword: PtrSTR; lpDisplayName: PtrSTR): BOOL;
    (*END ChangeServiceConfig;*)

    PROCEDURE CloseServiceHandle* ["ADVAPI32.dll", ""] (hSCObject: SC_HANDLE): BOOL;
    (*END CloseServiceHandle;*)

    PROCEDURE ControlService* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwControl: INTEGER; VAR [nil] lpServiceStatus: SERVICE_STATUS): BOOL;
    (*END ControlService;*)

    PROCEDURE CreateServiceA* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpServiceName: PtrSTR; lpDisplayName: PtrSTR; dwDesiredAccess: SET; dwServiceType: SET; dwStartType: INTEGER; dwErrorControl: INTEGER; lpBinaryPathName: PtrSTR; lpLoadOrderGroup: PtrSTR; VAR [nil] lpdwTagId: INTEGER; lpDependencies: PtrSTR; lpServiceStartName: PtrSTR; lpPassword: PtrSTR): SC_HANDLE;
    (*END CreateServiceA;*)

    PROCEDURE CreateServiceW* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpServiceName: PtrWSTR; lpDisplayName: PtrWSTR; dwDesiredAccess: SET; dwServiceType: SET; dwStartType: INTEGER; dwErrorControl: INTEGER; lpBinaryPathName: PtrWSTR; lpLoadOrderGroup: PtrWSTR; VAR [nil] lpdwTagId: INTEGER; lpDependencies: PtrWSTR; lpServiceStartName: PtrWSTR; lpPassword: PtrWSTR): SC_HANDLE;
    (*END CreateServiceW;*)

    PROCEDURE CreateService* ["ADVAPI32.dll", "CreateServiceA"] (hSCManager: SC_HANDLE; lpServiceName: PtrSTR; lpDisplayName: PtrSTR; dwDesiredAccess: SET; dwServiceType: SET; dwStartType: INTEGER; dwErrorControl: INTEGER; lpBinaryPathName: PtrSTR; lpLoadOrderGroup: PtrSTR; VAR [nil] lpdwTagId: INTEGER; lpDependencies: PtrSTR; lpServiceStartName: PtrSTR; lpPassword: PtrSTR): SC_HANDLE;
    (*END CreateService;*)

    PROCEDURE DeleteService* ["ADVAPI32.dll", ""] (hService: SC_HANDLE): BOOL;
    (*END DeleteService;*)

    PROCEDURE EnumDependentServicesA* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwServiceState: INTEGER; VAR [nil] lpServices: ENUM_SERVICE_STATUSA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER; VAR [nil] lpServicesReturned: INTEGER): BOOL;
    (*END EnumDependentServicesA;*)

    PROCEDURE EnumDependentServicesW* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwServiceState: INTEGER; VAR [nil] lpServices: ENUM_SERVICE_STATUSW; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER; VAR [nil] lpServicesReturned: INTEGER): BOOL;
    (*END EnumDependentServicesW;*)

    PROCEDURE EnumDependentServices* ["ADVAPI32.dll", "EnumDependentServicesA"] (hService: SC_HANDLE; dwServiceState: INTEGER; VAR [nil] lpServices: ENUM_SERVICE_STATUSA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER; VAR [nil] lpServicesReturned: INTEGER): BOOL;
    (*END EnumDependentServices;*)

    PROCEDURE EnumServicesStatusA* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; dwServiceType: SET; dwServiceState: INTEGER; VAR [nil] lpServices: ENUM_SERVICE_STATUSA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER; VAR [nil] lpServicesReturned: INTEGER; VAR [nil] lpResumeHandle: INTEGER): BOOL;
    (*END EnumServicesStatusA;*)

    PROCEDURE EnumServicesStatusW* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; dwServiceType: SET; dwServiceState: INTEGER; VAR [nil] lpServices: ENUM_SERVICE_STATUSW; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER; VAR [nil] lpServicesReturned: INTEGER; VAR [nil] lpResumeHandle: INTEGER): BOOL;
    (*END EnumServicesStatusW;*)

    PROCEDURE EnumServicesStatus* ["ADVAPI32.dll", "EnumServicesStatusA"] (hSCManager: SC_HANDLE; dwServiceType: SET; dwServiceState: INTEGER; VAR [nil] lpServices: ENUM_SERVICE_STATUSA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER; VAR [nil] lpServicesReturned: INTEGER; VAR [nil] lpResumeHandle: INTEGER): BOOL;
    (*END EnumServicesStatus;*)

    PROCEDURE GetServiceKeyNameA* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpDisplayName: PtrSTR; lpServiceName: PtrSTR; VAR [nil] lpcchBuffer: INTEGER): BOOL;
    (*END GetServiceKeyNameA;*)

    PROCEDURE GetServiceKeyNameW* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpDisplayName: PtrWSTR; lpServiceName: PtrWSTR; VAR [nil] lpcchBuffer: INTEGER): BOOL;
    (*END GetServiceKeyNameW;*)

    PROCEDURE GetServiceKeyName* ["ADVAPI32.dll", "GetServiceKeyNameA"] (hSCManager: SC_HANDLE; lpDisplayName: PtrSTR; lpServiceName: PtrSTR; VAR [nil] lpcchBuffer: INTEGER): BOOL;
    (*END GetServiceKeyName;*)

    PROCEDURE GetServiceDisplayNameA* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpServiceName: PtrSTR; lpDisplayName: PtrSTR; VAR [nil] lpcchBuffer: INTEGER): BOOL;
    (*END GetServiceDisplayNameA;*)

    PROCEDURE GetServiceDisplayNameW* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpServiceName: PtrWSTR; lpDisplayName: PtrWSTR; VAR [nil] lpcchBuffer: INTEGER): BOOL;
    (*END GetServiceDisplayNameW;*)

    PROCEDURE GetServiceDisplayName* ["ADVAPI32.dll", "GetServiceDisplayNameA"] (hSCManager: SC_HANDLE; lpServiceName: PtrSTR; lpDisplayName: PtrSTR; VAR [nil] lpcchBuffer: INTEGER): BOOL;
    (*END GetServiceDisplayName;*)

    PROCEDURE LockServiceDatabase* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE): SC_LOCK;
    (*END LockServiceDatabase;*)

    PROCEDURE NotifyBootConfigStatus* ["ADVAPI32.dll", ""] (BootAcceptable: BOOL): BOOL;
    (*END NotifyBootConfigStatus;*)

    PROCEDURE OpenSCManagerA* ["ADVAPI32.dll", ""] (lpMachineName: PtrSTR; lpDatabaseName: PtrSTR; dwDesiredAccess: SET): SC_HANDLE;
    (*END OpenSCManagerA;*)

    PROCEDURE OpenSCManagerW* ["ADVAPI32.dll", ""] (lpMachineName: PtrWSTR; lpDatabaseName: PtrWSTR; dwDesiredAccess: SET): SC_HANDLE;
    (*END OpenSCManagerW;*)

    PROCEDURE OpenSCManager* ["ADVAPI32.dll", "OpenSCManagerA"] (lpMachineName: PtrSTR; lpDatabaseName: PtrSTR; dwDesiredAccess: SET): SC_HANDLE;
    (*END OpenSCManager;*)

    PROCEDURE OpenServiceA* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpServiceName: PtrSTR; dwDesiredAccess: SET): SC_HANDLE;
    (*END OpenServiceA;*)

    PROCEDURE OpenServiceW* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; lpServiceName: PtrWSTR; dwDesiredAccess: SET): SC_HANDLE;
    (*END OpenServiceW;*)

    PROCEDURE OpenService* ["ADVAPI32.dll", "OpenServiceA"] (hSCManager: SC_HANDLE; lpServiceName: PtrSTR; dwDesiredAccess: SET): SC_HANDLE;
    (*END OpenService;*)

    PROCEDURE QueryServiceConfigA* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; VAR [nil] lpServiceConfig: QUERY_SERVICE_CONFIGA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER): BOOL;
    (*END QueryServiceConfigA;*)

    PROCEDURE QueryServiceConfigW* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; VAR [nil] lpServiceConfig: QUERY_SERVICE_CONFIGW; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER): BOOL;
    (*END QueryServiceConfigW;*)

    PROCEDURE QueryServiceConfig* ["ADVAPI32.dll", "QueryServiceConfigA"] (hService: SC_HANDLE; VAR [nil] lpServiceConfig: QUERY_SERVICE_CONFIGA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER): BOOL;
    (*END QueryServiceConfig;*)

    PROCEDURE QueryServiceLockStatusA* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; VAR [nil] lpLockStatus: QUERY_SERVICE_LOCK_STATUSA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER): BOOL;
    (*END QueryServiceLockStatusA;*)

    PROCEDURE QueryServiceLockStatusW* ["ADVAPI32.dll", ""] (hSCManager: SC_HANDLE; VAR [nil] lpLockStatus: QUERY_SERVICE_LOCK_STATUSW; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER): BOOL;
    (*END QueryServiceLockStatusW;*)

    PROCEDURE QueryServiceLockStatus* ["ADVAPI32.dll", "QueryServiceLockStatusA"] (hSCManager: SC_HANDLE; VAR [nil] lpLockStatus: QUERY_SERVICE_LOCK_STATUSA; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER): BOOL;
    (*END QueryServiceLockStatus;*)

    PROCEDURE QueryServiceObjectSecurity* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwSecurityInformation: SECURITY_INFORMATION; lpSecurityDescriptor: PSECURITY_DESCRIPTOR; cbBufSize: INTEGER; VAR [nil] pcbBytesNeeded: INTEGER): BOOL;
    (*END QueryServiceObjectSecurity;*)

    PROCEDURE QueryServiceStatus* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; VAR [nil] lpServiceStatus: SERVICE_STATUS): BOOL;
    (*END QueryServiceStatus;*)

    PROCEDURE RegisterServiceCtrlHandlerA* ["ADVAPI32.dll", ""] (lpServiceName: PtrSTR; lpHandlerProc: HANDLER_FUNCTION): SERVICE_STATUS_HANDLE;
    (*END RegisterServiceCtrlHandlerA;*)

    PROCEDURE RegisterServiceCtrlHandlerW* ["ADVAPI32.dll", ""] (lpServiceName: PtrWSTR; lpHandlerProc: HANDLER_FUNCTION): SERVICE_STATUS_HANDLE;
    (*END RegisterServiceCtrlHandlerW;*)

    PROCEDURE RegisterServiceCtrlHandler* ["ADVAPI32.dll", "RegisterServiceCtrlHandlerA"] (lpServiceName: PtrSTR; lpHandlerProc: HANDLER_FUNCTION): SERVICE_STATUS_HANDLE;
    (*END RegisterServiceCtrlHandler;*)

    PROCEDURE SetServiceObjectSecurity* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwSecurityInformation: SECURITY_INFORMATION; lpSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL;
    (*END SetServiceObjectSecurity;*)

    PROCEDURE SetServiceStatus* ["ADVAPI32.dll", ""] (hServiceStatus: SERVICE_STATUS_HANDLE; VAR [nil] lpServiceStatus: SERVICE_STATUS): BOOL;
    (*END SetServiceStatus;*)

    PROCEDURE StartServiceCtrlDispatcherA* ["ADVAPI32.dll", ""] (VAR [nil] lpServiceStartTable: SERVICE_TABLE_ENTRYA): BOOL;
    (*END StartServiceCtrlDispatcherA;*)

    PROCEDURE StartServiceCtrlDispatcherW* ["ADVAPI32.dll", ""] (VAR [nil] lpServiceStartTable: SERVICE_TABLE_ENTRYW): BOOL;
    (*END StartServiceCtrlDispatcherW;*)

    PROCEDURE StartServiceCtrlDispatcher* ["ADVAPI32.dll", "StartServiceCtrlDispatcherA"] (VAR [nil] lpServiceStartTable: SERVICE_TABLE_ENTRYA): BOOL;
    (*END StartServiceCtrlDispatcher;*)

    PROCEDURE StartServiceA* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwNumServiceArgs: INTEGER; VAR [nil] lpServiceArgVectors: PtrSTR): BOOL;
    (*END StartServiceA;*)

    PROCEDURE StartServiceW* ["ADVAPI32.dll", ""] (hService: SC_HANDLE; dwNumServiceArgs: INTEGER; lpServiceArgVectors: POINTER TO (*?*) ARRAY [untagged] OF PtrWSTR): BOOL;
    (*END StartServiceW;*)

    PROCEDURE StartService* ["ADVAPI32.dll", "StartServiceA"] (hService: SC_HANDLE; dwNumServiceArgs: INTEGER; VAR [nil] lpServiceArgVectors: PtrSTR): BOOL;
    (*END StartService;*)

    PROCEDURE UnlockServiceDatabase* ["ADVAPI32.dll", ""] (ScLock: SC_LOCK): BOOL;
    (*END UnlockServiceDatabase;*)

    PROCEDURE RtlUnwind* (targetFrame: PtrVoid; targetIp: INTEGER; excpRec: PtrEXCEPTION_RECORD; retVal: INTEGER);
    (*END RtlUnwind;*)

END WinApi.
