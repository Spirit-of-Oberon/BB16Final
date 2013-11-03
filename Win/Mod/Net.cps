﻿MODULE WinNet ["MPR.dll"];
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

    IMPORT WinApi;

    CONST (* macros *)
        INVALID_SOCKET* = -1;
        WNNC_NET_MSNET* = 65536;
        WNNC_NET_LANMAN* = 131072;
        WNNC_NET_NETWARE* = 196608;
        WNNC_NET_VINES* = 262144;
        WNNC_NET_10NET* = 327680;
        WNNC_NET_LOCUS* = 393216;
        WNNC_NET_SUN_PC_NFS* = 458752;
        WNNC_NET_LANSTEP* = 524288;
        WNNC_NET_9TILES* = 589824;
        WNNC_NET_LANTASTIC* = 655360;
        WNNC_NET_AS400* = 720896;
        WNNC_NET_FTP_NFS* = 786432;
        WNNC_NET_PATHWORKS* = 851968;
        WNNC_NET_LIFENET* = 917504;
        WNNC_NET_POWERLAN* = 983040;
        WNNC_NET_BWNFS* = 1048576;
        WNNC_NET_COGENT* = 1114112;
        WNNC_NET_FARALLON* = 1179648;
        WNNC_NET_APPLETALK* = 1245184;
        RESOURCE_CONNECTED* = 1;
        RESOURCE_GLOBALNET* = 2;
        RESOURCE_REMEMBERED* = 3;
        RESOURCE_RECENT* = 4;
        RESOURCE_CONTEXT* = 5;
        RESOURCETYPE_ANY* = 0;
        RESOURCETYPE_DISK* = 1;
        RESOURCETYPE_PRINT* = 2;
        RESOURCETYPE_RESERVED* = 8;
        RESOURCETYPE_UNKNOWN* = -1;
        RESOURCEUSAGE_CONNECTABLE* = 1;
        RESOURCEUSAGE_CONTAINER* = 2;
        RESOURCEUSAGE_NOLOCALDEVICE* = 4;
        RESOURCEUSAGE_SIBLING* = 8;
        RESOURCEUSAGE_ALL* = 3;
        RESOURCEUSAGE_RESERVED* = 80000000H;
        RESOURCEDISPLAYTYPE_GENERIC* = 0;
        RESOURCEDISPLAYTYPE_DOMAIN* = 1;
        RESOURCEDISPLAYTYPE_SERVER* = 2;
        RESOURCEDISPLAYTYPE_SHARE* = 3;
        RESOURCEDISPLAYTYPE_FILE* = 4;
        RESOURCEDISPLAYTYPE_GROUP* = 5;
        RESOURCEDISPLAYTYPE_NETWORK* = 6;
        RESOURCEDISPLAYTYPE_ROOT* = 7;
        RESOURCEDISPLAYTYPE_SHAREADMIN* = 8;
        RESOURCEDISPLAYTYPE_DIRECTORY* = 9;
        RESOURCEDISPLAYTYPE_TREE* = 10;
        NETPROPERTY_PERSISTENT* = 1;
        CONNECT_UPDATE_PROFILE* = {0};
        CONNECT_UPDATE_RECENT* = {1};
        CONNECT_TEMPORARY* = {2};
        CONNECT_INTERACTIVE* = {3};
        CONNECT_PROMPT* = {4};
        CONNECT_NEED_DRIVE* = {5};
        CONNECT_REFCOUNT* = {6};
        CONNECT_REDIRECT* = {7};
        CONNECT_LOCALDRIVE* = {8};
        CONNECT_CURRENT_MEDIA* = {9};
        CONNDLG_RO_PATH* = {0};
        CONNDLG_CONN_POINT* = {1};
        CONNDLG_USE_MRU* = {2};
        CONNDLG_HIDE_BOX* = {3};
        CONNDLG_PERSIST* = {4};
        CONNDLG_NOT_PERSIST* = {5};
        DISC_UPDATE_PROFILE* = 1;
        DISC_NO_FORCE* = 64;
        UNIVERSAL_NAME_INFO_LEVEL* = 1;
        REMOTE_NAME_INFO_LEVEL* = 2;
        WNFMT_MULTILINE* = {0};
        WNFMT_ABBREVIATED* = {1};
        WNFMT_INENUM* = {4};
        WNFMT_CONNECTION* = {5};
        NETINFO_DLL16* = {0};
        NETINFO_DISKRED* = {2};
        NETINFO_PRINTERRED* = {3};
        RP_LOGON* = 1;
        RP_INIFILE* = 2;
        PP_DISPLAYERRORS* = 1;
        WN_SUCCESS* = 0;
        WN_NO_ERROR* = 0;
        WN_NOT_SUPPORTED* = 50;
        WN_CANCEL* = 1223;
        WN_RETRY* = 1237;
        WN_NET_ERROR* = 59;
        WN_MORE_DATA* = 234;
        WN_BAD_POINTER* = 487;
        WN_BAD_VALUE* = 87;
        WN_BAD_USER* = 2202;
        WN_BAD_PASSWORD* = 86;
        WN_ACCESS_DENIED* = 5;
        WN_FUNCTION_BUSY* = 170;
        WN_WINDOWS_ERROR* = 59;
        WN_OUT_OF_MEMORY* = 8;
        WN_NO_NETWORK* = 1222;
        WN_EXTENDED_ERROR* = 1208;
        WN_BAD_LEVEL* = 124;
        WN_BAD_HANDLE* = 6;
        WN_NOT_INITIALIZING* = 1247;
        WN_NO_MORE_DEVICES* = 1248;
        WN_NOT_CONNECTED* = 2250;
        WN_OPEN_FILES* = 2401;
        WN_DEVICE_IN_USE* = 2404;
        WN_BAD_NETNAME* = 67;
        WN_BAD_LOCALNAME* = 1200;
        WN_ALREADY_CONNECTED* = 85;
        WN_DEVICE_ERROR* = 31;
        WN_CONNECTION_CLOSED* = 1201;
        WN_NO_NET_OR_BAD_PATH* = 1203;
        WN_BAD_PROVIDER* = 1204;
        WN_CANNOT_OPEN_PROFILE* = 1205;
        WN_BAD_PROFILE* = 1206;
        WN_BAD_DEV_TYPE* = 66;
        WN_DEVICE_ALREADY_REMEMBERED* = 1202;
        WN_NO_MORE_ENTRIES* = 259;
        WN_NOT_CONTAINER* = 1207;
        WN_NOT_AUTHENTICATED* = 1244;
        WN_NOT_LOGGED_ON* = 1245;
        WN_NOT_VALIDATED* = 1311;
        WNCON_FORNETCARD* = 1;
        WNCON_NOTROUTED* = 2;
        WNCON_SLOWLINK* = 4;
        WNCON_DYNAMIC* = 8;
        NCBNAMSZ* = 16;
        MAX_LANA* = 254;
        NAME_FLAGS_MASK* = 135;
        GROUP_NAME* = 128;
        UNIQUE_NAME* = 0;
        REGISTERING* = 0;
        REGISTERED* = 4;
        DEREGISTERED* = 5;
        DUPLICATE* = 6;
        DUPLICATE_DEREG* = 7;
        LISTEN_OUTSTANDING* = 1;
        CALL_PENDING* = 2;
        SESSION_ESTABLISHED* = 3;
        HANGUP_PENDING* = 4;
        HANGUP_COMPLETE* = 5;
        SESSION_ABORTED* = 6;
        ALL_TRANSPORTS* = "M";
        MS_NBF* = "MNBF";
        NCBCALL* = 16;
        NCBLISTEN* = 17;
        NCBHANGUP* = 18;
        NCBSEND* = 20;
        NCBRECV* = 21;
        NCBRECVANY* = 22;
        NCBCHAINSEND* = 23;
        NCBDGSEND* = 32;
        NCBDGRECV* = 33;
        NCBDGSENDBC* = 34;
        NCBDGRECVBC* = 35;
        NCBADDNAME* = 48;
        NCBDELNAME* = 49;
        NCBRESET* = 50;
        NCBASTAT* = 51;
        NCBSSTAT* = 52;
        NCBCANCEL* = 53;
        NCBADDGRNAME* = 54;
        NCBENUM* = 55;
        NCBUNLINK* = 112;
        NCBSENDNA* = 113;
        NCBCHAINSENDNA* = 114;
        NCBLANSTALERT* = 115;
        NCBACTION* = 119;
        NCBFINDNAME* = 120;
        NCBTRACE* = 121;
        ASYNCH* = 128;
        NRC_GOODRET* = 0;
        NRC_BUFLEN* = 1;
        NRC_ILLCMD* = 3;
        NRC_CMDTMO* = 5;
        NRC_INCOMP* = 6;
        NRC_BADDR* = 7;
        NRC_SNUMOUT* = 8;
        NRC_NORES* = 9;
        NRC_SCLOSED* = 10;
        NRC_CMDCAN* = 11;
        NRC_DUPNAME* = 13;
        NRC_NAMTFUL* = 14;
        NRC_ACTSES* = 15;
        NRC_LOCTFUL* = 17;
        NRC_REMTFUL* = 18;
        NRC_ILLNN* = 19;
        NRC_NOCALL* = 20;
        NRC_NOWILD* = 21;
        NRC_INUSE* = 22;
        NRC_NAMERR* = 23;
        NRC_SABORT* = 24;
        NRC_NAMCONF* = 25;
        NRC_IFBUSY* = 33;
        NRC_TOOMANY* = 34;
        NRC_BRIDGE* = 35;
        NRC_CANOCCR* = 36;
        NRC_CANCEL* = 38;
        NRC_DUPENV* = 48;
        NRC_ENVNOTDEF* = 52;
        NRC_OSRESNOTAV* = 53;
        NRC_MAXAPPS* = 54;
        NRC_NOSAPS* = 55;
        NRC_NORESOURCES* = 56;
        NRC_INVADDRESS* = 57;
        NRC_INVDDID* = 59;
        NRC_LOCKFAIL* = 60;
        NRC_OPENERR* = 63;
        NRC_SYSTEM* = 64;
        NRC_PENDING* = 255;
        INCL_WINSOCK_API_PROTOTYPES* = 1;
        INCL_WINSOCK_API_TYPEDEFS* = 0;
        FD_SETSIZE* = 64;
        IOCPARM_MASK* = 127;
        IOC_VOID* = 536870912;
        IOC_OUT* = 1073741824;
        IOC_IN* = 80000000H;
        IOC_INOUT* = -1073741824;
        IPPROTO_IP* = 0;
        IPPROTO_ICMP* = 1;
        IPPROTO_IGMP* = 2;
        IPPROTO_GGP* = 3;
        IPPROTO_TCP* = 6;
        IPPROTO_PUP* = 12;
        IPPROTO_UDP* = 17;
        IPPROTO_IDP* = 22;
        IPPROTO_ND* = 77;
        IPPROTO_RAW* = 255;
        IPPROTO_MAX* = 256;
        IPPORT_ECHO* = 7;
        IPPORT_DISCARD* = 9;
        IPPORT_SYSTAT* = 11;
        IPPORT_DAYTIME* = 13;
        IPPORT_NETSTAT* = 15;
        IPPORT_FTP* = 21;
        IPPORT_TELNET* = 23;
        IPPORT_SMTP* = 25;
        IPPORT_TIMESERVER* = 37;
        IPPORT_NAMESERVER* = 42;
        IPPORT_WHOIS* = 43;
        IPPORT_MTP* = 57;
        IPPORT_TFTP* = 69;
        IPPORT_RJE* = 77;
        IPPORT_FINGER* = 79;
        IPPORT_TTYLINK* = 87;
        IPPORT_SUPDUP* = 95;
        IPPORT_EXECSERVER* = 512;
        IPPORT_LOGINSERVER* = 513;
        IPPORT_CMDSERVER* = 514;
        IPPORT_EFSSERVER* = 520;
        IPPORT_BIFFUDP* = 512;
        IPPORT_WHOSERVER* = 513;
        IPPORT_ROUTESERVER* = 520;
        IPPORT_RESERVED* = 1024;
        IMPLINK_IP* = 155;
        IMPLINK_LOWEXPER* = 156;
        IMPLINK_HIGHEXPER* = 158;
        IN_CLASSA_NET* = -16777216;
        IN_CLASSA_NSHIFT* = 24;
        IN_CLASSA_HOST* = 16777215;
        IN_CLASSA_MAX* = 128;
        IN_CLASSB_NET* = -65536;
        IN_CLASSB_NSHIFT* = 16;
        IN_CLASSB_HOST* = 65535;
        IN_CLASSB_MAX* = 65536;
        IN_CLASSC_NET* = -256;
        IN_CLASSC_NSHIFT* = 8;
        IN_CLASSC_HOST* = 255;
        IN_CLASSD_NET* = -268435456;
        IN_CLASSD_NSHIFT* = 28;
        IN_CLASSD_HOST* = 268435455;
        INADDR_LOOPBACK* = 2130706433;
        INADDR_NONE* = -1;
        WSADESCRIPTION_LEN* = 256;
        WSASYS_STATUS_LEN* = 128;
        SOCKET_ERROR* = -1;
        SOCK_STREAM* = 1;
        SOCK_DGRAM* = 2;
        SOCK_RAW* = 3;
        SOCK_RDM* = 4;
        SOCK_SEQPACKET* = 5;
        SO_DEBUG* = 1;
        SO_ACCEPTCONN* = 2;
        SO_REUSEADDR* = 4;
        SO_KEEPALIVE* = 8;
        SO_DONTROUTE* = 16;
        SO_BROADCAST* = 32;
        SO_USELOOPBACK* = 64;
        SO_LINGER* = 128;
        SO_OOBINLINE* = 256;
        SO_DONTLINGER* = -129;
        SO_SNDBUF* = 4097;
        SO_RCVBUF* = 4098;
        SO_SNDLOWAT* = 4099;
        SO_RCVLOWAT* = 4100;
        SO_SNDTIMEO* = 4101;
        SO_RCVTIMEO* = 4102;
        SO_ERROR* = 4103;
        SO_TYPE* = 4104;
        SO_GROUP_ID* = 8193;
        SO_GROUP_PRIORITY* = 8194;
        SO_MAX_MSG_SIZE* = 8195;
        SO_PROTOCOL_INFOA* = 8196;
        SO_PROTOCOL_INFOW* = 8197;
        SO_PROTOCOL_INFO* = 8196;
        PVD_CONFIG* = 12289;
        TCP_NODELAY* = 1;
        AF_UNSPEC* = 0;
        AF_UNIX* = 1;
        AF_INET* = 2;
        AF_IMPLINK* = 3;
        AF_PUP* = 4;
        AF_CHAOS* = 5;
        AF_NS* = 6;
        AF_IPX* = 6;
        AF_ISO* = 7;
        AF_OSI* = 7;
        AF_ECMA* = 8;
        AF_DATAKIT* = 9;
        AF_CCITT* = 10;
        AF_SNA* = 11;
        AF_DECnet* = 12;
        AF_DLI* = 13;
        AF_LAT* = 14;
        AF_HYLINK* = 15;
        AF_APPLETALK* = 16;
        AF_NETBIOS* = 17;
        AF_VOICEVIEW* = 18;
        AF_FIREFOX* = 19;
        AF_UNKNOWN1* = 20;
        AF_BAN* = 21;
        AF_ATM* = 22;
        AF_MAX* = 23;
        PF_UNSPEC* = 0;
        PF_UNIX* = 1;
        PF_INET* = 2;
        PF_IMPLINK* = 3;
        PF_PUP* = 4;
        PF_CHAOS* = 5;
        PF_NS* = 6;
        PF_IPX* = 6;
        PF_ISO* = 7;
        PF_OSI* = 7;
        PF_ECMA* = 8;
        PF_DATAKIT* = 9;
        PF_CCITT* = 10;
        PF_SNA* = 11;
        PF_DECnet* = 12;
        PF_DLI* = 13;
        PF_LAT* = 14;
        PF_HYLINK* = 15;
        PF_APPLETALK* = 16;
        PF_VOICEVIEW* = 18;
        PF_FIREFOX* = 19;
        PF_UNKNOWN1* = 20;
        PF_BAN* = 21;
        PF_ATM* = 22;
        PF_MAX* = 23;
        SOL_SOCKET* = 65535;
        SOMAXCONN* = 5;
        MSG_OOB* = 1;
        MSG_PEEK* = 2;
        MSG_DONTROUTE* = 4;
        MSG_PARTIAL* = 32768;
        MSG_INTERRUPT* = 16;
        MSG_MAXIOVLEN* = 16;
        MAXGETHOSTSTRUCT* = 1024;
        FD_READ_BIT* = 0;
        FD_READ* = 1;
        FD_WRITE_BIT* = 1;
        FD_WRITE* = 2;
        FD_OOB_BIT* = 2;
        FD_OOB* = 4;
        FD_ACCEPT_BIT* = 3;
        FD_ACCEPT* = 8;
        FD_CONNECT_BIT* = 4;
        FD_CONNECT* = 16;
        FD_CLOSE_BIT* = 5;
        FD_CLOSE* = 32;
        FD_QOS_BIT* = 6;
        FD_QOS* = 64;
        FD_GROUP_QOS_BIT* = 7;
        FD_GROUP_QOS* = 128;
        FD_MAX_EVENTS* = 8;
        FD_ALL_EVENTS* = 255;
        WSABASEERR* = 10000;
        WSAEINTR* = 10004;
        WSAEBADF* = 10009;
        WSAEACCES* = 10013;
        WSAEFAULT* = 10014;
        WSAEINVAL* = 10022;
        WSAEMFILE* = 10024;
        WSAEWOULDBLOCK* = 10035;
        WSAEINPROGRESS* = 10036;
        WSAEALREADY* = 10037;
        WSAENOTSOCK* = 10038;
        WSAEDESTADDRREQ* = 10039;
        WSAEMSGSIZE* = 10040;
        WSAEPROTOTYPE* = 10041;
        WSAENOPROTOOPT* = 10042;
        WSAEPROTONOSUPPORT* = 10043;
        WSAESOCKTNOSUPPORT* = 10044;
        WSAEOPNOTSUPP* = 10045;
        WSAEPFNOSUPPORT* = 10046;
        WSAEAFNOSUPPORT* = 10047;
        WSAEADDRINUSE* = 10048;
        WSAEADDRNOTAVAIL* = 10049;
        WSAENETDOWN* = 10050;
        WSAENETUNREACH* = 10051;
        WSAENETRESET* = 10052;
        WSAECONNABORTED* = 10053;
        WSAECONNRESET* = 10054;
        WSAENOBUFS* = 10055;
        WSAEISCONN* = 10056;
        WSAENOTCONN* = 10057;
        WSAESHUTDOWN* = 10058;
        WSAETOOMANYREFS* = 10059;
        WSAETIMEDOUT* = 10060;
        WSAECONNREFUSED* = 10061;
        WSAELOOP* = 10062;
        WSAENAMETOOLONG* = 10063;
        WSAEHOSTDOWN* = 10064;
        WSAEHOSTUNREACH* = 10065;
        WSAENOTEMPTY* = 10066;
        WSAEPROCLIM* = 10067;
        WSAEUSERS* = 10068;
        WSAEDQUOT* = 10069;
        WSAESTALE* = 10070;
        WSAEREMOTE* = 10071;
        WSASYSNOTREADY* = 10091;
        WSAVERNOTSUPPORTED* = 10092;
        WSANOTINITIALISED* = 10093;
        WSAEDISCON* = 10101;
        WSAHOST_NOT_FOUND* = 11001;
        HOST_NOT_FOUND* = 11001;
        WSATRY_AGAIN* = 11002;
        TRY_AGAIN* = 11002;
        WSANO_RECOVERY* = 11003;
        NO_RECOVERY* = 11003;
        WSANO_DATA* = 11004;
        NO_DATA* = 11004;
        WSANO_ADDRESS* = 11004;
        NO_ADDRESS* = 11004;
        WSA_IO_PENDING* = 10035;
        WSA_IO_INCOMPLETE* = 10035;
        WSA_INVALID_HANDLE* = 10038;
        WSA_INVALID_PARAMETER* = 10022;
        WSA_NOT_ENOUGH_MEMORY* = 10055;
        WSA_OPERATION_ABORTED* = 10004;
        WSA_MAXIMUM_WAIT_EVENTS* = 64;
        WSA_WAIT_FAILED* = -1;
        WSA_WAIT_EVENT_0* = 0;
        WSA_WAIT_TIMEOUT* = 258;
        WSA_INFINITE* = -1;
        CF_ACCEPT* = 0;
        CF_REJECT* = 1;
        CF_DEFER* = 2;
        SD_RECEIVE* = 0;
        SD_SEND* = 1;
        SD_BOTH* = 2;
        SG_UNCONSTRAINED_GROUP* = 1;
        SG_CONSTRAINED_GROUP* = 2;
        MAX_PROTOCOL_CHAIN* = 8;
        BASE_PROTOCOL* = 1;
        LAYERED_PROTOCOL* = 0;
        WSAPROTOCOL_LEN* = 255;
        XP1_CONNECTIONLESS* = {0};
        XP1_GUARANTEED_DELIVERY* = {1};
        XP1_GUARANTEED_ORDER* = {2};
        XP1_MESSAGE_ORIENTED* = {3};
        XP1_PSEUDO_STREAM* = {4};
        XP1_GRACEFUL_CLOSE* = {5};
        XP1_EXPEDITED_DATA* = {6};
        XP1_CONNECT_DATA* = {7};
        XP1_DISCONNECT_DATA* = {8};
        XP1_SUPPORT_BROADCAST* = {9};
        XP1_SUPPORT_MULTIPOINT* = {10};
        XP1_MULTIPOINT_CONTROL_PLANE* = {11};
        XP1_MULTIPOINT_DATA_PLANE* = {12};
        XP1_QOS_SUPPORTED* = {13};
        XP1_INTERRUPT* = {14};
        XP1_UNI_SEND* = {15};
        XP1_UNI_RECV* = {16};
        XP1_IFS_HANDLES* = {17};
        XP1_PARTIAL_MESSAGE* = {18};
        BIGENDIAN* = 0;
        LITTLEENDIAN* = 1;
        SECURITY_PROTOCOL_NONE* = 0;
        JL_SENDER_ONLY* = 1;
        JL_RECEIVER_ONLY* = 2;
        JL_BOTH* = 4;
        WSA_FLAG_OVERLAPPED* = {0};
        WSA_FLAG_MULTIPOINT_C_ROOT* = {1};
        WSA_FLAG_MULTIPOINT_C_LEAF* = {2};
        WSA_FLAG_MULTIPOINT_D_ROOT* = {3};
        WSA_FLAG_MULTIPOINT_D_LEAF* = {4};
        IOC_UNIX* = 0;
        IOC_WS2* = 134217728;
        IOC_PROTOCOL* = 268435456;
        IOC_VENDOR* = 402653184;
        SIO_ASSOCIATE_HANDLE* = -2013265919;
        SIO_ENABLE_CIRCULAR_QUEUEING* = 671088642;
        SIO_FIND_ROUTE* = 1207959555;
        SIO_FLUSH* = 671088644;
        SIO_GET_BROADCAST_ADDRESS* = 1207959557;
        SIO_GET_EXTENSION_FUNCTION_POINTER* = 1207959558;
        SIO_GET_QOS* = 1207959559;
        SIO_GET_GROUP_QOS* = 1207959560;
        SIO_MULTIPOINT_LOOPBACK* = -2013265911;
        SIO_MULTICAST_SCOPE* = -2013265910;
        SIO_SET_QOS* = -2013265909;
        SIO_SET_GROUP_QOS* = -2013265908;
        SIO_TRANSLATE_HANDLE* = -939524083;
        TH_NETDEV* = 1;
        TH_TAPI* = 2;
        SO_CONNDATA* = 28672;
        SO_CONNOPT* = 28673;
        SO_DISCDATA* = 28674;
        SO_DISCOPT* = 28675;
        SO_CONNDATALEN* = 28676;
        SO_CONNOPTLEN* = 28677;
        SO_DISCDATALEN* = 28678;
        SO_DISCOPTLEN* = 28679;
        SO_OPENTYPE* = 28680;
        SO_SYNCHRONOUS_ALERT* = 16;
        SO_SYNCHRONOUS_NONALERT* = 32;
        SO_MAXDG* = 28681;
        SO_MAXPATHDG* = 28682;
        SO_UPDATE_ACCEPT_CONTEXT* = 28683;
        SO_CONNECT_TIME* = 28684;
        TCP_BSDURGENT* = 28672;
        TF_DISCONNECT* = 1;
        TF_REUSE_SOCKET* = 2;

    CONST (* enumerations *)
        BestEffortService* = 0;
        PredictiveService* = 1;
        GuaranteedService* = 2;

    TYPE
        NETRESOURCEA* = RECORD [untagged]
            dwScope*: INTEGER;
            dwType*: INTEGER;
            dwDisplayType*: INTEGER;
            dwUsage*: INTEGER;
            lpLocalName*: WinApi.PtrSTR;
            lpRemoteName*: WinApi.PtrSTR;
            lpComment*: WinApi.PtrSTR;
            lpProvider*: WinApi.PtrSTR;
        END;
        PtrNETRESOURCEA* = POINTER TO NETRESOURCEA;
        NETRESOURCEW* = RECORD [untagged]
            dwScope*: INTEGER;
            dwType*: INTEGER;
            dwDisplayType*: INTEGER;
            dwUsage*: INTEGER;
            lpLocalName*: WinApi.PtrWSTR;
            lpRemoteName*: WinApi.PtrWSTR;
            lpComment*: WinApi.PtrWSTR;
            lpProvider*: WinApi.PtrWSTR;
        END;
        PtrNETRESOURCEW* = POINTER TO NETRESOURCEW;
        NETRESOURCE* = NETRESOURCEA;
        PtrNETRESOURCE* = PtrNETRESOURCEA;
        CONNECTDLGSTRUCTA* = RECORD [untagged]
            cbStructure*: INTEGER;
            hwndOwner*: WinApi.HWND;
            lpConnRes*: PtrNETRESOURCEA;
            dwFlags*: SET;
            dwDevNum*: INTEGER;
        END;
        PtrCONNECTDLGSTRUCTA* = POINTER TO CONNECTDLGSTRUCTA;
        CONNECTDLGSTRUCTW* = RECORD [untagged]
            cbStructure*: INTEGER;
            hwndOwner*: WinApi.HWND;
            lpConnRes*: PtrNETRESOURCEW;
            dwFlags*: SET;
            dwDevNum*: INTEGER;
        END;
        PtrCONNECTDLGSTRUCTW* = POINTER TO CONNECTDLGSTRUCTW;
        CONNECTDLGSTRUCT* = CONNECTDLGSTRUCTA;
        PtrCONNECTDLGSTRUCT* = PtrCONNECTDLGSTRUCTA;
        DISCDLGSTRUCTA* = RECORD [untagged]
            cbStructure*: INTEGER;
            hwndOwner*: WinApi.HWND;
            lpLocalName*: WinApi.PtrSTR;
            lpRemoteName*: WinApi.PtrSTR;
            dwFlags*: SET;
        END;
        PtrDISCDLGSTRUCTA* = POINTER TO DISCDLGSTRUCTA;
        DISCDLGSTRUCTW* = RECORD [untagged]
            cbStructure*: INTEGER;
            hwndOwner*: WinApi.HWND;
            lpLocalName*: WinApi.PtrWSTR;
            lpRemoteName*: WinApi.PtrWSTR;
            dwFlags*: SET;
        END;
        PtrDISCDLGSTRUCTW* = POINTER TO DISCDLGSTRUCTW;
        DISCDLGSTRUCT* = DISCDLGSTRUCTA;
        PtrDISCDLGSTRUCT* = PtrDISCDLGSTRUCTA;
        UNIVERSAL_NAME_INFOA* = RECORD [untagged]
            lpUniversalName*: WinApi.PtrSTR;
        END;
        PtrUNIVERSAL_NAME_INFOA* = POINTER TO UNIVERSAL_NAME_INFOA;
        UNIVERSAL_NAME_INFOW* = RECORD [untagged]
            lpUniversalName*: WinApi.PtrWSTR;
        END;
        PtrUNIVERSAL_NAME_INFOW* = POINTER TO UNIVERSAL_NAME_INFOW;
        UNIVERSAL_NAME_INFO* = UNIVERSAL_NAME_INFOA;
        PtrUNIVERSAL_NAME_INFO* = PtrUNIVERSAL_NAME_INFOA;
        REMOTE_NAME_INFOA* = RECORD [untagged]
            lpUniversalName*: WinApi.PtrSTR;
            lpConnectionName*: WinApi.PtrSTR;
            lpRemainingPath*: WinApi.PtrSTR;
        END;
        PtrREMOTE_NAME_INFOA* = POINTER TO REMOTE_NAME_INFOA;
        REMOTE_NAME_INFOW* = RECORD [untagged]
            lpUniversalName*: WinApi.PtrWSTR;
            lpConnectionName*: WinApi.PtrWSTR;
            lpRemainingPath*: WinApi.PtrWSTR;
        END;
        PtrREMOTE_NAME_INFOW* = POINTER TO REMOTE_NAME_INFOW;
        REMOTE_NAME_INFO* = REMOTE_NAME_INFOA;
        PtrREMOTE_NAME_INFO* = PtrREMOTE_NAME_INFOA;
        NETINFOSTRUCT* = RECORD [untagged]
            cbStructure*: INTEGER;
            dwProviderVersion*: INTEGER;
            dwStatus*: SET;
            dwCharacteristics*: INTEGER;
            dwHandle*: INTEGER;
            wNetType*: SHORTINT;
            dwPrinters*: INTEGER;
            dwDrives*: INTEGER;
        END;
        PtrNETINFOSTRUCT* = POINTER TO NETINFOSTRUCT;
        FNGETPROFILEPATHA* = PROCEDURE (pszUsername: WinApi.PtrSTR; pszBuffer: WinApi.PtrSTR; cbBuffer: INTEGER): INTEGER;
        FNGETPROFILEPATHW* = PROCEDURE (pszUsername: WinApi.PtrWSTR; pszBuffer: WinApi.PtrWSTR; cbBuffer: INTEGER): INTEGER;
        FNRECONCILEPROFILEA* = PROCEDURE (pszCentralFile: WinApi.PtrSTR; pszLocalFile: WinApi.PtrSTR; dwFlags: SET): INTEGER;
        FNRECONCILEPROFILEW* = PROCEDURE (pszCentralFile: WinApi.PtrWSTR; pszLocalFile: WinApi.PtrWSTR; dwFlags: SET): INTEGER;
        FNPROCESSPOLICIESA* = PROCEDURE (hwnd: WinApi.HWND; pszPath: WinApi.PtrSTR; pszUsername: WinApi.PtrSTR; pszComputerName: WinApi.PtrSTR; dwFlags: SET): WinApi.BOOL;
        FNPROCESSPOLICIESW* = PROCEDURE (hwnd: WinApi.HWND; pszPath: WinApi.PtrWSTR; pszUsername: WinApi.PtrWSTR; pszComputerName: WinApi.PtrWSTR; dwFlags: SET): WinApi.BOOL;
        NETCONNECTINFOSTRUCT* = RECORD [untagged]
            cbStructure*: INTEGER;
            dwFlags*: SET;
            dwSpeed*: INTEGER;
            dwDelay*: INTEGER;
            dwOptDataSize*: INTEGER;
        END;
        PtrNETCONNECTINFOSTRUCT* = POINTER TO NETCONNECTINFOSTRUCT;
        PtrNCB* = POINTER TO NCB;
        NCB* = RECORD [untagged]
            ncb_command*: SHORTCHAR;
            ncb_retcode*: SHORTCHAR;
            ncb_lsn*: SHORTCHAR;
            ncb_num*: SHORTCHAR;
            ncb_buffer*: WinApi.PtrSTR;
            ncb_length*: SHORTINT;
            ncb_callname*: ARRAY [untagged] 16 OF SHORTCHAR;
            ncb_name*: ARRAY [untagged] 16 OF SHORTCHAR;
            ncb_rto*: SHORTCHAR;
            ncb_sto*: SHORTCHAR;
            ncb_post*: PROCEDURE (p0: PtrNCB);
            ncb_lana_num*: SHORTCHAR;
            ncb_cmd_cplt*: SHORTCHAR;
            ncb_reserve*: ARRAY [untagged] 10 OF SHORTCHAR;
            ncb_event*: WinApi.HANDLE;
        END;
        ADAPTER_STATUS* = RECORD [untagged]
            adapter_address*: ARRAY [untagged] 6 OF SHORTCHAR;
            rev_major*: SHORTCHAR;
            reserved0*: SHORTCHAR;
            adapter_type*: SHORTCHAR;
            rev_minor*: SHORTCHAR;
            duration*: SHORTINT;
            frmr_recv*: SHORTINT;
            frmr_xmit*: SHORTINT;
            iframe_recv_err*: SHORTINT;
            xmit_aborts*: SHORTINT;
            xmit_success*: INTEGER;
            recv_success*: INTEGER;
            iframe_xmit_err*: SHORTINT;
            recv_buff_unavail*: SHORTINT;
            t1_timeouts*: SHORTINT;
            ti_timeouts*: SHORTINT;
            reserved1*: INTEGER;
            free_ncbs*: SHORTINT;
            max_cfg_ncbs*: SHORTINT;
            max_ncbs*: SHORTINT;
            xmit_buf_unavail*: SHORTINT;
            max_dgram_size*: SHORTINT;
            pending_sess*: SHORTINT;
            max_cfg_sess*: SHORTINT;
            max_sess*: SHORTINT;
            max_sess_pkt_size*: SHORTINT;
            name_count*: SHORTINT;
        END;
        PtrADAPTER_STATUS* = POINTER TO ADAPTER_STATUS;
        NAME_BUFFER* = RECORD [untagged]
            name*: ARRAY [untagged] 16 OF SHORTCHAR;
            name_num*: SHORTCHAR;
            name_flags*: SHORTCHAR;
        END;
        PtrNAME_BUFFER* = POINTER TO NAME_BUFFER;
        SESSION_HEADER* = RECORD [untagged]
            sess_name*: SHORTCHAR;
            num_sess*: SHORTCHAR;
            rcv_dg_outstanding*: SHORTCHAR;
            rcv_any_outstanding*: SHORTCHAR;
        END;
        PtrSESSION_HEADER* = POINTER TO SESSION_HEADER;
        SESSION_BUFFER* = RECORD [untagged]
            lsn*: SHORTCHAR;
            state*: SHORTCHAR;
            local_name*: ARRAY [untagged] 16 OF SHORTCHAR;
            remote_name*: ARRAY [untagged] 16 OF SHORTCHAR;
            rcvs_outstanding*: SHORTCHAR;
            sends_outstanding*: SHORTCHAR;
        END;
        PtrSESSION_BUFFER* = POINTER TO SESSION_BUFFER;
        LANA_ENUM* = RECORD [untagged]
            length*: SHORTCHAR;
            lana*: ARRAY [untagged] 255 OF SHORTCHAR;
        END;
        PtrLANA_ENUM* = POINTER TO LANA_ENUM;
        FIND_NAME_HEADER* = RECORD [untagged]
            node_count*: SHORTINT;
            reserved*: SHORTCHAR;
            unique_group*: SHORTCHAR;
        END;
        PtrFIND_NAME_HEADER* = POINTER TO FIND_NAME_HEADER;
        FIND_NAME_BUFFER* = RECORD [untagged]
            length*: SHORTCHAR;
            access_control*: SHORTCHAR;
            frame_control*: SHORTCHAR;
            destination_addr*: ARRAY [untagged] 6 OF SHORTCHAR;
            source_addr*: ARRAY [untagged] 6 OF SHORTCHAR;
            routing_info*: ARRAY [untagged] 18 OF SHORTCHAR;
        END;
        PtrFIND_NAME_BUFFER* = POINTER TO FIND_NAME_BUFFER;
        ACTION_HEADER* = RECORD [untagged]
            transport_id*: INTEGER;
            action_code*: SHORTINT;
            reserved*: SHORTINT;
        END;
        PtrACTION_HEADER* = POINTER TO ACTION_HEADER;
        u_char* = SHORTCHAR;
        u_short* = SHORTINT;
        u_int* = INTEGER;
        u_long* = INTEGER;
        SOCKET* = u_int;
        fd_set* = RECORD [untagged]
            fd_count*: u_int;
            fd_array*: ARRAY [untagged] 64 OF SOCKET;
        END;
        Ptrfd_set* = POINTER TO fd_set;
        timeval* = RECORD [untagged]
            tv_sec*: INTEGER;
            tv_usec*: INTEGER;
        END;
        Ptrtimeval* = POINTER TO timeval;
        hostent* = RECORD [untagged]
            h_name*: WinApi.PtrSTR;
            h_aliases*: POINTER TO (*?*) ARRAY [untagged] OF WinApi.PtrSTR;
            h_addrtype*: SHORTINT;
            h_length*: SHORTINT;
            h_addr_list*: POINTER TO (*?*) ARRAY [untagged] OF POINTER TO ARRAY [untagged] OF in_addr;
        END;
        Ptrhostent* = POINTER TO hostent;
        netent* = RECORD [untagged]
            n_name*: WinApi.PtrSTR;
            n_aliases*: POINTER TO (*?*) ARRAY [untagged] OF WinApi.PtrSTR;
            n_addrtype*: SHORTINT;
            n_net*: u_long;
        END;
        servent* = RECORD [untagged]
            s_name*: WinApi.PtrSTR;
            s_aliases*: POINTER TO (*?*) ARRAY [untagged] OF WinApi.PtrSTR;
            s_port*: SHORTINT;
            s_proto*: WinApi.PtrSTR;
        END;
        Ptrservent* = POINTER TO servent;
        protoent* = RECORD [untagged]
            p_name*: WinApi.PtrSTR;
            p_aliases*: POINTER TO (*?*) ARRAY [untagged] OF WinApi.PtrSTR;
            p_proto*: SHORTINT;
        END;
        Ptrprotoent* = POINTER TO protoent;
        in_addr* = RECORD [untagged]
            S_un*: RECORD [union]
                S_un_b*: RECORD [untagged]
                    s_b1*: u_char;
                    s_b2*: u_char;
                    s_b3*: u_char;
                    s_b4*: u_char;
                END;
                S_un_w*: RECORD [untagged]
                    s_w1*: u_short;
                    s_w2*: u_short;
                END;
                S_addr*: u_long;
            END;
        END;
        Ptrin_addr* = POINTER TO in_addr;
        sockaddr_in* = RECORD [untagged]
            sin_family*: SHORTINT;
            sin_port*: u_short;
            sin_addr*: in_addr;
            sin_zero*: ARRAY [untagged] 8 OF SHORTCHAR;
        END;
        Ptrsockaddr_in* = POINTER TO sockaddr_in;
        WSADATA* = RECORD [untagged]
            wVersion*: SHORTINT;
            wHighVersion*: SHORTINT;
            szDescription*: ARRAY [untagged] 257 OF SHORTCHAR;
            szSystemStatus*: ARRAY [untagged] 129 OF SHORTCHAR;
            iMaxSockets*: SHORTINT;
            iMaxUdpDg*: SHORTINT;
            lpVendorInfo*: WinApi.PtrSTR;
        END;
        PtrWSADATA* = POINTER TO WSADATA;
        sockaddr* = RECORD [untagged]
            sa_family*: u_short;
            sa_data*: ARRAY [untagged] 14 OF SHORTCHAR;
        END;
        Ptrsockaddr* = POINTER TO sockaddr;
        sockproto* = RECORD [untagged]
            sp_family*: u_short;
            sp_protocol*: u_short;
        END;
        linger* = RECORD [untagged]
            l_onoff*: u_short;
            l_linger*: u_short;
        END;
        Ptrlinger* = POINTER TO linger;
        WSAEVENT* = INTEGER;
        WSAOVERLAPPED* = RECORD [untagged]
            Internal*: INTEGER;
            InternalHigh*: INTEGER;
            Offset*: INTEGER;
            OffsetHigh*: INTEGER;
            hEvent*: WSAEVENT;
        END;
        PtrWSAOVERLAPPED* = POINTER TO WSAOVERLAPPED;
        WSABUF* = RECORD [untagged]
            len*: u_long;
            buf*: WinApi.PtrSTR;
        END;
        PtrWSABUF* = POINTER TO WSABUF;
        GUARANTEE* = INTEGER;
        int32* = INTEGER;
        FLOWSPEC* = RECORD [untagged]
            TokenRate*: int32;
            TokenBucketSize*: int32;
            PeakBandwidth*: int32;
            Latency*: int32;
            DelayVariation*: int32;
            LevelOfGuarantee*: GUARANTEE;
            CostOfCall*: int32;
            NetworkAvailability*: int32;
        END;
        PtrFLOWSPEC* = POINTER TO FLOWSPEC;
        QOS* = RECORD [untagged]
            SendingFlowspec*: WSABUF;
            ReceivingFlowspec*: WSABUF;
        END;
        PtrQOS* = POINTER TO QOS;
        GROUP* = INTEGER;
        WSANETWORKEVENTS* = RECORD [untagged]
            lNetworkEvents*: INTEGER;
            iErrorCode*: ARRAY [untagged] 8 OF INTEGER;
        END;
        PtrWSANETWORKEVENTS* = POINTER TO WSANETWORKEVENTS;
        WSAPROTOCOLCHAIN* = RECORD [untagged]
            ChainLen*: INTEGER;
            ChainEntries*: ARRAY [untagged] 8 OF INTEGER;
        END;
        PtrWSAPROTOCOLCHAIN* = POINTER TO WSAPROTOCOLCHAIN;
        WSAPROTOCOL_INFOA* = RECORD [untagged]
            dwServiceFlags1*: INTEGER;
            dwServiceFlags2*: INTEGER;
            dwServiceFlags3*: INTEGER;
            dwServiceFlags4*: INTEGER;
            dwProviderId*: INTEGER;
            dwCatalogEntryId*: INTEGER;
            ProtocolChain*: WSAPROTOCOLCHAIN;
            iVersion*: INTEGER;
            iAddressFamily*: INTEGER;
            iMaxSockAddr*: INTEGER;
            iMinSockAddr*: INTEGER;
            iSocketType*: INTEGER;
            iProtocol*: INTEGER;
            iNetworkByteOrder*: INTEGER;
            iSecurityScheme*: INTEGER;
            bMultiple*: WinApi.BOOL;
            bFirst*: WinApi.BOOL;
            dwMessageSize*: INTEGER;
            dwProviderReserved*: INTEGER;
            szProtocol*: ARRAY [untagged] 256 OF SHORTCHAR;
        END;
        PtrWSAPROTOCOL_INFOA* = POINTER TO WSAPROTOCOL_INFOA;
        WSAPROTOCOL_INFOW* = RECORD [untagged]
            dwServiceFlags1*: INTEGER;
            dwServiceFlags2*: INTEGER;
            dwServiceFlags3*: INTEGER;
            dwServiceFlags4*: INTEGER;
            dwProviderId*: INTEGER;
            dwCatalogEntryId*: INTEGER;
            ProtocolChain*: WSAPROTOCOLCHAIN;
            iVersion*: INTEGER;
            iAddressFamily*: INTEGER;
            iMaxSockAddr*: INTEGER;
            iMinSockAddr*: INTEGER;
            iSocketType*: INTEGER;
            iProtocol*: INTEGER;
            iNetworkByteOrder*: INTEGER;
            iSecurityScheme*: INTEGER;
            bMultiple*: WinApi.BOOL;
            bFirst*: WinApi.BOOL;
            dwMessageSize*: INTEGER;
            dwProviderReserved*: INTEGER;
            szProtocol*: ARRAY [untagged] 256 OF CHAR;
        END;
        PtrWSAPROTOCOL_INFOW* = POINTER TO WSAPROTOCOL_INFOW;
        WSAPROTOCOL_INFO* = WSAPROTOCOL_INFOA;
        PtrWSAPROTOCOL_INFO* = PtrWSAPROTOCOL_INFOA;
        CONDITIONPROC* = PROCEDURE (VAR [nil] lpCallerId: WSABUF; VAR [nil] lpCallerData: WSABUF; VAR [nil] lpSQOS: QOS; VAR [nil] lpGQOS: QOS; VAR [nil] lpCalleeId: WSABUF; VAR [nil] lpCalleeData: WSABUF; VAR [nil] g: GROUP; dwCallbackData: INTEGER): INTEGER;
        WSAOVERLAPPED_COMPLETION_ROUTINE* = PROCEDURE (dwError: INTEGER; cbTransferred: INTEGER; VAR [nil] lpOverlapped: WSAOVERLAPPED; dwFlags: SET);
        SOCKADDR* = sockaddr;
        PtrSOCKADDR* = Ptrsockaddr;
        SOCKADDR_IN* = sockaddr_in;
        PtrSOCKADDR_IN* = Ptrsockaddr_in;
        LINGER* = linger;
        PtrLINGER* = Ptrlinger;
        IN_ADDR* = in_addr;
        PtrIN_ADDR* = Ptrin_addr;
        FD_SET* = fd_set;
        PtrFD_SET* = Ptrfd_set;
        HOSTENT* = hostent;
        PtrHOSTENT* = Ptrhostent;
        SERVENT* = servent;
        PtrSERVENT* = Ptrservent;
        PROTOENT* = protoent;
        PtrPROTOENT* = Ptrprotoent;
        TIMEVAL* = timeval;
        PtrTIMEVAL* = Ptrtimeval;
        TRANSMIT_FILE_BUFFERS* = RECORD [untagged]
            Head*: WinApi.PtrVoid;
            HeadLength*: INTEGER;
            Tail*: WinApi.PtrVoid;
            TailLength*: INTEGER;
        END;
        PtrTRANSMIT_FILE_BUFFERS* = POINTER TO TRANSMIT_FILE_BUFFERS;

    PROCEDURE WNetAddConnectionA* (lpRemoteName: WinApi.PtrSTR; lpPassword: WinApi.PtrSTR; lpLocalName: WinApi.PtrSTR): INTEGER;
    (*END WNetAddConnectionA;*)

    PROCEDURE WNetAddConnectionW* (lpRemoteName: WinApi.PtrWSTR; lpPassword: WinApi.PtrWSTR; lpLocalName: WinApi.PtrWSTR): INTEGER;
    (*END WNetAddConnectionW;*)

    PROCEDURE WNetAddConnection* ["WNetAddConnectionA"] (lpRemoteName: WinApi.PtrSTR; lpPassword: WinApi.PtrSTR; lpLocalName: WinApi.PtrSTR): INTEGER;
    (*END WNetAddConnection;*)

    PROCEDURE WNetAddConnection2A* (VAR [nil] lpNetResource: NETRESOURCEA; lpPassword: WinApi.PtrSTR; lpUserName: WinApi.PtrSTR; dwFlags: SET): INTEGER;
    (*END WNetAddConnection2A;*)

    PROCEDURE WNetAddConnection2W* (VAR [nil] lpNetResource: NETRESOURCEW; lpPassword: WinApi.PtrWSTR; lpUserName: WinApi.PtrWSTR; dwFlags: SET): INTEGER;
    (*END WNetAddConnection2W;*)

    PROCEDURE WNetAddConnection2* ["WNetAddConnection2A"] (VAR [nil] lpNetResource: NETRESOURCEA; lpPassword: WinApi.PtrSTR; lpUserName: WinApi.PtrSTR; dwFlags: SET): INTEGER;
    (*END WNetAddConnection2;*)

    PROCEDURE WNetAddConnection3A* (hwndOwner: WinApi.HWND; VAR [nil] lpNetResource: NETRESOURCEA; lpPassword: WinApi.PtrSTR; lpUserName: WinApi.PtrSTR; dwFlags: SET): INTEGER;
    (*END WNetAddConnection3A;*)

    PROCEDURE WNetAddConnection3W* (hwndOwner: WinApi.HWND; VAR [nil] lpNetResource: NETRESOURCEW; lpPassword: WinApi.PtrWSTR; lpUserName: WinApi.PtrWSTR; dwFlags: SET): INTEGER;
    (*END WNetAddConnection3W;*)

    PROCEDURE WNetAddConnection3* ["WNetAddConnection3A"] (hwndOwner: WinApi.HWND; VAR [nil] lpNetResource: NETRESOURCEA; lpPassword: WinApi.PtrSTR; lpUserName: WinApi.PtrSTR; dwFlags: SET): INTEGER;
    (*END WNetAddConnection3;*)

    PROCEDURE WNetCancelConnectionA* (lpName: WinApi.PtrSTR; fForce: WinApi.BOOL): INTEGER;
    (*END WNetCancelConnectionA;*)

    PROCEDURE WNetCancelConnectionW* (lpName: WinApi.PtrWSTR; fForce: WinApi.BOOL): INTEGER;
    (*END WNetCancelConnectionW;*)

    PROCEDURE WNetCancelConnection* ["WNetCancelConnectionA"] (lpName: WinApi.PtrSTR; fForce: WinApi.BOOL): INTEGER;
    (*END WNetCancelConnection;*)

    PROCEDURE WNetCancelConnection2A* (lpName: WinApi.PtrSTR; dwFlags: SET; fForce: WinApi.BOOL): INTEGER;
    (*END WNetCancelConnection2A;*)

    PROCEDURE WNetCancelConnection2W* (lpName: WinApi.PtrWSTR; dwFlags: SET; fForce: WinApi.BOOL): INTEGER;
    (*END WNetCancelConnection2W;*)

    PROCEDURE WNetCancelConnection2* ["WNetCancelConnection2A"] (lpName: WinApi.PtrSTR; dwFlags: SET; fForce: WinApi.BOOL): INTEGER;
    (*END WNetCancelConnection2;*)

    PROCEDURE WNetGetConnectionA* (lpLocalName: WinApi.PtrSTR; lpRemoteName: WinApi.PtrSTR; VAR [nil] lpnLength: INTEGER): INTEGER;
    (*END WNetGetConnectionA;*)

    PROCEDURE WNetGetConnectionW* (lpLocalName: WinApi.PtrWSTR; lpRemoteName: WinApi.PtrWSTR; VAR [nil] lpnLength: INTEGER): INTEGER;
    (*END WNetGetConnectionW;*)

    PROCEDURE WNetGetConnection* ["WNetGetConnectionA"] (lpLocalName: WinApi.PtrSTR; lpRemoteName: WinApi.PtrSTR; VAR [nil] lpnLength: INTEGER): INTEGER;
    (*END WNetGetConnection;*)

    PROCEDURE WNetUseConnectionA* (hwndOwner: WinApi.HWND; VAR [nil] lpNetResource: NETRESOURCEA; lpUserID: WinApi.PtrSTR; lpPassword: WinApi.PtrSTR; dwFlags: SET; lpAccessName: WinApi.PtrSTR; VAR [nil] lpBufferSize: INTEGER; VAR [nil] lpResult: INTEGER): INTEGER;
    (*END WNetUseConnectionA;*)

    PROCEDURE WNetUseConnectionW* (hwndOwner: WinApi.HWND; VAR [nil] lpNetResource: NETRESOURCEW; lpUserID: WinApi.PtrWSTR; lpPassword: WinApi.PtrWSTR; dwFlags: SET; lpAccessName: WinApi.PtrWSTR; VAR [nil] lpBufferSize: INTEGER; VAR [nil] lpResult: INTEGER): INTEGER;
    (*END WNetUseConnectionW;*)

    PROCEDURE WNetUseConnection* ["WNetUseConnectionA"] (hwndOwner: WinApi.HWND; VAR [nil] lpNetResource: NETRESOURCEA; lpUserID: WinApi.PtrSTR; lpPassword: WinApi.PtrSTR; dwFlags: SET; lpAccessName: WinApi.PtrSTR; VAR [nil] lpBufferSize: INTEGER; VAR [nil] lpResult: INTEGER): INTEGER;
    (*END WNetUseConnection;*)

    PROCEDURE WNetSetConnectionA* (lpName: WinApi.PtrSTR; dwProperties: INTEGER; pvValues: WinApi.PtrVoid): INTEGER;
    (*END WNetSetConnectionA;*)

    PROCEDURE WNetSetConnectionW* (lpName: WinApi.PtrWSTR; dwProperties: INTEGER; pvValues: WinApi.PtrVoid): INTEGER;
    (*END WNetSetConnectionW;*)

    PROCEDURE WNetSetConnection* ["WNetSetConnectionA"] (lpName: WinApi.PtrSTR; dwProperties: INTEGER; pvValues: WinApi.PtrVoid): INTEGER;
    (*END WNetSetConnection;*)

    PROCEDURE WNetConnectionDialog* (hwnd: WinApi.HWND; dwType: INTEGER): INTEGER;
    (*END WNetConnectionDialog;*)

    PROCEDURE WNetDisconnectDialog* (hwnd: WinApi.HWND; dwType: INTEGER): INTEGER;
    (*END WNetDisconnectDialog;*)

    PROCEDURE WNetConnectionDialog1A* (VAR [nil] lpConnDlgStruct: CONNECTDLGSTRUCTA): INTEGER;
    (*END WNetConnectionDialog1A;*)

    PROCEDURE WNetConnectionDialog1W* (VAR [nil] lpConnDlgStruct: CONNECTDLGSTRUCTW): INTEGER;
    (*END WNetConnectionDialog1W;*)

    PROCEDURE WNetConnectionDialog1* ["WNetConnectionDialog1A"] (VAR [nil] lpConnDlgStruct: CONNECTDLGSTRUCTA): INTEGER;
    (*END WNetConnectionDialog1;*)

    PROCEDURE WNetDisconnectDialog1A* (VAR [nil] lpConnDlgStruct: DISCDLGSTRUCTA): INTEGER;
    (*END WNetDisconnectDialog1A;*)

    PROCEDURE WNetDisconnectDialog1W* (VAR [nil] lpConnDlgStruct: DISCDLGSTRUCTW): INTEGER;
    (*END WNetDisconnectDialog1W;*)

    PROCEDURE WNetDisconnectDialog1* ["WNetDisconnectDialog1A"] (VAR [nil] lpConnDlgStruct: DISCDLGSTRUCTA): INTEGER;
    (*END WNetDisconnectDialog1;*)

    PROCEDURE WNetOpenEnumA* (dwScope: INTEGER; dwType: INTEGER; dwUsage: INTEGER; VAR [nil] lpNetResource: NETRESOURCEA; VAR [nil] lphEnum: WinApi.HANDLE): INTEGER;
    (*END WNetOpenEnumA;*)

    PROCEDURE WNetOpenEnumW* (dwScope: INTEGER; dwType: INTEGER; dwUsage: INTEGER; VAR [nil] lpNetResource: NETRESOURCEW; VAR [nil] lphEnum: WinApi.HANDLE): INTEGER;
    (*END WNetOpenEnumW;*)

    PROCEDURE WNetOpenEnum* ["WNetOpenEnumA"] (dwScope: INTEGER; dwType: INTEGER; dwUsage: INTEGER; VAR [nil] lpNetResource: NETRESOURCEA; VAR [nil] lphEnum: WinApi.HANDLE): INTEGER;
    (*END WNetOpenEnum;*)

    PROCEDURE WNetEnumResourceA* (hEnum: WinApi.HANDLE; VAR [nil] lpcCount: INTEGER; lpBuffer: WinApi.PtrVoid; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetEnumResourceA;*)

    PROCEDURE WNetEnumResourceW* (hEnum: WinApi.HANDLE; VAR [nil] lpcCount: INTEGER; lpBuffer: WinApi.PtrVoid; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetEnumResourceW;*)

    PROCEDURE WNetEnumResource* ["WNetEnumResourceA"] (hEnum: WinApi.HANDLE; VAR [nil] lpcCount: INTEGER; lpBuffer: WinApi.PtrVoid; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetEnumResource;*)

    PROCEDURE WNetCloseEnum* (hEnum: WinApi.HANDLE): INTEGER;
    (*END WNetCloseEnum;*)

    PROCEDURE WNetGetResourceParentA* (VAR [nil] lpNetResource: NETRESOURCEA; lpBuffer: WinApi.PtrVoid; VAR [nil] cbBuffer: INTEGER): INTEGER;
    (*END WNetGetResourceParentA;*)

    PROCEDURE WNetGetResourceParentW* (VAR [nil] lpNetResource: NETRESOURCEW; lpBuffer: WinApi.PtrVoid; VAR [nil] cbBuffer: INTEGER): INTEGER;
    (*END WNetGetResourceParentW;*)

    PROCEDURE WNetGetResourceParent* ["WNetGetResourceParentA"] (VAR [nil] lpNetResource: NETRESOURCEA; lpBuffer: WinApi.PtrVoid; VAR [nil] cbBuffer: INTEGER): INTEGER;
    (*END WNetGetResourceParent;*)

    PROCEDURE WNetGetResourceInformationA* (VAR [nil] lpNetResource: NETRESOURCEA; lpBuffer: WinApi.PtrVoid; VAR [nil] cbBuffer: INTEGER; VAR [nil] lplpSystem: WinApi.PtrSTR): INTEGER;
    (*END WNetGetResourceInformationA;*)

    PROCEDURE WNetGetResourceInformationW* (VAR [nil] lpNetResource: NETRESOURCEW; lpBuffer: WinApi.PtrVoid; VAR [nil] cbBuffer: INTEGER; VAR [nil] lplpSystem: WinApi.PtrWSTR): INTEGER;
    (*END WNetGetResourceInformationW;*)

    PROCEDURE WNetGetResourceInformation* ["WNetGetResourceInformationA"] (VAR [nil] lpNetResource: NETRESOURCEA; lpBuffer: WinApi.PtrVoid; VAR [nil] cbBuffer: INTEGER; VAR [nil] lplpSystem: WinApi.PtrSTR): INTEGER;
    (*END WNetGetResourceInformation;*)

    PROCEDURE WNetGetUniversalNameA* (lpLocalPath: WinApi.PtrSTR; dwInfoLevel: INTEGER; lpBuffer: WinApi.PtrVoid; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetGetUniversalNameA;*)

    PROCEDURE WNetGetUniversalNameW* (lpLocalPath: WinApi.PtrWSTR; dwInfoLevel: INTEGER; lpBuffer: WinApi.PtrVoid; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetGetUniversalNameW;*)

    PROCEDURE WNetGetUniversalName* ["WNetGetUniversalNameA"] (lpLocalPath: WinApi.PtrSTR; dwInfoLevel: INTEGER; lpBuffer: WinApi.PtrVoid; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetGetUniversalName;*)

    PROCEDURE WNetGetUserA* (lpName: WinApi.PtrSTR; lpUserName: WinApi.PtrSTR; VAR [nil] lpnLength: INTEGER): INTEGER;
    (*END WNetGetUserA;*)

    PROCEDURE WNetGetUserW* (lpName: WinApi.PtrWSTR; lpUserName: WinApi.PtrWSTR; VAR [nil] lpnLength: INTEGER): INTEGER;
    (*END WNetGetUserW;*)

    PROCEDURE WNetGetUser* ["WNetGetUserA"] (lpName: WinApi.PtrSTR; lpUserName: WinApi.PtrSTR; VAR [nil] lpnLength: INTEGER): INTEGER;
    (*END WNetGetUser;*)

    PROCEDURE WNetGetProviderNameA* (dwNetType: INTEGER; lpProviderName: WinApi.PtrSTR; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetGetProviderNameA;*)

    PROCEDURE WNetGetProviderNameW* (dwNetType: INTEGER; lpProviderName: WinApi.PtrWSTR; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetGetProviderNameW;*)

    PROCEDURE WNetGetProviderName* ["WNetGetProviderNameA"] (dwNetType: INTEGER; lpProviderName: WinApi.PtrSTR; VAR [nil] lpBufferSize: INTEGER): INTEGER;
    (*END WNetGetProviderName;*)

    PROCEDURE WNetGetNetworkInformationA* (lpProvider: WinApi.PtrSTR; VAR [nil] lpNetInfoStruct: NETINFOSTRUCT): INTEGER;
    (*END WNetGetNetworkInformationA;*)

    PROCEDURE WNetGetNetworkInformationW* (lpProvider: WinApi.PtrWSTR; VAR [nil] lpNetInfoStruct: NETINFOSTRUCT): INTEGER;
    (*END WNetGetNetworkInformationW;*)

    PROCEDURE WNetGetNetworkInformation* ["WNetGetNetworkInformationA"] (lpProvider: WinApi.PtrSTR; VAR [nil] lpNetInfoStruct: NETINFOSTRUCT): INTEGER;
    (*END WNetGetNetworkInformation;*)

    PROCEDURE WNetGetLastErrorA* (VAR [nil] lpError: INTEGER; lpErrorBuf: WinApi.PtrSTR; nErrorBufSize: INTEGER; lpNameBuf: WinApi.PtrSTR; nNameBufSize: INTEGER): INTEGER;
    (*END WNetGetLastErrorA;*)

    PROCEDURE WNetGetLastErrorW* (VAR [nil] lpError: INTEGER; lpErrorBuf: WinApi.PtrWSTR; nErrorBufSize: INTEGER; lpNameBuf: WinApi.PtrWSTR; nNameBufSize: INTEGER): INTEGER;
    (*END WNetGetLastErrorW;*)

    PROCEDURE WNetGetLastError* ["WNetGetLastErrorA"] (VAR [nil] lpError: INTEGER; lpErrorBuf: WinApi.PtrSTR; nErrorBufSize: INTEGER; lpNameBuf: WinApi.PtrSTR; nNameBufSize: INTEGER): INTEGER;
    (*END WNetGetLastError;*)

    PROCEDURE MultinetGetConnectionPerformanceA* (VAR [nil] lpNetResource: NETRESOURCEA; VAR [nil] lpNetConnectInfoStruct: NETCONNECTINFOSTRUCT): INTEGER;
    (*END MultinetGetConnectionPerformanceA;*)

    PROCEDURE MultinetGetConnectionPerformanceW* (VAR [nil] lpNetResource: NETRESOURCEW; VAR [nil] lpNetConnectInfoStruct: NETCONNECTINFOSTRUCT): INTEGER;
    (*END MultinetGetConnectionPerformanceW;*)

    PROCEDURE MultinetGetConnectionPerformance* ["MultinetGetConnectionPerformanceA"] (VAR [nil] lpNetResource: NETRESOURCEA; VAR [nil] lpNetConnectInfoStruct: NETCONNECTINFOSTRUCT): INTEGER;
    (*END MultinetGetConnectionPerformance;*)

    PROCEDURE Netbios* ["NETAPI32.dll", ""] (VAR [nil] pncb: NCB): SHORTCHAR;
    (*END Netbios;*)

    PROCEDURE __WSAFDIsSet* ["WSOCK32.dll", ""] (p0: SOCKET; VAR [nil] p1: fd_set): INTEGER;
    (*END __WSAFDIsSet;*)

    PROCEDURE accept* ["WSOCK32.dll", ""] (s: SOCKET; VAR [nil] addr: sockaddr; VAR [nil] addrlen: INTEGER): SOCKET;
    (*END accept;*)

    PROCEDURE bind* ["WSOCK32.dll", ""] (s: SOCKET; VAR [nil] name: sockaddr; namelen: INTEGER): INTEGER;
    (*END bind;*)

    PROCEDURE closesocket* ["WSOCK32.dll", ""] (s: SOCKET): INTEGER;
    (*END closesocket;*)

    PROCEDURE connect* ["WSOCK32.dll", ""] (s: SOCKET; VAR [nil] name: sockaddr; namelen: INTEGER): INTEGER;
    (*END connect;*)

    PROCEDURE ioctlsocket* ["WSOCK32.dll", ""] (s: SOCKET; cmd: INTEGER; VAR [nil] argp: u_long): INTEGER;
    (*END ioctlsocket;*)

    PROCEDURE getpeername* ["WSOCK32.dll", ""] (s: SOCKET; VAR [nil] name: sockaddr; VAR [nil] namelen: INTEGER): INTEGER;
    (*END getpeername;*)

    PROCEDURE getsockname* ["WSOCK32.dll", ""] (s: SOCKET; VAR [nil] name: sockaddr; VAR [nil] namelen: INTEGER): INTEGER;
    (*END getsockname;*)

    PROCEDURE getsockopt* ["WSOCK32.dll", ""] (s: SOCKET; level: INTEGER; optname: INTEGER; optval: WinApi.PtrSTR; VAR [nil] optlen: INTEGER): INTEGER;
    (*END getsockopt;*)

    PROCEDURE htonl* ["WSOCK32.dll", ""] (hostlong: u_long): u_long;
    (*END htonl;*)

    PROCEDURE htons* ["WSOCK32.dll", ""] (hostshort: u_short): u_short;
    (*END htons;*)

    PROCEDURE inet_addr* ["WSOCK32.dll", ""] (cp: WinApi.PtrSTR): INTEGER;
    (*END inet_addr;*)

    PROCEDURE inet_ntoa* ["WSOCK32.dll", ""] (in: in_addr): WinApi.PtrSTR;
    (*END inet_ntoa;*)

    PROCEDURE listen* ["WSOCK32.dll", ""] (s: SOCKET; backlog: INTEGER): INTEGER;
    (*END listen;*)

    PROCEDURE ntohl* ["WSOCK32.dll", ""] (netlong: u_long): u_long;
    (*END ntohl;*)

    PROCEDURE ntohs* ["WSOCK32.dll", ""] (netshort: u_short): u_short;
    (*END ntohs;*)

    PROCEDURE recv* ["WSOCK32.dll", ""] (s: SOCKET; buf: WinApi.PtrSTR; len: INTEGER; flags: SET): INTEGER;
    (*END recv;*)

    PROCEDURE recvfrom* ["WSOCK32.dll", ""] (s: SOCKET; buf: WinApi.PtrSTR; len: INTEGER; flags: SET; VAR [nil] from: sockaddr; VAR [nil] fromlen: INTEGER): INTEGER;
    (*END recvfrom;*)

    PROCEDURE select* ["WSOCK32.dll", ""] (nfds: INTEGER; VAR [nil] readfds: fd_set; VAR [nil] writefds: fd_set; VAR [nil] exceptfds: fd_set; VAR [nil] timeout: timeval): INTEGER;
    (*END select;*)

    PROCEDURE send* ["WSOCK32.dll", ""] (s: SOCKET; buf: WinApi.PtrSTR; len: INTEGER; flags: SET): INTEGER;
    (*END send;*)

    PROCEDURE sendto* ["WSOCK32.dll", ""] (s: SOCKET; buf: WinApi.PtrSTR; len: INTEGER; flags: SET; VAR [nil] to: sockaddr; tolen: INTEGER): INTEGER;
    (*END sendto;*)

    PROCEDURE setsockopt* ["WSOCK32.dll", ""] (s: SOCKET; level: INTEGER; optname: INTEGER; optval: WinApi.PtrSTR; optlen: INTEGER): INTEGER;
    (*END setsockopt;*)

    PROCEDURE shutdown* ["WSOCK32.dll", ""] (s: SOCKET; how: INTEGER): INTEGER;
    (*END shutdown;*)

    PROCEDURE socket* ["WSOCK32.dll", ""] (af: INTEGER; type: INTEGER; protocol: INTEGER): SOCKET;
    (*END socket;*)

    PROCEDURE gethostbyaddr* ["WSOCK32.dll", ""] (addr: WinApi.PtrSTR; len: INTEGER; type: INTEGER): Ptrhostent;
    (*END gethostbyaddr;*)

    PROCEDURE gethostbyname* ["WSOCK32.dll", ""] (name: WinApi.PtrSTR): Ptrhostent;
    (*END gethostbyname;*)

    PROCEDURE gethostname* ["WSOCK32.dll", ""] (name: WinApi.PtrSTR; namelen: INTEGER): INTEGER;
    (*END gethostname;*)

    PROCEDURE getservbyport* ["WSOCK32.dll", ""] (port: INTEGER; proto: WinApi.PtrSTR): Ptrservent;
    (*END getservbyport;*)

    PROCEDURE getservbyname* ["WSOCK32.dll", ""] (name: WinApi.PtrSTR; proto: WinApi.PtrSTR): Ptrservent;
    (*END getservbyname;*)

    PROCEDURE getprotobynumber* ["WSOCK32.dll", ""] (number: INTEGER): Ptrprotoent;
    (*END getprotobynumber;*)

    PROCEDURE getprotobyname* ["WSOCK32.dll", ""] (name: WinApi.PtrSTR): Ptrprotoent;
    (*END getprotobyname;*)

    PROCEDURE WSAStartup* ["WSOCK32.dll", ""] (wVersionRequested: SHORTINT; VAR [nil] lpWSAData: WSADATA): INTEGER;
    (*END WSAStartup;*)

    PROCEDURE WSACleanup* ["WSOCK32.dll", ""] (): INTEGER;
    (*END WSACleanup;*)

    PROCEDURE WSASetLastError* ["WSOCK32.dll", ""] (iError: INTEGER);
    (*END WSASetLastError;*)

    PROCEDURE WSAGetLastError* ["WSOCK32.dll", ""] (): INTEGER;
    (*END WSAGetLastError;*)

    PROCEDURE WSAIsBlocking* ["WSOCK32.dll", ""] (): WinApi.BOOL;
    (*END WSAIsBlocking;*)

    PROCEDURE WSAUnhookBlockingHook* ["WSOCK32.dll", ""] (): INTEGER;
    (*END WSAUnhookBlockingHook;*)

    PROCEDURE WSASetBlockingHook* ["WSOCK32.dll", ""] (lpBlockFunc: WinApi.FARPROC): WinApi.FARPROC;
    (*END WSASetBlockingHook;*)

    PROCEDURE WSACancelBlockingCall* ["WSOCK32.dll", ""] (): INTEGER;
    (*END WSACancelBlockingCall;*)

    PROCEDURE WSAAsyncGetServByName* ["WSOCK32.dll", ""] (hWnd: WinApi.HWND; wMsg: u_int; name: WinApi.PtrSTR; proto: WinApi.PtrSTR; buf: WinApi.PtrSTR; buflen: INTEGER): WinApi.HANDLE;
    (*END WSAAsyncGetServByName;*)

    PROCEDURE WSAAsyncGetServByPort* ["WSOCK32.dll", ""] (hWnd: WinApi.HWND; wMsg: u_int; port: INTEGER; proto: WinApi.PtrSTR; buf: WinApi.PtrSTR; buflen: INTEGER): WinApi.HANDLE;
    (*END WSAAsyncGetServByPort;*)

    PROCEDURE WSAAsyncGetProtoByName* ["WSOCK32.dll", ""] (hWnd: WinApi.HWND; wMsg: u_int; name: WinApi.PtrSTR; buf: WinApi.PtrSTR; buflen: INTEGER): WinApi.HANDLE;
    (*END WSAAsyncGetProtoByName;*)

    PROCEDURE WSAAsyncGetProtoByNumber* ["WSOCK32.dll", ""] (hWnd: WinApi.HWND; wMsg: u_int; number: INTEGER; buf: WinApi.PtrSTR; buflen: INTEGER): WinApi.HANDLE;
    (*END WSAAsyncGetProtoByNumber;*)

    PROCEDURE WSAAsyncGetHostByName* ["WSOCK32.dll", ""] (hWnd: WinApi.HWND; wMsg: u_int; name: WinApi.PtrSTR; buf: WinApi.PtrSTR; buflen: INTEGER): WinApi.HANDLE;
    (*END WSAAsyncGetHostByName;*)

    PROCEDURE WSAAsyncGetHostByAddr* ["WSOCK32.dll", ""] (hWnd: WinApi.HWND; wMsg: u_int; addr: WinApi.PtrSTR; len: INTEGER; type: INTEGER; buf: WinApi.PtrSTR; buflen: INTEGER): WinApi.HANDLE;
    (*END WSAAsyncGetHostByAddr;*)

    PROCEDURE WSACancelAsyncRequest* ["WSOCK32.dll", ""] (hAsyncTaskHandle: WinApi.HANDLE): INTEGER;
    (*END WSACancelAsyncRequest;*)

    PROCEDURE WSAAsyncSelect* ["WSOCK32.dll", ""] (s: SOCKET; hWnd: WinApi.HWND; wMsg: u_int; lEvent: INTEGER): INTEGER;
    (*END WSAAsyncSelect;*)

    PROCEDURE WSAAccept* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] addr: sockaddr; VAR [nil] addrlen: INTEGER; lpfnCondition: CONDITIONPROC; dwCallbackData: INTEGER): SOCKET;
    (*END WSAAccept;*)

    PROCEDURE WSACloseEvent* ["WS2_32.dll", ""] (hEvent: WSAEVENT): WinApi.BOOL;
    (*END WSACloseEvent;*)

    PROCEDURE WSAConnect* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] name: sockaddr; namelen: INTEGER; VAR [nil] lpCallerData: WSABUF; VAR [nil] lpCalleeData: WSABUF; VAR [nil] lpSQOS: QOS; VAR [nil] lpGQOS: QOS): INTEGER;
    (*END WSAConnect;*)

    PROCEDURE WSACreateEvent* ["WS2_32.dll", ""] (): WSAEVENT;
    (*END WSACreateEvent;*)

    PROCEDURE WSADuplicateSocketA* ["WS2_32.dll", ""] (s: SOCKET; dwProcessId: INTEGER; VAR [nil] lpProtocolInfo: WSAPROTOCOL_INFOA): INTEGER;
    (*END WSADuplicateSocketA;*)

    PROCEDURE WSADuplicateSocketW* ["WS2_32.dll", ""] (s: SOCKET; dwProcessId: INTEGER; VAR [nil] lpProtocolInfo: WSAPROTOCOL_INFOW): INTEGER;
    (*END WSADuplicateSocketW;*)

    PROCEDURE WSADuplicateSocket* ["WS2_32.dll", "WSADuplicateSocketA"] (s: SOCKET; dwProcessId: INTEGER; VAR [nil] lpProtocolInfo: WSAPROTOCOL_INFOA): INTEGER;
    (*END WSADuplicateSocket;*)

    PROCEDURE WSAEnumNetworkEvents* ["WS2_32.dll", ""] (s: SOCKET; hEventObject: WSAEVENT; VAR [nil] lpNetworkEvents: WSANETWORKEVENTS): INTEGER;
    (*END WSAEnumNetworkEvents;*)

    PROCEDURE WSAEnumProtocolsA* ["WS2_32.dll", ""] (VAR [nil] lpiProtocols: INTEGER; VAR [nil] lpProtocolBuffer: WSAPROTOCOL_INFOA; VAR [nil] lpdwBufferLength: INTEGER): INTEGER;
    (*END WSAEnumProtocolsA;*)

    PROCEDURE WSAEnumProtocolsW* ["WS2_32.dll", ""] (VAR [nil] lpiProtocols: INTEGER; VAR [nil] lpProtocolBuffer: WSAPROTOCOL_INFOW; VAR [nil] lpdwBufferLength: INTEGER): INTEGER;
    (*END WSAEnumProtocolsW;*)

    PROCEDURE WSAEnumProtocols* ["WS2_32.dll", "WSAEnumProtocolsA"] (VAR [nil] lpiProtocols: INTEGER; VAR [nil] lpProtocolBuffer: WSAPROTOCOL_INFOA; VAR [nil] lpdwBufferLength: INTEGER): INTEGER;
    (*END WSAEnumProtocols;*)

    PROCEDURE WSAEventSelect* ["WS2_32.dll", ""] (s: SOCKET; hEventObject: WSAEVENT; lNetworkEvents: INTEGER): INTEGER;
    (*END WSAEventSelect;*)

    PROCEDURE WSAGetOverlappedResult* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpOverlapped: WSAOVERLAPPED; VAR [nil] lpcbTransfer: INTEGER; fWait: WinApi.BOOL; VAR [nil] lpdwFlags: SET): WinApi.BOOL;
    (*END WSAGetOverlappedResult;*)

    PROCEDURE WSAGetQOSByName* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpQOSName: WSABUF; VAR [nil] lpQOS: QOS): WinApi.BOOL;
    (*END WSAGetQOSByName;*)

    PROCEDURE WSAHtonl* ["WS2_32.dll", ""] (s: SOCKET; hostlong: u_long; VAR [nil] lpnetlong: u_long): INTEGER;
    (*END WSAHtonl;*)

    PROCEDURE WSAHtons* ["WS2_32.dll", ""] (s: SOCKET; hostshort: u_short; VAR [nil] lpnetshort: u_short): INTEGER;
    (*END WSAHtons;*)

    PROCEDURE WSAIoctl* ["WS2_32.dll", ""] (s: SOCKET; dwIoControlCode: INTEGER; lpvInBuffer: WinApi.PtrVoid; cbInBuffer: INTEGER; lpvOutBuffer: WinApi.PtrVoid; cbOutBuffer: INTEGER; VAR [nil] lpcbBytesReturned: INTEGER; VAR [nil] lpOverlapped: WSAOVERLAPPED; lpCompletionRoutine: WSAOVERLAPPED_COMPLETION_ROUTINE): INTEGER;
    (*END WSAIoctl;*)

    PROCEDURE WSAJoinLeaf* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] name: sockaddr; namelen: INTEGER; VAR [nil] lpCallerData: WSABUF; VAR [nil] lpCalleeData: WSABUF; VAR [nil] lpSQOS: QOS; VAR [nil] lpGQOS: QOS; dwFlags: SET): SOCKET;
    (*END WSAJoinLeaf;*)

    PROCEDURE WSANtohl* ["WS2_32.dll", ""] (s: SOCKET; netlong: u_long; VAR [nil] lphostlong: u_long): INTEGER;
    (*END WSANtohl;*)

    PROCEDURE WSANtohs* ["WS2_32.dll", ""] (s: SOCKET; netshort: u_short; VAR [nil] lphostshort: u_short): INTEGER;
    (*END WSANtohs;*)

    PROCEDURE WSARecv* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpBuffers: WSABUF; dwBufferCount: INTEGER; VAR [nil] lpNumberOfBytesRecvd: INTEGER; VAR [nil] lpFlags: INTEGER; VAR [nil] lpOverlapped: WSAOVERLAPPED; lpCompletionRoutine: WSAOVERLAPPED_COMPLETION_ROUTINE): INTEGER;
    (*END WSARecv;*)

    PROCEDURE WSARecvDisconnect* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpInboundDisconnectData: WSABUF): INTEGER;
    (*END WSARecvDisconnect;*)

    PROCEDURE WSARecvFrom* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpBuffers: WSABUF; dwBufferCount: INTEGER; VAR [nil] lpNumberOfBytesRecvd: INTEGER; VAR [nil] lpFlags: INTEGER; VAR [nil] lpFrom: sockaddr; VAR [nil] lpFromlen: INTEGER; VAR [nil] lpOverlapped: WSAOVERLAPPED; lpCompletionRoutine: WSAOVERLAPPED_COMPLETION_ROUTINE): INTEGER;
    (*END WSARecvFrom;*)

    PROCEDURE WSAResetEvent* ["WS2_32.dll", ""] (hEvent: WSAEVENT): WinApi.BOOL;
    (*END WSAResetEvent;*)

    PROCEDURE WSASend* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpBuffers: WSABUF; dwBufferCount: INTEGER; VAR [nil] lpNumberOfBytesSent: INTEGER; dwFlags: SET; VAR [nil] lpOverlapped: WSAOVERLAPPED; lpCompletionRoutine: WSAOVERLAPPED_COMPLETION_ROUTINE): INTEGER;
    (*END WSASend;*)

    PROCEDURE WSASendDisconnect* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpOutboundDisconnectData: WSABUF): INTEGER;
    (*END WSASendDisconnect;*)

    PROCEDURE WSASendTo* ["WS2_32.dll", ""] (s: SOCKET; VAR [nil] lpBuffers: WSABUF; dwBufferCount: INTEGER; VAR [nil] lpNumberOfBytesSent: INTEGER; dwFlags: SET; VAR [nil] lpTo: sockaddr; iTolen: INTEGER; VAR [nil] lpOverlapped: WSAOVERLAPPED; lpCompletionRoutine: WSAOVERLAPPED_COMPLETION_ROUTINE): INTEGER;
    (*END WSASendTo;*)

    PROCEDURE WSASetEvent* ["WS2_32.dll", ""] (hEvent: WSAEVENT): WinApi.BOOL;
    (*END WSASetEvent;*)

    PROCEDURE WSASocketA* ["WS2_32.dll", ""] (af: INTEGER; type: INTEGER; protocol: INTEGER; VAR [nil] lpProtocolInfo: WSAPROTOCOL_INFOA; g: GROUP; dwFlags: SET): SOCKET;
    (*END WSASocketA;*)

    PROCEDURE WSASocketW* ["WS2_32.dll", ""] (af: INTEGER; type: INTEGER; protocol: INTEGER; VAR [nil] lpProtocolInfo: WSAPROTOCOL_INFOW; g: GROUP; dwFlags: SET): SOCKET;
    (*END WSASocketW;*)

    PROCEDURE WSASocket* ["WS2_32.dll", "WSASocketA"] (af: INTEGER; type: INTEGER; protocol: INTEGER; VAR [nil] lpProtocolInfo: WSAPROTOCOL_INFOA; g: GROUP; dwFlags: SET): SOCKET;
    (*END WSASocket;*)

    PROCEDURE WSAWaitForMultipleEvents* ["WS2_32.dll", ""] (cEvents: INTEGER; VAR [nil] lphEvents: WSAEVENT; fWaitAll: WinApi.BOOL; dwTimeout: INTEGER; fAlertable: WinApi.BOOL): INTEGER;
    (*END WSAWaitForMultipleEvents;*)

    PROCEDURE WSARecvEx* ["WSOCK32.dll", ""] (s: SOCKET; buf: WinApi.PtrSTR; len: INTEGER; VAR [nil] flags: SET): INTEGER;
    (*END WSARecvEx;*)

    PROCEDURE TransmitFile* ["WSOCK32.dll", ""] (hSocket: SOCKET; hFile: WinApi.HANDLE; nNumberOfBytesToWrite: INTEGER; nNumberOfBytesPerSend: INTEGER; VAR [nil] lpOverlapped: WinApi.OVERLAPPED; VAR [nil] lpTransmitBuffers: TRANSMIT_FILE_BUFFERS; dwReserved: INTEGER): WinApi.BOOL;
    (*END TransmitFile;*)

    PROCEDURE AcceptEx* ["WSOCK32.dll", ""] (sListenSocket: SOCKET; sAcceptSocket: SOCKET; lpOutputBuffer: WinApi.PtrVoid; dwReceiveDataLength: INTEGER; dwLocalAddressLength: INTEGER; dwRemoteAddressLength: INTEGER; VAR [nil] lpdwBytesReceived: INTEGER; VAR [nil] lpOverlapped: WinApi.OVERLAPPED): WinApi.BOOL;
    (*END AcceptEx;*)

    PROCEDURE GetAcceptExSockaddrs* ["WSOCK32.dll", ""] (lpOutputBuffer: WinApi.PtrVoid; dwReceiveDataLength: INTEGER; dwLocalAddressLength: INTEGER; dwRemoteAddressLength: INTEGER; VAR [nil] LocalSockaddr: Ptrsockaddr; VAR [nil] LocalSockaddrLength: INTEGER; VAR [nil] RemoteSockaddr: Ptrsockaddr; VAR [nil] RemoteSockaddrLength: INTEGER);
    (*END GetAcceptExSockaddrs;*)

END WinNet.
