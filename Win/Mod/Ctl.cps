﻿MODULE WinCtl ["COMCTL32.dll"];
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

    IMPORT WinOle, WinApi;

    CONST (* macros *)
        CDN_FIRST* = -601;
        CDN_LAST* = -699;
        ICC_LISTVIEW_CLASSES* = {0};
        ICC_TREEVIEW_CLASSES* = {1};
        ICC_BAR_CLASSES* = {2};
        ICC_TAB_CLASSES* = {3};
        ICC_UPDOWN_CLASS* = {4};
        ICC_PROGRESS_CLASS* = {5};
        ICC_HOTKEY_CLASS* = {6};
        ICC_ANIMATE_CLASS* = {7};
        ICC_WIN95_CLASSES* = {0..7};
        ICC_DATE_CLASSES* = {8};
        ICC_USEREX_CLASSES* = {9};
        ODT_HEADER* = 100;
        ODT_TAB* = 101;
        ODT_LISTVIEW* = 102;
        LVM_FIRST* = 4096;
        TV_FIRST* = 4352;
        HDM_FIRST* = 4608;
        NM_OUTOFMEMORY* = -1;
        NM_CLICK* = -2;
        NM_DBLCLK* = -3;
        NM_RETURN* = -4;
        NM_RCLICK* = -5;
        NM_RDBLCLK* = -6;
        NM_SETFOCUS* = -7;
        NM_KILLFOCUS* = -8;
        NM_CUSTOMDRAW* = -12;
        NM_HOVER* = -13;
        NM_FIRST* = 0;
        NM_LAST* = -99;
        LVN_FIRST* = -100;
        LVN_LAST* = -199;
        HDN_FIRST* = -300;
        HDN_LAST* = -399;
        TVN_FIRST* = -400;
        TVN_LAST* = -499;
        TTN_FIRST* = -520;
        TTN_LAST* = -549;
        TCN_FIRST* = -550;
        TCN_LAST* = -580;
        TBN_FIRST* = -700;
        TBN_LAST* = -720;
        UDN_FIRST* = -721;
        UDN_LAST* = -740;
        MCN_FIRST* = -750;
        MCN_LAST* = -759;
        DTN_FIRST* = -760;
        DTN_LAST* = -769;
        CBEN_FIRST* = -800;
        CBEN_LAST* = -830;
        MSGF_COMMCTRL_BEGINDRAG* = 16896;
        MSGF_COMMCTRL_SIZEHEADER* = 16897;
        MSGF_COMMCTRL_DRAGSELECT* = 16898;
        MSGF_COMMCTRL_TOOLBARCUST* = 16899;
        CDRF_DODEFAULT* = {};
        CDRF_SKIPDEFAULT* = {0};
        CDRF_NEWFONT* = {1};
        CDRF_NOTIFYPOSTPAINT* = {4};
        CDRF_NOTIFYITEMDRAW* = {5};
        CDDS_PREPAINT* = {0};
        CDDS_POSTPAINT* = {1};
        CDDS_ITEM* = {16};
        CDDS_ITEMPREPAINT* = {0, 16};
        CDDS_ITEMPOSTPAINT* = {1, 16};
        CDIS_SELECTED* = {0};
        CDIS_GRAYED* = {1};
        CDIS_DISABLED* = {2};
        CDIS_CHECKED* = {3};
        CDIS_FOCUS* = {4};
        CDIS_DEFAULT* = {5};
        CLR_NONE* = -1;
        CLR_DEFAULT* = -16777216;
        ILC_MASK* = {0};
        ILC_COLOR* = {};
        ILC_COLORDDB* = {1..7};
        ILC_COLOR4* = {2};
        ILC_COLOR8* = {3};
        ILC_COLOR16* = {4};
        ILC_COLOR24* = {3, 4};
        ILC_COLOR32* = {5};
        ILC_PALETTE* = {11};
        ILD_NORMAL* = {};
        ILD_TRANSPARENT* = {0};
        ILD_MASK* = {4};
        ILD_IMAGE* = {5};
        ILD_ROP* = {6};
        ILD_BLEND25* = {1};
        ILD_BLEND50* = {2};
        ILD_OVERLAYMASK* = {8..11};
        ILD_SELECTED* = {2};
        ILD_FOCUS* = {1};
        ILD_BLEND* = {2};
        CLR_HILIGHT* = -16777216;
        ILCF_MOVE* = {};
        ILCF_SWAP* = {0};
        WC_HEADERA* = "SysHeader32";
        WC_HEADERW* = "SysHeader32";
        WC_HEADER* = "SysHeader32";
        HDS_HORZ* = {};
        HDS_BUTTONS* = {1};
        HDS_HIDDEN* = {3};
        HDS_DRAGDROP* = {6};
        HDI_WIDTH* = {0};
        HDI_HEIGHT* = {0};
        HDI_TEXT* = {1};
        HDI_FORMAT* = {2};
        HDI_LPARAM* = {3};
        HDI_BITMAP* = {4};
        HDI_IMAGE* = {5};
        HDI_DI_SETITEM* = {6};
        HDI_ORDER* = {7};
        HDF_LEFT* = 0;
        HDF_RIGHT* = 1;
        HDF_CENTER* = 2;
        HDF_JUSTIFYMASK* = 3;
        HDF_RTLREADING* = 4;
        HDF_OWNERDRAW* = 32768;
        HDF_STRING* = 16384;
        HDF_BITMAP* = 8192;
        HDF_BITMAP_ON_RIGHT* = 4096;
        HDF_IMAGE* = 2048;
        HDM_GETITEMCOUNT* = 4608;
        HDM_INSERTITEMA* = 4609;
        HDM_INSERTITEMW* = 4618;
        HDM_INSERTITEM* = 4609;
        HDM_DELETEITEM* = 4610;
        HDM_GETITEMA* = 4611;
        HDM_GETITEMW* = 4619;
        HDM_GETITEM* = 4611;
        HDM_SETITEMA* = 4612;
        HDM_SETITEMW* = 4620;
        HDM_SETITEM* = 4612;
        HDM_LAYOUT* = 4613;
        HHT_NOWHERE* = 1;
        HHT_ONHEADER* = 2;
        HHT_ONDIVIDER* = 4;
        HHT_ONDIVOPEN* = 8;
        HHT_ABOVE* = 256;
        HHT_BELOW* = 512;
        HHT_TORIGHT* = 1024;
        HHT_TOLEFT* = 2048;
        HDM_HITTEST* = 4614;
        HDM_GETITEMRECT* = 4615;
        HDM_SETIMAGELIST* = 4616;
        HDM_GETIMAGELIST* = 4617;
        HDM_ORDERTOINDEX* = 4623;
        HDM_CREATEDRAGIMAGE* = 4624;
        HDM_GETORDERARRAY* = 4625;
        HDM_SETORDERARRAY* = 4626;
        HDM_SETHOTDIVIDER* = 4627;
        HDN_ITEMCHANGINGA* = -300;
        HDN_ITEMCHANGINGW* = -320;
        HDN_ITEMCHANGEDA* = -301;
        HDN_ITEMCHANGEDW* = -321;
        HDN_ITEMCLICKA* = -302;
        HDN_ITEMCLICKW* = -322;
        HDN_ITEMDBLCLICKA* = -303;
        HDN_ITEMDBLCLICKW* = -323;
        HDN_DIVIDERDBLCLICKA* = -305;
        HDN_DIVIDERDBLCLICKW* = -325;
        HDN_BEGINTRACKA* = -306;
        HDN_BEGINTRACKW* = -326;
        HDN_ENDTRACKA* = -307;
        HDN_ENDTRACKW* = -327;
        HDN_TRACKA* = -308;
        HDN_TRACKW* = -328;
        HDN_GETDISPINFOA* = -309;
        HDN_GETDISPINFOW* = -329;
        HDN_BEGINDRAG* = -310;
        HDN_ENDDRAG* = -311;
        HDN_ITEMCHANGING* = -300;
        HDN_ITEMCHANGED* = -301;
        HDN_ITEMCLICK* = -302;
        HDN_ITEMDBLCLICK* = -303;
        HDN_DIVIDERDBLCLICK* = -305;
        HDN_BEGINTRACK* = -306;
        HDN_ENDTRACK* = -307;
        HDN_TRACK* = -308;
        HDN_GETDISPINFO* = -309;
        TOOLBARCLASSNAMEW* = "ToolbarWindow32";
        TOOLBARCLASSNAMEA* = "ToolbarWindow32";
        TOOLBARCLASSNAME* = "ToolbarWindow32";
        CMB_MASKED* = 2;
        TBSTATE_CHECKED* = {0};
        TBSTATE_PRESSED* = {1};
        TBSTATE_ENABLED* = {2};
        TBSTATE_HIDDEN* = {3};
        TBSTATE_INDETERMINATE* = {4};
        TBSTATE_WRAP* = {5};
        TBSTYLE_BUTTON* = {};
        TBSTYLE_SEP* = {0};
        TBSTYLE_CHECK* = {1};
        TBSTYLE_GROUP* = {2};
        TBSTYLE_CHECKGROUP* = {1, 2};
        TBSTYLE_DROPDOWN* = {3};
        TBSTYLE_TOOLTIPS* = {8};
        TBSTYLE_WRAPABLE* = {9};
        TBSTYLE_ALTDRAG* = {10};
        TB_ENABLEBUTTON* = 1025;
        TB_CHECKBUTTON* = 1026;
        TB_PRESSBUTTON* = 1027;
        TB_HIDEBUTTON* = 1028;
        TB_INDETERMINATE* = 1029;
        TB_ISBUTTONENABLED* = 1033;
        TB_ISBUTTONCHECKED* = 1034;
        TB_ISBUTTONPRESSED* = 1035;
        TB_ISBUTTONHIDDEN* = 1036;
        TB_ISBUTTONINDETERMINATE* = 1037;
        TB_SETSTATE* = 1041;
        TB_GETSTATE* = 1042;
        TB_ADDBITMAP* = 1043;
        IDB_STD_SMALL_COLOR* = 0;
        IDB_STD_LARGE_COLOR* = 1;
        IDB_VIEW_SMALL_COLOR* = 4;
        IDB_VIEW_LARGE_COLOR* = 5;
        IDB_HIST_SMALL_COLOR* = 8;
        IDB_HIST_LARGE_COLOR* = 9;
        STD_CUT* = 0;
        STD_COPY* = 1;
        STD_PASTE* = 2;
        STD_UNDO* = 3;
        STD_REDOW* = 4;
        STD_DELETE* = 5;
        STD_FILENEW* = 6;
        STD_FILEOPEN* = 7;
        STD_FILESAVE* = 8;
        STD_PRINTPRE* = 9;
        STD_PROPERTIES* = 10;
        STD_HELP* = 11;
        STD_FIND* = 12;
        STD_REPLACE* = 13;
        STD_PRINT* = 14;
        VIEW_LARGEICONS* = 0;
        VIEW_SMALLICONS* = 1;
        VIEW_LIST* = 2;
        VIEW_DETAILS* = 3;
        VIEW_SORTNAME* = 4;
        VIEW_SORTSIZE* = 5;
        VIEW_SORTDATE* = 6;
        VIEW_SORTTYPE* = 7;
        VIEW_PARENTFOLDER* = 8;
        VIEW_NETCONNECT* = 9;
        VIEW_NETDISCONNECT* = 10;
        VIEW_NEWFOLDER* = 11;
        HIST_BACK* = 0;
        HIST_FORWARD* = 1;
        HIST_FAVORITES* = 2;
        HIST_ADDTOFAVORITES* = 3;
        HIST_VIEWTREE* = 4;
        TB_ADDBUTTONS* = 1044;
        TB_INSERTBUTTON* = 1045;
        TB_DELETEBUTTON* = 1046;
        TB_GETBUTTON* = 1047;
        TB_BUTTONCOUNT* = 1048;
        TB_COMMANDTOINDEX* = 1049;
        TB_SAVERESTOREA* = 1050;
        TB_SAVERESTOREW* = 1100;
        TB_CUSTOMIZE* = 1051;
        TB_ADDSTRINGA* = 1052;
        TB_ADDSTRINGW* = 1101;
        TB_GETITEMRECT* = 1053;
        TB_BUTTONSTRUCTSIZE* = 1054;
        TB_SETBUTTONSIZE* = 1055;
        TB_SETBITMAPSIZE* = 1056;
        TB_AUTOSIZE* = 1057;
        TB_GETTOOLTIPS* = 1059;
        TB_SETTOOLTIPS* = 1060;
        TB_SETPARENT* = 1061;
        TB_SETROWS* = 1063;
        TB_GETROWS* = 1064;
        TB_SETCMDID* = 1066;
        TB_CHANGEBITMAP* = 1067;
        TB_GETBITMAP* = 1068;
        TB_GETBUTTONTEXTA* = 1069;
        TB_GETBUTTONTEXTW* = 1099;
        TB_REPLACEBITMAP* = 1070;
        TB_SETINDENT* = 1071;
        TB_SETIMAGELIST* = 1072;
        TB_GETIMAGELIST* = 1073;
        TB_LOADIMAGES* = 1074;
        TB_GETRECT* = 1075;
        TB_GETBUTTONTEXT* = 1069;
        TB_SAVERESTORE* = 1050;
        TB_ADDSTRING* = 1052;
        TBBF_LARGE* = 1;
        TB_GETBITMAPFLAGS* = 1065;
        TBN_GETBUTTONINFOA* = -700;
        TBN_GETBUTTONINFOW* = -720;
        TBN_BEGINDRAG* = -701;
        TBN_ENDDRAG* = -702;
        TBN_BEGINADJUST* = -703;
        TBN_ENDADJUST* = -704;
        TBN_RESET* = -705;
        TBN_QUERYINSERT* = -706;
        TBN_QUERYDELETE* = -707;
        TBN_TOOLBARCHANGE* = -708;
        TBN_CUSTHELP* = -709;
        TBN_DROPDOWN* = -710;
        TBN_CLOSEUP* = -711;
        TBN_GETBUTTONINFO* = -700;
        TOOLTIPS_CLASSW* = "tooltips_class32";
        TOOLTIPS_CLASSA* = "tooltips_class32";
        TOOLTIPS_CLASS* = "tooltips_class32";
        TTS_ALWAYSTIP* = {0};
        TTS_NOPREFIX* = {1};
        TTF_IDISHWND* = {0};
        TTF_CENTERTIP* = {1};
        TTF_RTLREADING* = {2};
        TTF_SUBCLASS* = {4};
        TTF_TRACK* = {5};
        TTF_ABSOLUTE* = {7};
        TTF_TRANSPARENT* = {8};
        TTF_DI_SETITEM* = {15};
        TTDT_AUTOMATIC* = 0;
        TTDT_RESHOW* = 1;
        TTDT_AUTOPOP* = 2;
        TTDT_INITIAL* = 3;
        TTM_ACTIVATE* = 1025;
        TTM_SETDELAYTIME* = 1027;
        TTM_ADDTOOLA* = 1028;
        TTM_ADDTOOLW* = 1074;
        TTM_DELTOOLA* = 1029;
        TTM_DELTOOLW* = 1075;
        TTM_NEWTOOLRECTA* = 1030;
        TTM_NEWTOOLRECTW* = 1076;
        TTM_RELAYEVENT* = 1031;
        TTM_GETTOOLINFOA* = 1032;
        TTM_GETTOOLINFOW* = 1077;
        TTM_SETTOOLINFOA* = 1033;
        TTM_SETTOOLINFOW* = 1078;
        TTM_HITTESTA* = 1034;
        TTM_HITTESTW* = 1079;
        TTM_GETTEXTA* = 1035;
        TTM_GETTEXTW* = 1080;
        TTM_UPDATETIPTEXTA* = 1036;
        TTM_UPDATETIPTEXTW* = 1081;
        TTM_GETTOOLCOUNT* = 1037;
        TTM_ENUMTOOLSA* = 1038;
        TTM_ENUMTOOLSW* = 1082;
        TTM_GETCURRENTTOOLA* = 1039;
        TTM_GETCURRENTTOOLW* = 1083;
        TTM_WINDOWFROMPOINT* = 1040;
        TTM_TRACKACTIVATE* = 1041;
        TTM_TRACKPOSITION* = 1042;
        TTM_SETTIPBKCOLOR* = 1043;
        TTM_SETTIPTEXTCOLOR* = 1044;
        TTM_GETDELAYTIME* = 1045;
        TTM_GETTIPBKCOLOR* = 1046;
        TTM_GETTIPTEXTCOLOR* = 1047;
        TTM_ADDTOOL* = 1028;
        TTM_DELTOOL* = 1029;
        TTM_NEWTOOLRECT* = 1030;
        TTM_GETTOOLINFO* = 1032;
        TTM_SETTOOLINFO* = 1033;
        TTM_HITTEST* = 1034;
        TTM_GETTEXT* = 1035;
        TTM_UPDATETIPTEXT* = 1036;
        TTM_ENUMTOOLS* = 1038;
        TTM_GETCURRENTTOOL* = 1039;
        TTN_GETDISPINFOA* = -520;
        TTN_GETDISPINFOW* = -530;
        TTN_SHOW* = -521;
        TTN_POP* = -522;
        TTN_GETDISPINFO* = -520;
        TTN_NEEDTEXT* = -520;
        TTN_NEEDTEXTA* = -520;
        TTN_NEEDTEXTW* = -530;
        SBARS_SIZEGRIP* = 256;
        STATUSCLASSNAMEW* = "msctls_statusbar32";
        STATUSCLASSNAMEA* = "msctls_statusbar32";
        STATUSCLASSNAME* = "msctls_statusbar32";
        SB_SETTEXTA* = 1025;
        SB_SETTEXTW* = 1035;
        SB_GETTEXTA* = 1026;
        SB_GETTEXTW* = 1037;
        SB_GETTEXTLENGTHA* = 1027;
        SB_GETTEXTLENGTHW* = 1036;
        SB_GETTEXT* = 1026;
        SB_SETTEXT* = 1025;
        SB_GETTEXTLENGTH* = 1027;
        SB_SETPARTS* = 1028;
        SB_GETPARTS* = 1030;
        SB_GETBORDERS* = 1031;
        SB_SETMINHEIGHT* = 1032;
        SB_SIMPLE* = 1033;
        SB_GETRECT* = 1034;
        SBT_OWNERDRAW* = 4096;
        SBT_NOBORDERS* = 256;
        SBT_POPOUT* = 512;
        SBT_RTLREADING* = 1024;
        MINSYSCOMMAND* = 61440;
        TRACKBAR_CLASSA* = "msctls_trackbar32";
        TRACKBAR_CLASSW* = "msctls_trackbar32";
        TRACKBAR_CLASS* = "msctls_trackbar32";
        TBS_AUTOTICKS* = {0};
        TBS_VERT* = {1};
        TBS_HORZ* = {};
        TBS_TOP* = {2};
        TBS_BOTTOM* = {};
        TBS_LEFT* = {2};
        TBS_RIGHT* = {};
        TBS_BOTH* = {3};
        TBS_NOTICKS* = {4};
        TBS_ENABLESELRANGE* = {5};
        TBS_FIXEDLENGTH* = {6};
        TBS_NOTHUMB* = {7};
        TBS_TOOLTIPS* = {8};
        TBM_GETPOS* = 1024;
        TBM_GETRANGEMIN* = 1025;
        TBM_GETRANGEMAX* = 1026;
        TBM_GETTIC* = 1027;
        TBM_SETTIC* = 1028;
        TBM_SETPOS* = 1029;
        TBM_SETRANGE* = 1030;
        TBM_SETRANGEMIN* = 1031;
        TBM_SETRANGEMAX* = 1032;
        TBM_CLEARTICS* = 1033;
        TBM_SETSEL* = 1034;
        TBM_SETSELSTART* = 1035;
        TBM_SETSELEND* = 1036;
        TBM_GETPTICS* = 1038;
        TBM_GETTICPOS* = 1039;
        TBM_GETNUMTICS* = 1040;
        TBM_GETSELSTART* = 1041;
        TBM_GETSELEND* = 1042;
        TBM_CLEARSEL* = 1043;
        TBM_SETTICFREQ* = 1044;
        TBM_SETPAGESIZE* = 1045;
        TBM_GETPAGESIZE* = 1046;
        TBM_SETLINESIZE* = 1047;
        TBM_GETLINESIZE* = 1048;
        TBM_GETTHUMBRECT* = 1049;
        TBM_GETCHANNELRECT* = 1050;
        TBM_SETTHUMBLENGTH* = 1051;
        TBM_GETTHUMBLENGTH* = 1052;
        TBM_SETTOOLTIPS* = 1053;
        TBM_GETTOOLTIPS* = 1054;
        TBM_SETTIPSIDE* = 1055;
        TBTS_TOP* = 0;
        TBTS_LEFT* = 1;
        TBTS_BOTTOM* = 2;
        TBTS_RIGHT* = 3;
        TBM_SETBUDDY* = 1056;
        TBM_GETBUDDY* = 1057;
        TB_LINEUP* = 0;
        TB_LINEDOWN* = 1;
        TB_PAGEUP* = 2;
        TB_PAGEDOWN* = 3;
        TB_THUMBPOSITION* = 4;
        TB_THUMBTRACK* = 5;
        TB_TOP* = 6;
        TB_BOTTOM* = 7;
        TB_ENDTRACK* = 8;
        TBCD_TICS* = 1;
        TBCD_THUMB* = 2;
        TBCD_CHANNEL* = 3;
        DL_BEGINDRAG* = 1157;
        DL_DRAGGING* = 1158;
        DL_DROPPED* = 1159;
        DL_CANCELDRAG* = 1160;
        DL_CURSORSET* = 0;
        DL_STOPCURSOR* = 1;
        DL_COPYCURSOR* = 2;
        DL_MOVECURSOR* = 3;
        DRAGLISTMSGSTRING* = "commctrl_DragListMsg";
        UPDOWN_CLASSA* = "msctls_updown32";
        UPDOWN_CLASSW* = "msctls_updown32";
        UPDOWN_CLASS* = "msctls_updown32";
        UD_MAXVAL* = 32767;
        UD_MINVAL* = -32767;
        UDS_WRAP* = {0};
        UDS_SETBUDDYINT* = {1};
        UDS_ALIGNRIGHT* = {2};
        UDS_ALIGNLEFT* = {3};
        UDS_AUTOBUDDY* = {4};
        UDS_ARROWKEYS* = {5};
        UDS_HORZ* = {6};
        UDS_NOTHOUSANDS* = {7};
        UDM_SETRANGE* = 1125;
        UDM_GETRANGE* = 1126;
        UDM_SETPOS* = 1127;
        UDM_GETPOS* = 1128;
        UDM_SETBUDDY* = 1129;
        UDM_GETBUDDY* = 1130;
        UDM_SETACCEL* = 1131;
        UDM_GETACCEL* = 1132;
        UDM_SETBASE* = 1133;
        UDM_GETBASE* = 1134;
        UDN_DELTAPOS* = -722;
        PROGRESS_CLASSA* = "msctls_progress32";
        PROGRESS_CLASSW* = "msctls_progress32";
        PROGRESS_CLASS* = "msctls_progress32";
        PBS_SMOOTH* = 1;
        PBS_VERTICAL* = 4;
        PBM_SETRANGE* = 1025;
        PBM_SETPOS* = 1026;
        PBM_DELTAPOS* = 1027;
        PBM_SETSTEP* = 1028;
        PBM_STEPIT* = 1029;
        PBM_SETRANGE32* = 1030;
        HOTKEYF_SHIFT* = {0};
        HOTKEYF_CONTROL* = {1};
        HOTKEYF_ALT* = {2};
        HOTKEYF_EXT* = {3};
        HKCOMB_NONE* = {0};
        HKCOMB_S* = {1};
        HKCOMB_C* = {2};
        HKCOMB_A* = {3};
        HKCOMB_SC* = {4};
        HKCOMB_SA* = {5};
        HKCOMB_CA* = {6};
        HKCOMB_SCA* = {7};
        HKM_SETHOTKEY* = 1025;
        HKM_GETHOTKEY* = 1026;
        HKM_SETRULES* = 1027;
        HOTKEY_CLASSA* = "msctls_hotkey32";
        HOTKEY_CLASSW* = "msctls_hotkey32";
        HOTKEY_CLASS* = "msctls_hotkey32";
        CCS_TOP* = {0};
        CCS_NOMOVEY* = {1};
        CCS_BOTTOM* = {0, 1};
        CCS_NORESIZE* = {2};
        CCS_NOPARENTALIGN* = {3};
        CCS_ADJUSTABLE* = {5};
        CCS_NODIVIDER* = {6};
        WC_LISTVIEWA* = "SysListView32";
        WC_LISTVIEWW* = "SysListView32";
        WC_LISTVIEW* = "SysListView32";
        LVS_ICON* = {};
        LVS_REPORT* = {0};
        LVS_SMALLICON* = {1};
        LVS_LIST* = {0, 1};
        LVS_TYPEMASK* = {0, 1};
        LVS_SINGLESEL* = {2};
        LVS_SHOWSELALWAYS* = {3};
        LVS_SORTASCENDING* = {4};
        LVS_SORTDESCENDING* = {5};
        LVS_SHAREIMAGELISTS* = {6};
        LVS_NOLABELWRAP* = {7};
        LVS_AUTOARRANGE* = {8};
        LVS_EDITLABELS* = {9};
        LVS_OWNERDATA* = {12};
        LVS_NOSCROLL* = {13};
        LVS_TYPESTYLEMASK* = {10..15};
        LVS_ALIGNTOP* = {};
        LVS_ALIGNLEFT* = {11};
        LVS_ALIGNMASK* = {10, 11};
        LVS_OWNERDRAWFIXED* = {10};
        LVS_NOCOLUMNHEADER* = {14};
        LVS_NOSORTHEADER* = {15};
        LVM_GETBKCOLOR* = 4096;
        LVM_SETBKCOLOR* = 4097;
        LVM_GETIMAGELIST* = 4098;
        LVSIL_NORMAL* = 0;
        LVSIL_SMALL* = 1;
        LVSIL_STATE* = 2;
        LVM_SETIMAGELIST* = 4099;
        LVM_GETITEMCOUNT* = 4100;
        LVIF_TEXT* = {0};
        LVIF_IMAGE* = {1};
        LVIF_PARAM* = {2};
        LVIF_STATE* = {3};
        LVIF_INDENT* = {4};
        LVIS_FOCUSED* = {0};
        LVIS_SELECTED* = {1};
        LVIS_CUT* = {2};
        LVIS_DROPHILITED* = {3};
        LVIS_OVERLAYMASK* = {8..11};
        LVIS_STATEIMAGEMASK* = {12..15};
        I_INDENTCALLBACK* = -1;
        LPSTR_TEXTCALLBACKW* = -1;
        LPSTR_TEXTCALLBACKA* = -1;
        LPSTR_TEXTCALLBACK* = -1;
        I_IMAGECALLBACK* = -1;
        LVM_GETITEMA* = 4101;
        LVM_GETITEMW* = 4171;
        LVM_GETITEM* = 4101;
        LVM_SETITEMA* = 4102;
        LVM_SETITEMW* = 4172;
        LVM_SETITEM* = 4102;
        LVM_INSERTITEMA* = 4103;
        LVM_INSERTITEMW* = 4173;
        LVM_INSERTITEM* = 4103;
        LVM_DELETEITEM* = 4104;
        LVM_DELETEALLITEMS* = 4105;
        LVM_GETCALLBACKMASK* = 4106;
        LVM_SETCALLBACKMASK* = 4107;
        LVNI_ALL* = {};
        LVNI_FOCUSED* = {0};
        LVNI_SELECTED* = {1};
        LVNI_CUT* = {2};
        LVNI_DROPHILITED* = {3};
        LVNI_ABOVE* = {8};
        LVNI_BELOW* = {9};
        LVNI_TOLEFT* = {10};
        LVNI_TORIGHT* = {11};
        LVM_GETNEXTITEM* = 4108;
        LVFI_PARAM* = {0};
        LVFI_STRING* = {1};
        LVFI_PARTIAL* = {3};
        LVFI_WRAP* = {5};
        LVFI_NEARESTXY* = {6};
        LVM_FINDITEMA* = 4109;
        LVM_FINDITEMW* = 4179;
        LVM_FINDITEM* = 4109;
        LVIR_BOUNDS* = 0;
        LVIR_ICON* = 1;
        LVIR_LABEL* = 2;
        LVIR_SELECTBOUNDS* = 3;
        LVM_GETITEMRECT* = 4110;
        LVM_SETITEMPOSITION* = 4111;
        LVM_GETITEMPOSITION* = 4112;
        LVM_GETSTRINGWIDTHA* = 4113;
        LVM_GETSTRINGWIDTHW* = 4183;
        LVM_GETSTRINGWIDTH* = 4113;
        LVHT_NOWHERE* = {0};
        LVHT_ONITEMICON* = {1};
        LVHT_ONITEMLABEL* = {2};
        LVHT_ONITEMSTATEICON* = {3};
        LVHT_ONITEM* = {1..3};
        LVHT_ABOVE* = {3};
        LVHT_BELOW* = {4};
        LVHT_TORIGHT* = {5};
        LVHT_TOLEFT* = {6};
        LVM_HITTEST* = 4114;
        LVM_ENSUREVISIBLE* = 4115;
        LVM_SCROLL* = 4116;
        LVM_REDRAWITEMS* = 4117;
        LVA_DEFAULT* = 0;
        LVA_ALIGNLEFT* = 1;
        LVA_ALIGNTOP* = 2;
        LVA_SNAPTOGRID* = 5;
        LVM_ARRANGE* = 4118;
        LVM_EDITLABELA* = 4119;
        LVM_EDITLABELW* = 4214;
        LVM_EDITLABEL* = 4119;
        LVM_GETEDITCONTROL* = 4120;
        LVCF_FMT* = {0};
        LVCF_WIDTH* = {1};
        LVCF_TEXT* = {2};
        LVCF_SUBITEM* = {3};
        LVCF_IMAGE* = {4};
        LVCF_ORDER* = {5};
        LVCFMT_LEFT* = 0;
        LVCFMT_RIGHT* = 1;
        LVCFMT_CENTER* = 2;
        LVCFMT_JUSTIFYMASK* = 3;
        LVCFMT_IMAGE* = 2048;
        LVCFMT_BITMAP_ON_RIGHT* = 4096;
        LVCFMT_COL_HAS_IMAGES* = 32768;
        LVM_GETCOLUMNA* = 4121;
        LVM_GETCOLUMNW* = 4191;
        LVM_GETCOLUMN* = 4121;
        LVM_SETCOLUMNA* = 4122;
        LVM_SETCOLUMNW* = 4192;
        LVM_SETCOLUMN* = 4122;
        LVM_INSERTCOLUMNA* = 4123;
        LVM_INSERTCOLUMNW* = 4193;
        LVM_INSERTCOLUMN* = 4123;
        LVM_DELETECOLUMN* = 4124;
        LVM_GETCOLUMNWIDTH* = 4125;
        LVSCW_AUTOSIZE* = -1;
        LVSCW_AUTOSIZE_USEHEADER* = -2;
        LVM_SETCOLUMNWIDTH* = 4126;
        LVM_CREATEDRAGIMAGE* = 4129;
        LVM_GETVIEWRECT* = 4130;
        LVM_GETTEXTCOLOR* = 4131;
        LVM_SETTEXTCOLOR* = 4132;
        LVM_GETTEXTBKCOLOR* = 4133;
        LVM_SETTEXTBKCOLOR* = 4134;
        LVM_GETTOPINDEX* = 4135;
        LVM_GETCOUNTPERPAGE* = 4136;
        LVM_GETORIGIN* = 4137;
        LVM_UPDATE* = 4138;
        LVM_SETITEMSTATE* = 4139;
        LVM_GETITEMSTATE* = 4140;
        LVM_GETITEMTEXTA* = 4141;
        LVM_GETITEMTEXTW* = 4211;
        LVM_GETITEMTEXT* = 4141;
        LVM_SETITEMTEXTA* = 4142;
        LVM_SETITEMTEXTW* = 4212;
        LVM_SETITEMTEXT* = 4142;
        LVM_SETITEMCOUNT* = 4143;
        LVM_SORTITEMS* = 4144;
        LVM_SETITEMPOSITION32* = 4145;
        LVM_GETSELECTEDCOUNT* = 4146;
        LVM_GETITEMSPACING* = 4147;
        LVM_GETISEARCHSTRINGA* = 4148;
        LVM_GETISEARCHSTRINGW* = 4213;
        LVM_GETISEARCHSTRING* = 4148;
        LVM_SETICONSPACING* = 4149;
        LVM_SETEXTENDEDLISTVIEWSTYLE* = 4150;
        LVM_GETEXTENDEDLISTVIEWSTYLE* = 4151;
        LVS_EX_GRIDLINES* = {0};
        LVS_EX_SUBITEMIMAGES* = {1};
        LVS_EX_CHECKBOXES* = {2};
        LVS_EX_TRACKSELECT* = {3};
        LVS_EX_HEADERDRAGDROP* = {4};
        LVS_EX_FULLROWSELECT* = {5};
        LVM_GETSUBITEMRECT* = 4152;
        LVM_SUBITEMHITTEST* = 4153;
        LVM_SETCOLUMNORDERARRAY* = 4154;
        LVM_GETCOLUMNORDERARRAY* = 4155;
        LVM_SETHOTITEM* = 4156;
        LVM_GETHOTITEM* = 4157;
        LVM_SETHOTCURSOR* = 4158;
        LVM_GETHOTCURSOR* = 4159;
        LVN_ITEMCHANGING* = -100;
        LVN_ITEMCHANGED* = -101;
        LVN_INSERTITEM* = -102;
        LVN_DELETEITEM* = -103;
        LVN_DELETEALLITEMS* = -104;
        LVN_BEGINLABELEDITA* = -105;
        LVN_BEGINLABELEDITW* = -175;
        LVN_ENDLABELEDITA* = -106;
        LVN_ENDLABELEDITW* = -176;
        LVN_COLUMNCLICK* = -108;
        LVN_BEGINDRAG* = -109;
        LVN_BEGINRDRAG* = -111;
        LVN_ODCACHEHINT* = -113;
        LVN_ODFINDITEMA* = -152;
        LVN_ODFINDITEMW* = -179;
        LVN_ODFINDITEM* = -152;
        LVN_GETDISPINFOA* = -150;
        LVN_GETDISPINFOW* = -177;
        LVN_SETDISPINFOA* = -151;
        LVN_SETDISPINFOW* = -178;
        LVN_BEGINLABELEDIT* = -105;
        LVN_ENDLABELEDIT* = -106;
        LVN_GETDISPINFO* = -150;
        LVN_SETDISPINFO* = -151;
        LVIF_DI_SETITEM* = {12};
        LVN_KEYDOWN* = -155;
        LVN_MARQUEEBEGIN* = -156;
        WC_TREEVIEWA* = "SysTreeView32";
        WC_TREEVIEWW* = "SysTreeView32";
        WC_TREEVIEW* = "SysTreeView32";
        TVS_HASBUTTONS* = {0};
        TVS_HASLINES* = {1};
        TVS_LINESATROOT* = {2};
        TVS_EDITLABELS* = {3};
        TVS_DISABLEDRAGDROP* = {4};
        TVS_SHOWSELALWAYS* = {5};
        TVS_SHAREDIMAGELISTS* = {};
        TVS_PRIVATEIMAGELISTS* = {6};
        TVS_NOTOOLTIPS* = {7};
        TVS_CHECKBOXES* = {8};
        TVS_TRACKSELECT* = {9};
        TVS_NOSCROLL* = {13};
        TVIF_TEXT* = {0};
        TVIF_IMAGE* = {1};
        TVIF_PARAM* = {2};
        TVIF_STATE* = {3};
        TVIF_HANDLE* = {4};
        TVIF_SELECTEDIMAGE* = {5};
        TVIF_CHILDREN* = {6};
        TVIS_SELECTED* = {1};
        TVIS_CUT* = {2};
        TVIS_DROPHILITED* = {3};
        TVIS_BOLD* = {4};
        TVIS_EXPANDED* = {5};
        TVIS_EXPANDEDONCE* = {6};
        TVIS_EXPANDPARTIAL* = {7};
        TVIS_OVERLAYMASK* = {8..11};
        TVIS_STATEIMAGEMASK* = {12..15};
        TVIS_USERMASK* = {12..15};
        TVI_ROOT* = 0FFFF0000H;
        TVI_FIRST* = 0FFFF0001H;
        TVI_LAST* = 0FFFF0002H;
        TVI_SORT* = 0FFFF0003H;
        I_CHILDRENCALLBACK* = -1;
        TVM_INSERTITEMA* = 4352;
        TVM_INSERTITEMW* = 4402;
        TVM_INSERTITEM* = 4352;
        TVM_DELETEITEM* = 4353;
        TVM_EXPAND* = 4354;
        TVE_COLLAPSE* = 1;
        TVE_EXPAND* = 2;
        TVE_TOGGLE* = 3;
        TVE_EXPANDPARTIAL* = 16384;
        TVE_COLLAPSERESET* = 32768;
        TVM_GETITEMRECT* = 4356;
        TVM_GETCOUNT* = 4357;
        TVM_GETINDENT* = 4358;
        TVM_SETINDENT* = 4359;
        TVM_GETIMAGELIST* = 4360;
        TVSIL_NORMAL* = 0;
        TVSIL_STATE* = 2;
        TVM_SETIMAGELIST* = 4361;
        TVM_GETNEXTITEM* = 4362;
        TVGN_ROOT* = 0;
        TVGN_NEXT* = 1;
        TVGN_PREVIOUS* = 2;
        TVGN_PARENT* = 3;
        TVGN_CHILD* = 4;
        TVGN_FIRSTVISIBLE* = 5;
        TVGN_NEXTVISIBLE* = 6;
        TVGN_PREVIOUSVISIBLE* = 7;
        TVGN_DROPHILITE* = 8;
        TVGN_CARET* = 9;
        TVM_SELECTITEM* = 4363;
        TVM_GETITEMA* = 4364;
        TVM_GETITEMW* = 4414;
        TVM_GETITEM* = 4364;
        TVM_SETITEMA* = 4365;
        TVM_SETITEMW* = 4415;
        TVM_SETITEM* = 4365;
        TVM_EDITLABELA* = 4366;
        TVM_EDITLABELW* = 4417;
        TVM_EDITLABEL* = 4366;
        TVM_GETEDITCONTROL* = 4367;
        TVM_GETVISIBLECOUNT* = 4368;
        TVM_HITTEST* = 4369;
        TVHT_NOWHERE* = {0};
        TVHT_ONITEMICON* = {1};
        TVHT_ONITEMLABEL* = {2};
        TVHT_ONITEM* = {1, 2, 6};
        TVHT_ONITEMINDENT* = {3};
        TVHT_ONITEMBUTTON* = {4};
        TVHT_ONITEMRIGHT* = {5};
        TVHT_ONITEMSTATEICON* = {6};
        TVHT_ABOVE* = {8};
        TVHT_BELOW* = {9};
        TVHT_TORIGHT* = {10};
        TVHT_TOLEFT* = {11};
        TVM_CREATEDRAGIMAGE* = 4370;
        TVM_SORTCHILDREN* = 4371;
        TVM_ENSUREVISIBLE* = 4372;
        TVM_SORTCHILDRENCB* = 4373;
        TVM_ENDEDITLABELNOW* = 4374;
        TVM_GETISEARCHSTRINGA* = 4375;
        TVM_GETISEARCHSTRINGW* = 4416;
        TVM_GETISEARCHSTRING* = 4375;
        TVM_SETTOOLTIPS* = 4376;
        TVM_GETTOOLTIPS* = 4377;
        TVN_SELCHANGINGA* = -401;
        TVN_SELCHANGINGW* = -450;
        TVN_SELCHANGEDA* = -402;
        TVN_SELCHANGEDW* = -451;
        TVC_UNKNOWN* = 0;
        TVC_BYMOUSE* = 1;
        TVC_BYKEYBOARD* = 2;
        TVN_GETDISPINFOA* = -403;
        TVN_GETDISPINFOW* = -452;
        TVN_SETDISPINFOA* = -404;
        TVN_SETDISPINFOW* = -453;
        TVIF_DI_SETITEM* = {12};
        TVN_ITEMEXPANDINGA* = -405;
        TVN_ITEMEXPANDINGW* = -454;
        TVN_ITEMEXPANDEDA* = -406;
        TVN_ITEMEXPANDEDW* = -455;
        TVN_BEGINDRAGA* = -407;
        TVN_BEGINDRAGW* = -456;
        TVN_BEGINRDRAGA* = -408;
        TVN_BEGINRDRAGW* = -457;
        TVN_DELETEITEMA* = -409;
        TVN_DELETEITEMW* = -458;
        TVN_BEGINLABELEDITA* = -410;
        TVN_BEGINLABELEDITW* = -459;
        TVN_ENDLABELEDITA* = -411;
        TVN_ENDLABELEDITW* = -460;
        TVN_KEYDOWN* = -412;
        TVN_SELCHANGING* = -401;
        TVN_SELCHANGED* = -402;
        TVN_GETDISPINFO* = -403;
        TVN_SETDISPINFO* = -404;
        TVN_ITEMEXPANDING* = -405;
        TVN_ITEMEXPANDED* = -406;
        TVN_BEGINDRAG* = -407;
        TVN_BEGINRDRAG* = -408;
        TVN_DELETEITEM* = -409;
        TVN_BEGINLABELEDIT* = -410;
        TVN_ENDLABELEDIT* = -411;
        WC_COMBOBOXEXW* = "ComboBoxEx";
        WC_COMBOBOXEXA* = "ComboBoxEx32";
        WC_COMBOBOXEX* = "ComboBoxEx32";
        CBEIF_TEXT* = {0};
        CBEIF_IMAGE* = {1};
        CBEIF_SELECTEDIMAGE* = {2};
        CBEIF_OVERLAY* = {3};
        CBEIF_INDENT* = {4};
        CBEIF_LPARAM* = {5};
        CBEIF_DI_SETITEM* = {28};
        CBEM_INSERTITEM* = 1025;
        CBEM_SETIMAGELIST* = 1026;
        CBEM_GETIMAGELIST* = 1027;
        CBEM_GETITEM* = 1028;
        CBEM_SETITEM* = 1029;
        CBEM_DELETEITEM* = 324;
        CBEM_GETCOMBOCONTROL* = 1030;
        CBEM_GETEDITCONTROL* = 1031;
        CBEM_SETEXSTYLE* = 1032;
        CBEM_GETEXSTYLE* = 1033;
        CBEM_HASEDITCHANGED* = 1034;
        CBES_EX_NOEDITIMAGE* = {0};
        CBES_EX_NOEDITIMAGEINDENT* = {1};
        CBEN_GETDISPINFO* = -800;
        CBEN_INSERTITEM* = -801;
        CBEN_DELETEITEM* = -802;
        CBEN_BEGINEDIT* = -804;
        CBEN_ENDEDIT* = -805;
        CBENF_KILLFOCUS* = 1;
        CBENF_RETURN* = 2;
        CBENF_ESCAPE* = 3;
        CBENF_DROPDOWN* = 4;
        CBEMAXSTRLEN* = 260;
        WC_TABCONTROLA* = "SysTabControl32";
        WC_TABCONTROLW* = "SysTabControl32";
        WC_TABCONTROL* = "SysTabControl32";
        TCS_SCROLLOPPOSITE* = {0};
        TCS_BOTTOM* = {1};
        TCS_RIGHT* = {1};
        TCS_FORCEICONLEFT* = {4};
        TCS_FORCELABELLEFT* = {5};
        TCS_VERTICAL* = {7};
        TCS_TABS* = {};
        TCS_BUTTONS* = {8};
        TCS_SINGLELINE* = {};
        TCS_MULTILINE* = {9};
        TCS_RIGHTJUSTIFY* = {};
        TCS_FIXEDWIDTH* = {10};
        TCS_RAGGEDRIGHT* = {11};
        TCS_FOCUSONBUTTONDOWN* = {12};
        TCS_OWNERDRAWFIXED* = {13};
        TCS_TOOLTIPS* = {14};
        TCS_FOCUSNEVER* = {15};
        TCM_FIRST* = 4864;
        TCM_GETIMAGELIST* = 4866;
        TCM_SETIMAGELIST* = 4867;
        TCM_GETITEMCOUNT* = 4868;
        TCIF_TEXT* = {0};
        TCIF_IMAGE* = {1};
        TCIF_RTLREADING* = {2};
        TCIF_PARAM* = {3};
        TCIF_STATE* = {4};
        TCIS_BUTTONPRESSED* = 1;
        TCM_GETITEMA* = 4869;
        TCM_GETITEMW* = 4924;
        TCM_GETITEM* = 4869;
        TCM_SETITEMA* = 4870;
        TCM_SETITEMW* = 4925;
        TCM_SETITEM* = 4870;
        TCM_INSERTITEMA* = 4871;
        TCM_INSERTITEMW* = 4926;
        TCM_INSERTITEM* = 4871;
        TCM_DELETEITEM* = 4872;
        TCM_DELETEALLITEMS* = 4873;
        TCM_GETITEMRECT* = 4874;
        TCM_GETCURSEL* = 4875;
        TCM_SETCURSEL* = 4876;
        TCHT_NOWHERE* = {0};
        TCHT_ONITEMICON* = {1};
        TCHT_ONITEMLABEL* = {2};
        TCHT_ONITEM* = {1, 2};
        TCM_HITTEST* = 4877;
        TCM_SETITEMEXTRA* = 4878;
        TCM_ADJUSTRECT* = 4904;
        TCM_SETITEMSIZE* = 4905;
        TCM_REMOVEIMAGE* = 4906;
        TCM_SETPADDING* = 4907;
        TCM_GETROWCOUNT* = 4908;
        TCM_GETTOOLTIPS* = 4909;
        TCM_SETTOOLTIPS* = 4910;
        TCM_GETCURFOCUS* = 4911;
        TCM_SETCURFOCUS* = 4912;
        TCM_SETMINTABWIDTH* = 4913;
        TCM_DESELECTALL* = 4914;
        TCN_KEYDOWN* = -550;
        TCN_SELCHANGE* = -551;
        TCN_SELCHANGING* = -552;
        ANIMATE_CLASSW* = "SysAnimate32";
        ANIMATE_CLASSA* = "SysAnimate32";
        ANIMATE_CLASS* = "SysAnimate32";
        ACS_CENTER* = {0};
        ACS_TRANSPARENT* = {1};
        ACS_AUTOPLAY* = {2};
        ACS_TIMER* = {3};
        ACM_OPENA* = 1124;
        ACM_OPENW* = 1127;
        ACM_OPEN* = 1124;
        ACM_PLAY* = 1125;
        ACM_STOP* = 1126;
        ACN_START* = 1;
        ACN_STOP* = 2;
        MONTHCAL_CLASSW* = "SysMonthCal32";
        MONTHCAL_CLASSA* = "SysMonthCal32";
        MONTHCAL_CLASS* = "SysMonthCal32";
        MCM_FIRST* = 4096;
        MCM_GETCURSEL* = 4097;
        MCM_SETCURSEL* = 4098;
        MCM_GETMAXSELCOUNT* = 4099;
        MCM_SETMAXSELCOUNT* = 4100;
        MCM_GETSELRANGE* = 4101;
        MCM_SETSELRANGE* = 4102;
        MCM_GETMONTHRANGE* = 4103;
        MCM_SETDAYSTATE* = 4104;
        MCM_GETMINREQRECT* = 4105;
        MCM_GETTODAY* = 4106;
        MCM_SETTODAY* = 4107;
        MCM_GETWEEKNUMBERS* = 4108;
        MCM_SETWEEKNUMBERS* = 4109;
        MCN_SELCHANGE* = -749;
        MCN_GETDAYSTATE* = -748;
        MCS_DAYSTATE* = {0};
        MCS_MULTISELECT* = {1};
        MCS_WEEKNUMBERS* = {2};
        MCS_NOTODAY* = {3};
        GMR_VISIBLE* = 0;
        GMR_DAYSTATE* = 1;
        DATETIMEPICK_CLASSW* = "SysDateTimePick32";
        DATETIMEPICK_CLASSA* = "SysDateTimePick32";
        DATETIMEPICK_CLASS* = "SysDateTimePick32";
        DTM_FIRST* = 4096;
        DTM_GETSYSTEMTIME* = 4097;
        DTM_SETSYSTEMTIME* = 4098;
        DTM_GETRANGE* = 4099;
        DTM_SETRANGE* = 4100;
        DTM_SETFORMAT* = 4101;
        DTS_UPDOWN* = {0};
        DTS_SHOWNONE* = {1};
        DTS_SHORTDATEFORMAT* = {};
        DTS_LONGDATEFORMAT* = {2};
        DTS_TIMEFORMAT* = {0, 3};
        DTS_APPCANPARSE* = {4};
        DTN_DATETIMECHANGE* = -759;
        DTN_USERSTRING* = -758;
        DTN_WMKEYDOWN* = -757;
        DTN_FORMAT* = -756;
        DTN_FORMATQUERY* = -755;
        GDTR_MIN* = 1;
        GDTR_MAX* = 2;
        GDT_ERROR* = -1;
        GDT_VALID* = 0;
        GDT_NONE* = 1;

    CONST (* enumerations *)

    TYPE
        INITCOMMONCONTROLSEX* = RECORD [noalign]
            dwSize*: INTEGER;
            dwICC*: SET;
        END;
        PtrINITCOMMONCONTROLSEX* = POINTER TO INITCOMMONCONTROLSEX;
        NMCUSTOMDRAW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            dwDrawStage*: SET;
            hdc*: WinApi.HDC;
            rc*: WinApi.RECT;
            dwItemSpec*: INTEGER;
            uItemState*: SET;
        END;
        PtrNMCUSTOMDRAW* = POINTER TO NMCUSTOMDRAW;
        _IMAGELIST* = RECORD [untagged] (*i*) END; 
        Ptr_IMAGELIST* = POINTER TO _IMAGELIST;
        IMAGELISTDRAWPARAMS* = RECORD [noalign]
            cbSize*: INTEGER;
            himl*: Ptr_IMAGELIST;
            i*: INTEGER;
            hdcDst*: WinApi.HDC;
            x*: INTEGER;
            y*: INTEGER;
            cx*: INTEGER;
            cy*: INTEGER;
            xBitmap*: INTEGER;
            yBitmap*: INTEGER;
            rgbBk*: WinApi.COLORREF;
            rgbFg*: WinApi.COLORREF;
            fStyle*: SET;
            dwRop*: INTEGER;
        END;
        PtrIMAGELISTDRAWPARAMS* = POINTER TO IMAGELISTDRAWPARAMS;
        IMAGEINFO* = RECORD [noalign]
            hbmImage*: WinApi.HBITMAP;
            hbmMask*: WinApi.HBITMAP;
            Unused1*: INTEGER;
            Unused2*: INTEGER;
            rcImage*: WinApi.RECT;
        END;
        PtrIMAGEINFO* = POINTER TO IMAGEINFO;
        HDITEMA* = RECORD [noalign]
            mask*: SET;
            cxy*: INTEGER;
            pszText*: WinApi.PtrSTR;
            hbm*: WinApi.HBITMAP;
            cchTextMax*: INTEGER;
            fmt*: INTEGER;
            lParam*: WinApi.LPARAM;
            iImage*: INTEGER;
            iOrder*: INTEGER;
        END;
        PtrHDITEMA* = POINTER TO HDITEMA;
        HDITEMW* = RECORD [noalign]
            mask*: SET;
            cxy*: INTEGER;
            pszText*: WinApi.PtrWSTR;
            hbm*: WinApi.HBITMAP;
            cchTextMax*: INTEGER;
            fmt*: INTEGER;
            lParam*: WinApi.LPARAM;
            iImage*: INTEGER;
            iOrder*: INTEGER;
        END;
        PtrHDITEMW* = POINTER TO HDITEMW;
        HD_ITEMA* = HDITEMA; (*m*)
        PtrHD_ITEMA* = PtrHDITEMA;
        HD_ITEMW* = HDITEMW; (*m*)
        PtrHD_ITEMW* = PtrHDITEMW;
        HDITEM* = HDITEMA; (*m*)
        PtrHDITEM* = PtrHDITEMA;
        HD_ITEM* = HDITEMA; (*m*)
        PtrHD_ITEM* = PtrHDITEMA;
        HDLAYOUT* = RECORD [noalign]
            prc*: WinApi.PtrRECT;
            pwpos*: WinApi.PtrWINDOWPOS;
        END;
        PtrHDLAYOUT* = POINTER TO HDLAYOUT;
        HD_LAYOUT* = HDLAYOUT; (*m*)
        PtrHD_LAYOUT* = PtrHDLAYOUT;
        HDHITTESTINFO* = RECORD [noalign]
            pt*: WinApi.POINT;
            flags*: SET;
            iItem*: INTEGER;
        END;
        PtrHDHITTESTINFO* = POINTER TO HDHITTESTINFO;
        HD_HITTESTINFO* = HDHITTESTINFO; (*m*)
        PtrHD_HITTESTINFO* = PtrHDHITTESTINFO;
        NMHEADERA* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iItem*: INTEGER;
            iButton*: INTEGER;
            pitem*: PtrHDITEMA;
        END;
        PtrNMHEADERA* = POINTER TO NMHEADERA;
        NMHEADERW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iItem*: INTEGER;
            iButton*: INTEGER;
            pitem*: PtrHDITEMW;
        END;
        PtrNMHEADERW* = POINTER TO NMHEADERW;
        NMHEADER* = NMHEADERA; (*m*)
        PtrNMHEADER* = PtrNMHEADERA;
        HD_NOTIFYA* = NMHEADERA; (*m*)
        PtrHD_NOTIFYA* = PtrNMHEADERA;
        HD_NOTIFYW* = NMHEADERW; (*m*)
        PtrHD_NOTIFYW* = PtrNMHEADERW;
        HD_NOTIFY* = NMHEADERA; (*m*)
        PtrHD_NOTIFY* = PtrNMHEADERA;
        NMHDDISPINFOW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iItem*: INTEGER;
            mask*: SET;
            pszText*: WinApi.PtrWSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            lParam*: WinApi.LPARAM;
        END;
        PtrNMHDDISPINFOW* = POINTER TO NMHDDISPINFOW;
        NMHDDISPINFOA* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iItem*: INTEGER;
            mask*: SET;
            pszText*: WinApi.PtrSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            lParam*: WinApi.LPARAM;
        END;
        PtrNMHDDISPINFOA* = POINTER TO NMHDDISPINFOA;
        NMHDDISPINFO* = NMHDDISPINFOA; (*m*)
        PtrNMHDDISPINFO* = PtrNMHDDISPINFOA;
        TBBUTTON* = RECORD [noalign]
            iBitmap*: INTEGER;
            idCommand*: INTEGER;
            fsState*: SHORTCHAR;
            fsStyle*: SHORTCHAR;
            bReserved*: ARRAY [untagged] 2 OF SHORTCHAR;
            dwData*: INTEGER;
            iString*: INTEGER;
        END;
        PtrTBBUTTON* = POINTER TO TBBUTTON;
        COLORMAP* = RECORD [noalign]
            from*: WinApi.COLORREF;
            to*: WinApi.COLORREF;
        END;
        PtrCOLORMAP* = POINTER TO COLORMAP;
        TBADDBITMAP* = RECORD [noalign]
            hInst*: WinApi.HINSTANCE;
            nID*: INTEGER;
        END;
        PtrTBADDBITMAP* = POINTER TO TBADDBITMAP;
        TBSAVEPARAMSA* = RECORD [noalign]
            hkr*: WinApi.HKEY;
            pszSubKey*: WinApi.PtrSTR;
            pszValueName*: WinApi.PtrSTR;
        END;
        PtrTBSAVEPARAMSA* = POINTER TO TBSAVEPARAMSA;
        TBSAVEPARAMSW* = RECORD [noalign]
            hkr*: WinApi.HKEY;
            pszSubKey*: WinApi.PtrWSTR;
            pszValueName*: WinApi.PtrWSTR;
        END;
        PtrTBSAVEPARAMSW* = POINTER TO TBSAVEPARAMSW;
        TBSAVEPARAMS* = TBSAVEPARAMSA; (*m*)
        PtrTBSAVEPARAMS* = PtrTBSAVEPARAMSA;
        TBREPLACEBITMAP* = RECORD [noalign]
            hInstOld*: WinApi.HINSTANCE;
            nIDOld*: INTEGER;
            hInstNew*: WinApi.HINSTANCE;
            nIDNew*: INTEGER;
            nButtons*: INTEGER;
        END;
        PtrTBREPLACEBITMAP* = POINTER TO TBREPLACEBITMAP;
        NMTOOLBARA* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iItem*: INTEGER;
            tbButton*: TBBUTTON;
            cchText*: INTEGER;
            pszText*: WinApi.PtrSTR;
        END;
        PtrNMTOOLBARA* = POINTER TO NMTOOLBARA;
        NMTOOLBARW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iItem*: INTEGER;
            tbButton*: TBBUTTON;
            cchText*: INTEGER;
            pszText*: WinApi.PtrWSTR;
        END;
        PtrNMTOOLBARW* = POINTER TO NMTOOLBARW;
        NMTOOLBAR* = NMTOOLBARA; (*m*)
        PtrNMTOOLBAR* = PtrNMTOOLBARA;
        TBNOTIFYA* = NMTOOLBARA; (*m*)
        PtrTBNOTIFYA* = PtrNMTOOLBARA;
        TBNOTIFYW* = NMTOOLBARW; (*m*)
        PtrTBNOTIFYW* = PtrNMTOOLBARW;
        TBNOTIFY* = NMTOOLBARA; (*m*)
        PtrTBNOTIFY* = PtrNMTOOLBARA;
        TTTOOLINFOA* = RECORD [noalign]
            cbSize*: INTEGER;
            uFlags*: SET;
            hwnd*: WinApi.HWND;
            uId*: INTEGER;
            rect*: WinApi.RECT;
            hinst*: WinApi.HINSTANCE;
            lpszText*: WinApi.PtrSTR;
            lParam*: WinApi.LPARAM;
        END;
        PtrTTTOOLINFOA* = POINTER TO TTTOOLINFOA;
        TTTOOLINFOW* = RECORD [noalign]
            cbSize*: INTEGER;
            uFlags*: SET;
            hwnd*: WinApi.HWND;
            uId*: INTEGER;
            rect*: WinApi.RECT;
            hinst*: WinApi.HINSTANCE;
            lpszText*: WinApi.PtrWSTR;
            lParam*: WinApi.LPARAM;
        END;
        PtrTTTOOLINFOW* = POINTER TO TTTOOLINFOW;
        TTTOOLINFO* = TTTOOLINFOA; (*m*)
        PtrTTTOOLINFO* = PtrTTTOOLINFOA;
        TOOLINFO* = TTTOOLINFOA; (*m*)
        PtrTOOLINFO* = PtrTTTOOLINFOA;
        TOOLINFOA* = TTTOOLINFOA; (*m*)
        PtrTOOLINFOA* = PtrTTTOOLINFOA;
        TOOLINFOW* = TTTOOLINFOW; (*m*)
        PtrTOOLINFOW* = PtrTTTOOLINFOW;
        TTHITTESTINFOA* = RECORD [noalign]
            hwnd*: WinApi.HWND;
            pt*: WinApi.POINT;
            ti*: TTTOOLINFOA;
        END;
        PtrTTHITTESTINFOA* = POINTER TO TTHITTESTINFOA;
        TTHITTESTINFOW* = RECORD [noalign]
            hwnd*: WinApi.HWND;
            pt*: WinApi.POINT;
            ti*: TTTOOLINFOW;
        END;
        PtrTTHITTESTINFOW* = POINTER TO TTHITTESTINFOW;
        TTHITTESTINFO* = TTHITTESTINFOA; (*m*)
        PtrTTHITTESTINFO* = PtrTTHITTESTINFOA;
        NMTTDISPINFOA* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            lpszText*: WinApi.PtrSTR;
            szText*: ARRAY [untagged] 80 OF SHORTCHAR;
            hinst*: WinApi.HINSTANCE;
            uFlags*: SET;
            lParam*: WinApi.LPARAM;
        END;
        PtrNMTTDISPINFOA* = POINTER TO NMTTDISPINFOA;
        NMTTDISPINFOW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            lpszText*: WinApi.PtrWSTR;
            szText*: ARRAY [untagged] 80 OF CHAR;
            hinst*: WinApi.HINSTANCE;
            uFlags*: SET;
            lParam*: WinApi.LPARAM;
        END;
        PtrNMTTDISPINFOW* = POINTER TO NMTTDISPINFOW;
        TOOLTIPTEXTW* = NMTTDISPINFOW; (*m*)
        PtrTOOLTIPTEXTW* = PtrNMTTDISPINFOW;
        TOOLTIPTEXTA* = NMTTDISPINFOA; (*m*)
        PtrTOOLTIPTEXTA* = PtrNMTTDISPINFOA;
        TOOLTIPTEXT* = NMTTDISPINFOA; (*m*)
        PtrTOOLTIPTEXT* = PtrNMTTDISPINFOA;
        NMTTDISPINFO* = NMTTDISPINFOA; (*m*)
        PtrNMTTDISPINFO* = PtrNMTTDISPINFOA;
        DRAGLISTINFO* = RECORD [noalign]
            uNotification*: INTEGER;
            hWnd*: WinApi.HWND;
            ptCursor*: WinApi.POINT;
        END;
        PtrDRAGLISTINFO* = POINTER TO DRAGLISTINFO;
        UDACCEL* = RECORD [noalign]
            nSec*: INTEGER;
            nInc*: INTEGER;
        END;
        PtrUDACCEL* = POINTER TO UDACCEL;
        NMUPDOWN* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iPos*: INTEGER;
            iDelta*: INTEGER;
        END;
        PtrNMUPDOWN* = POINTER TO NMUPDOWN;
        NM_UPDOWN* = NMUPDOWN; (*m*)
        PtrNM_UPDOWN* = PtrNMUPDOWN;
        LVITEMA* = RECORD [noalign]
            mask*: SET;
            iItem*: INTEGER;
            iSubItem*: INTEGER;
            state*: INTEGER;
            stateMask*: INTEGER;
            pszText*: WinApi.PtrSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            lParam*: WinApi.LPARAM;
            iIndent*: INTEGER;
        END;
        PtrLVITEMA* = POINTER TO LVITEMA;
        LV_ITEMA* = LVITEMA; (*m*)
        PtrLV_ITEMA* = PtrLVITEMA;
        LVITEMW* = RECORD [noalign]
            mask*: SET;
            iItem*: INTEGER;
            iSubItem*: INTEGER;
            state*: INTEGER;
            stateMask*: INTEGER;
            pszText*: WinApi.PtrWSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            lParam*: WinApi.LPARAM;
            iIndent*: INTEGER;
        END;
        PtrLVITEMW* = POINTER TO LVITEMW;
        LV_ITEMW* = LVITEMW; (*m*)
        PtrLV_ITEMW* = PtrLVITEMW;
        LV_ITEM* = LVITEMA; (*m*)
        PtrLV_ITEM* = PtrLVITEMA;
        LVITEM* = LVITEMA; (*m*)
        PtrLVITEM* = PtrLVITEMA;
        LVFINDINFOA* = RECORD [noalign]
            flags*: SET;
            psz*: WinApi.PtrSTR;
            lParam*: WinApi.LPARAM;
            pt*: WinApi.POINT;
            vkDirection*: INTEGER;
        END;
        PtrLVFINDINFOA* = POINTER TO LVFINDINFOA;
        LV_FINDINFOA* = LVFINDINFOA; (*m*)
        PtrLV_FINDINFOA* = PtrLVFINDINFOA;
        LVFINDINFOW* = RECORD [noalign]
            flags*: SET;
            psz*: WinApi.PtrWSTR;
            lParam*: WinApi.LPARAM;
            pt*: WinApi.POINT;
            vkDirection*: INTEGER;
        END;
        PtrLVFINDINFOW* = POINTER TO LVFINDINFOW;
        LV_FINDINFOW* = LVFINDINFOW; (*m*)
        PtrLV_FINDINFOW* = PtrLVFINDINFOW;
        LV_FINDINFO* = LVFINDINFOA; (*m*)
        PtrLV_FINDINFO* = PtrLVFINDINFOA;
        LVFINDINFO* = LVFINDINFOA; (*m*)
        PtrLVFINDINFO* = PtrLVFINDINFOA;
        LVHITTESTINFO* = RECORD [noalign]
            pt*: WinApi.POINT;
            flags*: SET;
            iItem*: INTEGER;
            iSubItem*: INTEGER;
        END;
        PtrLVHITTESTINFO* = POINTER TO LVHITTESTINFO;
        LV_HITTESTINFO* = LVHITTESTINFO; (*m*)
        PtrLV_HITTESTINFO* = PtrLVHITTESTINFO;
        LVCOLUMNA* = RECORD [noalign]
            mask*: SET;
            fmt*: INTEGER;
            cx*: INTEGER;
            pszText*: WinApi.PtrSTR;
            cchTextMax*: INTEGER;
            iSubItem*: INTEGER;
            iImage*: INTEGER;
            iOrder*: INTEGER;
        END;
        PtrLVCOLUMNA* = POINTER TO LVCOLUMNA;
        LVCOLUMNW* = RECORD [noalign]
            mask*: SET;
            fmt*: INTEGER;
            cx*: INTEGER;
            pszText*: WinApi.PtrWSTR;
            cchTextMax*: INTEGER;
            iSubItem*: INTEGER;
            iImage*: INTEGER;
            iOrder*: INTEGER;
        END;
        PtrLVCOLUMNW* = POINTER TO LVCOLUMNW;
        LVCOLUMN* = LVCOLUMNA; (*m*)
        PtrLVCOLUMN* = PtrLVCOLUMNA;
        LV_COLUMN* = LVCOLUMNA; (*m*)
        PtrLV_COLUMN* = PtrLVCOLUMNA;
        LV_COLUMNA* = LVCOLUMNA; (*m*)
        PtrLV_COLUMNA* = PtrLVCOLUMNA;
        LV_COLUMNW* = LVCOLUMNW; (*m*)
        PtrLV_COLUMNW* = PtrLVCOLUMNW;
        FNLVCOMPARE* = PROCEDURE (p0: WinApi.LPARAM; p1: WinApi.LPARAM; p2: WinApi.LPARAM): INTEGER;
        NMLISTVIEW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iItem*: INTEGER;
            iSubItem*: INTEGER;
            uNewState*: INTEGER;
            uOldState*: INTEGER;
            uChanged*: INTEGER;
            ptAction*: WinApi.POINT;
            lParam*: WinApi.LPARAM;
        END;
        PtrNMLISTVIEW* = POINTER TO NMLISTVIEW;
        NM_LISTVIEW* = NMLISTVIEW; (*m*)
        PtrNM_LISTVIEW* = PtrNMLISTVIEW;
        NMLVCUSTOMDRAW* = RECORD [noalign]
            nmcd*: NMCUSTOMDRAW;
            clrText*: WinApi.COLORREF;
            clrTextBk*: WinApi.COLORREF;
        END;
        PtrNMLVCUSTOMDRAW* = POINTER TO NMLVCUSTOMDRAW;
        NMLVCACHEHINT* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iFrom*: INTEGER;
            iTo*: INTEGER;
        END;
        PtrNMLVCACHEHINT* = POINTER TO NMLVCACHEHINT;
        NM_CACHEHINT* = NMLVCACHEHINT; (*m*)
        PtrNM_CACHEHINT* = PtrNMLVCACHEHINT;
        NMLVFINDITEM* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            iStart*: INTEGER;
            lvfi*: LVFINDINFOA;
        END;
        PtrNMLVFINDITEM* = POINTER TO NMLVFINDITEM;
        NM_FINDITEM* = NMLVFINDITEM; (*m*)
        PtrNM_FINDITEM* = PtrNMLVFINDITEM;
        NMLVDISPINFOA* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            item*: LVITEMA;
        END;
        PtrNMLVDISPINFOA* = POINTER TO NMLVDISPINFOA;
        NMLVDISPINFOW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            item*: LVITEMW;
        END;
        PtrNMLVDISPINFOW* = POINTER TO NMLVDISPINFOW;
        LV_DISPINFOA* = NMLVDISPINFOA; (*m*)
        PtrLV_DISPINFOA* = PtrNMLVDISPINFOA;
        LV_DISPINFOW* = NMLVDISPINFOW; (*m*)
        PtrLV_DISPINFOW* = PtrNMLVDISPINFOW;
        LV_DISPINFO* = NMLVDISPINFOA; (*m*)
        PtrLV_DISPINFO* = PtrNMLVDISPINFOA;
        NMLVDISPINFO* = NMLVDISPINFOA; (*m*)
        PtrNMLVDISPINFO* = PtrNMLVDISPINFOA;
        NMLVKEYDOWN* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            wVKey*: SHORTINT;
            flags*: SET;
        END;
        PtrNMLVKEYDOWN* = POINTER TO NMLVKEYDOWN;
        LV_KEYDOWN* = NMLVKEYDOWN; (*m*)
        PtrLV_KEYDOWN* = PtrNMLVKEYDOWN;
        _TREEITEM* = RECORD [untagged] (*i*) END; 
        Ptr_TREEITEM* = POINTER TO _TREEITEM;
        TVITEMA* = RECORD [noalign]
            mask*: SET;
            hItem*: Ptr_TREEITEM;
            state*: INTEGER;
            stateMask*: INTEGER;
            pszText*: WinApi.PtrSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            iSelectedImage*: INTEGER;
            cChildren*: INTEGER;
            lParam*: WinApi.LPARAM;
        END;
        PtrTVITEMA* = POINTER TO TVITEMA;
        TVITEMW* = RECORD [noalign]
            mask*: SET;
            hItem*: Ptr_TREEITEM;
            state*: INTEGER;
            stateMask*: INTEGER;
            pszText*: WinApi.PtrWSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            iSelectedImage*: INTEGER;
            cChildren*: INTEGER;
            lParam*: WinApi.LPARAM;
        END;
        PtrTVITEMW* = POINTER TO TVITEMW;
        TV_ITEMW* = TVITEMW; (*m*)
        PtrTV_ITEMW* = PtrTVITEMW;
        TV_ITEMA* = TVITEMA; (*m*)
        PtrTV_ITEMA* = PtrTVITEMA;
        TV_ITEM* = TVITEMA; (*m*)
        PtrTV_ITEM* = PtrTVITEMA;
        TVITEM* = TVITEMA; (*m*)
        PtrTVITEM* = PtrTVITEMA;
        TVINSERTSTRUCTA* = RECORD [noalign]
            hParent*: Ptr_TREEITEM;
            hInsertAfter*: Ptr_TREEITEM;
            item*: TVITEMA;
        END;
        PtrTVINSERTSTRUCTA* = POINTER TO TVINSERTSTRUCTA;
        TVINSERTSTRUCTW* = RECORD [noalign]
            hParent*: Ptr_TREEITEM;
            hInsertAfter*: Ptr_TREEITEM;
            item*: TVITEMW;
        END;
        PtrTVINSERTSTRUCTW* = POINTER TO TVINSERTSTRUCTW;
        TV_INSERTSTRUCTA* = TVINSERTSTRUCTA; (*m*)
        PtrTV_INSERTSTRUCTA* = PtrTVINSERTSTRUCTA;
        TV_INSERTSTRUCTW* = TVINSERTSTRUCTW; (*m*)
        PtrTV_INSERTSTRUCTW* = PtrTVINSERTSTRUCTW;
        TVINSERTSTRUCT* = TVINSERTSTRUCTA; (*m*)
        PtrTVINSERTSTRUCT* = PtrTVINSERTSTRUCTA;
        TVHITTESTINFO* = RECORD [noalign]
            pt*: WinApi.POINT;
            flags*: SET;
            hItem*: Ptr_TREEITEM;
        END;
        PtrTVHITTESTINFO* = POINTER TO TVHITTESTINFO;
        TV_HITTESTINFO* = TVHITTESTINFO; (*m*)
        PtrTV_HITTESTINFO* = PtrTVHITTESTINFO;
        FNTVCOMPARE* = PROCEDURE (lParam1: WinApi.LPARAM; lParam2: WinApi.LPARAM; lParamSort: WinApi.LPARAM): INTEGER;
        TVSORTCB* = RECORD [noalign]
            hParent*: Ptr_TREEITEM;
            lpfnCompare*: FNTVCOMPARE;
            lParam*: WinApi.LPARAM;
        END;
        PtrTVSORTCB* = POINTER TO TVSORTCB;
        TV_SORTCB* = TVSORTCB; (*m*)
        PtrTV_SORTCB* = PtrTVSORTCB;
        NMTREEVIEWA* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            action*: INTEGER;
            itemOld*: TVITEMA;
            itemNew*: TVITEMA;
            ptDrag*: WinApi.POINT;
        END;
        PtrNMTREEVIEWA* = POINTER TO NMTREEVIEWA;
        NMTREEVIEWW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            action*: INTEGER;
            itemOld*: TVITEMW;
            itemNew*: TVITEMW;
            ptDrag*: WinApi.POINT;
        END;
        PtrNMTREEVIEWW* = POINTER TO NMTREEVIEWW;
        NM_TREEVIEWW* = NMTREEVIEWW; (*m*)
        PtrNM_TREEVIEWW* = PtrNMTREEVIEWW;
        NM_TREEVIEWA* = NMTREEVIEWA; (*m*)
        PtrNM_TREEVIEWA* = PtrNMTREEVIEWA;
        NM_TREEVIEW* = NMTREEVIEWA; (*m*)
        PtrNM_TREEVIEW* = PtrNMTREEVIEWA;
        NMTREEVIEW* = NMTREEVIEWA; (*m*)
        PtrNMTREEVIEW* = PtrNMTREEVIEWA;
        NMTVDISPINFOA* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            item*: TVITEMA;
        END;
        PtrNMTVDISPINFOA* = POINTER TO NMTVDISPINFOA;
        NMTVDISPINFOW* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            item*: TVITEMW;
        END;
        PtrNMTVDISPINFOW* = POINTER TO NMTVDISPINFOW;
        TV_DISPINFOA* = NMTVDISPINFOA; (*m*)
        PtrTV_DISPINFOA* = PtrNMTVDISPINFOA;
        TV_DISPINFOW* = NMTVDISPINFOW; (*m*)
        PtrTV_DISPINFOW* = PtrNMTVDISPINFOW;
        TV_DISPINFO* = NMTVDISPINFOA; (*m*)
        PtrTV_DISPINFO* = PtrNMTVDISPINFOA;
        NMTVDISPINFO* = NMTVDISPINFOA; (*m*)
        PtrNMTVDISPINFO* = PtrNMTVDISPINFOA;
        NMTVKEYDOWN* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            wVKey*: SHORTINT;
            flags*: SET;
        END;
        PtrNMTVKEYDOWN* = POINTER TO NMTVKEYDOWN;
        TV_KEYDOWN* = NMTVKEYDOWN; (*m*)
        PtrTV_KEYDOWN* = PtrNMTVKEYDOWN;
        COMBOBOXEXITEM* = RECORD [noalign]
            mask*: SET;
            iItem*: INTEGER;
            pszText*: WinApi.PtrSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            iSelectedImage*: INTEGER;
            iOverlay*: INTEGER;
            iIndent*: INTEGER;
            lParam*: WinApi.LPARAM;
        END;
        PtrCOMBOBOXEXITEM* = POINTER TO COMBOBOXEXITEM;
        NMCOMBOBOXEX* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            ceItem*: COMBOBOXEXITEM;
        END;
        PtrNMCOMBOBOXEX* = POINTER TO NMCOMBOBOXEX;
        NMCBEENDEDIT* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            fChanged*: WinApi.BOOL;
            iNewSelection*: INTEGER;
            szText*: ARRAY [untagged] 260 OF SHORTCHAR;
            iWhy*: INTEGER;
        END;
        PtrNMCBEENDEDIT* = POINTER TO NMCBEENDEDIT;
        TCITEMA* = RECORD [noalign]
            mask*: SET;
            dwState*: INTEGER;
            dwStateMask*: INTEGER;
            pszText*: WinApi.PtrSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            lParam*: WinApi.LPARAM;
        END;
        PtrTCITEMA* = POINTER TO TCITEMA;
        TCITEMW* = RECORD [noalign]
            mask*: SET;
            dwState*: INTEGER;
            dwStateMask*: INTEGER;
            pszText*: WinApi.PtrWSTR;
            cchTextMax*: INTEGER;
            iImage*: INTEGER;
            lParam*: WinApi.LPARAM;
        END;
        PtrTCITEMW* = POINTER TO TCITEMW;
        TC_ITEMA* = TCITEMA; (*m*)
        PtrTC_ITEMA* = PtrTCITEMA;
        TC_ITEMW* = TCITEMW; (*m*)
        PtrTC_ITEMW* = PtrTCITEMW;
        TC_ITEM* = TCITEMA; (*m*)
        PtrTC_ITEM* = PtrTCITEMA;
        TCITEM* = TCITEMA; (*m*)
        PtrTCITEM* = PtrTCITEMA;
        TCHITTESTINFO* = RECORD [noalign]
            pt*: WinApi.POINT;
            flags*: SET;
        END;
        PtrTCHITTESTINFO* = POINTER TO TCHITTESTINFO;
        TC_HITTESTINFO* = TCHITTESTINFO; (*m*)
        PtrTC_HITTESTINFO* = PtrTCHITTESTINFO;
        NMTCKEYDOWN* = RECORD [noalign]
            hdr*: WinApi.NMHDR;
            wVKey*: SHORTINT;
            flags*: SET;
        END;
        TC_KEYDOWN* = NMTCKEYDOWN; (*m*)
        MONTHDAYSTATE* = INTEGER;
        NMDAYSTATE* = RECORD [noalign]
            nmhdr*: WinApi.NMHDR;
            stStart*: WinApi.SYSTEMTIME;
            cDayState*: INTEGER;
            rgDayState*: ARRAY [untagged] 1 OF MONTHDAYSTATE;
        END;
        NMSELCHANGE* = RECORD [noalign]
            nmhdr*: WinApi.NMHDR;
            stSelStart*: WinApi.SYSTEMTIME;
            stSelEnd*: WinApi.SYSTEMTIME;
        END;
        NMDATETIMECHANGE* = RECORD [noalign]
            nmhdr*: WinApi.NMHDR;
            dwFlags*: SET;
            st*: WinApi.SYSTEMTIME;
        END;
        PtrNMDATETIMECHANGE* = POINTER TO NMDATETIMECHANGE;
        NMDATETIMESTRING* = RECORD [noalign]
            nmhdr*: WinApi.NMHDR;
            pszUserString*: WinApi.PtrSTR;
            st*: WinApi.SYSTEMTIME;
            dwFlags*: SET;
        END;
        PtrNMDATETIMESTRING* = POINTER TO NMDATETIMESTRING;
        NMDATETIMEWMKEYDOWN* = RECORD [noalign]
            nmhdr*: WinApi.NMHDR;
            nVirtKey*: INTEGER;
            pszFormat*: WinApi.PtrSTR;
            st*: WinApi.SYSTEMTIME;
        END;
        PtrNMDATETIMEWMKEYDOWN* = POINTER TO NMDATETIMEWMKEYDOWN;
        NMDATETIMEFORMAT* = RECORD [noalign]
            nmhdr*: WinApi.NMHDR;
            pszFormat*: WinApi.PtrSTR;
            st*: WinApi.SYSTEMTIME;
            pszDisplay*: WinApi.PtrSTR;
            szDisplay*: ARRAY [untagged] 64 OF SHORTCHAR;
        END;
        PtrNMDATETIMEFORMAT* = POINTER TO NMDATETIMEFORMAT;
        NMDATETIMEFORMATQUERY* = RECORD [noalign]
            nmhdr*: WinApi.NMHDR;
            pszFormat*: WinApi.PtrSTR;
            szMax*: WinApi.SIZE;
        END;
        PtrNMDATETIMEFORMATQUERY* = POINTER TO NMDATETIMEFORMATQUERY;

    PROCEDURE InitCommonControls* ();
    (*END InitCommonControls;*)

    PROCEDURE InitCommonControlsEx* (VAR [nil] p0: INITCOMMONCONTROLSEX): WinApi.BOOL;
    (*END InitCommonControlsEx;*)

    PROCEDURE ImageList_Create* (cx: INTEGER; cy: INTEGER; flags: SET; cInitial: INTEGER; cGrow: INTEGER): Ptr_IMAGELIST;
    (*END ImageList_Create;*)

    PROCEDURE ImageList_Destroy* (himl: Ptr_IMAGELIST): WinApi.BOOL;
    (*END ImageList_Destroy;*)

    PROCEDURE ImageList_GetImageCount* (himl: Ptr_IMAGELIST): INTEGER;
    (*END ImageList_GetImageCount;*)

    PROCEDURE ImageList_SetImageCount* (himl: Ptr_IMAGELIST; uNewCount: INTEGER): WinApi.BOOL;
    (*END ImageList_SetImageCount;*)

    PROCEDURE ImageList_Add* (himl: Ptr_IMAGELIST; hbmImage: WinApi.HBITMAP; hbmMask: WinApi.HBITMAP): INTEGER;
    (*END ImageList_Add;*)

    PROCEDURE ImageList_ReplaceIcon* (himl: Ptr_IMAGELIST; i: INTEGER; hicon: WinApi.HICON): INTEGER;
    (*END ImageList_ReplaceIcon;*)

    PROCEDURE ImageList_SetBkColor* (himl: Ptr_IMAGELIST; clrBk: WinApi.COLORREF): WinApi.COLORREF;
    (*END ImageList_SetBkColor;*)

    PROCEDURE ImageList_GetBkColor* (himl: Ptr_IMAGELIST): WinApi.COLORREF;
    (*END ImageList_GetBkColor;*)

    PROCEDURE ImageList_SetOverlayImage* (himl: Ptr_IMAGELIST; iImage: INTEGER; iOverlay: INTEGER): WinApi.BOOL;
    (*END ImageList_SetOverlayImage;*)

    PROCEDURE ImageList_Draw* (himl: Ptr_IMAGELIST; i: INTEGER; hdcDst: WinApi.HDC; x: INTEGER; y: INTEGER; fStyle: SET): WinApi.BOOL;
    (*END ImageList_Draw;*)

    PROCEDURE ImageList_Replace* (himl: Ptr_IMAGELIST; i: INTEGER; hbmImage: WinApi.HBITMAP; hbmMask: WinApi.HBITMAP): WinApi.BOOL;
    (*END ImageList_Replace;*)

    PROCEDURE ImageList_AddMasked* (himl: Ptr_IMAGELIST; hbmImage: WinApi.HBITMAP; crMask: WinApi.COLORREF): INTEGER;
    (*END ImageList_AddMasked;*)

    PROCEDURE ImageList_DrawEx* (himl: Ptr_IMAGELIST; i: INTEGER; hdcDst: WinApi.HDC; x: INTEGER; y: INTEGER; dx: INTEGER; dy: INTEGER; rgbBk: WinApi.COLORREF; rgbFg: WinApi.COLORREF; fStyle: SET): WinApi.BOOL;
    (*END ImageList_DrawEx;*)

    PROCEDURE ImageList_Remove* (himl: Ptr_IMAGELIST; i: INTEGER): WinApi.BOOL;
    (*END ImageList_Remove;*)

    PROCEDURE ImageList_GetIcon* (himl: Ptr_IMAGELIST; i: INTEGER; flags: SET): WinApi.HICON;
    (*END ImageList_GetIcon;*)

    PROCEDURE ImageList_LoadImageA* (hi: WinApi.HINSTANCE; lpbmp: WinApi.PtrSTR; cx: INTEGER; cGrow: INTEGER; crMask: WinApi.COLORREF; uType: SET; uFlags: SET): Ptr_IMAGELIST;
    (*END ImageList_LoadImageA;*)

    PROCEDURE ImageList_LoadImageW* (hi: WinApi.HINSTANCE; lpbmp: WinApi.PtrWSTR; cx: INTEGER; cGrow: INTEGER; crMask: WinApi.COLORREF; uType: SET; uFlags: SET): Ptr_IMAGELIST;
    (*END ImageList_LoadImageW;*)

    PROCEDURE ImageList_LoadImage* ["ImageList_LoadImageA"] (hi: WinApi.HINSTANCE; lpbmp: WinApi.PtrSTR; cx: INTEGER; cGrow: INTEGER; crMask: WinApi.COLORREF; uType: SET; uFlags: SET): Ptr_IMAGELIST;
    (*END ImageList_LoadImage;*)

    PROCEDURE ImageList_Copy* (himlDst: Ptr_IMAGELIST; iDst: INTEGER; himlSrc: Ptr_IMAGELIST; iSrc: INTEGER; uFlags: SET): WinApi.BOOL;
    (*END ImageList_Copy;*)

    PROCEDURE ImageList_BeginDrag* (himlTrack: Ptr_IMAGELIST; iTrack: INTEGER; dxHotspot: INTEGER; dyHotspot: INTEGER): WinApi.BOOL;
    (*END ImageList_BeginDrag;*)

    PROCEDURE ImageList_EndDrag* ();
    (*END ImageList_EndDrag;*)

    PROCEDURE ImageList_DragEnter* (hwndLock: WinApi.HWND; x: INTEGER; y: INTEGER): WinApi.BOOL;
    (*END ImageList_DragEnter;*)

    PROCEDURE ImageList_DragLeave* (hwndLock: WinApi.HWND): WinApi.BOOL;
    (*END ImageList_DragLeave;*)

    PROCEDURE ImageList_DragMove* (x: INTEGER; y: INTEGER): WinApi.BOOL;
    (*END ImageList_DragMove;*)

    PROCEDURE ImageList_SetDragCursorImage* (himlDrag: Ptr_IMAGELIST; iDrag: INTEGER; dxHotspot: INTEGER; dyHotspot: INTEGER): WinApi.BOOL;
    (*END ImageList_SetDragCursorImage;*)

    PROCEDURE ImageList_DragShowNolock* (fShow: WinApi.BOOL): WinApi.BOOL;
    (*END ImageList_DragShowNolock;*)

    PROCEDURE ImageList_GetDragImage* (VAR [nil] ppt: WinApi.POINT; VAR [nil] pptHotspot: WinApi.POINT): Ptr_IMAGELIST;
    (*END ImageList_GetDragImage;*)

    PROCEDURE ImageList_Read* (pstm: WinOle.IStream): Ptr_IMAGELIST;
    (*END ImageList_Read;*)

    PROCEDURE ImageList_Write* (himl: Ptr_IMAGELIST; pstm: WinOle.IStream): WinApi.BOOL;
    (*END ImageList_Write;*)

    PROCEDURE ImageList_GetIconSize* (himl: Ptr_IMAGELIST; VAR [nil] cx: INTEGER; VAR [nil] cy: INTEGER): WinApi.BOOL;
    (*END ImageList_GetIconSize;*)

    PROCEDURE ImageList_SetIconSize* (himl: Ptr_IMAGELIST; cx: INTEGER; cy: INTEGER): WinApi.BOOL;
    (*END ImageList_SetIconSize;*)

    PROCEDURE ImageList_GetImageInfo* (himl: Ptr_IMAGELIST; i: INTEGER; VAR [nil] pImageInfo: IMAGEINFO): WinApi.BOOL;
    (*END ImageList_GetImageInfo;*)

    PROCEDURE ImageList_Merge* (himl1: Ptr_IMAGELIST; i1: INTEGER; himl2: Ptr_IMAGELIST; i2: INTEGER; dx: INTEGER; dy: INTEGER): Ptr_IMAGELIST;
    (*END ImageList_Merge;*)

    PROCEDURE CreateToolbarEx* (hwnd: WinApi.HWND; ws: INTEGER; wID: INTEGER; nBitmaps: INTEGER; hBMInst: WinApi.HINSTANCE; wBMID: INTEGER; VAR [nil] lpButtons: TBBUTTON; iNumButtons: INTEGER; dxButton: INTEGER; dyButton: INTEGER; dxBitmap: INTEGER; dyBitmap: INTEGER; uStructSize: INTEGER): WinApi.HWND;
    (*END CreateToolbarEx;*)

    PROCEDURE CreateMappedBitmap* (hInstance: WinApi.HINSTANCE; idBitmap: INTEGER; wFlags: INTEGER; VAR [nil] lpColorMap: COLORMAP; iNumMaps: INTEGER): WinApi.HBITMAP;
    (*END CreateMappedBitmap;*)

    PROCEDURE DrawStatusTextA* (hDC: WinApi.HDC; VAR [nil] lprc: WinApi.RECT; pszText: WinApi.PtrSTR; uFlags: SET);
    (*END DrawStatusTextA;*)

    PROCEDURE DrawStatusTextW* (hDC: WinApi.HDC; VAR [nil] lprc: WinApi.RECT; pszText: WinApi.PtrWSTR; uFlags: SET);
    (*END DrawStatusTextW;*)

    PROCEDURE CreateStatusWindowA* (style: SET; lpszText: WinApi.PtrSTR; hwndParent: WinApi.HWND; wID: INTEGER): WinApi.HWND;
    (*END CreateStatusWindowA;*)

    PROCEDURE CreateStatusWindowW* (style: SET; lpszText: WinApi.PtrWSTR; hwndParent: WinApi.HWND; wID: INTEGER): WinApi.HWND;
    (*END CreateStatusWindowW;*)

    PROCEDURE CreateStatusWindow* ["CreateStatusWindowA"] (style: SET; lpszText: WinApi.PtrSTR; hwndParent: WinApi.HWND; wID: INTEGER): WinApi.HWND;
    (*END CreateStatusWindow;*)

    PROCEDURE DrawStatusText* ["DrawStatusTextA"] (hDC: WinApi.HDC; VAR [nil] lprc: WinApi.RECT; pszText: WinApi.PtrSTR; uFlags: SET);
    (*END DrawStatusText;*)

    PROCEDURE MenuHelp* (uMsg: INTEGER; wParam: WinApi.WPARAM; lParam: WinApi.LPARAM; hMainMenu: WinApi.HMENU; hInst: WinApi.HINSTANCE; hwndStatus: WinApi.HWND; VAR [nil] lpwIDs: INTEGER);
    (*END MenuHelp;*)

    PROCEDURE ShowHideMenuCtl* (hWnd: WinApi.HWND; uFlags: SET; VAR [nil] lpInfo: INTEGER): WinApi.BOOL;
    (*END ShowHideMenuCtl;*)

    PROCEDURE GetEffectiveClientRect* (hWnd: WinApi.HWND; VAR [nil] lprc: WinApi.RECT; VAR [nil] lpInfo: INTEGER);
    (*END GetEffectiveClientRect;*)

    PROCEDURE MakeDragList* (hLB: WinApi.HWND): WinApi.BOOL;
    (*END MakeDragList;*)

    PROCEDURE DrawInsert* (handParent: WinApi.HWND; hLB: WinApi.HWND; nItem: INTEGER);
    (*END DrawInsert;*)

    PROCEDURE LBItemFromPt* (hLB: WinApi.HWND; pt: WinApi.POINT; bAutoScroll: WinApi.BOOL): INTEGER;
    (*END LBItemFromPt;*)

    PROCEDURE CreateUpDownControl* (dwStyle: SET; x: INTEGER; y: INTEGER; cx: INTEGER; cy: INTEGER; hParent: WinApi.HWND; nID: INTEGER; hInst: WinApi.HINSTANCE; hBuddy: WinApi.HWND; nUpper: INTEGER; nLower: INTEGER; nPos: INTEGER): WinApi.HWND;
    (*END CreateUpDownControl;*)

END WinCtl.
