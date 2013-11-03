MODULE CtlAccess8;
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

    (* Microsoft Access 8.0 Object Library, help: E:\Microsoft Office\Office\acvba80.hlp, id: 0 *)
    (* guid: {4AFFC9A0-5F99-101B-AF4E-00AA003F0F07}, lcid: 0, syskind: win32, version: 8.0 *)

    IMPORT CtlT, CtlC, CtlDAO := CtlDAO35, CtlOffice;

    CONST
        (* OldConstants *)
            V_EMPTY* = 0;
            V_NULL* = 1;
            V_INTEGER* = 2;
            V_LONG* = 3;
            V_SINGLE* = 4;
            V_DOUBLE* = 5;
            V_CURRENCY* = 6;
            V_DATE* = 7;
            V_STRING* = 8;
            DB_BINARY* = 9;
            DB_OLE* = 11;
            DB_NONULLS* = 3;
            A_TABLE* = 0;
            A_QUERY* = 1;
            A_FORM* = 2;
            A_REPORT* = 3;
            A_MACRO* = 4;
            A_MODULE* = 5;
            A_FORMBAR* = 0;
            A_FILE* = 0;
            A_EDITMENU* = 1;
            A_RECORDSMENU* = 3;
            A_NEW* = 0;
            A_SAVEFORM* = 2;
            A_SAVEFORMAS* = 3;
            A_SAVERECORD* = 4;
            A_UNDO* = 0;
            A_UNDOFIELD* = 1;
            A_CUT* = 2;
            A_COPY* = 3;
            A_PASTE* = 4;
            A_DELETE* = 6;
            A_SELECTRECORD* = 7;
            A_SELECTALLRECORDS* = 8;
            A_OBJECT* = 14;
            A_REFRESH* = 2;
            A_OBJECTVERB* = 0;
            A_OBJECTUPDATE* = 3;
            A_ANYWHERE* = 0;
            A_ENTIRE* = 1;
            A_START* = 2;
            A_UP* = 0;
            A_DOWN* = 1;
            A_CURRENT* = 1;
            A_ALL* = 0;
            A_PREVIOUS* = 0;
            A_NEXT* = 1;
            A_FIRST* = 2;
            A_LAST* = 3;
            A_GOTO* = 4;
            A_NEWREC* = 5;
            A_NORMAL* = 0;
            A_DESIGN* = 1;
            A_PREVIEW* = 2;
            A_FORMDS* = 3;
            A_ADD* = 0;
            A_EDIT* = 1;
            A_READONLY* = 2;
            A_HIDDEN* = 1;
            A_ICON* = 2;
            A_DIALOG* = 3;
            A_PRINTALL* = 0;
            A_SELECTION* = 1;
            A_PAGES* = 2;
            A_HIGH* = 0;
            A_MEDIUM* = 1;
            A_LOW* = 2;
            A_DRAFT* = 3;
            A_PROMPT* = 0;
            A_SAVE* = 1;
            A_EXIT* = 2;
            A_IMPORT* = 0;
            A_EXPORT* = 1;
            A_ATTACH* = 2;
            A_IMPORTDELIM* = 0;
            A_IMPORTFIXED* = 1;
            A_EXPORTDELIM* = 2;
            A_EXPORTFIXED* = 3;
            A_EXPORTMERGE* = 4;
            OLE_CHANGED* = 0;
            OLE_SAVED* = 1;
            OLE_CLOSED* = 2;
            OLE_RENAMED* = 3;
            OLE_RELEASE* = 5;
            SHIFT_MASK* = 1;
            CTRL_MASK* = 2;
            ALT_MASK* = 4;
            LEFT_BUTTON* = 1;
            RIGHT_BUTTON* = 2;
            MIDDLE_BUTTON* = 4;
            DATA_ERRCONTINUE* = 0;
            DATA_ERRDISPLAY* = 1;
            DATA_ERRADDED* = 2;
            LB_INITIALIZE* = 0;
            LB_OPEN* = 1;
            LB_GETROWCOUNT* = 3;
            LB_GETCOLUMNCOUNT* = 4;
            LB_GETCOLUMNWIDTH* = 5;
            LB_GETVALUE* = 6;
            LB_GETFORMAT* = 7;
            LB_CLOSE* = 8;
            LB_END* = 9;
            SYSCMD_INITMETER* = 1;
            SYSCMD_UPDATEMETER* = 2;
            SYSCMD_REMOVEMETER* = 3;
            SYSCMD_SETSTATUS* = 4;
            SYSCMD_CLEARSTATUS* = 5;
            SYSCMD_RUNTIME* = 6;
            SYSCMD_ACCESSVER* = 7;
            SYSCMD_INIFILE* = 8;
            SYSCMD_ACCESSDIR* = 9;
            SYSCMD_GETOBJECTSTATE* = 10;
            SYSCMD_CLEARHELPTOPIC* = 11;
            OBJSTATE_OPEN* = 1;
            OBJSTATE_NEW* = 4;
            OBJSTATE_DIRTY* = 2;
            A_DELETE_V2* = 7;
            A_SELECTRECORD_V2* = 8;
            A_SELECTALLRECORDS_V2* = 9;
            A_TOOLBAR_YES* = 0;
            A_TOOLBAR_WHERE_APPROP* = 1;
            A_TOOLBAR_NO* = 2;
            DELETE_OK* = 0;
            DELETE_CANCEL* = 1;
            DELETE_USER_CANCEL* = 2;
            DB_SEC_FRMRPT_READDEF* = 4;
            DB_SEC_FRMRPT_WRITEDEF* = 65548;
            DB_SEC_FRMRPT_EXECUTE* = 256;
            DB_SEC_MAC_READDEF* = 10;
            DB_SEC_MAC_WRITEDEF* = 65542;
            DB_SEC_MAC_EXECUTE* = 8;
            DB_SEC_MOD_READDEF* = 2;
            DB_SEC_MOD_WRITEDEF* = 65542;
            A_MENU_VER1X* = 11;
            A_MENU_VER20* = 20;
            A_FORMATRTF* = "Rich Text Format (*.rtf)";
            A_FORMATXLS* = "Microsoft Excel (*.xls)";
            A_FORMATTXT* = "MS-DOS Text (*.txt)";
            DB_OPEN_TABLE* = 1;
            DB_OPEN_DYNASET* = 2;
            DB_OPEN_SNAPSHOT* = 4;
            DB_DENYWRITE* = 1;
            DB_DENYREAD* = 2;
            DB_READONLY* = 4;
            DB_APPENDONLY* = 8;
            DB_INCONSISTENT* = 16;
            DB_CONSISTENT* = 32;
            DB_SQLPASSTHROUGH* = 64;
            DB_FAILONERROR* = 128;
            DB_FORWARDONLY* = 256;
            DB_OPTIONINIPATH* = 1;
            DB_FIXEDFIELD* = 1;
            DB_VARIABLEFIELD* = 2;
            DB_AUTOINCRFIELD* = 16;
            DB_UPDATABLEFIELD* = 32;
            DB_DESCENDING* = 1;
            DB_BOOLEAN* = 1;
            DB_BYTE* = 2;
            DB_INTEGER* = 3;
            DB_LONG* = 4;
            DB_CURRENCY* = 5;
            DB_SINGLE* = 6;
            DB_DOUBLE* = 7;
            DB_DATE* = 8;
            DB_TEXT* = 10;
            DB_LONGBINARY* = 11;
            DB_MEMO* = 12;
            DB_RELATIONUNIQUE* = 1;
            DB_RELATIONDONTENFORCE* = 2;
            DB_RELATIONINHERITED* = 4;
            DB_RELATIONUPDATECASCADE* = 256;
            DB_RELATIONDELETECASCADE* = 4096;
            DB_RELATIONLEFT* = 16777216;
            DB_RELATIONRIGHT* = 33554432;
            DB_ATTACHEXCLUSIVE* = 65536;
            DB_ATTACHSAVEPWD* = 131072;
            DB_SYSTEMOBJECT* = -2147483646;
            DB_ATTACHEDTABLE* = 1073741824;
            DB_ATTACHEDODBC* = 536870912;
            DB_HIDDENOBJECT* = 1;
            DB_TABLE* = 1;
            DB_QUERYDEF* = 5;
            DB_QSELECT* = 0;
            DB_QACTION* = 240;
            DB_QCROSSTAB* = 16;
            DB_QDELETE* = 32;
            DB_QUPDATE* = 48;
            DB_QAPPEND* = 64;
            DB_QMAKETABLE* = 80;
            DB_QDDL* = 96;
            DB_QSQLPASSTHROUGH* = 112;
            DB_QSETOPERATION* = 128;
            DB_QSPTBULK* = 144;
            DB_UNIQUE* = 1;
            DB_PRIMARY* = 2;
            DB_PROHIBITNULL* = 4;
            DB_IGNORENULL* = 8;
            DB_LANG_ARABIC* = ";LANGID=0x0401;CP=1256;COUNTRY=0";
            DB_LANG_CZECH* = ";LANGID=0x0405;CP=1250;COUNTRY=0";
            DB_LANG_DUTCH* = ";LANGID=0x0413;CP=1252;COUNTRY=0";
            DB_LANG_GENERAL* = ";LANGID=0x0409;CP=1252;COUNTRY=0";
            DB_LANG_GREEK* = ";LANGID=0x0408;CP=1253;COUNTRY=0";
            DB_LANG_HEBREW* = ";LANGID=0x040D;CP=1255;COUNTRY=0";
            DB_LANG_HUNGARIAN* = ";LANGID=0x040E;CP=1250;COUNTRY=0";
            DB_LANG_ICELANDIC* = ";LANGID=0x040F;CP=1252;COUNTRY=0";
            DB_LANG_NORDIC* = ";LANGID=0x041D;CP=1252;COUNTRY=0";
            DB_LANG_NORWDAN* = ";LANGID=0x0414;CP=1252;COUNTRY=0";
            DB_LANG_POLISH* = ";LANGID=0x0415;CP=1250;COUNTRY=0";
            DB_LANG_CYRILLIC* = ";LANGID=0x0419;CP=1251;COUNTRY=0";
            DB_LANG_SPANISH* = ";LANGID=0x040A;CP=1252;COUNTRY=0";
            DB_LANG_SWEDFIN* = ";LANGID=0x040B;CP=1252;COUNTRY=0";
            DB_LANG_TURKISH* = ";LANGID=0x041F;CP=1254;COUNTRY=0";
            DB_VERSION10* = 1;
            DB_ENCRYPT* = 2;
            DB_DECRYPT* = 4;
            DB_VERSION11* = 8;
            DB_VERSION20* = 16;
            DB_SORTARABIC* = 267;
            DB_SORTCYRILLIC* = 263;
            DB_SORTCZECH* = 264;
            DB_SORTDUTCH* = 259;
            DB_SORTGENERAL* = 256;
            DB_SORTGREEK* = 269;
            DB_SORTHEBREW* = 268;
            DB_SORTHUNGARIAN* = 265;
            DB_SORTICELANDIC* = 262;
            DB_SORTNORWDAN* = 261;
            DB_SORTPDXINTL* = 4096;
            DB_SORTPDXNOR* = 4098;
            DB_SORTPDXSWE* = 4097;
            DB_SORTPOLISH* = 266;
            DB_SORTSPANISH* = 258;
            DB_SORTSWEDFIN* = 260;
            DB_SORTTURKISH* = 270;
            DB_SORTUNDEFINED* = -1;
            DB_FREELOCKS* = 1;
            DB_SEC_NOACCESS* = 0;
            DB_SEC_FULLACCESS* = 1048575;
            DB_SEC_DELETE* = 65536;
            DB_SEC_READSEC* = 131072;
            DB_SEC_WRITESEC* = 262144;
            DB_SEC_WRITEOWNER* = 524288;
            DB_SEC_DBCREATE* = 1;
            DB_SEC_DBOPEN* = 2;
            DB_SEC_DBEXCLUSIVE* = 4;
            DB_SEC_CREATE* = 1;
            DB_SEC_READDEF* = 4;
            DB_SEC_WRITEDEF* = 65548;
            DB_SEC_RETRIEVEDATA* = 20;
            DB_SEC_INSERTDATA* = 32;
            DB_SEC_REPLACEDATA* = 64;
            DB_SEC_DELETEDATA* = 128;
        (* Constants: Predefined constants *)
            acDataErrContinue* = 0;
            acDataErrDisplay* = 1;
            acDataErrAdded* = 2;
            acDeleteOK* = 0;
            acDeleteCancel* = 1;
            acDeleteUserCancel* = 2;
            acObjStateOpen* = 1;
            acObjStateNew* = 4;
            acObjStateDirty* = 2;
            acLBInitialize* = 0;
            acLBOpen* = 1;
            acLBGetRowCount* = 3;
            acLBGetColumnCount* = 4;
            acLBGetColumnWidth* = 5;
            acLBGetValue* = 6;
            acLBGetFormat* = 7;
            acLBClose* = 8;
            acLBEnd* = 9;
            acPropCatNA* = 0;
            acPropCatLayout* = 1;
            acPropCatData* = 2;
            acPropCatEvent* = 4;
            acPropCatOther* = 8;
            acPrompt* = 0;
            acSave* = 1;
            acExit* = 2;
            acOLEEither* = 2;
            acOLECreateEmbed* = 0;
            acOLECreateNew* = 0;
            acOLECreateLink* = 1;
            acOLECreateFromFile* = 1;
            acOLECopy* = 4;
            acOLEPaste* = 5;
            acOLEUpdate* = 6;
            acOLEActivate* = 7;
            acOLEClose* = 9;
            acOLEDelete* = 10;
            acOLEInsertObjDlg* = 14;
            acOLEPasteSpecialDlg* = 15;
            acOLEFetchVerbs* = 17;
            acOLEDisplayContent* = 0;
            acOLEDisplayIcon* = 1;
            acOLELinked* = 0;
            acOLEEmbedded* = 1;
            acOLENone* = 3;
            acOLESizeClip* = 0;
            acOLESizeStretch* = 1;
            acOLESizeAutoSize* = 2;
            acOLESizeZoom* = 3;
            acOLEUpdateAutomatic* = 0;
            acOLEUpdateFrozen* = 1;
            acOLEUpdateManual* = 2;
            acOLEActivateManual* = 0;
            acOLEActivateGetFocus* = 1;
            acOLEActivateDoubleClick* = 2;
            acOLEVerbPrimary* = 0;
            acOLEVerbShow* = -1;
            acOLEVerbOpen* = -2;
            acOLEVerbHide* = -3;
            acOLEVerbInPlaceUIActivate* = -4;
            acOLEVerbInPlaceActivate* = -5;
            acMenuVer1X* = 11;
            acMenuVer20* = 20;
            acMenuVer70* = 70;
            acFormBar* = 0;
            acFile* = 0;
            acEditMenu* = 1;
            acRecordsMenu* = 5;
            acNew* = 0;
            acSaveForm* = 4;
            acSaveFormAs* = 5;
            acSaveRecord* = 4;
            acUndo* = 0;
            acCut* = 1;
            acCopy* = 2;
            acPaste* = 3;
            acDelete* = 6;
            acSelectRecord* = 8;
            acSelectAllRecords* = 9;
            acObject* = 14;
            acRefresh* = 5;
            acObjectVerb* = 0;
            acObjectUpdate* = 3;
            acToolbarYes* = 0;
            acToolbarWhereApprop* = 1;
            acToolbarNo* = 2;
            acFormatRTF* = "Rich Text Format (*.rtf)";
            acFormatXLS* = "Microsoft Excel (*.xls)";
            acFormatTXT* = "MS-DOS Text (*.txt)";
            acFormatHTML* = "HTML (*.html)";
            acFormatIIS* = "Microsoft IIS (*.htx; *.idc)";
            acFormatASP* = "Microsoft Active Server Pages (*.asp)";
            acSecFrmRptReadDef* = 4;
            acSecFrmRptWriteDef* = 65548;
            acSecFrmRptExecute* = 256;
            acSecMacReadDef* = 10;
            acSecMacWriteDef* = 65542;
            acSecMacExecute* = 8;
            acSecModReadDef* = 2;
            acSecModWriteDef* = 65542;
            acMenuUngray* = 0;
            acMenuGray* = 1;
            acMenuUncheck* = 2;
            acMenuCheck* = 3;
            acEffectNormal* = 0;
            acEffectRaised* = 1;
            acEffectSunken* = 2;
            acEffectEtched* = 3;
            acEffectShadow* = 4;
            acEffectChisel* = 5;
            acGridlinesNone* = 0;
            acGridlinesHoriz* = 1;
            acGridlinesVert* = 2;
            acGridlinesBoth* = 3;
            acGridlinesBothV2* = -1;
            acFilterByForm* = 0;
            acFilterAdvanced* = 1;
            acShowAllRecords* = 0;
            acApplyFilter* = 1;
            acCloseFilterWindow* = 2;
            acShiftMask* = 1;
            acCtrlMask* = 2;
            acAltMask* = 4;
            acLeftButton* = 1;
            acRightButton* = 2;
            acMiddleButton* = 4;
            acOLEChanged* = 0;
            acOLESaved* = 1;
            acOLEClosed* = 2;
            acOLERenamed* = 3;
            vbKeyLButton* = 1;
            vbKeyRButton* = 2;
            vbKeyCancel* = 3;
            vbKeyMButton* = 4;
            vbKeyBack* = 8;
            vbKeyTab* = 9;
            vbKeyClear* = 12;
            vbKeyReturn* = 13;
            vbKeyShift* = 16;
            vbKeyControl* = 17;
            vbKeyMenu* = 18;
            vbKeyPause* = 19;
            vbKeyCapital* = 20;
            vbKeyEscape* = 27;
            vbKeySpace* = 32;
            vbKeyPageUp* = 33;
            vbKeyPageDown* = 34;
            vbKeyEnd* = 35;
            vbKeyHome* = 36;
            vbKeyLeft* = 37;
            vbKeyUp* = 38;
            vbKeyRight* = 39;
            vbKeyDown* = 40;
            vbKeySelect* = 41;
            vbKeyPrint* = 42;
            vbKeyExecute* = 43;
            vbKeySnapshot* = 44;
            vbKeyInsert* = 45;
            vbKeyDelete* = 46;
            vbKeyHelp* = 47;
            vbKeyNumlock* = 144;
            vbKeyA* = 65;
            vbKeyB* = 66;
            vbKeyC* = 67;
            vbKeyD* = 68;
            vbKeyE* = 69;
            vbKeyF* = 70;
            vbKeyG* = 71;
            vbKeyH* = 72;
            vbKeyI* = 73;
            vbKeyJ* = 74;
            vbKeyK* = 75;
            vbKeyL* = 76;
            vbKeyM* = 77;
            vbKeyN* = 78;
            vbKeyO* = 79;
            vbKeyP* = 80;
            vbKeyQ* = 81;
            vbKeyR* = 82;
            vbKeyS* = 83;
            vbKeyT* = 84;
            vbKeyU* = 85;
            vbKeyV* = 86;
            vbKeyW* = 87;
            vbKeyX* = 88;
            vbKeyY* = 89;
            vbKeyZ* = 90;
            vbKey0* = 48;
            vbKey1* = 49;
            vbKey2* = 50;
            vbKey3* = 51;
            vbKey4* = 52;
            vbKey5* = 53;
            vbKey6* = 54;
            vbKey7* = 55;
            vbKey8* = 56;
            vbKey9* = 57;
            vbKeyNumpad0* = 96;
            vbKeyNumpad1* = 97;
            vbKeyNumpad2* = 98;
            vbKeyNumpad3* = 99;
            vbKeyNumpad4* = 100;
            vbKeyNumpad5* = 101;
            vbKeyNumpad6* = 102;
            vbKeyNumpad7* = 103;
            vbKeyNumpad8* = 104;
            vbKeyNumpad9* = 105;
            vbKeyMultiply* = 106;
            vbKeyAdd* = 107;
            vbKeySeparator* = 108;
            vbKeySubtract* = 109;
            vbKeyDecimal* = 110;
            vbKeyDivide* = 111;
            vbKeyF1* = 112;
            vbKeyF2* = 113;
            vbKeyF3* = 114;
            vbKeyF4* = 115;
            vbKeyF5* = 116;
            vbKeyF6* = 117;
            vbKeyF7* = 118;
            vbKeyF8* = 119;
            vbKeyF9* = 120;
            vbKeyF10* = 121;
            vbKeyF11* = 122;
            vbKeyF12* = 123;
            vbKeyF13* = 124;
            vbKeyF14* = 125;
            vbKeyF15* = 126;
            vbKeyF16* = 127;
        (* AcModuleType *)
            acStandardModule* = 0;
            acClassModule* = 1;
        (* AcCloseSave *)
            acSavePrompt* = 0;
            acSaveYes* = 1;
            acSaveNo* = 2;
        (* AcQuitOption *)
            acQuitPrompt* = 0;
            acQuitSaveAll* = 1;
            acQuitSaveNone* = 2;
        (* AcSection *)
            acDetail* = 0;
            acHeader* = 1;
            acFooter* = 2;
            acPageHeader* = 3;
            acPageFooter* = 4;
            acGroupLevel1Header* = 5;
            acGroupLevel1Footer* = 6;
            acGroupLevel2Header* = 7;
            acGroupLevel2Footer* = 8;
        (* AcControlType *)
            acLabel* = 100;
            acRectangle* = 101;
            acLine* = 102;
            acImage* = 103;
            acCommandButton* = 104;
            acOptionButton* = 105;
            acCheckBox* = 106;
            acOptionGroup* = 107;
            acBoundObjectFrame* = 108;
            acTextBox* = 109;
            acListBox* = 110;
            acComboBox* = 111;
            acSubform* = 112;
            acObjectFrame* = 114;
            acPageBreak* = 118;
            acCustomControl* = 119;
            acToggleButton* = 122;
            acTabCtl* = 123;
            acPage* = 124;
        (* AcDataObjectType *)
            acActiveDataObject* = -1;
            acDataTable* = 0;
            acDataQuery* = 1;
            acDataForm* = 2;
        (* AcDataTransferType *)
            acImport* = 0;
            acExport* = 1;
            acLink* = 2;
        (* AcSendObjectType *)
            acSendNoObject* = -1;
            acSendTable* = 0;
            acSendQuery* = 1;
            acSendForm* = 2;
            acSendReport* = 3;
            acSendModule* = 5;
        (* AcObjectType *)
            acDefault* = -1;
            acTable* = 0;
            acQuery* = 1;
            acForm* = 2;
            acReport* = 3;
            acMacro* = 4;
            acModule* = 5;
        (* AcFindField *)
            acCurrent* = -1;
            acAll* = 0;
        (* AcFindMatch *)
            acAnywhere* = 0;
            acEntire* = 1;
            acStart* = 2;
        (* AcFormView *)
            acNormal* = 0;
            acDesign* = 1;
            acPreview* = 2;
            acFormDS* = 3;
        (* AcOpenDataMode *)
            acAdd* = 0;
            acEdit* = 1;
            acReadOnly* = 2;
        (* AcFormOpenDataMode *)
            acFormPropertySettings* = -1;
            acFormAdd* = 0;
            acFormEdit* = 1;
            acFormReadOnly* = 2;
        (* AcOutputObjectType *)
            acOutputTable* = 0;
            acOutputQuery* = 1;
            acOutputForm* = 2;
            acOutputReport* = 3;
            acOutputModule* = 5;
        (* AcPrintQuality *)
            acHigh* = 0;
            acMedium* = 1;
            acLow* = 2;
            acDraft* = 3;
        (* AcPrintRange *)
            acPrintAll* = 0;
            acSelection* = 1;
            acPages* = 2;
        (* AcRecord *)
            acPrevious* = 0;
            acNext* = 1;
            acFirst* = 2;
            acLast* = 3;
            acGoTo* = 4;
            acNewRec* = 5;
        (* AcSearchDirection *)
            acUp* = 0;
            acDown* = 1;
            acSearchAll* = 2;
        (* AcSysCmdAction *)
            acSysCmdInitMeter* = 1;
            acSysCmdUpdateMeter* = 2;
            acSysCmdRemoveMeter* = 3;
            acSysCmdSetStatus* = 4;
            acSysCmdClearStatus* = 5;
            acSysCmdRuntime* = 6;
            acSysCmdAccessVer* = 7;
            acSysCmdIniFile* = 8;
            acSysCmdAccessDir* = 9;
            acSysCmdGetObjectState* = 10;
            acSysCmdClearHelpTopic* = 11;
            acSysCmdProfile* = 12;
            acSysCmdGetWorkgroupFile* = 13;
        (* AcTextTransferType *)
            acImportDelim* = 0;
            acImportFixed* = 1;
            acExportDelim* = 2;
            acExportFixed* = 3;
            acExportMerge* = 4;
            acLinkDelim* = 5;
            acLinkFixed* = 6;
            acImportHTML* = 7;
            acExportHTML* = 8;
            acLinkHTML* = 9;
        (* AcView *)
            acViewNormal* = 0;
            acViewDesign* = 1;
            acViewPreview* = 2;
        (* AcWindowMode *)
            acWindowNormal* = 0;
            acHidden* = 1;
            acIcon* = 2;
            acDialog* = 3;
        (* AcSpreadSheetType *)
            acSpreadsheetTypeExcel3* = 0;
            acSpreadsheetTypeLotusWK1* = 2;
            acSpreadsheetTypeLotusWK3* = 3;
            acSpreadsheetTypeExcel5* = 5;
            acSpreadsheetTypeExcel7* = 5;
            acSpreadsheetTypeExcel4* = 6;
            acSpreadsheetTypeLotusWK4* = 7;
            acSpreadsheetTypeExcel97* = 8;
        (* AcHyperlinkPart *)
            acDisplayedValue* = 0;
            acDisplayText* = 1;
            acAddress* = 2;
            acSubAddress* = 3;
        (* AcCommand *)
            acCmdWindowUnhide* = 1;
            acCmdWindowHide* = 2;
            acCmdExit* = 3;
            acCmdCompactDatabase* = 4;
            acCmdEncryptDecryptDatabase* = 5;
            acCmdRepairDatabase* = 6;
            acCmdMakeMDEFile* = 7;
            acCmdMoreWindows* = 8;
            acCmdAppRestore* = 9;
            acCmdAppMaximize* = 10;
            acCmdAppMinimize* = 11;
            acCmdAppMove* = 12;
            acCmdAppSize* = 13;
            acCmdDocRestore* = 14;
            acCmdDocMaximize* = 15;
            acCmdDocMove* = 16;
            acCmdDocSize* = 17;
            acCmdRefresh* = 18;
            acCmdFont* = 19;
            acCmdSave* = 20;
            acCmdSaveAs* = 21;
            acCmdWindowCascade* = 22;
            acCmdTileVertically* = 23;
            acCmdWindowArrangeIcons* = 24;
            acCmdOpenDatabase* = 25;
            acCmdNewDatabase* = 26;
            acCmdOLEDDELinks* = 27;
            acCmdRecordsGoToNew* = 28;
            acCmdReplace* = 29;
            acCmdFind* = 30;
            acCmdRunMacro* = 31;
            acCmdPageSetup* = 32;
            acCmdInsertObject* = 33;
            acCmdDuplicate* = 34;
            acCmdAboutMicrosoftAccess* = 35;
            acCmdFormHdrFtr* = 36;
            acCmdReportHdrFtr* = 37;
            acCmdPasteAppend* = 38;
            acCmdInsertFile* = 39;
            acCmdSelectForm* = 40;
            acCmdTabOrder* = 41;
            acCmdFieldList* = 42;
            acCmdAlignLeft* = 43;
            acCmdAlignRight* = 44;
            acCmdAlignTop* = 45;
            acCmdAlignBottom* = 46;
            acCmdAlignToGrid* = 47;
            acCmdSizeToGrid* = 48;
            acCmdOptions* = 49;
            acCmdSelectRecord* = 50;
            acCmdSortingAndGrouping* = 51;
            acCmdBringToFront* = 52;
            acCmdSendToBack* = 53;
            acCmdPrintPreview* = 54;
            acCmdApplyDefault* = 55;
            acCmdSetControlDefaults* = 56;
            acCmdOLEObjectDefaultVerb* = 57;
            acCmdClose* = 58;
            acCmdSizeToFit* = 59;
            acCmdDocMinimize* = 60;
            acCmdViewRuler* = 61;
            acCmdSnapToGrid* = 62;
            acCmdViewGrid* = 63;
            acCmdPasteSpecial* = 64;
            acCmdRecordsGoToNext* = 65;
            acCmdRecordsGoToPrevious* = 66;
            acCmdRecordsGoToFirst* = 67;
            acCmdRecordsGoToLast* = 68;
            acCmdSizeToFitForm* = 69;
            acCmdEditingAllowed* = 70;
            acCmdClearGrid* = 71;
            acCmdJoinProperties* = 72;
            acCmdQueryTotals* = 73;
            acCmdQueryTypeCrosstab* = 74;
            acCmdTableNames* = 75;
            acCmdQueryParameters* = 76;
            acCmdFormatCells* = 77;
            acCmdDataEntry* = 78;
            acCmdHideColumns* = 79;
            acCmdUnhideColumns* = 80;
            acCmdDeleteQueryColumn* = 81;
            acCmdInsertQueryColumn* = 82;
            acCmdRemoveTable* = 84;
            acCmdViewToolbox* = 85;
            acCmdMacroNames* = 86;
            acCmdMacroConditions* = 87;
            acCmdSingleStep* = 88;
            acCmdQueryTypeSelect* = 89;
            acCmdQueryTypeUpdate* = 90;
            acCmdQueryTypeAppend* = 91;
            acCmdQueryTypeDelete* = 92;
            acCmdApplyFilterSort* = 93;
            acCmdQueryTypeMakeTable* = 94;
            acCmdLoadFromQuery* = 95;
            acCmdSaveAsQuery* = 96;
            acCmdSaveRecord* = 97;
            acCmdAdvancedFilterSort* = 99;
            acCmdMicrosoftAccessHelpTopics* = 100;
            acCmdLinkTables* = 102;
            acCmdUserAndGroupPermissions* = 103;
            acCmdUserAndGroupAccounts* = 104;
            acCmdFreezeColumn* = 105;
            acCmdUnfreezeAllColumns* = 106;
            acCmdPrimaryKey* = 107;
            acCmdSubformDatasheet* = 108;
            acCmdSelectAllRecords* = 109;
            acCmdViewTables* = 110;
            acCmdViewQueries* = 111;
            acCmdViewForms* = 112;
            acCmdViewReports* = 113;
            acCmdViewMacros* = 114;
            acCmdViewModules* = 115;
            acCmdRowHeight* = 116;
            acCmdColumnWidth* = 117;
            acCmdInsertFileIntoModule* = 118;
            acCmdSaveModuleAsText* = 119;
            acCmdFindPrevious* = 120;
            acCmdWindowSplit* = 121;
            acCmdProcedureDefinition* = 122;
            acCmdDebugWindow* = 123;
            acCmdReset* = 124;
            acCmdCompileAllModules* = 125;
            acCmdCompileAndSaveAllModules* = 126;
            acCmdGoContinue* = 127;
            acCmdStepOver* = 128;
            acCmdSetNextStatement* = 129;
            acCmdShowNextStatement* = 130;
            acCmdToggleBreakpoint* = 131;
            acCmdClearAllBreakpoints* = 132;
            acCmdRelationships* = 133;
            acCmdNewObjectTable* = 134;
            acCmdNewObjectQuery* = 135;
            acCmdNewObjectForm* = 136;
            acCmdNewObjectReport* = 137;
            acCmdNewObjectMacro* = 138;
            acCmdNewObjectModule* = 139;
            acCmdNewObjectClassModule* = 140;
            acCmdLayoutPreview* = 141;
            acCmdSaveAsReport* = 142;
            acCmdRename* = 143;
            acCmdRemoveFilterSort* = 144;
            acCmdSaveLayout* = 145;
            acCmdClearAll* = 146;
            acCmdHideTable* = 147;
            acCmdShowDirectRelationships* = 148;
            acCmdShowAllRelationships* = 149;
            acCmdCreateRelationship* = 150;
            acCmdEditRelationship* = 151;
            acCmdIndexes* = 152;
            acCmdAlignToShortest* = 153;
            acCmdAlignToTallest* = 154;
            acCmdSizeToNarrowest* = 155;
            acCmdSizeToWidest* = 156;
            acCmdHorizontalSpacingMakeEqual* = 157;
            acCmdHorizontalSpacingDecrease* = 158;
            acCmdHorizontalSpacingIncrease* = 159;
            acCmdVerticalSpacingMakeEqual* = 160;
            acCmdVerticalSpacingDecrease* = 161;
            acCmdVerticalSpacingIncrease* = 162;
            acCmdSortAscending* = 163;
            acCmdSortDescending* = 164;
            acCmdToolbarsCustomize* = 165;
            acCmdOLEObjectConvert* = 167;
            acCmdQueryTypeSQLDataDefinition* = 168;
            acCmdQueryTypeSQLPassThrough* = 169;
            acCmdViewCode* = 170;
            acCmdConvertDatabase* = 171;
            acCmdCallStack* = 172;
            acCmdSend* = 173;
            acCmdOutputToExcel* = 175;
            acCmdOutputToRTF* = 176;
            acCmdOutputToText* = 177;
            acCmdInvokeBuilder* = 178;
            acCmdZoomBox* = 179;
            acCmdQueryTypeSQLUnion* = 180;
            acCmdRun* = 181;
            acCmdPageHdrFtr* = 182;
            acCmdDesignView* = 183;
            acCmdSQLView* = 184;
            acCmdShowTable* = 185;
            acCmdCloseWindow* = 186;
            acCmdInsertRows* = 187;
            acCmdDeleteRows* = 188;
            acCmdCut* = 189;
            acCmdCopy* = 190;
            acCmdPaste* = 191;
            acCmdAutoDial* = 192;
            acCmdNewObjectAutoForm* = 193;
            acCmdNewObjectAutoReport* = 194;
            acCmdWordMailMerge* = 195;
            acCmdTestValidationRules* = 196;
            acCmdControlWizardsToggle* = 197;
            acCmdEnd* = 198;
            acCmdRedo* = 199;
            acCmdObjectBrowser* = 200;
            acCmdAddWatch* = 201;
            acCmdEditWatch* = 202;
            acCmdQuickWatch* = 203;
            acCmdStepToCursor* = 204;
            acCmdIndent* = 205;
            acCmdOutdent* = 206;
            acCmdFilterByForm* = 207;
            acCmdFilterBySelection* = 208;
            acCmdViewLargeIcons* = 209;
            acCmdViewDetails* = 210;
            acCmdViewSmallIcons* = 211;
            acCmdViewList* = 212;
            acCmdLineUpIcons* = 213;
            acCmdArrangeIconsByName* = 214;
            acCmdArrangeIconsByType* = 215;
            acCmdArrangeIconsByCreated* = 216;
            acCmdArrangeIconsByModified* = 217;
            acCmdArrangeIconsAuto* = 218;
            acCmdCreateShortcut* = 219;
            acCmdToggleFilter* = 220;
            acCmdOpenTable* = 221;
            acCmdInsertPicture* = 222;
            acCmdDeleteRecord* = 223;
            acCmdStartupProperties* = 224;
            acCmdPageNumber* = 225;
            acCmdDateAndTime* = 226;
            acCmdChangeToTextBox* = 227;
            acCmdChangeToLabel* = 228;
            acCmdChangeToListBox* = 229;
            acCmdChangeToComboBox* = 230;
            acCmdChangeToCheckBox* = 231;
            acCmdChangeToToggleButton* = 232;
            acCmdChangeToOptionButton* = 233;
            acCmdChangeToImage* = 234;
            acCmdAnswerWizard* = 235;
            acCmdMicrosoftOnTheWeb* = 236;
            acCmdClearItemDefaults* = 237;
            acCmdZoom200* = 238;
            acCmdZoom150* = 239;
            acCmdZoom100* = 240;
            acCmdZoom75* = 241;
            acCmdZoom50* = 242;
            acCmdZoom25* = 243;
            acCmdZoom10* = 244;
            acCmdFitToWindow* = 245;
            acCmdPreviewOnePage* = 246;
            acCmdPreviewTwoPages* = 247;
            acCmdPreviewFourPages* = 248;
            acCmdPreviewEightPages* = 249;
            acCmdPreviewTwelvePages* = 250;
            acCmdOpenURL* = 251;
            acCmdOpenStartPage* = 252;
            acCmdOpenSearchPage* = 253;
            acCmdRegisterActiveXControls* = 254;
            acCmdDeleteTab* = 255;
            acCmdDatabaseProperties* = 256;
            acCmdImport* = 257;
            acCmdInsertActiveXControl* = 258;
            acCmdInsertHyperlink* = 259;
            acCmdReferences* = 260;
            acCmdAutoCorrect* = 261;
            acCmdInsertProcedure* = 262;
            acCmdCreateReplica* = 263;
            acCmdSynchronizeNow* = 264;
            acCmdRecoverDesignMaster* = 265;
            acCmdResolveConflicts* = 266;
            acCmdDeleteWatch* = 267;
            acCmdSpelling* = 269;
            acCmdAutoFormat* = 270;
            acCmdDeleteTableColumn* = 271;
            acCmdInsertTableColumn* = 272;
            acCmdInsertLookupColumn* = 273;
            acCmdRenameColumn* = 274;
            acCmdSetDatabasePassword* = 275;
            acCmdUserLevelSecurityWizard* = 276;
            acCmdFilterExcludingSelection* = 277;
            acCmdQuickPrint* = 278;
            acCmdConvertMacrosToVisualBasic* = 279;
            acCmdSaveAllModules* = 280;
            acCmdFormView* = 281;
            acCmdDatasheetView* = 282;
            acCmdAnalyzePerformance* = 283;
            acCmdAnalyzeTable* = 284;
            acCmdDocumenter* = 285;
            acCmdTileHorizontally* = 286;
            acCmdProperties* = 287;
            acCmdTransparentBackground* = 288;
            acCmdTransparentBorder* = 289;
            acCmdCompileLoadedModules* = 290;
            acCmdInsertLookupField* = 291;
            acCmdUndo* = 292;
            acCmdInsertChart* = 293;
            acCmdGoBack* = 294;
            acCmdGoForward* = 295;
            acCmdStopLoadingPage* = 296;
            acCmdRefreshPage* = 297;
            acCmdFavoritesOpen* = 298;
            acCmdFavoritesAddTo* = 299;
            acCmdShowOnlyWebToolbar* = 300;
            acCmdToolbarControlProperties* = 301;
            acCmdShowMembers* = 302;
            acCmdListConstants* = 303;
            acCmdQuickInfo* = 304;
            acCmdParameterInfo* = 305;
            acCmdCompleteWord* = 306;
            acCmdBookmarksToggle* = 307;
            acCmdBookmarksNext* = 308;
            acCmdBookmarksPrevious* = 309;
            acCmdBookmarksClearAll* = 310;
            acCmdStepOut* = 311;
            acCmdFindPrevWordUnderCursor* = 312;
            acCmdFindNextWordUnderCursor* = 313;
            acCmdObjBrwFindWholeWordOnly* = 314;
            acCmdObjBrwShowHiddenMembers* = 315;
            acCmdObjBrwHelp* = 316;
            acCmdObjBrwViewDefinition* = 317;
            acCmdObjBrwGroupMembers* = 318;
            acCmdSelectReport* = 319;
            acCmdPublish* = 320;
            acCmdSaveAsHTML* = 321;
            acCmdSaveAsIDC* = 322;
            acCmdSaveAsASP* = 323;
            acCmdPublishDefaults* = 324;
            acCmdEditHyperlink* = 325;
            acCmdOpenHyperlink* = 326;
            acCmdOpenNewHyperlink* = 327;
            acCmdCopyHyperlink* = 328;
            acCmdHyperlinkDisplayText* = 329;
            acCmdTabControlPageOrder* = 330;
            acCmdInsertPage* = 331;
            acCmdDeletePage* = 332;
            acCmdSelectAll* = 333;
            acCmdCreateMenuFromMacro* = 334;
            acCmdCreateToolbarFromMacro* = 335;
            acCmdCreateShortcutMenuFromMacro* = 336;
            acCmdDelete* = 337;
            acCmdRunOpenMacro* = 338;
            acCmdLastPosition* = 339;
            acCmdPrint* = 340;
            acCmdFindNext* = 341;
            acCmdStepInto* = 342;
        (* RefKind *)
            TypeLib* = 0;
            Project* = 1;
        (* _ProcKind *)
            vbext_pk_Proc* = 0;
            vbext_pk_Let* = 1;
            vbext_pk_Set* = 2;
            vbext_pk_Get* = 3;
        (* ___vbext_CodePaneview *)
            ___vbext_codeview_ProcedureView* = 0;
            ___vbext_cocdview_FullModuleView* = 1;
        (* ___RefKind *)
            ___TypeLib* = 0;
            ___Project* = 1;


    TYPE
        AcModuleType* = INTEGER;
        AcCloseSave* = INTEGER;
        AcQuitOption* = INTEGER;
        AcSection* = INTEGER;
        AcControlType* = INTEGER;
        AcDataObjectType* = INTEGER;
        AcDataTransferType* = INTEGER;
        AcSendObjectType* = INTEGER;
        AcObjectType* = INTEGER;
        AcFindField* = INTEGER;
        AcFindMatch* = INTEGER;
        AcFormView* = INTEGER;
        AcOpenDataMode* = INTEGER;
        AcFormOpenDataMode* = INTEGER;
        AcOutputObjectType* = INTEGER;
        AcPrintQuality* = INTEGER;
        AcPrintRange* = INTEGER;
        AcRecord* = INTEGER;
        AcSearchDirection* = INTEGER;
        AcSysCmdAction* = INTEGER;
        AcTextTransferType* = INTEGER;
        AcView* = INTEGER;
        AcWindowMode* = INTEGER;
        AcSpreadSheetType* = INTEGER;
        AcHyperlinkPart* = INTEGER;
        AcCommand* = INTEGER;
        IDoCmd* = POINTER TO RECORD (CtlT.Object) END;
        DoCmd* = IDoCmd;
        _AccessProperty* = POINTER TO RECORD (CtlT.Object) END;
        Properties* = POINTER TO RECORD (CtlT.Object) END;
        _ItemsSelected* = POINTER TO RECORD (CtlT.Object) END;
        Children* = POINTER TO RECORD (CtlT.Object) END;
        _AccessField* = POINTER TO RECORD (CtlT.Object) END;
        AccessField* = _AccessField;
        _Hyperlink* = POINTER TO RECORD (CtlT.Object) END;
        Hyperlink* = _Hyperlink;
        Page* = _Page;
        Pages* = POINTER TO RECORD (CtlT.Object) END;
        _Control* = POINTER TO RECORD (CtlT.Object) END;
        Control* = _Control;
        _ControlInReportEvents* = _Control;
        Controls* = POINTER TO RECORD (CtlT.Object) END;
        _Label* = POINTER TO RECORD (CtlT.Object) END;
        Label* = _Label;
        _ChildLabel* = _Label;
        _Rectangle* = POINTER TO RECORD (CtlT.Object) END;
        Rectangle* = _Rectangle;
        _Line* = POINTER TO RECORD (CtlT.Object) END;
        Line* = _Line;
        _Image* = POINTER TO RECORD (CtlT.Object) END;
        Image* = _Image;
        _CommandButton* = POINTER TO RECORD (CtlT.Object) END;
        CommandButton* = _CommandButton;
        _OptionButton* = POINTER TO RECORD (CtlT.Object) END;
        OptionButton* = _OptionButton;
        _OptionButtonInOption* = _OptionButton;
        _Checkbox* = POINTER TO RECORD (CtlT.Object) END;
        CheckBox* = _Checkbox;
        _CheckBoxInOption* = _Checkbox;
        _OptionGroup* = POINTER TO RECORD (CtlT.Object) END;
        OptionGroup* = _OptionGroup;
        _BoundObjectFrame* = POINTER TO RECORD (CtlT.Object) END;
        BoundObjectFrame* = _BoundObjectFrame;
        _Textbox* = POINTER TO RECORD (CtlT.Object) END;
        TextBox* = _Textbox;
        _ListBox* = POINTER TO RECORD (CtlT.Object) END;
        ListBox* = _ListBox;
        _Combobox* = POINTER TO RECORD (CtlT.Object) END;
        ComboBox* = _Combobox;
        _ObjectFrame* = POINTER TO RECORD (CtlT.Object) END;
        ObjectFrame* = _ObjectFrame;
        _PageBreak* = POINTER TO RECORD (CtlT.Object) END;
        PageBreak* = _PageBreak;
        _ToggleButton* = POINTER TO RECORD (CtlT.Object) END;
        ToggleButton* = _ToggleButton;
        _ToggleButtonInOption* = _ToggleButton;
        _PaletteButton* = POINTER TO RECORD (CtlT.Object) END;
        PaletteButton* = _PaletteButton;
        _SubForm* = POINTER TO RECORD (CtlT.Object) END;
        SubForm* = _SubForm;
        _SubReport* = POINTER TO RECORD (CtlT.Object) END;
        SubReport* = _SubReport;
        _CustomControl* = POINTER TO RECORD (CtlT.Object) END;
        CustomControl* = _CustomControl;
        _CustomControlInReport* = _CustomControl;
        _TabControl* = POINTER TO RECORD (CtlT.Object) END;
        TabControl* = _TabControl;
        _Page* = POINTER TO RECORD (CtlT.Object) END;
        _Section* = POINTER TO RECORD (CtlT.Object) END;
        Section* = _Section;
        _GroupLevel* = POINTER TO RECORD (CtlT.Object) END;
        GroupLevel* = _GroupLevel;
        _SectionInReport* = _Section;
        _PageHdrFtrInReport* = _Section;
        RefKind* = INTEGER;
        _ProcKind* = INTEGER;
        Module* = POINTER TO RECORD (CtlT.Object) END;
        Modules* = POINTER TO RECORD (CtlT.Object) END;
        _Form* = POINTER TO RECORD (CtlT.Object) END;
        Form* = _Form;
        Forms* = POINTER TO RECORD (CtlT.Object) END;
        _Report* = POINTER TO RECORD (CtlT.Object) END;
        Report* = _Report;
        Reports* = POINTER TO RECORD (CtlT.Object) END;
        Screen* = POINTER TO RECORD (CtlT.Object) END;
        _Application* = POINTER TO RECORD (CtlT.Object) END;
        Application* = _Application;
        Reference* = POINTER TO RECORD (CtlT.Object) END;
        _References* = POINTER TO RECORD (CtlT.Object) END;
        _References_Events* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        References* = _References;
        _Dummy* = POINTER TO RECORD (CtlT.Object) END;
        Class* = _Dummy;
        ___IVbaModule* = POINTER TO RECORD (CtlT.Object) END;
        ___CodeModule* = ___IVbaModule;
        ___IVbaEditors* = POINTER TO RECORD (CtlT.Object) END;
        ___Editors* = ___IVbaEditors;
        ___vbext_CodePaneview* = INTEGER;
        ___IVbaEditor* = POINTER TO RECORD (CtlT.Object) END;
        ___Editor* = ___IVbaEditor;
        IVbaReferences* = POINTER TO RECORD (CtlT.Object) END;
        ___RefKind* = INTEGER;
        ___Reference* = POINTER TO RECORD (CtlT.Object) END;
        ___IVbaExtReferencesEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        ___References* = IVbaReferences;


    PROCEDURE ThisIDoCmd* (v: CtlT.Any): IDoCmd;
        VAR new: IDoCmd;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{C547E760-9658-101B-81EE-00AA004750E2}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIDoCmd;

    PROCEDURE IsIDoCmd* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{C547E760-9658-101B-81EE-00AA004750E2}")
    END IsIDoCmd;

    PROCEDURE This_AccessProperty* (v: CtlT.Any): _AccessProperty;
        VAR new: _AccessProperty;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{331FDD00-CF31-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_AccessProperty;

    PROCEDURE Is_AccessProperty* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{331FDD00-CF31-11CD-8701-00AA003F0F07}")
    END Is_AccessProperty;

    PROCEDURE ThisProperties* (v: CtlT.Any): Properties;
        VAR new: Properties;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{331FDD02-CF31-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisProperties;

    PROCEDURE IsProperties* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{331FDD02-CF31-11CD-8701-00AA003F0F07}")
    END IsProperties;

    PROCEDURE This_ItemsSelected* (v: CtlT.Any): _ItemsSelected;
        VAR new: _ItemsSelected;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{31B09710-EADC-11CD-B9F7-00AA004753B5}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ItemsSelected;

    PROCEDURE Is_ItemsSelected* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{31B09710-EADC-11CD-B9F7-00AA004753B5}")
    END Is_ItemsSelected;

    PROCEDURE ThisChildren* (v: CtlT.Any): Children;
        VAR new: Children;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E977-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChildren;

    PROCEDURE IsChildren* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E977-E47C-11CD-8701-00AA003F0F07}")
    END IsChildren;

    PROCEDURE This_AccessField* (v: CtlT.Any): _AccessField;
        VAR new: _AccessField;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{B1C1EAC1-486F-11CE-A65D-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_AccessField;

    PROCEDURE Is_AccessField* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{B1C1EAC1-486F-11CE-A65D-00AA003F0F07}")
    END Is_AccessField;

    PROCEDURE This_Hyperlink* (v: CtlT.Any): _Hyperlink;
        VAR new: _Hyperlink;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{50D56611-60AC-11CF-82C9-00AA004B9FE6}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Hyperlink;

    PROCEDURE Is_Hyperlink* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{50D56611-60AC-11CF-82C9-00AA004B9FE6}")
    END Is_Hyperlink;

    PROCEDURE ThisPages* (v: CtlT.Any): Pages;
        VAR new: Pages;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E978-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPages;

    PROCEDURE IsPages* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E978-E47C-11CD-8701-00AA003F0F07}")
    END IsPages;

    PROCEDURE This_Control* (v: CtlT.Any): _Control;
        VAR new: _Control;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{26B96540-8F8E-101B-AF4E-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Control;

    PROCEDURE Is_Control* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{26B96540-8F8E-101B-AF4E-00AA003F0F07}")
    END Is_Control;

    PROCEDURE ThisControls* (v: CtlT.Any): Controls;
        VAR new: Controls;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5970C574-EB8C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisControls;

    PROCEDURE IsControls* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5970C574-EB8C-11CD-8701-00AA003F0F07}")
    END IsControls;

    PROCEDURE This_Label* (v: CtlT.Any): _Label;
        VAR new: _Label;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E948-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Label;

    PROCEDURE Is_Label* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E948-E47C-11CD-8701-00AA003F0F07}")
    END Is_Label;

    PROCEDURE This_Rectangle* (v: CtlT.Any): _Rectangle;
        VAR new: _Rectangle;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E94A-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Rectangle;

    PROCEDURE Is_Rectangle* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E94A-E47C-11CD-8701-00AA003F0F07}")
    END Is_Rectangle;

    PROCEDURE This_Line* (v: CtlT.Any): _Line;
        VAR new: _Line;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E94C-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Line;

    PROCEDURE Is_Line* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E94C-E47C-11CD-8701-00AA003F0F07}")
    END Is_Line;

    PROCEDURE This_Image* (v: CtlT.Any): _Image;
        VAR new: _Image;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E94E-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Image;

    PROCEDURE Is_Image* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E94E-E47C-11CD-8701-00AA003F0F07}")
    END Is_Image;

    PROCEDURE This_CommandButton* (v: CtlT.Any): _CommandButton;
        VAR new: _CommandButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E950-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CommandButton;

    PROCEDURE Is_CommandButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E950-E47C-11CD-8701-00AA003F0F07}")
    END Is_CommandButton;

    PROCEDURE This_OptionButton* (v: CtlT.Any): _OptionButton;
        VAR new: _OptionButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E952-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_OptionButton;

    PROCEDURE Is_OptionButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E952-E47C-11CD-8701-00AA003F0F07}")
    END Is_OptionButton;

    PROCEDURE This_Checkbox* (v: CtlT.Any): _Checkbox;
        VAR new: _Checkbox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E954-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Checkbox;

    PROCEDURE Is_Checkbox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E954-E47C-11CD-8701-00AA003F0F07}")
    END Is_Checkbox;

    PROCEDURE This_OptionGroup* (v: CtlT.Any): _OptionGroup;
        VAR new: _OptionGroup;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E956-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_OptionGroup;

    PROCEDURE Is_OptionGroup* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E956-E47C-11CD-8701-00AA003F0F07}")
    END Is_OptionGroup;

    PROCEDURE This_BoundObjectFrame* (v: CtlT.Any): _BoundObjectFrame;
        VAR new: _BoundObjectFrame;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E958-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_BoundObjectFrame;

    PROCEDURE Is_BoundObjectFrame* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E958-E47C-11CD-8701-00AA003F0F07}")
    END Is_BoundObjectFrame;

    PROCEDURE This_Textbox* (v: CtlT.Any): _Textbox;
        VAR new: _Textbox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E946-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Textbox;

    PROCEDURE Is_Textbox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E946-E47C-11CD-8701-00AA003F0F07}")
    END Is_Textbox;

    PROCEDURE This_ListBox* (v: CtlT.Any): _ListBox;
        VAR new: _ListBox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E95A-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ListBox;

    PROCEDURE Is_ListBox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E95A-E47C-11CD-8701-00AA003F0F07}")
    END Is_ListBox;

    PROCEDURE This_Combobox* (v: CtlT.Any): _Combobox;
        VAR new: _Combobox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E95C-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Combobox;

    PROCEDURE Is_Combobox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E95C-E47C-11CD-8701-00AA003F0F07}")
    END Is_Combobox;

    PROCEDURE This_ObjectFrame* (v: CtlT.Any): _ObjectFrame;
        VAR new: _ObjectFrame;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E95E-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ObjectFrame;

    PROCEDURE Is_ObjectFrame* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E95E-E47C-11CD-8701-00AA003F0F07}")
    END Is_ObjectFrame;

    PROCEDURE This_PageBreak* (v: CtlT.Any): _PageBreak;
        VAR new: _PageBreak;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E960-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_PageBreak;

    PROCEDURE Is_PageBreak* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E960-E47C-11CD-8701-00AA003F0F07}")
    END Is_PageBreak;

    PROCEDURE This_ToggleButton* (v: CtlT.Any): _ToggleButton;
        VAR new: _ToggleButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E962-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ToggleButton;

    PROCEDURE Is_ToggleButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E962-E47C-11CD-8701-00AA003F0F07}")
    END Is_ToggleButton;

    PROCEDURE This_PaletteButton* (v: CtlT.Any): _PaletteButton;
        VAR new: _PaletteButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9CD4A760-A6A9-11CE-A686-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_PaletteButton;

    PROCEDURE Is_PaletteButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9CD4A760-A6A9-11CE-A686-00AA003F0F07}")
    END Is_PaletteButton;

    PROCEDURE This_SubForm* (v: CtlT.Any): _SubForm;
        VAR new: _SubForm;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E964-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_SubForm;

    PROCEDURE Is_SubForm* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E964-E47C-11CD-8701-00AA003F0F07}")
    END Is_SubForm;

    PROCEDURE This_SubReport* (v: CtlT.Any): _SubReport;
        VAR new: _SubReport;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E966-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_SubReport;

    PROCEDURE Is_SubReport* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E966-E47C-11CD-8701-00AA003F0F07}")
    END Is_SubReport;

    PROCEDURE This_CustomControl* (v: CtlT.Any): _CustomControl;
        VAR new: _CustomControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E968-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CustomControl;

    PROCEDURE Is_CustomControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E968-E47C-11CD-8701-00AA003F0F07}")
    END Is_CustomControl;

    PROCEDURE This_TabControl* (v: CtlT.Any): _TabControl;
        VAR new: _TabControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E971-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_TabControl;

    PROCEDURE Is_TabControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E971-E47C-11CD-8701-00AA003F0F07}")
    END Is_TabControl;

    PROCEDURE This_Page* (v: CtlT.Any): _Page;
        VAR new: _Page;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3B06E974-E47C-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Page;

    PROCEDURE Is_Page* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3B06E974-E47C-11CD-8701-00AA003F0F07}")
    END Is_Page;

    PROCEDURE This_Section* (v: CtlT.Any): _Section;
        VAR new: _Section;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{331FDCFC-CF31-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Section;

    PROCEDURE Is_Section* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{331FDCFC-CF31-11CD-8701-00AA003F0F07}")
    END Is_Section;

    PROCEDURE This_GroupLevel* (v: CtlT.Any): _GroupLevel;
        VAR new: _GroupLevel;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{331FDD27-CF31-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_GroupLevel;

    PROCEDURE Is_GroupLevel* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{331FDD27-CF31-11CD-8701-00AA003F0F07}")
    END Is_GroupLevel;

    PROCEDURE ThisModule* (v: CtlT.Any): Module;
        VAR new: Module;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{331FDCFE-CF31-11CD-8701-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisModule;

    PROCEDURE IsModule* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{331FDCFE-CF31-11CD-8701-00AA003F0F07}")
    END IsModule;

    PROCEDURE ThisModules* (v: CtlT.Any): Modules;
        VAR new: Modules;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9DD0AF42-6E28-11CF-9008-00AA0042B7CE}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisModules;

    PROCEDURE IsModules* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9DD0AF42-6E28-11CF-9008-00AA0042B7CE}")
    END IsModules;

    PROCEDURE This_Form* (v: CtlT.Any): _Form;
        VAR new: _Form;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{E5135D80-8F8D-101B-AF4E-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Form;

    PROCEDURE Is_Form* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{E5135D80-8F8D-101B-AF4E-00AA003F0F07}")
    END Is_Form;

    PROCEDURE ThisForms* (v: CtlT.Any): Forms;
        VAR new: Forms;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{B1BB0E80-6128-101B-AF4E-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisForms;

    PROCEDURE IsForms* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{B1BB0E80-6128-101B-AF4E-00AA003F0F07}")
    END IsForms;

    PROCEDURE This_Report* (v: CtlT.Any): _Report;
        VAR new: _Report;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{3E8B6B00-91FF-101B-AF4E-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Report;

    PROCEDURE Is_Report* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{3E8B6B00-91FF-101B-AF4E-00AA003F0F07}")
    END Is_Report;

    PROCEDURE ThisReports* (v: CtlT.Any): Reports;
        VAR new: Reports;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{D1523700-6128-101B-AF4E-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisReports;

    PROCEDURE IsReports* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{D1523700-6128-101B-AF4E-00AA003F0F07}")
    END IsReports;

    PROCEDURE ThisScreen* (v: CtlT.Any): Screen;
        VAR new: Screen;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{DC6B66C0-6128-101B-AF4E-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisScreen;

    PROCEDURE IsScreen* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{DC6B66C0-6128-101B-AF4E-00AA003F0F07}")
    END IsScreen;

    PROCEDURE This_Application* (v: CtlT.Any): _Application;
        VAR new: _Application;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{68CCE6C0-6129-101B-AF4E-00AA003F0F07}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Application;

    PROCEDURE Is_Application* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{68CCE6C0-6129-101B-AF4E-00AA003F0F07}")
    END Is_Application;

    PROCEDURE ThisReference* (v: CtlT.Any): Reference;
        VAR new: Reference;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{EB106212-9C89-11CF-A2B3-00A0C90542FF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisReference;

    PROCEDURE IsReference* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{EB106212-9C89-11CF-A2B3-00A0C90542FF}")
    END IsReference;

    PROCEDURE This_References* (v: CtlT.Any): _References;
        VAR new: _References;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{EB106213-9C89-11CF-A2B3-00A0C90542FF}"); RETURN new
        ELSE RETURN NIL
        END
    END This_References;

    PROCEDURE Is_References* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{EB106213-9C89-11CF-A2B3-00A0C90542FF}")
    END Is_References;

    PROCEDURE This_Dummy* (v: CtlT.Any): _Dummy;
        VAR new: _Dummy;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8B06E320-B23C-11CF-89A8-00A0C9054129}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Dummy;

    PROCEDURE Is_Dummy* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8B06E320-B23C-11CF-89A8-00A0C9054129}")
    END Is_Dummy;

    PROCEDURE This___IVbaModule* (v: CtlT.Any): ___IVbaModule;
        VAR new: ___IVbaModule;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E16E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This___IVbaModule;

    PROCEDURE Is___IVbaModule* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E16E-0000-0000-C000-000000000046}")
    END Is___IVbaModule;

    PROCEDURE This___IVbaEditors* (v: CtlT.Any): ___IVbaEditors;
        VAR new: ___IVbaEditors;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E172-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This___IVbaEditors;

    PROCEDURE Is___IVbaEditors* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E172-0000-0000-C000-000000000046}")
    END Is___IVbaEditors;

    PROCEDURE This___IVbaEditor* (v: CtlT.Any): ___IVbaEditor;
        VAR new: ___IVbaEditor;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E176-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This___IVbaEditor;

    PROCEDURE Is___IVbaEditor* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E176-0000-0000-C000-000000000046}")
    END Is___IVbaEditor;

    PROCEDURE ThisIVbaReferences* (v: CtlT.Any): IVbaReferences;
        VAR new: IVbaReferences;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E17A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIVbaReferences;

    PROCEDURE IsIVbaReferences* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E17A-0000-0000-C000-000000000046}")
    END IsIVbaReferences;

    PROCEDURE This___Reference* (v: CtlT.Any): ___Reference;
        VAR new: ___Reference;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002E17E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This___Reference;

    PROCEDURE Is___Reference* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002E17E-0000-0000-C000-000000000046}")
    END Is___Reference;



    (* ---------- IDoCmd, hidden, dual ---------- *)

    PROCEDURE (this: IDoCmd) AddMenu* (MenuName: CtlT.Any; MenuMacroName: CtlT.Any; StatusBarText: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(MenuName, arg[2]);
        CtlC.AnyVar(MenuMacroName, arg[1]);
        CtlC.AnyVar(StatusBarText, arg[0]);
        CtlC.CallParMethod(this, 1001, arg, NIL);
    END AddMenu;

    PROCEDURE (this: IDoCmd) ApplyFilter* ((* optional *) FilterName: CtlT.Any; WhereCondition: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FilterName, arg[1]);
        CtlC.AnyVar(WhereCondition, arg[0]);
        CtlC.CallParMethod(this, 1002, arg, NIL);
    END ApplyFilter;

    PROCEDURE (this: IDoCmd) Beep* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1003, NIL);
    END Beep;

    PROCEDURE (this: IDoCmd) CancelEvent* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1004, NIL);
    END CancelEvent;

    PROCEDURE (this: IDoCmd) Close* (ObjectType: AcObjectType; ObjectName: CtlT.Any; Save: AcCloseSave), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[2]);
        CtlC.AnyVar(ObjectName, arg[1]);
        CtlC.IntVar(Save, arg[0]);
        CtlC.CallParMethod(this, 1005, arg, NIL);
    END Close;

    PROCEDURE (this: IDoCmd) CopyObject* (DestinationDatabase: CtlT.Any; NewName: CtlT.Any; SourceObjectType: AcObjectType; (* optional *) SourceObjectName: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(DestinationDatabase, arg[3]);
        CtlC.AnyVar(NewName, arg[2]);
        CtlC.IntVar(SourceObjectType, arg[1]);
        CtlC.AnyVar(SourceObjectName, arg[0]);
        CtlC.CallParMethod(this, 1006, arg, NIL);
    END CopyObject;

    PROCEDURE (this: IDoCmd) DoMenuItem* (MenuBar: CtlT.Any; MenuName: CtlT.Any; Command: CtlT.Any; (* optional *) Subcommand: CtlT.Any; Version: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(MenuBar, arg[4]);
        CtlC.AnyVar(MenuName, arg[3]);
        CtlC.AnyVar(Command, arg[2]);
        CtlC.AnyVar(Subcommand, arg[1]);
        CtlC.AnyVar(Version, arg[0]);
        CtlC.CallParMethod(this, 1007, arg, NIL);
    END DoMenuItem;

    PROCEDURE (this: IDoCmd) Echo* (EchoOn: CtlT.Any; (* optional *) StatusBarText: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(EchoOn, arg[1]);
        CtlC.AnyVar(StatusBarText, arg[0]);
        CtlC.CallParMethod(this, 1008, arg, NIL);
    END Echo;

    PROCEDURE (this: IDoCmd) FindNext* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1009, NIL);
    END FindNext;

    PROCEDURE (this: IDoCmd) FindRecord* (FindWhat: CtlT.Any; Match: AcFindMatch; MatchCase: CtlT.Any; Search: AcSearchDirection; SearchAsFormatted: CtlT.Any; OnlyCurrentField: AcFindField; (* optional *) FindFirst: CtlT.Any), NEW;
        VAR arg: ARRAY 7 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FindWhat, arg[6]);
        CtlC.IntVar(Match, arg[5]);
        CtlC.AnyVar(MatchCase, arg[4]);
        CtlC.IntVar(Search, arg[3]);
        CtlC.AnyVar(SearchAsFormatted, arg[2]);
        CtlC.IntVar(OnlyCurrentField, arg[1]);
        CtlC.AnyVar(FindFirst, arg[0]);
        CtlC.CallParMethod(this, 1010, arg, NIL);
    END FindRecord;

    PROCEDURE (this: IDoCmd) GoToControl* (ControlName: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ControlName, arg[0]);
        CtlC.CallParMethod(this, 1011, arg, NIL);
    END GoToControl;

    PROCEDURE (this: IDoCmd) GoToPage* (PageNumber: CtlT.Any; (* optional *) Right: CtlT.Any; Down: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(PageNumber, arg[2]);
        CtlC.AnyVar(Right, arg[1]);
        CtlC.AnyVar(Down, arg[0]);
        CtlC.CallParMethod(this, 1012, arg, NIL);
    END GoToPage;

    PROCEDURE (this: IDoCmd) GoToRecord* (ObjectType: AcDataObjectType; ObjectName: CtlT.Any; Record: AcRecord; (* optional *) Offset: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[3]);
        CtlC.AnyVar(ObjectName, arg[2]);
        CtlC.IntVar(Record, arg[1]);
        CtlC.AnyVar(Offset, arg[0]);
        CtlC.CallParMethod(this, 1013, arg, NIL);
    END GoToRecord;

    PROCEDURE (this: IDoCmd) Hourglass* (HourglassOn: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(HourglassOn, arg[0]);
        CtlC.CallParMethod(this, 1014, arg, NIL);
    END Hourglass;

    PROCEDURE (this: IDoCmd) Maximize* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1015, NIL);
    END Maximize;

    PROCEDURE (this: IDoCmd) Minimize* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1016, NIL);
    END Minimize;

    PROCEDURE (this: IDoCmd) MoveSize* ((* optional *) Right: CtlT.Any; Down: CtlT.Any; Width: CtlT.Any; Height: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Right, arg[3]);
        CtlC.AnyVar(Down, arg[2]);
        CtlC.AnyVar(Width, arg[1]);
        CtlC.AnyVar(Height, arg[0]);
        CtlC.CallParMethod(this, 1017, arg, NIL);
    END MoveSize;

    PROCEDURE (this: IDoCmd) OpenForm* (FormName: CtlT.Any; View: AcFormView; FilterName: CtlT.Any; WhereCondition: CtlT.Any; DataMode: AcFormOpenDataMode; WindowMode: AcWindowMode; (* optional *) OpenArgs: CtlT.Any), NEW;
        VAR arg: ARRAY 7 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FormName, arg[6]);
        CtlC.IntVar(View, arg[5]);
        CtlC.AnyVar(FilterName, arg[4]);
        CtlC.AnyVar(WhereCondition, arg[3]);
        CtlC.IntVar(DataMode, arg[2]);
        CtlC.IntVar(WindowMode, arg[1]);
        CtlC.AnyVar(OpenArgs, arg[0]);
        CtlC.CallParMethod(this, 1019, arg, NIL);
    END OpenForm;

    PROCEDURE (this: IDoCmd) OpenQuery* (QueryName: CtlT.Any; View: AcView; DataMode: AcOpenDataMode), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(QueryName, arg[2]);
        CtlC.IntVar(View, arg[1]);
        CtlC.IntVar(DataMode, arg[0]);
        CtlC.CallParMethod(this, 1020, arg, NIL);
    END OpenQuery;

    PROCEDURE (this: IDoCmd) OpenTable* (TableName: CtlT.Any; View: AcView; DataMode: AcOpenDataMode), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(TableName, arg[2]);
        CtlC.IntVar(View, arg[1]);
        CtlC.IntVar(DataMode, arg[0]);
        CtlC.CallParMethod(this, 1021, arg, NIL);
    END OpenTable;

    PROCEDURE (this: IDoCmd) PrintOut* (PrintRange: AcPrintRange; PageFrom: CtlT.Any; PageTo: CtlT.Any; PrintQuality: AcPrintQuality; (* optional *) Copies: CtlT.Any; CollateCopies: CtlT.Any), NEW;
        VAR arg: ARRAY 6 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PrintRange, arg[5]);
        CtlC.AnyVar(PageFrom, arg[4]);
        CtlC.AnyVar(PageTo, arg[3]);
        CtlC.IntVar(PrintQuality, arg[2]);
        CtlC.AnyVar(Copies, arg[1]);
        CtlC.AnyVar(CollateCopies, arg[0]);
        CtlC.CallParMethod(this, 1022, arg, NIL);
    END PrintOut;

    PROCEDURE (this: IDoCmd) Quit* (Options: AcQuitOption), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Options, arg[0]);
        CtlC.CallParMethod(this, 1023, arg, NIL);
    END Quit;

    PROCEDURE (this: IDoCmd) Requery* ((* optional *) ControlName: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ControlName, arg[0]);
        CtlC.CallParMethod(this, 1024, arg, NIL);
    END Requery;

    PROCEDURE (this: IDoCmd) RepaintObject* (ObjectType: AcObjectType; (* optional *) ObjectName: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[1]);
        CtlC.AnyVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 1025, arg, NIL);
    END RepaintObject;

    PROCEDURE (this: IDoCmd) Rename* (NewName: CtlT.Any; ObjectType: AcObjectType; (* optional *) OldName: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(NewName, arg[2]);
        CtlC.IntVar(ObjectType, arg[1]);
        CtlC.AnyVar(OldName, arg[0]);
        CtlC.CallParMethod(this, 1026, arg, NIL);
    END Rename;

    PROCEDURE (this: IDoCmd) Restore* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1027, NIL);
    END Restore;

    PROCEDURE (this: IDoCmd) RunMacro* (MacroName: CtlT.Any; (* optional *) RepeatCount: CtlT.Any; RepeatExpression: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(MacroName, arg[2]);
        CtlC.AnyVar(RepeatCount, arg[1]);
        CtlC.AnyVar(RepeatExpression, arg[0]);
        CtlC.CallParMethod(this, 1030, arg, NIL);
    END RunMacro;

    PROCEDURE (this: IDoCmd) RunSQL* (SQLStatement: CtlT.Any; (* optional *) UseTransaction: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(SQLStatement, arg[1]);
        CtlC.AnyVar(UseTransaction, arg[0]);
        CtlC.CallParMethod(this, 1031, arg, NIL);
    END RunSQL;

    PROCEDURE (this: IDoCmd) SelectObject* (ObjectType: AcObjectType; (* optional *) ObjectName: CtlT.Any; InDatabaseWindow: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[2]);
        CtlC.AnyVar(ObjectName, arg[1]);
        CtlC.AnyVar(InDatabaseWindow, arg[0]);
        CtlC.CallParMethod(this, 1032, arg, NIL);
    END SelectObject;

    PROCEDURE (this: IDoCmd) SetWarnings* (WarningsOn: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(WarningsOn, arg[0]);
        CtlC.CallParMethod(this, 1035, arg, NIL);
    END SetWarnings;

    PROCEDURE (this: IDoCmd) ShowAllRecords* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1036, NIL);
    END ShowAllRecords;

    PROCEDURE (this: IDoCmd) OpenReport* (ReportName: CtlT.Any; View: AcView; (* optional *) FilterName: CtlT.Any; WhereCondition: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ReportName, arg[3]);
        CtlC.IntVar(View, arg[2]);
        CtlC.AnyVar(FilterName, arg[1]);
        CtlC.AnyVar(WhereCondition, arg[0]);
        CtlC.CallParMethod(this, 1039, arg, NIL);
    END OpenReport;

    PROCEDURE (this: IDoCmd) TransferDatabase* (TransferType: AcDataTransferType; DatabaseType: CtlT.Any; DatabaseName: CtlT.Any; ObjectType: AcObjectType; (* optional *) Source: CtlT.Any; Destination: CtlT.Any; StructureOnly: CtlT.Any; StoreLogin: CtlT.Any), NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(TransferType, arg[7]);
        CtlC.AnyVar(DatabaseType, arg[6]);
        CtlC.AnyVar(DatabaseName, arg[5]);
        CtlC.IntVar(ObjectType, arg[4]);
        CtlC.AnyVar(Source, arg[3]);
        CtlC.AnyVar(Destination, arg[2]);
        CtlC.AnyVar(StructureOnly, arg[1]);
        CtlC.AnyVar(StoreLogin, arg[0]);
        CtlC.CallParMethod(this, 1040, arg, NIL);
    END TransferDatabase;

    PROCEDURE (this: IDoCmd) TransferSpreadsheet* (TransferType: AcDataTransferType; SpreadsheetType: AcSpreadSheetType; (* optional *) TableName: CtlT.Any; FileName: CtlT.Any; HasFieldNames: CtlT.Any; Range: CtlT.Any; UseOA: CtlT.Any), NEW;
        VAR arg: ARRAY 7 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(TransferType, arg[6]);
        CtlC.IntVar(SpreadsheetType, arg[5]);
        CtlC.AnyVar(TableName, arg[4]);
        CtlC.AnyVar(FileName, arg[3]);
        CtlC.AnyVar(HasFieldNames, arg[2]);
        CtlC.AnyVar(Range, arg[1]);
        CtlC.AnyVar(UseOA, arg[0]);
        CtlC.CallParMethod(this, 1041, arg, NIL);
    END TransferSpreadsheet;

    PROCEDURE (this: IDoCmd) TransferText* (TransferType: AcTextTransferType; (* optional *) SpecificationName: CtlT.Any; TableName: CtlT.Any; FileName: CtlT.Any; HasFieldNames: CtlT.Any; HTMLTableName: CtlT.Any), NEW;
        VAR arg: ARRAY 6 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(TransferType, arg[5]);
        CtlC.AnyVar(SpecificationName, arg[4]);
        CtlC.AnyVar(TableName, arg[3]);
        CtlC.AnyVar(FileName, arg[2]);
        CtlC.AnyVar(HasFieldNames, arg[1]);
        CtlC.AnyVar(HTMLTableName, arg[0]);
        CtlC.CallParMethod(this, 1042, arg, NIL);
    END TransferText;

    PROCEDURE (this: IDoCmd) OutputTo* (ObjectType: AcOutputObjectType; (* optional *) ObjectName: CtlT.Any; OutputFormat: CtlT.Any; OutputFile: CtlT.Any; AutoStart: CtlT.Any; TemplateFile: CtlT.Any), NEW;
        VAR arg: ARRAY 6 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[5]);
        CtlC.AnyVar(ObjectName, arg[4]);
        CtlC.AnyVar(OutputFormat, arg[3]);
        CtlC.AnyVar(OutputFile, arg[2]);
        CtlC.AnyVar(AutoStart, arg[1]);
        CtlC.AnyVar(TemplateFile, arg[0]);
        CtlC.CallParMethod(this, 1341, arg, NIL);
    END OutputTo;

    PROCEDURE (this: IDoCmd) DeleteObject* (ObjectType: AcObjectType; (* optional *) ObjectName: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[1]);
        CtlC.AnyVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 1372, arg, NIL);
    END DeleteObject;

    PROCEDURE (this: IDoCmd) OpenModule* ((* optional *) ModuleName: CtlT.Any; ProcedureName: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ModuleName, arg[1]);
        CtlC.AnyVar(ProcedureName, arg[0]);
        CtlC.CallParMethod(this, 1374, arg, NIL);
    END OpenModule;

    PROCEDURE (this: IDoCmd) SendObject* (ObjectType: AcSendObjectType; (* optional *) ObjectName: CtlT.Any; OutputFormat: CtlT.Any; To: CtlT.Any; Cc: CtlT.Any; Bcc: CtlT.Any; Subject: CtlT.Any; MessageText: CtlT.Any; EditMessage: CtlT.Any; TemplateFile: CtlT.Any), NEW;
        VAR arg: ARRAY 10 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[9]);
        CtlC.AnyVar(ObjectName, arg[8]);
        CtlC.AnyVar(OutputFormat, arg[7]);
        CtlC.AnyVar(To, arg[6]);
        CtlC.AnyVar(Cc, arg[5]);
        CtlC.AnyVar(Bcc, arg[4]);
        CtlC.AnyVar(Subject, arg[3]);
        CtlC.AnyVar(MessageText, arg[2]);
        CtlC.AnyVar(EditMessage, arg[1]);
        CtlC.AnyVar(TemplateFile, arg[0]);
        CtlC.CallParMethod(this, 1377, arg, NIL);
    END SendObject;

    PROCEDURE (this: IDoCmd) ShowToolbar* (ToolbarName: CtlT.Any; (* optional *) Show: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ToolbarName, arg[1]);
        CtlC.AnyVar(Show, arg[0]);
        CtlC.CallParMethod(this, 1394, arg, NIL);
    END ShowToolbar;

    PROCEDURE (this: IDoCmd) Save* (ObjectType: AcObjectType; (* optional *) ObjectName: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[1]);
        CtlC.AnyVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 1453, arg, NIL);
    END Save;

    PROCEDURE (this: IDoCmd) SetMenuItem* (MenuIndex: CtlT.Any; (* optional *) CommandIndex: CtlT.Any; SubcommandIndex: CtlT.Any; Flag: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(MenuIndex, arg[3]);
        CtlC.AnyVar(CommandIndex, arg[2]);
        CtlC.AnyVar(SubcommandIndex, arg[1]);
        CtlC.AnyVar(Flag, arg[0]);
        CtlC.CallParMethod(this, 1454, arg, NIL);
    END SetMenuItem;

    PROCEDURE (this: IDoCmd) RunCommand* (Command: AcCommand), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Command, arg[0]);
        CtlC.CallParMethod(this, 1602, arg, NIL);
    END RunCommand;


    (* ---------- _AccessProperty, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _AccessProperty) Properties* (): CtlDAO.Properties, NEW;
        (* Collection of Property objects. *)
    BEGIN
        RETURN CtlDAO.ThisProperties(CtlC.GetAny(this, 10))
    END Properties;

    PROCEDURE (this: _AccessProperty) Value* (): CtlT.Any, NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _AccessProperty) PUTValue* (p1: CtlT.Any), NEW;
        (* Sets or returns the value of an object. *)
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _AccessProperty) Name* (): CtlT.Strg, NEW;
        (* Returns the name of this object. *)
    BEGIN
        RETURN CtlC.GetStr(this, 1610809346)
    END Name;

    PROCEDURE (this: _AccessProperty) PUTName* (p1: ARRAY OF CHAR), NEW;
        (* Returns the name of this object. *)
    BEGIN
        CtlC.PutStr(this, 1610809346, p1)
    END PUTName;

    PROCEDURE (this: _AccessProperty) Type* (): SHORTINT, NEW;
        (* Returns the data type of an object. *)
    BEGIN
        RETURN CtlC.GetSInt(this, 1610809348)
    END Type;

    PROCEDURE (this: _AccessProperty) PUTType* (p1: SHORTINT), NEW;
        (* Returns the data type of an object. *)
    BEGIN
        CtlC.PutSInt(this, 1610809348, p1)
    END PUTType;

    PROCEDURE (this: _AccessProperty) Inherited* (): BOOLEAN, NEW;
        (* Returns whether a property is inherited from an underlying object. *)
    BEGIN
        RETURN CtlC.GetBool(this, 1610809350)
    END Inherited;

    PROCEDURE (this: _AccessProperty) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _AccessProperty) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _AccessProperty) Category* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 2096)
    END Category;


    (* ---------- Properties, dual, nonextensible ---------- *)

    PROCEDURE (this: Properties) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: Properties) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: Properties) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Properties) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: Properties) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _ItemsSelected, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _ItemsSelected) Item* (Index: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarInt(ret)
    END Item;

    PROCEDURE (this: _ItemsSelected) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: _ItemsSelected) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- Children, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: Children) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Children) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: Children) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _AccessField, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _AccessField) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _AccessField) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;


    (* ---------- _Hyperlink, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Hyperlink) SubAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2182)
    END SubAddress;

    PROCEDURE (this: _Hyperlink) PUTSubAddress* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 2182, p1)
    END PUTSubAddress;

    PROCEDURE (this: _Hyperlink) Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2183)
    END Address;

    PROCEDURE (this: _Hyperlink) PUTAddress* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 2183, p1)
    END PUTAddress;

    PROCEDURE (this: _Hyperlink) AddToFavorites* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2184, NIL);
    END AddToFavorites;

    PROCEDURE (this: _Hyperlink) Follow* (NewWindow: BOOLEAN; AddHistory: BOOLEAN; ExtraInfo: CtlT.Any; Method: CtlOffice.MsoExtraInfoMethod; HeaderInfo: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.BoolVar(NewWindow, arg[4]);
        CtlC.BoolVar(AddHistory, arg[3]);
        CtlC.AnyVar(ExtraInfo, arg[2]);
        CtlC.IntVar(Method, arg[1]);
        CtlC.StrVar(HeaderInfo, arg[0]);
        CtlC.CallParMethod(this, 2185, arg, NIL);
    END Follow;


    (* ---------- Pages, dual, nonextensible ---------- *)

    PROCEDURE (this: Pages) Item* (Index: CtlT.Any): Page, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Page(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Pages) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: Pages) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: Pages) Add* ((* optional *) Before: CtlT.Any): Page, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 2191, arg, ret);
        RETURN This_Page(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Pages) Remove* ((* optional *) Item: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Item, arg[0]);
        CtlC.CallParMethod(this, 2192, arg, NIL);
    END Remove;


    (* ---------- _Control, hidden, dual ---------- *)

    PROCEDURE (this: _Control) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Control) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Control) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2144, NIL);
    END Undo;

    PROCEDURE (this: _Control) Dropdown* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2143, NIL);
    END Dropdown;

    PROCEDURE (this: _Control) Column* (Index: INTEGER; (* optional *) Row: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[1]);
        CtlC.AnyVar(Row, arg[0]);
        CtlC.CallGetMethod(this, 2101, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Column;

    PROCEDURE (this: _Control) Selected* (lRow: INTEGER): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(lRow, arg[0]);
        CtlC.CallGetMethod(this, 2113, arg, ret);
        RETURN CtlC.VarInt(ret)
    END Selected;

    PROCEDURE (this: _Control) PUTSelected* (lRow: INTEGER; p2: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(lRow, arg[1]);
        CtlC.IntVar(p2, arg[0]);
        CtlC.CallPutMethod(this, 2113, arg, NIL);
    END PUTSelected;

    PROCEDURE (this: _Control) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _Control) Form* (): Form, NEW;
    BEGIN
        RETURN This_Form(CtlC.GetAny(this, 2089))
    END Form;

    PROCEDURE (this: _Control) Report* (): Report, NEW;
    BEGIN
        RETURN This_Report(CtlC.GetAny(this, 2097))
    END Report;

    PROCEDURE (this: _Control) ItemData* (Index: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2103, arg, ret);
        RETURN CtlC.VarAny(ret)
    END ItemData;

    PROCEDURE (this: _Control) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2104)
    END Object;

    PROCEDURE (this: _Control) ObjectVerbs* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2105, arg, ret);
        RETURN CtlC.VarStr(ret)
    END ObjectVerbs;

    PROCEDURE (this: _Control) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Control) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _Control) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Control) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _Control) ItemsSelected* (): _ItemsSelected, NEW;
    BEGIN
        RETURN This_ItemsSelected(CtlC.GetAny(this, 2137))
    END ItemsSelected;

    PROCEDURE (this: _Control) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _Control) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Control) Pages* (): Pages, NEW;
    BEGIN
        RETURN ThisPages(CtlC.GetAny(this, 2180))
    END Pages;

    PROCEDURE (this: _Control) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _Control) Hyperlink* (): _Hyperlink, NEW;
    BEGIN
        RETURN This_Hyperlink(CtlC.GetAny(this, 2181))
    END Hyperlink;


    (* ---------- Controls, dual, nonextensible ---------- *)

    PROCEDURE (this: Controls) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: Controls) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: Controls) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Controls) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: Controls) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _Label, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Label) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Label) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Label) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Label) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Label) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Label) Hyperlink* (): _Hyperlink, NEW;
    BEGIN
        RETURN This_Hyperlink(CtlC.GetAny(this, 2181))
    END Hyperlink;

    PROCEDURE (this: _Label) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Label) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Label) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Label) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Label) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Label) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Label) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Caption;

    PROCEDURE (this: _Label) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTCaption;

    PROCEDURE (this: _Label) HyperlinkAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 386)
    END HyperlinkAddress;

    PROCEDURE (this: _Label) PUTHyperlinkAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 386, p1)
    END PUTHyperlinkAddress;

    PROCEDURE (this: _Label) HyperlinkSubAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 390)
    END HyperlinkSubAddress;

    PROCEDURE (this: _Label) PUTHyperlinkSubAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 390, p1)
    END PUTHyperlinkSubAddress;

    PROCEDURE (this: _Label) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Label) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Label) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Label) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Label) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Label) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Label) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Label) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Label) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Label) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Label) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Label) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Label) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _Label) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _Label) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _Label) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _Label) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Label) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Label) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Label) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Label) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _Label) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _Label) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _Label) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _Label) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _Label) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _Label) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _Label) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _Label) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 203)
    END ForeColor;

    PROCEDURE (this: _Label) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 203, p1)
    END PUTForeColor;

    PROCEDURE (this: _Label) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _Label) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _Label) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _Label) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _Label) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 37)
    END FontWeight;

    PROCEDURE (this: _Label) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 37, p1)
    END PUTFontWeight;

    PROCEDURE (this: _Label) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33)
    END FontItalic;

    PROCEDURE (this: _Label) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _Label) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END FontUnderline;

    PROCEDURE (this: _Label) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _Label) TextFontCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 192)
    END TextFontCharSet;

    PROCEDURE (this: _Label) PUTTextFontCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 192, p1)
    END PUTTextFontCharSet;

    PROCEDURE (this: _Label) TextAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 133)
    END TextAlign;

    PROCEDURE (this: _Label) PUTTextAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 133, p1)
    END PUTTextAlign;

    PROCEDURE (this: _Label) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _Label) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _Label) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _Label) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _Label) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Label) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Label) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Label) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Label) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Label) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Label) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Label) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Label) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Label) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _Label) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Label) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Label) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Label) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Label) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Label) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Label) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Label) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Label) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Label) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Label) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Label) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Label) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Label) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;


    (* ---------- _Rectangle, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Rectangle) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Rectangle) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Rectangle) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Rectangle) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Rectangle) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Rectangle) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Rectangle) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Rectangle) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Rectangle) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Rectangle) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Rectangle) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Rectangle) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Rectangle) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Rectangle) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Rectangle) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Rectangle) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Rectangle) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Rectangle) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Rectangle) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Rectangle) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Rectangle) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Rectangle) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Rectangle) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Rectangle) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _Rectangle) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _Rectangle) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _Rectangle) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _Rectangle) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Rectangle) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Rectangle) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Rectangle) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Rectangle) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _Rectangle) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _Rectangle) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _Rectangle) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _Rectangle) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _Rectangle) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _Rectangle) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _Rectangle) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _Rectangle) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Rectangle) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Rectangle) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Rectangle) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Rectangle) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Rectangle) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Rectangle) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Rectangle) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Rectangle) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Rectangle) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _Rectangle) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Rectangle) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Rectangle) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Rectangle) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Rectangle) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Rectangle) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Rectangle) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Rectangle) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Rectangle) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Rectangle) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;


    (* ---------- _Line, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Line) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Line) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Line) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Line) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Line) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Line) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Line) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Line) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Line) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Line) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Line) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Line) LineSlant* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 55)
    END LineSlant;

    PROCEDURE (this: _Line) PUTLineSlant* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 55, p1)
    END PUTLineSlant;

    PROCEDURE (this: _Line) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Line) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Line) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Line) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Line) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Line) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Line) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Line) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Line) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Line) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Line) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Line) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Line) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Line) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Line) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Line) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Line) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _Line) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _Line) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _Line) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _Line) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _Line) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _Line) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _Line) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _Line) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Line) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Line) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Line) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Line) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Line) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Line) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Line) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Line) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Line) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;


    (* ---------- _Image, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Image) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Image) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Image) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _Image) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Image) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Image) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _Image) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _Image) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _Image) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _Image) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Image) Hyperlink* (): _Hyperlink, NEW;
    BEGIN
        RETURN This_Hyperlink(CtlC.GetAny(this, 2181))
    END Hyperlink;

    PROCEDURE (this: _Image) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _Image) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _Image) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Image) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Image) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Image) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Image) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Image) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Image) Picture* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 7)
    END Picture;

    PROCEDURE (this: _Image) PUTPicture* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 7, p1)
    END PUTPicture;

    PROCEDURE (this: _Image) PictureType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 384)
    END PictureType;

    PROCEDURE (this: _Image) PUTPictureType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 384, p1)
    END PUTPictureType;

    PROCEDURE (this: _Image) PictureData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 187)
    END PictureData;

    PROCEDURE (this: _Image) PUTPictureData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 187, p1)
    END PUTPictureData;

    PROCEDURE (this: _Image) SizeMode* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 85)
    END SizeMode;

    PROCEDURE (this: _Image) PUTSizeMode* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 85, p1)
    END PUTSizeMode;

    PROCEDURE (this: _Image) PictureAlignment* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 354)
    END PictureAlignment;

    PROCEDURE (this: _Image) PUTPictureAlignment* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 354, p1)
    END PUTPictureAlignment;

    PROCEDURE (this: _Image) PictureTiling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 358)
    END PictureTiling;

    PROCEDURE (this: _Image) PUTPictureTiling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 358, p1)
    END PUTPictureTiling;

    PROCEDURE (this: _Image) HyperlinkAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 386)
    END HyperlinkAddress;

    PROCEDURE (this: _Image) PUTHyperlinkAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 386, p1)
    END PUTHyperlinkAddress;

    PROCEDURE (this: _Image) HyperlinkSubAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 390)
    END HyperlinkSubAddress;

    PROCEDURE (this: _Image) PUTHyperlinkSubAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 390, p1)
    END PUTHyperlinkSubAddress;

    PROCEDURE (this: _Image) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Image) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Image) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Image) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Image) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Image) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Image) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Image) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Image) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Image) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Image) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Image) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Image) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _Image) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _Image) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _Image) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _Image) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Image) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Image) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Image) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Image) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _Image) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _Image) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _Image) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _Image) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _Image) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _Image) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _Image) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _Image) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _Image) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _Image) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Image) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Image) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Image) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Image) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Image) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Image) ObjectPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 96)
    END ObjectPalette;

    PROCEDURE (this: _Image) PUTObjectPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 96, p1)
    END PUTObjectPalette;

    PROCEDURE (this: _Image) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Image) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Image) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Image) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Image) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Image) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Image) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Image) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Image) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Image) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Image) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Image) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Image) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Image) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Image) ImageHeight* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 350)
    END ImageHeight;

    PROCEDURE (this: _Image) PUTImageHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 350, p1)
    END PUTImageHeight;

    PROCEDURE (this: _Image) ImageWidth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 351)
    END ImageWidth;

    PROCEDURE (this: _Image) PUTImageWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 351, p1)
    END PUTImageWidth;

    PROCEDURE (this: _Image) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Image) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _Image) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Image) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;


    (* ---------- _CommandButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _CommandButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _CommandButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _CommandButton) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _CommandButton) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _CommandButton) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _CommandButton) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _CommandButton) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _CommandButton) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _CommandButton) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _CommandButton) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _CommandButton) Hyperlink* (): _Hyperlink, NEW;
    BEGIN
        RETURN This_Hyperlink(CtlC.GetAny(this, 2181))
    END Hyperlink;

    PROCEDURE (this: _CommandButton) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _CommandButton) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _CommandButton) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _CommandButton) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _CommandButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _CommandButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _CommandButton) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _CommandButton) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _CommandButton) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Caption;

    PROCEDURE (this: _CommandButton) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTCaption;

    PROCEDURE (this: _CommandButton) Picture* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 7)
    END Picture;

    PROCEDURE (this: _CommandButton) PUTPicture* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 7, p1)
    END PUTPicture;

    PROCEDURE (this: _CommandButton) PictureType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 384)
    END PictureType;

    PROCEDURE (this: _CommandButton) PUTPictureType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 384, p1)
    END PUTPictureType;

    PROCEDURE (this: _CommandButton) PictureData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 187)
    END PictureData;

    PROCEDURE (this: _CommandButton) PUTPictureData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 187, p1)
    END PUTPictureData;

    PROCEDURE (this: _CommandButton) Transparent* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 46)
    END Transparent;

    PROCEDURE (this: _CommandButton) PUTTransparent* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 46, p1)
    END PUTTransparent;

    PROCEDURE (this: _CommandButton) Default* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 219)
    END Default;

    PROCEDURE (this: _CommandButton) PUTDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 219, p1)
    END PUTDefault;

    PROCEDURE (this: _CommandButton) Cancel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 220)
    END Cancel;

    PROCEDURE (this: _CommandButton) PUTCancel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 220, p1)
    END PUTCancel;

    PROCEDURE (this: _CommandButton) AutoRepeat* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END AutoRepeat;

    PROCEDURE (this: _CommandButton) PUTAutoRepeat* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTAutoRepeat;

    PROCEDURE (this: _CommandButton) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _CommandButton) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _CommandButton) OnPush* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 152)
    END OnPush;

    PROCEDURE (this: _CommandButton) PUTOnPush* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 152, p1)
    END PUTOnPush;

    PROCEDURE (this: _CommandButton) HyperlinkAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 386)
    END HyperlinkAddress;

    PROCEDURE (this: _CommandButton) PUTHyperlinkAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 386, p1)
    END PUTHyperlinkAddress;

    PROCEDURE (this: _CommandButton) HyperlinkSubAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 390)
    END HyperlinkSubAddress;

    PROCEDURE (this: _CommandButton) PUTHyperlinkSubAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 390, p1)
    END PUTHyperlinkSubAddress;

    PROCEDURE (this: _CommandButton) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _CommandButton) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _CommandButton) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _CommandButton) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _CommandButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _CommandButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _CommandButton) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _CommandButton) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _CommandButton) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _CommandButton) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _CommandButton) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _CommandButton) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _CommandButton) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _CommandButton) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _CommandButton) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _CommandButton) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _CommandButton) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _CommandButton) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _CommandButton) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 203)
    END ForeColor;

    PROCEDURE (this: _CommandButton) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 203, p1)
    END PUTForeColor;

    PROCEDURE (this: _CommandButton) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _CommandButton) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _CommandButton) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _CommandButton) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _CommandButton) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 37)
    END FontWeight;

    PROCEDURE (this: _CommandButton) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 37, p1)
    END PUTFontWeight;

    PROCEDURE (this: _CommandButton) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33)
    END FontItalic;

    PROCEDURE (this: _CommandButton) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _CommandButton) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END FontUnderline;

    PROCEDURE (this: _CommandButton) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _CommandButton) TextFontCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 192)
    END TextFontCharSet;

    PROCEDURE (this: _CommandButton) PUTTextFontCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 192, p1)
    END PUTTextFontCharSet;

    PROCEDURE (this: _CommandButton) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _CommandButton) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _CommandButton) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _CommandButton) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _CommandButton) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _CommandButton) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _CommandButton) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _CommandButton) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _CommandButton) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _CommandButton) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _CommandButton) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _CommandButton) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _CommandButton) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _CommandButton) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _CommandButton) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _CommandButton) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _CommandButton) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _CommandButton) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _CommandButton) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _CommandButton) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _CommandButton) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _CommandButton) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _CommandButton) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _CommandButton) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _CommandButton) ObjectPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 96)
    END ObjectPalette;

    PROCEDURE (this: _CommandButton) PUTObjectPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 96, p1)
    END PUTObjectPalette;

    PROCEDURE (this: _CommandButton) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _CommandButton) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _CommandButton) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _CommandButton) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _CommandButton) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _CommandButton) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _CommandButton) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _CommandButton) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _CommandButton) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _CommandButton) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _CommandButton) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _CommandButton) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _CommandButton) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _CommandButton) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _CommandButton) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _CommandButton) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _CommandButton) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _CommandButton) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _CommandButton) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _CommandButton) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _CommandButton) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _CommandButton) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _CommandButton) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _CommandButton) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _CommandButton) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _CommandButton) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _CommandButton) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _CommandButton) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _OptionButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _OptionButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _OptionButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _OptionButton) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _OptionButton) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _OptionButton) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _OptionButton) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _OptionButton) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _OptionButton) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _OptionButton) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _OptionButton) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _OptionButton) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _OptionButton) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _OptionButton) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _OptionButton) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _OptionButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _OptionButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _OptionButton) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _OptionButton) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _OptionButton) OptionValue* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 58)
    END OptionValue;

    PROCEDURE (this: _OptionButton) PUTOptionValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 58, p1)
    END PUTOptionValue;

    PROCEDURE (this: _OptionButton) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _OptionButton) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _OptionButton) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _OptionButton) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _OptionButton) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _OptionButton) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _OptionButton) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _OptionButton) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _OptionButton) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _OptionButton) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _OptionButton) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _OptionButton) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _OptionButton) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _OptionButton) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _OptionButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _OptionButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _OptionButton) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _OptionButton) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _OptionButton) TripleState* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 326)
    END TripleState;

    PROCEDURE (this: _OptionButton) PUTTripleState* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 326, p1)
    END PUTTripleState;

    PROCEDURE (this: _OptionButton) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _OptionButton) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _OptionButton) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _OptionButton) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _OptionButton) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _OptionButton) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _OptionButton) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _OptionButton) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _OptionButton) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _OptionButton) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _OptionButton) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _OptionButton) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _OptionButton) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _OptionButton) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _OptionButton) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _OptionButton) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _OptionButton) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _OptionButton) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _OptionButton) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _OptionButton) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _OptionButton) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _OptionButton) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _OptionButton) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _OptionButton) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _OptionButton) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _OptionButton) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _OptionButton) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _OptionButton) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _OptionButton) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _OptionButton) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _OptionButton) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _OptionButton) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _OptionButton) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _OptionButton) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _OptionButton) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _OptionButton) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _OptionButton) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _OptionButton) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _OptionButton) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _OptionButton) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _OptionButton) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _OptionButton) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _OptionButton) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _OptionButton) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _OptionButton) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _OptionButton) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _OptionButton) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _OptionButton) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _OptionButton) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _OptionButton) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _OptionButton) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _OptionButton) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _OptionButton) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _OptionButton) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _OptionButton) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _OptionButton) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _OptionButton) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _OptionButton) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _OptionButton) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _OptionButton) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _OptionButton) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _OptionButton) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _OptionButton) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _OptionButton) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _OptionButton) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _OptionButton) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _OptionButton) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _OptionButton) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _OptionButton) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _OptionButton) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _OptionButton) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _OptionButton) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _OptionButton) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _OptionButton) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _OptionButton) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _OptionButton) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _OptionButton) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _OptionButton) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _OptionButton) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _OptionButton) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _OptionButton) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _OptionButton) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _OptionButton) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _OptionButton) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _OptionButton) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _OptionButton) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _Checkbox, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Checkbox) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Checkbox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Checkbox) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2144, NIL);
    END Undo;

    PROCEDURE (this: _Checkbox) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _Checkbox) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Checkbox) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Checkbox) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _Checkbox) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _Checkbox) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _Checkbox) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _Checkbox) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Checkbox) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _Checkbox) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _Checkbox) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Checkbox) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Checkbox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Checkbox) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Checkbox) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Checkbox) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Checkbox) OptionValue* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 58)
    END OptionValue;

    PROCEDURE (this: _Checkbox) PUTOptionValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 58, p1)
    END PUTOptionValue;

    PROCEDURE (this: _Checkbox) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _Checkbox) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _Checkbox) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _Checkbox) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _Checkbox) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _Checkbox) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _Checkbox) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _Checkbox) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _Checkbox) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _Checkbox) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _Checkbox) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Checkbox) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Checkbox) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Checkbox) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Checkbox) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _Checkbox) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _Checkbox) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _Checkbox) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _Checkbox) TripleState* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 326)
    END TripleState;

    PROCEDURE (this: _Checkbox) PUTTripleState* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 326, p1)
    END PUTTripleState;

    PROCEDURE (this: _Checkbox) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _Checkbox) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _Checkbox) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _Checkbox) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _Checkbox) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _Checkbox) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _Checkbox) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Checkbox) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Checkbox) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Checkbox) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Checkbox) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Checkbox) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Checkbox) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Checkbox) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Checkbox) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Checkbox) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Checkbox) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Checkbox) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Checkbox) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _Checkbox) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _Checkbox) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _Checkbox) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _Checkbox) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _Checkbox) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _Checkbox) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _Checkbox) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _Checkbox) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Checkbox) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Checkbox) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _Checkbox) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _Checkbox) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Checkbox) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Checkbox) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _Checkbox) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _Checkbox) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _Checkbox) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _Checkbox) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _Checkbox) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _Checkbox) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _Checkbox) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _Checkbox) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _Checkbox) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _Checkbox) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _Checkbox) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _Checkbox) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _Checkbox) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _Checkbox) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _Checkbox) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _Checkbox) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Checkbox) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Checkbox) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Checkbox) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Checkbox) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Checkbox) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Checkbox) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Checkbox) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Checkbox) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Checkbox) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _Checkbox) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _Checkbox) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _Checkbox) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _Checkbox) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _Checkbox) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _Checkbox) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _Checkbox) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _Checkbox) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _Checkbox) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _Checkbox) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _Checkbox) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _Checkbox) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _Checkbox) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Checkbox) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Checkbox) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Checkbox) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Checkbox) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Checkbox) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Checkbox) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Checkbox) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Checkbox) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Checkbox) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Checkbox) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _Checkbox) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _Checkbox) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _Checkbox) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _Checkbox) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _Checkbox) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _OptionGroup, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _OptionGroup) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _OptionGroup) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _OptionGroup) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2144, NIL);
    END Undo;

    PROCEDURE (this: _OptionGroup) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _OptionGroup) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _OptionGroup) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _OptionGroup) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _OptionGroup) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _OptionGroup) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _OptionGroup) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _OptionGroup) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _OptionGroup) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _OptionGroup) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _OptionGroup) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _OptionGroup) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _OptionGroup) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _OptionGroup) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _OptionGroup) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _OptionGroup) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _OptionGroup) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _OptionGroup) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _OptionGroup) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _OptionGroup) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _OptionGroup) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _OptionGroup) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _OptionGroup) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _OptionGroup) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _OptionGroup) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _OptionGroup) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _OptionGroup) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _OptionGroup) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _OptionGroup) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _OptionGroup) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _OptionGroup) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _OptionGroup) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _OptionGroup) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _OptionGroup) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _OptionGroup) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _OptionGroup) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _OptionGroup) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _OptionGroup) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _OptionGroup) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _OptionGroup) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _OptionGroup) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _OptionGroup) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _OptionGroup) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _OptionGroup) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _OptionGroup) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _OptionGroup) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _OptionGroup) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _OptionGroup) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _OptionGroup) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _OptionGroup) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _OptionGroup) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _OptionGroup) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _OptionGroup) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _OptionGroup) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _OptionGroup) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _OptionGroup) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _OptionGroup) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _OptionGroup) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _OptionGroup) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _OptionGroup) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _OptionGroup) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _OptionGroup) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _OptionGroup) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _OptionGroup) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _OptionGroup) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _OptionGroup) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _OptionGroup) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _OptionGroup) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _OptionGroup) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _OptionGroup) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _OptionGroup) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _OptionGroup) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _OptionGroup) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _OptionGroup) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _OptionGroup) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _OptionGroup) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _OptionGroup) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _OptionGroup) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _OptionGroup) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _OptionGroup) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _OptionGroup) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _OptionGroup) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _OptionGroup) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _OptionGroup) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _OptionGroup) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _OptionGroup) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _OptionGroup) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _OptionGroup) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _OptionGroup) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _OptionGroup) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _OptionGroup) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _OptionGroup) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _OptionGroup) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _OptionGroup) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _OptionGroup) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _OptionGroup) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _OptionGroup) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _OptionGroup) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _OptionGroup) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _OptionGroup) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _OptionGroup) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _OptionGroup) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _OptionGroup) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _OptionGroup) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _OptionGroup) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _OptionGroup) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _OptionGroup) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _OptionGroup) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _OptionGroup) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _OptionGroup) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _OptionGroup) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _OptionGroup) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _OptionGroup) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _OptionGroup) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;


    (* ---------- _BoundObjectFrame, hidden, dual ---------- *)

    PROCEDURE (this: _BoundObjectFrame) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _BoundObjectFrame) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _BoundObjectFrame) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _BoundObjectFrame) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2104)
    END Object;

    PROCEDURE (this: _BoundObjectFrame) ObjectVerbs* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2105, arg, ret);
        RETURN CtlC.VarStr(ret)
    END ObjectVerbs;

    PROCEDURE (this: _BoundObjectFrame) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _BoundObjectFrame) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _BoundObjectFrame) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _BoundObjectFrame) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _BoundObjectFrame) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _BoundObjectFrame) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _BoundObjectFrame) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _BoundObjectFrame) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _BoundObjectFrame) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _BoundObjectFrame) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _BoundObjectFrame) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _BoundObjectFrame) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _BoundObjectFrame) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _BoundObjectFrame) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _BoundObjectFrame) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _BoundObjectFrame) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _BoundObjectFrame) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _BoundObjectFrame) SizeMode* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 85)
    END SizeMode;

    PROCEDURE (this: _BoundObjectFrame) PUTSizeMode* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 85, p1)
    END PUTSizeMode;

    PROCEDURE (this: _BoundObjectFrame) Class* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 306)
    END Class;

    PROCEDURE (this: _BoundObjectFrame) PUTClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 306, p1)
    END PUTClass;

    PROCEDURE (this: _BoundObjectFrame) SourceDoc* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 130)
    END SourceDoc;

    PROCEDURE (this: _BoundObjectFrame) PUTSourceDoc* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 130, p1)
    END PUTSourceDoc;

    PROCEDURE (this: _BoundObjectFrame) SourceItem* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 48)
    END SourceItem;

    PROCEDURE (this: _BoundObjectFrame) PUTSourceItem* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 48, p1)
    END PUTSourceItem;

    PROCEDURE (this: _BoundObjectFrame) AutoActivate* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 98)
    END AutoActivate;

    PROCEDURE (this: _BoundObjectFrame) PUTAutoActivate* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 98, p1)
    END PUTAutoActivate;

    PROCEDURE (this: _BoundObjectFrame) DisplayType* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 304)
    END DisplayType;

    PROCEDURE (this: _BoundObjectFrame) PUTDisplayType* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 304, p1)
    END PUTDisplayType;

    PROCEDURE (this: _BoundObjectFrame) UpdateOptions* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 100)
    END UpdateOptions;

    PROCEDURE (this: _BoundObjectFrame) PUTUpdateOptions* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 100, p1)
    END PUTUpdateOptions;

    PROCEDURE (this: _BoundObjectFrame) Verb* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 99)
    END Verb;

    PROCEDURE (this: _BoundObjectFrame) PUTVerb* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 99, p1)
    END PUTVerb;

    PROCEDURE (this: _BoundObjectFrame) OLETypeAllowed* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 307)
    END OLETypeAllowed;

    PROCEDURE (this: _BoundObjectFrame) PUTOLETypeAllowed* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 307, p1)
    END PUTOLETypeAllowed;

    PROCEDURE (this: _BoundObjectFrame) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _BoundObjectFrame) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _BoundObjectFrame) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _BoundObjectFrame) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _BoundObjectFrame) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _BoundObjectFrame) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _BoundObjectFrame) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _BoundObjectFrame) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _BoundObjectFrame) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _BoundObjectFrame) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _BoundObjectFrame) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _BoundObjectFrame) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _BoundObjectFrame) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _BoundObjectFrame) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _BoundObjectFrame) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _BoundObjectFrame) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _BoundObjectFrame) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _BoundObjectFrame) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _BoundObjectFrame) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _BoundObjectFrame) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _BoundObjectFrame) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _BoundObjectFrame) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _BoundObjectFrame) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _BoundObjectFrame) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _BoundObjectFrame) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _BoundObjectFrame) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _BoundObjectFrame) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _BoundObjectFrame) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _BoundObjectFrame) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _BoundObjectFrame) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _BoundObjectFrame) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _BoundObjectFrame) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _BoundObjectFrame) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _BoundObjectFrame) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _BoundObjectFrame) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _BoundObjectFrame) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _BoundObjectFrame) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _BoundObjectFrame) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _BoundObjectFrame) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _BoundObjectFrame) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _BoundObjectFrame) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _BoundObjectFrame) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _BoundObjectFrame) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _BoundObjectFrame) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _BoundObjectFrame) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _BoundObjectFrame) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _BoundObjectFrame) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _BoundObjectFrame) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _BoundObjectFrame) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _BoundObjectFrame) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _BoundObjectFrame) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _BoundObjectFrame) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _BoundObjectFrame) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _BoundObjectFrame) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _BoundObjectFrame) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _BoundObjectFrame) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _BoundObjectFrame) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _BoundObjectFrame) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _BoundObjectFrame) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _BoundObjectFrame) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _BoundObjectFrame) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _BoundObjectFrame) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _BoundObjectFrame) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _BoundObjectFrame) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _BoundObjectFrame) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _BoundObjectFrame) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _BoundObjectFrame) ObjectPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 96)
    END ObjectPalette;

    PROCEDURE (this: _BoundObjectFrame) PUTObjectPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 96, p1)
    END PUTObjectPalette;

    PROCEDURE (this: _BoundObjectFrame) LpOleObject* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 169)
    END LpOleObject;

    PROCEDURE (this: _BoundObjectFrame) PUTLpOleObject* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 169, p1)
    END PUTLpOleObject;

    PROCEDURE (this: _BoundObjectFrame) ObjectVerbsCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 172)
    END ObjectVerbsCount;

    PROCEDURE (this: _BoundObjectFrame) PUTObjectVerbsCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 172, p1)
    END PUTObjectVerbsCount;

    PROCEDURE (this: _BoundObjectFrame) Action* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 305)
    END Action;

    PROCEDURE (this: _BoundObjectFrame) PUTAction* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 305, p1)
    END PUTAction;

    PROCEDURE (this: _BoundObjectFrame) Scaling* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 84)
    END Scaling;

    PROCEDURE (this: _BoundObjectFrame) PUTScaling* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 84, p1)
    END PUTScaling;

    PROCEDURE (this: _BoundObjectFrame) OLEType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 308)
    END OLEType;

    PROCEDURE (this: _BoundObjectFrame) PUTOLEType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 308, p1)
    END PUTOLEType;

    PROCEDURE (this: _BoundObjectFrame) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _BoundObjectFrame) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _BoundObjectFrame) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _BoundObjectFrame) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _BoundObjectFrame) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _BoundObjectFrame) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _BoundObjectFrame) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _BoundObjectFrame) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _BoundObjectFrame) OnUpdated* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 115)
    END OnUpdated;

    PROCEDURE (this: _BoundObjectFrame) PUTOnUpdated* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 115, p1)
    END PUTOnUpdated;

    PROCEDURE (this: _BoundObjectFrame) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _BoundObjectFrame) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _BoundObjectFrame) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _BoundObjectFrame) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _BoundObjectFrame) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _BoundObjectFrame) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _BoundObjectFrame) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _BoundObjectFrame) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _BoundObjectFrame) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _BoundObjectFrame) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _BoundObjectFrame) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _BoundObjectFrame) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _BoundObjectFrame) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _BoundObjectFrame) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _BoundObjectFrame) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _BoundObjectFrame) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _BoundObjectFrame) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _BoundObjectFrame) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _BoundObjectFrame) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _BoundObjectFrame) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _BoundObjectFrame) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _BoundObjectFrame) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _BoundObjectFrame) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _BoundObjectFrame) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _Textbox, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Textbox) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Textbox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Textbox) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2144, NIL);
    END Undo;

    PROCEDURE (this: _Textbox) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _Textbox) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Textbox) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Textbox) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _Textbox) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _Textbox) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _Textbox) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _Textbox) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Textbox) Hyperlink* (): _Hyperlink, NEW;
    BEGIN
        RETURN This_Hyperlink(CtlC.GetAny(this, 2181))
    END Hyperlink;

    PROCEDURE (this: _Textbox) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _Textbox) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _Textbox) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Textbox) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Textbox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Textbox) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Textbox) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Textbox) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Textbox) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _Textbox) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _Textbox) Format* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 38)
    END Format;

    PROCEDURE (this: _Textbox) PUTFormat* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 38, p1)
    END PUTFormat;

    PROCEDURE (this: _Textbox) DecimalPlaces* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 67)
    END DecimalPlaces;

    PROCEDURE (this: _Textbox) PUTDecimalPlaces* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 67, p1)
    END PUTDecimalPlaces;

    PROCEDURE (this: _Textbox) InputMask* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 68)
    END InputMask;

    PROCEDURE (this: _Textbox) PUTInputMask* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 68, p1)
    END PUTInputMask;

    PROCEDURE (this: _Textbox) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _Textbox) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _Textbox) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _Textbox) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _Textbox) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _Textbox) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _Textbox) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _Textbox) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _Textbox) EnterKeyBehavior* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 70)
    END EnterKeyBehavior;

    PROCEDURE (this: _Textbox) PUTEnterKeyBehavior* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 70, p1)
    END PUTEnterKeyBehavior;

    PROCEDURE (this: _Textbox) AllowAutoCorrect* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 383)
    END AllowAutoCorrect;

    PROCEDURE (this: _Textbox) PUTAllowAutoCorrect* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 383, p1)
    END PUTAllowAutoCorrect;

    PROCEDURE (this: _Textbox) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Textbox) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Textbox) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Textbox) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Textbox) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _Textbox) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _Textbox) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _Textbox) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _Textbox) FilterLookup* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 337)
    END FilterLookup;

    PROCEDURE (this: _Textbox) PUTFilterLookup* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 337, p1)
    END PUTFilterLookup;

    PROCEDURE (this: _Textbox) AutoTab* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 69)
    END AutoTab;

    PROCEDURE (this: _Textbox) PUTAutoTab* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 69, p1)
    END PUTAutoTab;

    PROCEDURE (this: _Textbox) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _Textbox) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _Textbox) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _Textbox) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _Textbox) ScrollBars* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 149)
    END ScrollBars;

    PROCEDURE (this: _Textbox) PUTScrollBars* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 149, p1)
    END PUTScrollBars;

    PROCEDURE (this: _Textbox) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _Textbox) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _Textbox) CanGrow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 14)
    END CanGrow;

    PROCEDURE (this: _Textbox) PUTCanGrow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 14, p1)
    END PUTCanGrow;

    PROCEDURE (this: _Textbox) CanShrink* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 16)
    END CanShrink;

    PROCEDURE (this: _Textbox) PUTCanShrink* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 16, p1)
    END PUTCanShrink;

    PROCEDURE (this: _Textbox) RunningSum* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 127)
    END RunningSum;

    PROCEDURE (this: _Textbox) PUTRunningSum* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 127, p1)
    END PUTRunningSum;

    PROCEDURE (this: _Textbox) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Textbox) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Textbox) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Textbox) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Textbox) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Textbox) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Textbox) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Textbox) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Textbox) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _Textbox) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _Textbox) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _Textbox) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _Textbox) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Textbox) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Textbox) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Textbox) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Textbox) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _Textbox) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _Textbox) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _Textbox) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _Textbox) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _Textbox) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _Textbox) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _Textbox) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _Textbox) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 203)
    END ForeColor;

    PROCEDURE (this: _Textbox) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 203, p1)
    END PUTForeColor;

    PROCEDURE (this: _Textbox) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _Textbox) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _Textbox) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _Textbox) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _Textbox) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 37)
    END FontWeight;

    PROCEDURE (this: _Textbox) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 37, p1)
    END PUTFontWeight;

    PROCEDURE (this: _Textbox) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33)
    END FontItalic;

    PROCEDURE (this: _Textbox) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _Textbox) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END FontUnderline;

    PROCEDURE (this: _Textbox) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _Textbox) TextFontCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 192)
    END TextFontCharSet;

    PROCEDURE (this: _Textbox) PUTTextFontCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 192, p1)
    END PUTTextFontCharSet;

    PROCEDURE (this: _Textbox) TextAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 133)
    END TextAlign;

    PROCEDURE (this: _Textbox) PUTTextAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 133, p1)
    END PUTTextAlign;

    PROCEDURE (this: _Textbox) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _Textbox) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _Textbox) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Textbox) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Textbox) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _Textbox) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _Textbox) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Textbox) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Textbox) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _Textbox) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _Textbox) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _Textbox) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _Textbox) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _Textbox) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _Textbox) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _Textbox) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _Textbox) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _Textbox) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _Textbox) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _Textbox) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _Textbox) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _Textbox) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _Textbox) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _Textbox) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _Textbox) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Textbox) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Textbox) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Textbox) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Textbox) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Textbox) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Textbox) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 298)
    END Text;

    PROCEDURE (this: _Textbox) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 298, p1)
    END PUTText;

    PROCEDURE (this: _Textbox) SelText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 302)
    END SelText;

    PROCEDURE (this: _Textbox) PUTSelText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 302, p1)
    END PUTSelText;

    PROCEDURE (this: _Textbox) SelStart* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 301)
    END SelStart;

    PROCEDURE (this: _Textbox) PUTSelStart* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 301, p1)
    END PUTSelStart;

    PROCEDURE (this: _Textbox) SelLength* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 300)
    END SelLength;

    PROCEDURE (this: _Textbox) PUTSelLength* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 300, p1)
    END PUTSelLength;

    PROCEDURE (this: _Textbox) TextAlignGeneral* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 134)
    END TextAlignGeneral;

    PROCEDURE (this: _Textbox) PUTTextAlignGeneral* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 134, p1)
    END PUTTextAlignGeneral;

    PROCEDURE (this: _Textbox) Coltyp* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 136)
    END Coltyp;

    PROCEDURE (this: _Textbox) PUTColtyp* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 136, p1)
    END PUTColtyp;

    PROCEDURE (this: _Textbox) FormatPictureText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 135)
    END FormatPictureText;

    PROCEDURE (this: _Textbox) PUTFormatPictureText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 135, p1)
    END PUTFormatPictureText;

    PROCEDURE (this: _Textbox) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Textbox) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Textbox) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Textbox) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _Textbox) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _Textbox) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _Textbox) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _Textbox) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _Textbox) OnChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END OnChange;

    PROCEDURE (this: _Textbox) PUTOnChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 111, p1)
    END PUTOnChange;

    PROCEDURE (this: _Textbox) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _Textbox) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _Textbox) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _Textbox) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _Textbox) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _Textbox) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _Textbox) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _Textbox) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _Textbox) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Textbox) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Textbox) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Textbox) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Textbox) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Textbox) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Textbox) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Textbox) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Textbox) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Textbox) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Textbox) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _Textbox) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _Textbox) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _Textbox) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _Textbox) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _Textbox) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _ListBox, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _ListBox) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _ListBox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _ListBox) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2144, NIL);
    END Undo;

    PROCEDURE (this: _ListBox) Column* (Index: INTEGER; (* optional *) Row: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[1]);
        CtlC.AnyVar(Row, arg[0]);
        CtlC.CallGetMethod(this, 2101, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Column;

    PROCEDURE (this: _ListBox) Selected* (lRow: INTEGER): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(lRow, arg[0]);
        CtlC.CallGetMethod(this, 2113, arg, ret);
        RETURN CtlC.VarInt(ret)
    END Selected;

    PROCEDURE (this: _ListBox) PUTSelected* (lRow: INTEGER; p2: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(lRow, arg[1]);
        CtlC.IntVar(p2, arg[0]);
        CtlC.CallPutMethod(this, 2113, arg, NIL);
    END PUTSelected;

    PROCEDURE (this: _ListBox) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _ListBox) ItemData* (Index: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2103, arg, ret);
        RETURN CtlC.VarAny(ret)
    END ItemData;

    PROCEDURE (this: _ListBox) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _ListBox) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _ListBox) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _ListBox) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _ListBox) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _ListBox) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _ListBox) ItemsSelected* (): _ItemsSelected, NEW;
    BEGIN
        RETURN This_ItemsSelected(CtlC.GetAny(this, 2137))
    END ItemsSelected;

    PROCEDURE (this: _ListBox) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _ListBox) Hyperlink* (): _Hyperlink, NEW;
    BEGIN
        RETURN This_Hyperlink(CtlC.GetAny(this, 2181))
    END Hyperlink;

    PROCEDURE (this: _ListBox) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _ListBox) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _ListBox) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _ListBox) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _ListBox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _ListBox) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _ListBox) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _ListBox) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _ListBox) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _ListBox) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _ListBox) RowSourceType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 90)
    END RowSourceType;

    PROCEDURE (this: _ListBox) PUTRowSourceType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 90, p1)
    END PUTRowSourceType;

    PROCEDURE (this: _ListBox) RowSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 88)
    END RowSource;

    PROCEDURE (this: _ListBox) PUTRowSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 88, p1)
    END PUTRowSource;

    PROCEDURE (this: _ListBox) ColumnCount* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 66)
    END ColumnCount;

    PROCEDURE (this: _ListBox) PUTColumnCount* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 66, p1)
    END PUTColumnCount;

    PROCEDURE (this: _ListBox) ColumnHeads* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 128)
    END ColumnHeads;

    PROCEDURE (this: _ListBox) PUTColumnHeads* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 128, p1)
    END PUTColumnHeads;

    PROCEDURE (this: _ListBox) ColumnWidths* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 18)
    END ColumnWidths;

    PROCEDURE (this: _ListBox) PUTColumnWidths* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 18, p1)
    END PUTColumnWidths;

    PROCEDURE (this: _ListBox) BoundColumn* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 13)
    END BoundColumn;

    PROCEDURE (this: _ListBox) PUTBoundColumn* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 13, p1)
    END PUTBoundColumn;

    PROCEDURE (this: _ListBox) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _ListBox) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _ListBox) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _ListBox) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _ListBox) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _ListBox) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _ListBox) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _ListBox) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _ListBox) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _ListBox) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _ListBox) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _ListBox) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _ListBox) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _ListBox) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _ListBox) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _ListBox) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _ListBox) MultiSelect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 325)
    END MultiSelect;

    PROCEDURE (this: _ListBox) PUTMultiSelect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 325, p1)
    END PUTMultiSelect;

    PROCEDURE (this: _ListBox) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _ListBox) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _ListBox) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _ListBox) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _ListBox) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _ListBox) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _ListBox) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _ListBox) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _ListBox) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _ListBox) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _ListBox) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _ListBox) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _ListBox) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _ListBox) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _ListBox) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _ListBox) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _ListBox) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _ListBox) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _ListBox) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _ListBox) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _ListBox) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _ListBox) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _ListBox) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _ListBox) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _ListBox) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _ListBox) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _ListBox) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _ListBox) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _ListBox) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 203)
    END ForeColor;

    PROCEDURE (this: _ListBox) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 203, p1)
    END PUTForeColor;

    PROCEDURE (this: _ListBox) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _ListBox) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _ListBox) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _ListBox) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _ListBox) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 37)
    END FontWeight;

    PROCEDURE (this: _ListBox) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 37, p1)
    END PUTFontWeight;

    PROCEDURE (this: _ListBox) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33)
    END FontItalic;

    PROCEDURE (this: _ListBox) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _ListBox) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END FontUnderline;

    PROCEDURE (this: _ListBox) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _ListBox) TextFontCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 192)
    END TextFontCharSet;

    PROCEDURE (this: _ListBox) PUTTextFontCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 192, p1)
    END PUTTextFontCharSet;

    PROCEDURE (this: _ListBox) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _ListBox) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _ListBox) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _ListBox) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _ListBox) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _ListBox) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _ListBox) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _ListBox) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _ListBox) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _ListBox) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _ListBox) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _ListBox) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _ListBox) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _ListBox) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _ListBox) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _ListBox) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _ListBox) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _ListBox) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _ListBox) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _ListBox) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _ListBox) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _ListBox) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _ListBox) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _ListBox) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _ListBox) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _ListBox) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _ListBox) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _ListBox) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _ListBox) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _ListBox) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _ListBox) ListCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 241)
    END ListCount;

    PROCEDURE (this: _ListBox) PUTListCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 241, p1)
    END PUTListCount;

    PROCEDURE (this: _ListBox) ListIndex* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 242)
    END ListIndex;

    PROCEDURE (this: _ListBox) PUTListIndex* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 242, p1)
    END PUTListIndex;

    PROCEDURE (this: _ListBox) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _ListBox) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _ListBox) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _ListBox) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _ListBox) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _ListBox) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _ListBox) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _ListBox) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _ListBox) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _ListBox) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _ListBox) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _ListBox) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _ListBox) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _ListBox) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _ListBox) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _ListBox) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _ListBox) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _ListBox) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _ListBox) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _ListBox) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _ListBox) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _ListBox) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _ListBox) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _ListBox) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _ListBox) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _ListBox) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _ListBox) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _ListBox) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _ListBox) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _ListBox) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _ListBox) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _ListBox) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _Combobox, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Combobox) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Combobox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Combobox) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2144, NIL);
    END Undo;

    PROCEDURE (this: _Combobox) Dropdown* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2143, NIL);
    END Dropdown;

    PROCEDURE (this: _Combobox) Column* (Index: INTEGER; (* optional *) Row: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[1]);
        CtlC.AnyVar(Row, arg[0]);
        CtlC.CallGetMethod(this, 2101, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Column;

    PROCEDURE (this: _Combobox) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _Combobox) ItemData* (Index: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2103, arg, ret);
        RETURN CtlC.VarAny(ret)
    END ItemData;

    PROCEDURE (this: _Combobox) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Combobox) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Combobox) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _Combobox) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _Combobox) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _Combobox) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _Combobox) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Combobox) Hyperlink* (): _Hyperlink, NEW;
    BEGIN
        RETURN This_Hyperlink(CtlC.GetAny(this, 2181))
    END Hyperlink;

    PROCEDURE (this: _Combobox) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _Combobox) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _Combobox) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Combobox) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Combobox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Combobox) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Combobox) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Combobox) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Combobox) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _Combobox) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _Combobox) Format* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 38)
    END Format;

    PROCEDURE (this: _Combobox) PUTFormat* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 38, p1)
    END PUTFormat;

    PROCEDURE (this: _Combobox) DecimalPlaces* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 67)
    END DecimalPlaces;

    PROCEDURE (this: _Combobox) PUTDecimalPlaces* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 67, p1)
    END PUTDecimalPlaces;

    PROCEDURE (this: _Combobox) InputMask* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 68)
    END InputMask;

    PROCEDURE (this: _Combobox) PUTInputMask* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 68, p1)
    END PUTInputMask;

    PROCEDURE (this: _Combobox) RowSourceType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 90)
    END RowSourceType;

    PROCEDURE (this: _Combobox) PUTRowSourceType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 90, p1)
    END PUTRowSourceType;

    PROCEDURE (this: _Combobox) RowSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 88)
    END RowSource;

    PROCEDURE (this: _Combobox) PUTRowSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 88, p1)
    END PUTRowSource;

    PROCEDURE (this: _Combobox) ColumnCount* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 66)
    END ColumnCount;

    PROCEDURE (this: _Combobox) PUTColumnCount* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 66, p1)
    END PUTColumnCount;

    PROCEDURE (this: _Combobox) ColumnHeads* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 128)
    END ColumnHeads;

    PROCEDURE (this: _Combobox) PUTColumnHeads* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 128, p1)
    END PUTColumnHeads;

    PROCEDURE (this: _Combobox) ColumnWidths* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 18)
    END ColumnWidths;

    PROCEDURE (this: _Combobox) PUTColumnWidths* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 18, p1)
    END PUTColumnWidths;

    PROCEDURE (this: _Combobox) BoundColumn* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 13)
    END BoundColumn;

    PROCEDURE (this: _Combobox) PUTBoundColumn* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 13, p1)
    END PUTBoundColumn;

    PROCEDURE (this: _Combobox) ListRows* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 150)
    END ListRows;

    PROCEDURE (this: _Combobox) PUTListRows* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 150, p1)
    END PUTListRows;

    PROCEDURE (this: _Combobox) ListWidth* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 151)
    END ListWidth;

    PROCEDURE (this: _Combobox) PUTListWidth* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 151, p1)
    END PUTListWidth;

    PROCEDURE (this: _Combobox) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _Combobox) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _Combobox) LimitToList* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 63)
    END LimitToList;

    PROCEDURE (this: _Combobox) PUTLimitToList* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 63, p1)
    END PUTLimitToList;

    PROCEDURE (this: _Combobox) AutoExpand* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 64)
    END AutoExpand;

    PROCEDURE (this: _Combobox) PUTAutoExpand* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 64, p1)
    END PUTAutoExpand;

    PROCEDURE (this: _Combobox) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _Combobox) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _Combobox) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _Combobox) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _Combobox) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _Combobox) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _Combobox) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Combobox) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Combobox) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Combobox) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Combobox) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _Combobox) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _Combobox) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _Combobox) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _Combobox) AllowAutoCorrect* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 383)
    END AllowAutoCorrect;

    PROCEDURE (this: _Combobox) PUTAllowAutoCorrect* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 383, p1)
    END PUTAllowAutoCorrect;

    PROCEDURE (this: _Combobox) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _Combobox) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _Combobox) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _Combobox) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _Combobox) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _Combobox) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _Combobox) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Combobox) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Combobox) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Combobox) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Combobox) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Combobox) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Combobox) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Combobox) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Combobox) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _Combobox) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _Combobox) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _Combobox) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _Combobox) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Combobox) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Combobox) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Combobox) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Combobox) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _Combobox) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _Combobox) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _Combobox) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _Combobox) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _Combobox) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _Combobox) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _Combobox) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _Combobox) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 203)
    END ForeColor;

    PROCEDURE (this: _Combobox) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 203, p1)
    END PUTForeColor;

    PROCEDURE (this: _Combobox) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _Combobox) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _Combobox) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _Combobox) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _Combobox) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 37)
    END FontWeight;

    PROCEDURE (this: _Combobox) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 37, p1)
    END PUTFontWeight;

    PROCEDURE (this: _Combobox) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33)
    END FontItalic;

    PROCEDURE (this: _Combobox) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _Combobox) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END FontUnderline;

    PROCEDURE (this: _Combobox) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _Combobox) TextFontCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 192)
    END TextFontCharSet;

    PROCEDURE (this: _Combobox) PUTTextFontCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 192, p1)
    END PUTTextFontCharSet;

    PROCEDURE (this: _Combobox) TextAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 133)
    END TextAlign;

    PROCEDURE (this: _Combobox) PUTTextAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 133, p1)
    END PUTTextAlign;

    PROCEDURE (this: _Combobox) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _Combobox) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _Combobox) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Combobox) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Combobox) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _Combobox) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _Combobox) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Combobox) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Combobox) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _Combobox) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _Combobox) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _Combobox) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _Combobox) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _Combobox) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _Combobox) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _Combobox) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _Combobox) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _Combobox) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _Combobox) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _Combobox) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _Combobox) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _Combobox) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _Combobox) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _Combobox) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _Combobox) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Combobox) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Combobox) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Combobox) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Combobox) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Combobox) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Combobox) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 298)
    END Text;

    PROCEDURE (this: _Combobox) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 298, p1)
    END PUTText;

    PROCEDURE (this: _Combobox) SelText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 302)
    END SelText;

    PROCEDURE (this: _Combobox) PUTSelText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 302, p1)
    END PUTSelText;

    PROCEDURE (this: _Combobox) SelStart* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 301)
    END SelStart;

    PROCEDURE (this: _Combobox) PUTSelStart* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 301, p1)
    END PUTSelStart;

    PROCEDURE (this: _Combobox) SelLength* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 300)
    END SelLength;

    PROCEDURE (this: _Combobox) PUTSelLength* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 300, p1)
    END PUTSelLength;

    PROCEDURE (this: _Combobox) TextAlignGeneral* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 134)
    END TextAlignGeneral;

    PROCEDURE (this: _Combobox) PUTTextAlignGeneral* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 134, p1)
    END PUTTextAlignGeneral;

    PROCEDURE (this: _Combobox) FormatPictureText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 135)
    END FormatPictureText;

    PROCEDURE (this: _Combobox) PUTFormatPictureText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 135, p1)
    END PUTFormatPictureText;

    PROCEDURE (this: _Combobox) Coltyp* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 136)
    END Coltyp;

    PROCEDURE (this: _Combobox) PUTColtyp* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 136, p1)
    END PUTColtyp;

    PROCEDURE (this: _Combobox) ListCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 241)
    END ListCount;

    PROCEDURE (this: _Combobox) PUTListCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 241, p1)
    END PUTListCount;

    PROCEDURE (this: _Combobox) ListIndex* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 242)
    END ListIndex;

    PROCEDURE (this: _Combobox) PUTListIndex* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 242, p1)
    END PUTListIndex;

    PROCEDURE (this: _Combobox) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Combobox) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Combobox) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Combobox) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _Combobox) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _Combobox) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _Combobox) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _Combobox) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _Combobox) OnChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END OnChange;

    PROCEDURE (this: _Combobox) PUTOnChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 111, p1)
    END PUTOnChange;

    PROCEDURE (this: _Combobox) OnNotInList* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 117)
    END OnNotInList;

    PROCEDURE (this: _Combobox) PUTOnNotInList* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 117, p1)
    END PUTOnNotInList;

    PROCEDURE (this: _Combobox) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _Combobox) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _Combobox) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _Combobox) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _Combobox) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _Combobox) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _Combobox) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _Combobox) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _Combobox) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Combobox) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Combobox) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Combobox) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Combobox) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Combobox) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Combobox) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Combobox) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Combobox) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Combobox) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Combobox) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _Combobox) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _Combobox) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _Combobox) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _Combobox) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _Combobox) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _ObjectFrame, hidden, dual ---------- *)

    PROCEDURE (this: _ObjectFrame) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _ObjectFrame) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _ObjectFrame) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _ObjectFrame) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2104)
    END Object;

    PROCEDURE (this: _ObjectFrame) ObjectVerbs* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2105, arg, ret);
        RETURN CtlC.VarStr(ret)
    END ObjectVerbs;

    PROCEDURE (this: _ObjectFrame) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _ObjectFrame) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _ObjectFrame) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _ObjectFrame) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _ObjectFrame) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _ObjectFrame) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _ObjectFrame) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _ObjectFrame) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _ObjectFrame) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _ObjectFrame) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _ObjectFrame) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _ObjectFrame) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _ObjectFrame) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _ObjectFrame) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _ObjectFrame) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _ObjectFrame) SizeMode* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 85)
    END SizeMode;

    PROCEDURE (this: _ObjectFrame) PUTSizeMode* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 85, p1)
    END PUTSizeMode;

    PROCEDURE (this: _ObjectFrame) OLEClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 72)
    END OLEClass;

    PROCEDURE (this: _ObjectFrame) PUTOLEClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 72, p1)
    END PUTOLEClass;

    PROCEDURE (this: _ObjectFrame) Item* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 47)
    END Item;

    PROCEDURE (this: _ObjectFrame) PUTItem* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 47, p1)
    END PUTItem;

    PROCEDURE (this: _ObjectFrame) RowSourceType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 90)
    END RowSourceType;

    PROCEDURE (this: _ObjectFrame) PUTRowSourceType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 90, p1)
    END PUTRowSourceType;

    PROCEDURE (this: _ObjectFrame) RowSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 88)
    END RowSource;

    PROCEDURE (this: _ObjectFrame) PUTRowSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 88, p1)
    END PUTRowSource;

    PROCEDURE (this: _ObjectFrame) LinkChildFields* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 49)
    END LinkChildFields;

    PROCEDURE (this: _ObjectFrame) PUTLinkChildFields* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 49, p1)
    END PUTLinkChildFields;

    PROCEDURE (this: _ObjectFrame) LinkMasterFields* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 50)
    END LinkMasterFields;

    PROCEDURE (this: _ObjectFrame) PUTLinkMasterFields* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 50, p1)
    END PUTLinkMasterFields;

    PROCEDURE (this: _ObjectFrame) AutoActivate* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 98)
    END AutoActivate;

    PROCEDURE (this: _ObjectFrame) PUTAutoActivate* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 98, p1)
    END PUTAutoActivate;

    PROCEDURE (this: _ObjectFrame) DisplayType* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 304)
    END DisplayType;

    PROCEDURE (this: _ObjectFrame) PUTDisplayType* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 304, p1)
    END PUTDisplayType;

    PROCEDURE (this: _ObjectFrame) UpdateOptions* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 100)
    END UpdateOptions;

    PROCEDURE (this: _ObjectFrame) PUTUpdateOptions* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 100, p1)
    END PUTUpdateOptions;

    PROCEDURE (this: _ObjectFrame) Verb* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 99)
    END Verb;

    PROCEDURE (this: _ObjectFrame) PUTVerb* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 99, p1)
    END PUTVerb;

    PROCEDURE (this: _ObjectFrame) OLEType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 308)
    END OLEType;

    PROCEDURE (this: _ObjectFrame) PUTOLEType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 308, p1)
    END PUTOLEType;

    PROCEDURE (this: _ObjectFrame) OLETypeAllowed* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 307)
    END OLETypeAllowed;

    PROCEDURE (this: _ObjectFrame) PUTOLETypeAllowed* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 307, p1)
    END PUTOLETypeAllowed;

    PROCEDURE (this: _ObjectFrame) SourceObject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 129)
    END SourceObject;

    PROCEDURE (this: _ObjectFrame) PUTSourceObject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 129, p1)
    END PUTSourceObject;

    PROCEDURE (this: _ObjectFrame) Class* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 306)
    END Class;

    PROCEDURE (this: _ObjectFrame) PUTClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 306, p1)
    END PUTClass;

    PROCEDURE (this: _ObjectFrame) SourceDoc* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 130)
    END SourceDoc;

    PROCEDURE (this: _ObjectFrame) PUTSourceDoc* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 130, p1)
    END PUTSourceDoc;

    PROCEDURE (this: _ObjectFrame) SourceItem* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 48)
    END SourceItem;

    PROCEDURE (this: _ObjectFrame) PUTSourceItem* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 48, p1)
    END PUTSourceItem;

    PROCEDURE (this: _ObjectFrame) ColumnCount* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 66)
    END ColumnCount;

    PROCEDURE (this: _ObjectFrame) PUTColumnCount* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 66, p1)
    END PUTColumnCount;

    PROCEDURE (this: _ObjectFrame) ColumnHeads* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 128)
    END ColumnHeads;

    PROCEDURE (this: _ObjectFrame) PUTColumnHeads* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 128, p1)
    END PUTColumnHeads;

    PROCEDURE (this: _ObjectFrame) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _ObjectFrame) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _ObjectFrame) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _ObjectFrame) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _ObjectFrame) OleData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 168)
    END OleData;

    PROCEDURE (this: _ObjectFrame) PUTOleData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 168, p1)
    END PUTOleData;

    PROCEDURE (this: _ObjectFrame) UpdateMethod* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 139)
    END UpdateMethod;

    PROCEDURE (this: _ObjectFrame) PUTUpdateMethod* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 139, p1)
    END PUTUpdateMethod;

    PROCEDURE (this: _ObjectFrame) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _ObjectFrame) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _ObjectFrame) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _ObjectFrame) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _ObjectFrame) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _ObjectFrame) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _ObjectFrame) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _ObjectFrame) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _ObjectFrame) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _ObjectFrame) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _ObjectFrame) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _ObjectFrame) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _ObjectFrame) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _ObjectFrame) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _ObjectFrame) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _ObjectFrame) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _ObjectFrame) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _ObjectFrame) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _ObjectFrame) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _ObjectFrame) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _ObjectFrame) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _ObjectFrame) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _ObjectFrame) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _ObjectFrame) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _ObjectFrame) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _ObjectFrame) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _ObjectFrame) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _ObjectFrame) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _ObjectFrame) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _ObjectFrame) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _ObjectFrame) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _ObjectFrame) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _ObjectFrame) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _ObjectFrame) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _ObjectFrame) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _ObjectFrame) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _ObjectFrame) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _ObjectFrame) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _ObjectFrame) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _ObjectFrame) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _ObjectFrame) Data* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 265)
    END Data;

    PROCEDURE (this: _ObjectFrame) PUTData* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 265, p1)
    END PUTData;

    PROCEDURE (this: _ObjectFrame) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _ObjectFrame) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _ObjectFrame) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _ObjectFrame) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _ObjectFrame) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _ObjectFrame) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _ObjectFrame) ObjectPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 96)
    END ObjectPalette;

    PROCEDURE (this: _ObjectFrame) PUTObjectPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 96, p1)
    END PUTObjectPalette;

    PROCEDURE (this: _ObjectFrame) LpOleObject* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 169)
    END LpOleObject;

    PROCEDURE (this: _ObjectFrame) PUTLpOleObject* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 169, p1)
    END PUTLpOleObject;

    PROCEDURE (this: _ObjectFrame) ObjectVerbsCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 172)
    END ObjectVerbsCount;

    PROCEDURE (this: _ObjectFrame) PUTObjectVerbsCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 172, p1)
    END PUTObjectVerbsCount;

    PROCEDURE (this: _ObjectFrame) Action* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 305)
    END Action;

    PROCEDURE (this: _ObjectFrame) PUTAction* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 305, p1)
    END PUTAction;

    PROCEDURE (this: _ObjectFrame) Scaling* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 84)
    END Scaling;

    PROCEDURE (this: _ObjectFrame) PUTScaling* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 84, p1)
    END PUTScaling;

    PROCEDURE (this: _ObjectFrame) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _ObjectFrame) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _ObjectFrame) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _ObjectFrame) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _ObjectFrame) OnUpdated* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 115)
    END OnUpdated;

    PROCEDURE (this: _ObjectFrame) PUTOnUpdated* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 115, p1)
    END PUTOnUpdated;

    PROCEDURE (this: _ObjectFrame) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _ObjectFrame) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _ObjectFrame) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _ObjectFrame) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _ObjectFrame) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _ObjectFrame) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _ObjectFrame) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _ObjectFrame) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _ObjectFrame) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _ObjectFrame) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _ObjectFrame) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _ObjectFrame) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _ObjectFrame) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _ObjectFrame) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _ObjectFrame) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _ObjectFrame) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _ObjectFrame) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _ObjectFrame) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;


    (* ---------- _PageBreak, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _PageBreak) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _PageBreak) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _PageBreak) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _PageBreak) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _PageBreak) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _PageBreak) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _PageBreak) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _PageBreak) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _PageBreak) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _PageBreak) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _PageBreak) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _PageBreak) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _PageBreak) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _PageBreak) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _PageBreak) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _PageBreak) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _PageBreak) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _PageBreak) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _PageBreak) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _PageBreak) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _PageBreak) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _PageBreak) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _PageBreak) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _PageBreak) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _PageBreak) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _PageBreak) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _PageBreak) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;


    (* ---------- _ToggleButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _ToggleButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _ToggleButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _ToggleButton) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2144, NIL);
    END Undo;

    PROCEDURE (this: _ToggleButton) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _ToggleButton) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _ToggleButton) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _ToggleButton) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _ToggleButton) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _ToggleButton) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _ToggleButton) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _ToggleButton) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _ToggleButton) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _ToggleButton) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _ToggleButton) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _ToggleButton) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _ToggleButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _ToggleButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _ToggleButton) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _ToggleButton) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _ToggleButton) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _ToggleButton) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _ToggleButton) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Caption;

    PROCEDURE (this: _ToggleButton) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTCaption;

    PROCEDURE (this: _ToggleButton) Picture* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 7)
    END Picture;

    PROCEDURE (this: _ToggleButton) PUTPicture* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 7, p1)
    END PUTPicture;

    PROCEDURE (this: _ToggleButton) PictureType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 384)
    END PictureType;

    PROCEDURE (this: _ToggleButton) PUTPictureType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 384, p1)
    END PUTPictureType;

    PROCEDURE (this: _ToggleButton) PictureData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 187)
    END PictureData;

    PROCEDURE (this: _ToggleButton) PUTPictureData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 187, p1)
    END PUTPictureData;

    PROCEDURE (this: _ToggleButton) OptionValue* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 58)
    END OptionValue;

    PROCEDURE (this: _ToggleButton) PUTOptionValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 58, p1)
    END PUTOptionValue;

    PROCEDURE (this: _ToggleButton) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _ToggleButton) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _ToggleButton) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _ToggleButton) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _ToggleButton) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _ToggleButton) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _ToggleButton) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _ToggleButton) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _ToggleButton) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _ToggleButton) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _ToggleButton) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _ToggleButton) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _ToggleButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _ToggleButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _ToggleButton) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _ToggleButton) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _ToggleButton) TripleState* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 326)
    END TripleState;

    PROCEDURE (this: _ToggleButton) PUTTripleState* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 326, p1)
    END PUTTripleState;

    PROCEDURE (this: _ToggleButton) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _ToggleButton) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _ToggleButton) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _ToggleButton) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _ToggleButton) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _ToggleButton) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _ToggleButton) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _ToggleButton) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _ToggleButton) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _ToggleButton) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _ToggleButton) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _ToggleButton) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _ToggleButton) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _ToggleButton) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _ToggleButton) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 203)
    END ForeColor;

    PROCEDURE (this: _ToggleButton) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 203, p1)
    END PUTForeColor;

    PROCEDURE (this: _ToggleButton) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _ToggleButton) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _ToggleButton) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _ToggleButton) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _ToggleButton) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 37)
    END FontWeight;

    PROCEDURE (this: _ToggleButton) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 37, p1)
    END PUTFontWeight;

    PROCEDURE (this: _ToggleButton) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33)
    END FontItalic;

    PROCEDURE (this: _ToggleButton) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _ToggleButton) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END FontUnderline;

    PROCEDURE (this: _ToggleButton) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _ToggleButton) TextFontCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 192)
    END TextFontCharSet;

    PROCEDURE (this: _ToggleButton) PUTTextFontCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 192, p1)
    END PUTTextFontCharSet;

    PROCEDURE (this: _ToggleButton) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _ToggleButton) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _ToggleButton) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _ToggleButton) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _ToggleButton) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _ToggleButton) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _ToggleButton) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _ToggleButton) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _ToggleButton) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _ToggleButton) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _ToggleButton) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _ToggleButton) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _ToggleButton) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _ToggleButton) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _ToggleButton) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _ToggleButton) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _ToggleButton) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _ToggleButton) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _ToggleButton) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _ToggleButton) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _ToggleButton) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _ToggleButton) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _ToggleButton) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _ToggleButton) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _ToggleButton) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _ToggleButton) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _ToggleButton) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _ToggleButton) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _ToggleButton) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _ToggleButton) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _ToggleButton) ObjectPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 96)
    END ObjectPalette;

    PROCEDURE (this: _ToggleButton) PUTObjectPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 96, p1)
    END PUTObjectPalette;

    PROCEDURE (this: _ToggleButton) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _ToggleButton) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _ToggleButton) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _ToggleButton) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _ToggleButton) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _ToggleButton) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _ToggleButton) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _ToggleButton) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _ToggleButton) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _ToggleButton) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _ToggleButton) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _ToggleButton) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _ToggleButton) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _ToggleButton) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _ToggleButton) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _ToggleButton) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _ToggleButton) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _ToggleButton) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _ToggleButton) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _ToggleButton) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _ToggleButton) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _ToggleButton) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _ToggleButton) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _ToggleButton) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _ToggleButton) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _ToggleButton) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _ToggleButton) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _ToggleButton) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _ToggleButton) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _ToggleButton) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _ToggleButton) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _ToggleButton) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _PaletteButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _PaletteButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _PaletteButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _PaletteButton) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _PaletteButton) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _PaletteButton) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _PaletteButton) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _PaletteButton) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _PaletteButton) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _PaletteButton) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _PaletteButton) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _PaletteButton) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _PaletteButton) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _PaletteButton) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _PaletteButton) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _PaletteButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _PaletteButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _PaletteButton) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _PaletteButton) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _PaletteButton) OptionValue* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 58)
    END OptionValue;

    PROCEDURE (this: _PaletteButton) PUTOptionValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 58, p1)
    END PUTOptionValue;

    PROCEDURE (this: _PaletteButton) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _PaletteButton) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _PaletteButton) DefaultValue* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 23)
    END DefaultValue;

    PROCEDURE (this: _PaletteButton) PUTDefaultValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 23, p1)
    END PUTDefaultValue;

    PROCEDURE (this: _PaletteButton) ValidationRule* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 142)
    END ValidationRule;

    PROCEDURE (this: _PaletteButton) PUTValidationRule* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 142, p1)
    END PUTValidationRule;

    PROCEDURE (this: _PaletteButton) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END ValidationText;

    PROCEDURE (this: _PaletteButton) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTValidationText;

    PROCEDURE (this: _PaletteButton) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _PaletteButton) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _PaletteButton) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _PaletteButton) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _PaletteButton) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _PaletteButton) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _PaletteButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _PaletteButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _PaletteButton) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _PaletteButton) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _PaletteButton) TripleState* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 326)
    END TripleState;

    PROCEDURE (this: _PaletteButton) PUTTripleState* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 326, p1)
    END PUTTripleState;

    PROCEDURE (this: _PaletteButton) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _PaletteButton) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _PaletteButton) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _PaletteButton) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _PaletteButton) HideDuplicates* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HideDuplicates;

    PROCEDURE (this: _PaletteButton) PUTHideDuplicates* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHideDuplicates;

    PROCEDURE (this: _PaletteButton) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _PaletteButton) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _PaletteButton) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _PaletteButton) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _PaletteButton) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _PaletteButton) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _PaletteButton) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _PaletteButton) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _PaletteButton) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _PaletteButton) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _PaletteButton) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _PaletteButton) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _PaletteButton) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _PaletteButton) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _PaletteButton) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _PaletteButton) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _PaletteButton) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _PaletteButton) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _PaletteButton) ColumnWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 163)
    END ColumnWidth;

    PROCEDURE (this: _PaletteButton) PUTColumnWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 163, p1)
    END PUTColumnWidth;

    PROCEDURE (this: _PaletteButton) ColumnOrder* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 162)
    END ColumnOrder;

    PROCEDURE (this: _PaletteButton) PUTColumnOrder* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 162, p1)
    END PUTColumnOrder;

    PROCEDURE (this: _PaletteButton) ColumnHidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 164)
    END ColumnHidden;

    PROCEDURE (this: _PaletteButton) PUTColumnHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 164, p1)
    END PUTColumnHidden;

    PROCEDURE (this: _PaletteButton) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _PaletteButton) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _PaletteButton) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _PaletteButton) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _PaletteButton) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _PaletteButton) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _PaletteButton) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _PaletteButton) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _PaletteButton) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _PaletteButton) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _PaletteButton) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _PaletteButton) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _PaletteButton) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _PaletteButton) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _PaletteButton) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _PaletteButton) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _PaletteButton) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _PaletteButton) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _PaletteButton) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _PaletteButton) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _PaletteButton) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _PaletteButton) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _PaletteButton) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _PaletteButton) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _PaletteButton) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _PaletteButton) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _PaletteButton) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _PaletteButton) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _PaletteButton) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _PaletteButton) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _PaletteButton) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _PaletteButton) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _PaletteButton) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _PaletteButton) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _PaletteButton) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _PaletteButton) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _PaletteButton) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _PaletteButton) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _PaletteButton) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _PaletteButton) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _PaletteButton) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _PaletteButton) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _PaletteButton) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _PaletteButton) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _PaletteButton) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _PaletteButton) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _PaletteButton) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _PaletteButton) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;


    (* ---------- _SubForm, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _SubForm) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _SubForm) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _SubForm) Form* (): Form, NEW;
    BEGIN
        RETURN This_Form(CtlC.GetAny(this, 2089))
    END Form;

    PROCEDURE (this: _SubForm) Report* (): Report, NEW;
    BEGIN
        RETURN This_Report(CtlC.GetAny(this, 2097))
    END Report;

    PROCEDURE (this: _SubForm) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _SubForm) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _SubForm) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _SubForm) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _SubForm) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _SubForm) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _SubForm) Controls* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 0))
    END Controls;

    PROCEDURE (this: _SubForm) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _SubForm) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _SubForm) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _SubForm) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _SubForm) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _SubForm) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _SubForm) SourceObject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 129)
    END SourceObject;

    PROCEDURE (this: _SubForm) PUTSourceObject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 129, p1)
    END PUTSourceObject;

    PROCEDURE (this: _SubForm) LinkChildFields* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 49)
    END LinkChildFields;

    PROCEDURE (this: _SubForm) PUTLinkChildFields* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 49, p1)
    END PUTLinkChildFields;

    PROCEDURE (this: _SubForm) LinkMasterFields* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 50)
    END LinkMasterFields;

    PROCEDURE (this: _SubForm) PUTLinkMasterFields* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 50, p1)
    END PUTLinkMasterFields;

    PROCEDURE (this: _SubForm) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _SubForm) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _SubForm) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _SubForm) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _SubForm) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _SubForm) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _SubForm) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _SubForm) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _SubForm) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _SubForm) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _SubForm) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _SubForm) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _SubForm) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _SubForm) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _SubForm) CanGrow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 14)
    END CanGrow;

    PROCEDURE (this: _SubForm) PUTCanGrow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 14, p1)
    END PUTCanGrow;

    PROCEDURE (this: _SubForm) CanShrink* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 16)
    END CanShrink;

    PROCEDURE (this: _SubForm) PUTCanShrink* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 16, p1)
    END PUTCanShrink;

    PROCEDURE (this: _SubForm) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _SubForm) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _SubForm) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _SubForm) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _SubForm) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _SubForm) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _SubForm) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _SubForm) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _SubForm) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _SubForm) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _SubForm) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _SubForm) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _SubForm) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _SubForm) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _SubForm) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _SubForm) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _SubForm) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _SubForm) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _SubForm) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _SubForm) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _SubForm) AutoLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 57)
    END AutoLabel;

    PROCEDURE (this: _SubForm) PUTAutoLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 57, p1)
    END PUTAutoLabel;

    PROCEDURE (this: _SubForm) AddColon* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END AddColon;

    PROCEDURE (this: _SubForm) PUTAddColon* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTAddColon;

    PROCEDURE (this: _SubForm) LabelX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 52)
    END LabelX;

    PROCEDURE (this: _SubForm) PUTLabelX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 52, p1)
    END PUTLabelX;

    PROCEDURE (this: _SubForm) LabelY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 53)
    END LabelY;

    PROCEDURE (this: _SubForm) PUTLabelY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 53, p1)
    END PUTLabelY;

    PROCEDURE (this: _SubForm) LabelAlign* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 51)
    END LabelAlign;

    PROCEDURE (this: _SubForm) PUTLabelAlign* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 51, p1)
    END PUTLabelAlign;

    PROCEDURE (this: _SubForm) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _SubForm) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _SubForm) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _SubForm) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _SubForm) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _SubForm) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _SubForm) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _SubForm) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _SubForm) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _SubForm) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _SubForm) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _SubForm) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _SubForm) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _SubForm) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;


    (* ---------- _SubReport, hidden, dual ---------- *)

    PROCEDURE (this: _SubReport) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _SubReport) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _SubReport) Form* (): Form, NEW;
    BEGIN
        RETURN This_Form(CtlC.GetAny(this, 2089))
    END Form;

    PROCEDURE (this: _SubReport) Report* (): Report, NEW;
    BEGIN
        RETURN This_Report(CtlC.GetAny(this, 2097))
    END Report;


    (* ---------- _CustomControl, hidden, dual ---------- *)

    PROCEDURE (this: _CustomControl) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _CustomControl) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _CustomControl) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _CustomControl) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2104)
    END Object;

    PROCEDURE (this: _CustomControl) ObjectVerbs* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2105, arg, ret);
        RETURN CtlC.VarStr(ret)
    END ObjectVerbs;

    PROCEDURE (this: _CustomControl) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _CustomControl) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _CustomControl) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _CustomControl) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _CustomControl) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _CustomControl) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _CustomControl) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _CustomControl) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _CustomControl) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _CustomControl) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _CustomControl) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _CustomControl) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _CustomControl) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _CustomControl) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _CustomControl) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _CustomControl) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _CustomControl) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _CustomControl) OLEClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 72)
    END OLEClass;

    PROCEDURE (this: _CustomControl) PUTOLEClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 72, p1)
    END PUTOLEClass;

    PROCEDURE (this: _CustomControl) Verb* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 99)
    END Verb;

    PROCEDURE (this: _CustomControl) PUTVerb* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 99, p1)
    END PUTVerb;

    PROCEDURE (this: _CustomControl) Class* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 306)
    END Class;

    PROCEDURE (this: _CustomControl) PUTClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 306, p1)
    END PUTClass;

    PROCEDURE (this: _CustomControl) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _CustomControl) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _CustomControl) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _CustomControl) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _CustomControl) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _CustomControl) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _CustomControl) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 56)
    END Locked;

    PROCEDURE (this: _CustomControl) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 56, p1)
    END PUTLocked;

    PROCEDURE (this: _CustomControl) OleData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 168)
    END OleData;

    PROCEDURE (this: _CustomControl) PUTOleData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 168, p1)
    END PUTOleData;

    PROCEDURE (this: _CustomControl) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _CustomControl) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _CustomControl) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _CustomControl) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _CustomControl) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _CustomControl) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _CustomControl) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _CustomControl) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _CustomControl) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _CustomControl) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _CustomControl) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _CustomControl) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _CustomControl) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _CustomControl) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _CustomControl) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _CustomControl) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _CustomControl) OldBorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 371)
    END OldBorderStyle;

    PROCEDURE (this: _CustomControl) PUTOldBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 371, p1)
    END PUTOldBorderStyle;

    PROCEDURE (this: _CustomControl) BorderColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8)
    END BorderColor;

    PROCEDURE (this: _CustomControl) PUTBorderColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8, p1)
    END PUTBorderColor;

    PROCEDURE (this: _CustomControl) BorderWidth* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 10)
    END BorderWidth;

    PROCEDURE (this: _CustomControl) PUTBorderWidth* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 10, p1)
    END PUTBorderWidth;

    PROCEDURE (this: _CustomControl) BorderLineStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 11)
    END BorderLineStyle;

    PROCEDURE (this: _CustomControl) PUTBorderLineStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 11, p1)
    END PUTBorderLineStyle;

    PROCEDURE (this: _CustomControl) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _CustomControl) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _CustomControl) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _CustomControl) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _CustomControl) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _CustomControl) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _CustomControl) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _CustomControl) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _CustomControl) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _CustomControl) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _CustomControl) ObjectPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 96)
    END ObjectPalette;

    PROCEDURE (this: _CustomControl) PUTObjectPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 96, p1)
    END PUTObjectPalette;

    PROCEDURE (this: _CustomControl) LpOleObject* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 169)
    END LpOleObject;

    PROCEDURE (this: _CustomControl) PUTLpOleObject* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 169, p1)
    END PUTLpOleObject;

    PROCEDURE (this: _CustomControl) ObjectVerbsCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 172)
    END ObjectVerbsCount;

    PROCEDURE (this: _CustomControl) PUTObjectVerbsCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 172, p1)
    END PUTObjectVerbsCount;

    PROCEDURE (this: _CustomControl) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _CustomControl) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _CustomControl) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _CustomControl) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _CustomControl) OnUpdated* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 115)
    END OnUpdated;

    PROCEDURE (this: _CustomControl) PUTOnUpdated* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 115, p1)
    END PUTOnUpdated;

    PROCEDURE (this: _CustomControl) OnEnter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 221)
    END OnEnter;

    PROCEDURE (this: _CustomControl) PUTOnEnter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 221, p1)
    END PUTOnEnter;

    PROCEDURE (this: _CustomControl) OnExit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 222)
    END OnExit;

    PROCEDURE (this: _CustomControl) PUTOnExit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 222, p1)
    END PUTOnExit;

    PROCEDURE (this: _CustomControl) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _CustomControl) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _CustomControl) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _CustomControl) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _CustomControl) Default* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 219)
    END Default;

    PROCEDURE (this: _CustomControl) PUTDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 219, p1)
    END PUTDefault;

    PROCEDURE (this: _CustomControl) Cancel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 220)
    END Cancel;

    PROCEDURE (this: _CustomControl) PUTCancel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 220, p1)
    END PUTCancel;

    PROCEDURE (this: _CustomControl) Custom* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 328)
    END Custom;

    PROCEDURE (this: _CustomControl) PUTCustom* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 328, p1)
    END PUTCustom;

    PROCEDURE (this: _CustomControl) About* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 329)
    END About;

    PROCEDURE (this: _CustomControl) PUTAbout* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 329, p1)
    END PUTAbout;


    (* ---------- _TabControl, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _TabControl) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _TabControl) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _TabControl) OldValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2102)
    END OldValue;

    PROCEDURE (this: _TabControl) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _TabControl) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _TabControl) Pages* (): Pages, NEW;
    BEGIN
        RETURN ThisPages(CtlC.GetAny(this, 2180))
    END Pages;

    PROCEDURE (this: _TabControl) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _TabControl) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: _TabControl) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: _TabControl) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _TabControl) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _TabControl) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _TabControl) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _TabControl) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _TabControl) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _TabControl) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _TabControl) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _TabControl) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _TabControl) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _TabControl) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _TabControl) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _TabControl) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _TabControl) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _TabControl) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 292)
    END TabStop;

    PROCEDURE (this: _TabControl) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 292, p1)
    END PUTTabStop;

    PROCEDURE (this: _TabControl) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 291)
    END TabIndex;

    PROCEDURE (this: _TabControl) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 291, p1)
    END PUTTabIndex;

    PROCEDURE (this: _TabControl) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _TabControl) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _TabControl) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _TabControl) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _TabControl) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _TabControl) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _TabControl) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _TabControl) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _TabControl) BackStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 29)
    END BackStyle;

    PROCEDURE (this: _TabControl) PUTBackStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 29, p1)
    END PUTBackStyle;

    PROCEDURE (this: _TabControl) MultiRow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 391)
    END MultiRow;

    PROCEDURE (this: _TabControl) PUTMultiRow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 391, p1)
    END PUTMultiRow;

    PROCEDURE (this: _TabControl) Style* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 392)
    END Style;

    PROCEDURE (this: _TabControl) PUTStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 392, p1)
    END PUTStyle;

    PROCEDURE (this: _TabControl) TabFixedHeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 393)
    END TabFixedHeight;

    PROCEDURE (this: _TabControl) PUTTabFixedHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 393, p1)
    END PUTTabFixedHeight;

    PROCEDURE (this: _TabControl) TabFixedWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 394)
    END TabFixedWidth;

    PROCEDURE (this: _TabControl) PUTTabFixedWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 394, p1)
    END PUTTabFixedWidth;

    PROCEDURE (this: _TabControl) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _TabControl) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _TabControl) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _TabControl) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _TabControl) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 37)
    END FontWeight;

    PROCEDURE (this: _TabControl) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 37, p1)
    END PUTFontWeight;

    PROCEDURE (this: _TabControl) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33)
    END FontItalic;

    PROCEDURE (this: _TabControl) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _TabControl) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END FontUnderline;

    PROCEDURE (this: _TabControl) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _TabControl) TextFontCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 192)
    END TextFontCharSet;

    PROCEDURE (this: _TabControl) PUTTextFontCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 192, p1)
    END PUTTextFontCharSet;

    PROCEDURE (this: _TabControl) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _TabControl) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _TabControl) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _TabControl) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _TabControl) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _TabControl) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _TabControl) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _TabControl) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _TabControl) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _TabControl) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _TabControl) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _TabControl) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _TabControl) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _TabControl) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _TabControl) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _TabControl) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _TabControl) OnChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 111)
    END OnChange;

    PROCEDURE (this: _TabControl) PUTOnChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 111, p1)
    END PUTOnChange;

    PROCEDURE (this: _TabControl) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _TabControl) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _TabControl) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _TabControl) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _TabControl) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _TabControl) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _TabControl) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _TabControl) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _TabControl) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _TabControl) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _TabControl) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _TabControl) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _TabControl) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _TabControl) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _TabControl) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _TabControl) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;

    PROCEDURE (this: _TabControl) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _Page, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Page) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Page) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Page) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Page) SizeToFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2151, NIL);
    END SizeToFit;

    PROCEDURE (this: _Page) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;

    PROCEDURE (this: _Page) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _Page) Goto* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END Goto;

    PROCEDURE (this: _Page) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _Page) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _Page) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Page) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Page) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Page) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Page) ControlType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 21)
    END ControlType;

    PROCEDURE (this: _Page) PUTControlType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 21, p1)
    END PUTControlType;

    PROCEDURE (this: _Page) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Caption;

    PROCEDURE (this: _Page) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTCaption;

    PROCEDURE (this: _Page) Picture* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 7)
    END Picture;

    PROCEDURE (this: _Page) PUTPicture* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 7, p1)
    END PUTPicture;

    PROCEDURE (this: _Page) PictureType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 384)
    END PictureType;

    PROCEDURE (this: _Page) PUTPictureType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 384, p1)
    END PUTPictureType;

    PROCEDURE (this: _Page) PageIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 395)
    END PageIndex;

    PROCEDURE (this: _Page) PUTPageIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 395, p1)
    END PUTPageIndex;

    PROCEDURE (this: _Page) StatusBarText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 132)
    END StatusBarText;

    PROCEDURE (this: _Page) PUTStatusBarText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 132, p1)
    END PUTStatusBarText;

    PROCEDURE (this: _Page) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Page) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Page) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END Enabled;

    PROCEDURE (this: _Page) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTEnabled;

    PROCEDURE (this: _Page) Left* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 54)
    END Left;

    PROCEDURE (this: _Page) PUTLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Page) Top* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 138)
    END Top;

    PROCEDURE (this: _Page) PUTTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Page) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Page) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Page) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Page) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Page) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Page) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Page) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 362)
    END ControlTipText;

    PROCEDURE (this: _Page) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 362, p1)
    END PUTControlTipText;

    PROCEDURE (this: _Page) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Page) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Page) Section* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 238)
    END Section;

    PROCEDURE (this: _Page) PUTSection* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 238, p1)
    END PUTSection;

    PROCEDURE (this: _Page) ControlName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 296)
    END ControlName;

    PROCEDURE (this: _Page) PUTControlName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 296, p1)
    END PUTControlName;

    PROCEDURE (this: _Page) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Page) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Page) IsVisible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 137)
    END IsVisible;

    PROCEDURE (this: _Page) PUTIsVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 137, p1)
    END PUTIsVisible;

    PROCEDURE (this: _Page) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Page) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;

    PROCEDURE (this: _Page) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Page) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Page) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Page) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Page) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Page) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Page) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Page) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Page) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Page) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Page) PictureData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 187)
    END PictureData;

    PROCEDURE (this: _Page) PUTPictureData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 187, p1)
    END PUTPictureData;


    (* ---------- _Section, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Section) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Section) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Section) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Section) Controls* (): Children, NEW;
    BEGIN
        RETURN ThisChildren(CtlC.GetAny(this, 2190))
    END Controls;

    PROCEDURE (this: _Section) EventProcPrefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 22)
    END EventProcPrefix;

    PROCEDURE (this: _Section) PUTEventProcPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 22, p1)
    END PUTEventProcPrefix;

    PROCEDURE (this: _Section) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Section) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Section) ForceNewPage* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 148)
    END ForceNewPage;

    PROCEDURE (this: _Section) PUTForceNewPage* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 148, p1)
    END PUTForceNewPage;

    PROCEDURE (this: _Section) NewRowOrCol* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 230)
    END NewRowOrCol;

    PROCEDURE (this: _Section) PUTNewRowOrCol* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 230, p1)
    END PUTNewRowOrCol;

    PROCEDURE (this: _Section) KeepTogether* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 71)
    END KeepTogether;

    PROCEDURE (this: _Section) PUTKeepTogether* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 71, p1)
    END PUTKeepTogether;

    PROCEDURE (this: _Section) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Section) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Section) DisplayWhen* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 146)
    END DisplayWhen;

    PROCEDURE (this: _Section) PUTDisplayWhen* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 146, p1)
    END PUTDisplayWhen;

    PROCEDURE (this: _Section) CanGrow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 14)
    END CanGrow;

    PROCEDURE (this: _Section) PUTCanGrow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 14, p1)
    END PUTCanGrow;

    PROCEDURE (this: _Section) CanShrink* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 16)
    END CanShrink;

    PROCEDURE (this: _Section) PUTCanShrink* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 16, p1)
    END PUTCanShrink;

    PROCEDURE (this: _Section) RepeatSection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 15)
    END RepeatSection;

    PROCEDURE (this: _Section) PUTRepeatSection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 15, p1)
    END PUTRepeatSection;

    PROCEDURE (this: _Section) Height* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 44)
    END Height;

    PROCEDURE (this: _Section) PUTHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Section) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END BackColor;

    PROCEDURE (this: _Section) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTBackColor;

    PROCEDURE (this: _Section) SpecialEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 4)
    END SpecialEffect;

    PROCEDURE (this: _Section) PUTSpecialEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 4, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _Section) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Section) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Section) OnFormat* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 76)
    END OnFormat;

    PROCEDURE (this: _Section) PUTOnFormat* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 76, p1)
    END PUTOnFormat;

    PROCEDURE (this: _Section) OnPrint* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 78)
    END OnPrint;

    PROCEDURE (this: _Section) PUTOnPrint* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 78, p1)
    END PUTOnPrint;

    PROCEDURE (this: _Section) OnRetreat* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 80)
    END OnRetreat;

    PROCEDURE (this: _Section) PUTOnRetreat* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 80, p1)
    END PUTOnRetreat;

    PROCEDURE (this: _Section) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Section) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Section) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Section) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Section) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Section) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Section) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Section) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Section) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Section) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Section) HasContinued* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 199)
    END HasContinued;

    PROCEDURE (this: _Section) PUTHasContinued* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 199, p1)
    END PUTHasContinued;

    PROCEDURE (this: _Section) WillContinue* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 200)
    END WillContinue;

    PROCEDURE (this: _Section) PUTWillContinue* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 200, p1)
    END PUTWillContinue;

    PROCEDURE (this: _Section) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 312)
    END InSelection;

    PROCEDURE (this: _Section) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 312, p1)
    END PUTInSelection;


    (* ---------- _GroupLevel, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _GroupLevel) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _GroupLevel) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _GroupLevel) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _GroupLevel) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 27)
    END ControlSource;

    PROCEDURE (this: _GroupLevel) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 27, p1)
    END PUTControlSource;

    PROCEDURE (this: _GroupLevel) SortOrder* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 173)
    END SortOrder;

    PROCEDURE (this: _GroupLevel) PUTSortOrder* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 173, p1)
    END PUTSortOrder;

    PROCEDURE (this: _GroupLevel) GroupHeader* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 174)
    END GroupHeader;

    PROCEDURE (this: _GroupLevel) PUTGroupHeader* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 174, p1)
    END PUTGroupHeader;

    PROCEDURE (this: _GroupLevel) GroupFooter* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 175)
    END GroupFooter;

    PROCEDURE (this: _GroupLevel) PUTGroupFooter* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 175, p1)
    END PUTGroupFooter;

    PROCEDURE (this: _GroupLevel) GroupOn* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 176)
    END GroupOn;

    PROCEDURE (this: _GroupLevel) PUTGroupOn* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 176, p1)
    END PUTGroupOn;

    PROCEDURE (this: _GroupLevel) GroupInterval* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 177)
    END GroupInterval;

    PROCEDURE (this: _GroupLevel) PUTGroupInterval* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 177, p1)
    END PUTGroupInterval;

    PROCEDURE (this: _GroupLevel) KeepTogether* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 71)
    END KeepTogether;

    PROCEDURE (this: _GroupLevel) PUTKeepTogether* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 71, p1)
    END PUTKeepTogether;


    (* ---------- Module, dual, nonextensible ---------- *)

    PROCEDURE (this: Module) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: Module) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: Module) InsertText* (Text: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Text, arg[0]);
        CtlC.CallParMethod(this, 2093, arg, NIL);
    END InsertText;

    PROCEDURE (this: Module) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: Module) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTName;

    PROCEDURE (this: Module) AddFromString* (String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743813, arg, NIL);
    END AddFromString;

    PROCEDURE (this: Module) AddFromFile* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, NIL);
    END AddFromFile;

    PROCEDURE (this: Module) Lines* (Line: INTEGER; NumLines: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.IntVar(NumLines, arg[0]);
        CtlC.CallGetMethod(this, 1610743815, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Lines;

    PROCEDURE (this: Module) CountOfLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743816)
    END CountOfLines;

    PROCEDURE (this: Module) InsertLines* (Line: INTEGER; String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743817, arg, NIL);
    END InsertLines;

    PROCEDURE (this: Module) DeleteLines* (StartLine: INTEGER; Count: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(StartLine, arg[1]);
        CtlC.IntVar(Count, arg[0]);
        CtlC.CallParMethod(this, 1610743818, arg, NIL);
    END DeleteLines;

    PROCEDURE (this: Module) ReplaceLine* (Line: INTEGER; String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743819, arg, NIL);
    END ReplaceLine;

    PROCEDURE (this: Module) ProcStartLine* (ProcName: ARRAY OF CHAR; ProcKind: _ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743820, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcStartLine;

    PROCEDURE (this: Module) ProcCountLines* (ProcName: ARRAY OF CHAR; ProcKind: _ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743821, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcCountLines;

    PROCEDURE (this: Module) ProcBodyLine* (ProcName: ARRAY OF CHAR; ProcKind: _ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743822, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcBodyLine;

    PROCEDURE (this: Module) ProcOfLine* (Line: INTEGER; OUT pprockind: _ProcKind): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.RefIntVar(pprockind, arg[0]);
        CtlC.CallGetMethod(this, 1610743823, arg, ret);
        RETURN CtlC.VarStr(ret)
    END ProcOfLine;

    PROCEDURE (this: Module) CountOfDeclarationLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743824)
    END CountOfDeclarationLines;

    PROCEDURE (this: Module) CreateEventProc* (EventName: ARRAY OF CHAR; ObjectName: ARRAY OF CHAR): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EventName, arg[1]);
        CtlC.StrVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 1610743825, arg, ret);
        RETURN CtlC.VarInt(ret)
    END CreateEventProc;

    PROCEDURE (this: Module) Find* (Target: ARRAY OF CHAR; VAR StartLine: INTEGER; VAR StartColumn: INTEGER; VAR EndLine: INTEGER; VAR EndColumn: INTEGER; WholeWord: BOOLEAN; MatchCase: BOOLEAN; PatternSearch: BOOLEAN): BOOLEAN, NEW;
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
        CtlC.CallParMethod(this, 1610743826, arg, ret);
        RETURN CtlC.VarBool(ret)
    END Find;

    PROCEDURE (this: Module) Type* (): AcModuleType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743827)
    END Type;


    (* ---------- Modules, dual ---------- *)

    PROCEDURE (this: Modules) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: Modules) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: Modules) Item* (Index: CtlT.Any): Module, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisModule(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Modules) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: Modules) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _Form, hidden, dual ---------- *)

    PROCEDURE (this: _Form) FormName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 39)
    END FormName;

    PROCEDURE (this: _Form) PUTFormName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 39, p1)
    END PUTFormName;

    PROCEDURE (this: _Form) RecordSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 153)
    END RecordSource;

    PROCEDURE (this: _Form) PUTRecordSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 153, p1)
    END PUTRecordSource;

    PROCEDURE (this: _Form) Filter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 271)
    END Filter;

    PROCEDURE (this: _Form) PUTFilter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 271, p1)
    END PUTFilter;

    PROCEDURE (this: _Form) FilterOn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 374)
    END FilterOn;

    PROCEDURE (this: _Form) PUTFilterOn* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 374, p1)
    END PUTFilterOn;

    PROCEDURE (this: _Form) OrderBy* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 373)
    END OrderBy;

    PROCEDURE (this: _Form) PUTOrderBy* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 373, p1)
    END PUTOrderBy;

    PROCEDURE (this: _Form) OrderByOn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 379)
    END OrderByOn;

    PROCEDURE (this: _Form) PUTOrderByOn* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 379, p1)
    END PUTOrderByOn;

    PROCEDURE (this: _Form) AllowFilters* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 30)
    END AllowFilters;

    PROCEDURE (this: _Form) PUTAllowFilters* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 30, p1)
    END PUTAllowFilters;

    PROCEDURE (this: _Form) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Caption;

    PROCEDURE (this: _Form) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTCaption;

    PROCEDURE (this: _Form) DefaultView* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 144)
    END DefaultView;

    PROCEDURE (this: _Form) PUTDefaultView* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 144, p1)
    END PUTDefaultView;

    PROCEDURE (this: _Form) ViewsAllowed* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 143)
    END ViewsAllowed;

    PROCEDURE (this: _Form) PUTViewsAllowed* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 143, p1)
    END PUTViewsAllowed;

    PROCEDURE (this: _Form) AllowEditing* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 24)
    END AllowEditing;

    PROCEDURE (this: _Form) PUTAllowEditing* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 24, p1)
    END PUTAllowEditing;

    PROCEDURE (this: _Form) DefaultEditing* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 131)
    END DefaultEditing;

    PROCEDURE (this: _Form) PUTDefaultEditing* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 131, p1)
    END PUTDefaultEditing;

    PROCEDURE (this: _Form) AllowEdits* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 382)
    END AllowEdits;

    PROCEDURE (this: _Form) PUTAllowEdits* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 382, p1)
    END PUTAllowEdits;

    PROCEDURE (this: _Form) AllowDeletions* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 324)
    END AllowDeletions;

    PROCEDURE (this: _Form) PUTAllowDeletions* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 324, p1)
    END PUTAllowDeletions;

    PROCEDURE (this: _Form) AllowAdditions* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 367)
    END AllowAdditions;

    PROCEDURE (this: _Form) PUTAllowAdditions* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 367, p1)
    END PUTAllowAdditions;

    PROCEDURE (this: _Form) DataEntry* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 381)
    END DataEntry;

    PROCEDURE (this: _Form) PUTDataEntry* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 381, p1)
    END PUTDataEntry;

    PROCEDURE (this: _Form) AllowUpdating* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 45)
    END AllowUpdating;

    PROCEDURE (this: _Form) PUTAllowUpdating* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 45, p1)
    END PUTAllowUpdating;

    PROCEDURE (this: _Form) RecordsetType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 380)
    END RecordsetType;

    PROCEDURE (this: _Form) PUTRecordsetType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 380, p1)
    END PUTRecordsetType;

    PROCEDURE (this: _Form) RecordLocks* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 26)
    END RecordLocks;

    PROCEDURE (this: _Form) PUTRecordLocks* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 26, p1)
    END PUTRecordLocks;

    PROCEDURE (this: _Form) ScrollBars* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 149)
    END ScrollBars;

    PROCEDURE (this: _Form) PUTScrollBars* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 149, p1)
    END PUTScrollBars;

    PROCEDURE (this: _Form) RecordSelectors* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 19)
    END RecordSelectors;

    PROCEDURE (this: _Form) PUTRecordSelectors* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 19, p1)
    END PUTRecordSelectors;

    PROCEDURE (this: _Form) NavigationButtons* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 311)
    END NavigationButtons;

    PROCEDURE (this: _Form) PUTNavigationButtons* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 311, p1)
    END PUTNavigationButtons;

    PROCEDURE (this: _Form) DividingLines* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 359)
    END DividingLines;

    PROCEDURE (this: _Form) PUTDividingLines* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 359, p1)
    END PUTDividingLines;

    PROCEDURE (this: _Form) AutoResize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END AutoResize;

    PROCEDURE (this: _Form) PUTAutoResize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTAutoResize;

    PROCEDURE (this: _Form) AutoCenter* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 310)
    END AutoCenter;

    PROCEDURE (this: _Form) PUTAutoCenter* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 310, p1)
    END PUTAutoCenter;

    PROCEDURE (this: _Form) PopUp* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 86)
    END PopUp;

    PROCEDURE (this: _Form) PUTPopUp* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 86, p1)
    END PUTPopUp;

    PROCEDURE (this: _Form) Modal* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62)
    END Modal;

    PROCEDURE (this: _Form) PUTModal* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 62, p1)
    END PUTModal;

    PROCEDURE (this: _Form) BorderStyle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 9)
    END BorderStyle;

    PROCEDURE (this: _Form) PUTBorderStyle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 9, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _Form) ControlBox* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 94)
    END ControlBox;

    PROCEDURE (this: _Form) PUTControlBox* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 94, p1)
    END PUTControlBox;

    PROCEDURE (this: _Form) MinButton* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 92)
    END MinButton;

    PROCEDURE (this: _Form) PUTMinButton* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 92, p1)
    END PUTMinButton;

    PROCEDURE (this: _Form) MaxButton* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 91)
    END MaxButton;

    PROCEDURE (this: _Form) PUTMaxButton* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 91, p1)
    END PUTMaxButton;

    PROCEDURE (this: _Form) MinMaxButtons* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 369)
    END MinMaxButtons;

    PROCEDURE (this: _Form) PUTMinMaxButtons* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 369, p1)
    END PUTMinMaxButtons;

    PROCEDURE (this: _Form) CloseButton* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 335)
    END CloseButton;

    PROCEDURE (this: _Form) PUTCloseButton* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 335, p1)
    END PUTCloseButton;

    PROCEDURE (this: _Form) WhatsThisButton* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 93)
    END WhatsThisButton;

    PROCEDURE (this: _Form) PUTWhatsThisButton* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 93, p1)
    END PUTWhatsThisButton;

    PROCEDURE (this: _Form) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Form) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Form) Picture* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 7)
    END Picture;

    PROCEDURE (this: _Form) PUTPicture* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 7, p1)
    END PUTPicture;

    PROCEDURE (this: _Form) PictureType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 384)
    END PictureType;

    PROCEDURE (this: _Form) PUTPictureType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 384, p1)
    END PUTPictureType;

    PROCEDURE (this: _Form) PictureSizeMode* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 357)
    END PictureSizeMode;

    PROCEDURE (this: _Form) PUTPictureSizeMode* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 357, p1)
    END PUTPictureSizeMode;

    PROCEDURE (this: _Form) PictureAlignment* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 354)
    END PictureAlignment;

    PROCEDURE (this: _Form) PUTPictureAlignment* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 354, p1)
    END PUTPictureAlignment;

    PROCEDURE (this: _Form) PictureTiling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 358)
    END PictureTiling;

    PROCEDURE (this: _Form) PUTPictureTiling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 358, p1)
    END PUTPictureTiling;

    PROCEDURE (this: _Form) Cycle* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 372)
    END Cycle;

    PROCEDURE (this: _Form) PUTCycle* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 372, p1)
    END PUTCycle;

    PROCEDURE (this: _Form) MenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 261)
    END MenuBar;

    PROCEDURE (this: _Form) PUTMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 261, p1)
    END PUTMenuBar;

    PROCEDURE (this: _Form) Toolbar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 396)
    END Toolbar;

    PROCEDURE (this: _Form) PUTToolbar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 396, p1)
    END PUTToolbar;

    PROCEDURE (this: _Form) ShortcutMenu* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 31)
    END ShortcutMenu;

    PROCEDURE (this: _Form) PUTShortcutMenu* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 31, p1)
    END PUTShortcutMenu;

    PROCEDURE (this: _Form) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Form) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Form) GridX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 41)
    END GridX;

    PROCEDURE (this: _Form) PUTGridX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 41, p1)
    END PUTGridX;

    PROCEDURE (this: _Form) GridY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 42)
    END GridY;

    PROCEDURE (this: _Form) PUTGridY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 42, p1)
    END PUTGridY;

    PROCEDURE (this: _Form) LayoutForPrint* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 140)
    END LayoutForPrint;

    PROCEDURE (this: _Form) PUTLayoutForPrint* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 140, p1)
    END PUTLayoutForPrint;

    PROCEDURE (this: _Form) FastLaserPrinting* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 141)
    END FastLaserPrinting;

    PROCEDURE (this: _Form) PUTFastLaserPrinting* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 141, p1)
    END PUTFastLaserPrinting;

    PROCEDURE (this: _Form) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 217)
    END HelpFile;

    PROCEDURE (this: _Form) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 217, p1)
    END PUTHelpFile;

    PROCEDURE (this: _Form) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Form) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Form) RowHeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 165)
    END RowHeight;

    PROCEDURE (this: _Form) PUTRowHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 165, p1)
    END PUTRowHeight;

    PROCEDURE (this: _Form) DatasheetFontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 157)
    END DatasheetFontName;

    PROCEDURE (this: _Form) PUTDatasheetFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 157, p1)
    END PUTDatasheetFontName;

    PROCEDURE (this: _Form) DatasheetFontHeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 158)
    END DatasheetFontHeight;

    PROCEDURE (this: _Form) PUTDatasheetFontHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 158, p1)
    END PUTDatasheetFontHeight;

    PROCEDURE (this: _Form) DatasheetFontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 159)
    END DatasheetFontWeight;

    PROCEDURE (this: _Form) PUTDatasheetFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 159, p1)
    END PUTDatasheetFontWeight;

    PROCEDURE (this: _Form) DatasheetFontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 160)
    END DatasheetFontItalic;

    PROCEDURE (this: _Form) PUTDatasheetFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 160, p1)
    END PUTDatasheetFontItalic;

    PROCEDURE (this: _Form) DatasheetFontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 161)
    END DatasheetFontUnderline;

    PROCEDURE (this: _Form) PUTDatasheetFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 161, p1)
    END PUTDatasheetFontUnderline;

    PROCEDURE (this: _Form) TabularCharSet* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 193)
    END TabularCharSet;

    PROCEDURE (this: _Form) PUTTabularCharSet* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 193, p1)
    END PUTTabularCharSet;

    PROCEDURE (this: _Form) DatasheetGridlinesBehavior* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 363)
    END DatasheetGridlinesBehavior;

    PROCEDURE (this: _Form) PUTDatasheetGridlinesBehavior* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 363, p1)
    END PUTDatasheetGridlinesBehavior;

    PROCEDURE (this: _Form) DatasheetGridlinesColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 364)
    END DatasheetGridlinesColor;

    PROCEDURE (this: _Form) PUTDatasheetGridlinesColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 364, p1)
    END PUTDatasheetGridlinesColor;

    PROCEDURE (this: _Form) DatasheetCellsEffect* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 365)
    END DatasheetCellsEffect;

    PROCEDURE (this: _Form) PUTDatasheetCellsEffect* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 365, p1)
    END PUTDatasheetCellsEffect;

    PROCEDURE (this: _Form) DatasheetForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 349)
    END DatasheetForeColor;

    PROCEDURE (this: _Form) PUTDatasheetForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 349, p1)
    END PUTDatasheetForeColor;

    PROCEDURE (this: _Form) ShowGrid* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 166)
    END ShowGrid;

    PROCEDURE (this: _Form) PUTShowGrid* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 166, p1)
    END PUTShowGrid;

    PROCEDURE (this: _Form) DatasheetBackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 366)
    END DatasheetBackColor;

    PROCEDURE (this: _Form) PUTDatasheetBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 366, p1)
    END PUTDatasheetBackColor;

    PROCEDURE (this: _Form) Hwnd* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 191)
    END Hwnd;

    PROCEDURE (this: _Form) PUTHwnd* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 191, p1)
    END PUTHwnd;

    PROCEDURE (this: _Form) Count* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 194)
    END Count;

    PROCEDURE (this: _Form) PUTCount* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 194, p1)
    END PUTCount;

    PROCEDURE (this: _Form) Page* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 195)
    END Page;

    PROCEDURE (this: _Form) PUTPage* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 195, p1)
    END PUTPage;

    PROCEDURE (this: _Form) Pages* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 196)
    END Pages;

    PROCEDURE (this: _Form) PUTPages* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 196, p1)
    END PUTPages;

    PROCEDURE (this: _Form) LogicalPageWidth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 197)
    END LogicalPageWidth;

    PROCEDURE (this: _Form) PUTLogicalPageWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 197, p1)
    END PUTLogicalPageWidth;

    PROCEDURE (this: _Form) LogicalPageHeight* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 198)
    END LogicalPageHeight;

    PROCEDURE (this: _Form) PUTLogicalPageHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 198, p1)
    END PUTLogicalPageHeight;

    PROCEDURE (this: _Form) ZoomControl* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 216)
    END ZoomControl;

    PROCEDURE (this: _Form) PUTZoomControl* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 216, p1)
    END PUTZoomControl;

    PROCEDURE (this: _Form) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Form) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Form) Painting* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 264)
    END Painting;

    PROCEDURE (this: _Form) PUTPainting* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 264, p1)
    END PUTPainting;

    PROCEDURE (this: _Form) PrtMip* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 188)
    END PrtMip;

    PROCEDURE (this: _Form) PUTPrtMip* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 188, p1)
    END PUTPrtMip;

    PROCEDURE (this: _Form) PrtDevMode* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 189)
    END PrtDevMode;

    PROCEDURE (this: _Form) PUTPrtDevMode* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 189, p1)
    END PUTPrtDevMode;

    PROCEDURE (this: _Form) PrtDevNames* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 190)
    END PrtDevNames;

    PROCEDURE (this: _Form) PUTPrtDevNames* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 190, p1)
    END PUTPrtDevNames;

    PROCEDURE (this: _Form) FrozenColumns* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 167)
    END FrozenColumns;

    PROCEDURE (this: _Form) PUTFrozenColumns* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 167, p1)
    END PUTFrozenColumns;

    PROCEDURE (this: _Form) Bookmark* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 229)
    END Bookmark;

    PROCEDURE (this: _Form) PUTBookmark* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 229, p1)
    END PUTBookmark;

    PROCEDURE (this: _Form) TabularFamily* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 267)
    END TabularFamily;

    PROCEDURE (this: _Form) PUTTabularFamily* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 267, p1)
    END PUTTabularFamily;

    PROCEDURE (this: _Form) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Form) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Form) PaletteSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 95)
    END PaletteSource;

    PROCEDURE (this: _Form) PUTPaletteSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 95, p1)
    END PUTPaletteSource;

    PROCEDURE (this: _Form) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Form) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Form) PaintPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 97)
    END PaintPalette;

    PROCEDURE (this: _Form) PUTPaintPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 97, p1)
    END PUTPaintPalette;

    PROCEDURE (this: _Form) OnMenu* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 60)
    END OnMenu;

    PROCEDURE (this: _Form) PUTOnMenu* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 60, p1)
    END PUTOnMenu;

    PROCEDURE (this: _Form) OpenArgs* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 316)
    END OpenArgs;

    PROCEDURE (this: _Form) PUTOpenArgs* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 316, p1)
    END PUTOpenArgs;

    PROCEDURE (this: _Form) ConnectSynch* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 317)
    END ConnectSynch;

    PROCEDURE (this: _Form) PUTConnectSynch* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 317, p1)
    END PUTConnectSynch;

    PROCEDURE (this: _Form) OnCurrent* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 83)
    END OnCurrent;

    PROCEDURE (this: _Form) PUTOnCurrent* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 83, p1)
    END PUTOnCurrent;

    PROCEDURE (this: _Form) OnInsert* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 77)
    END OnInsert;

    PROCEDURE (this: _Form) PUTOnInsert* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 77, p1)
    END PUTOnInsert;

    PROCEDURE (this: _Form) BeforeInsert* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 119)
    END BeforeInsert;

    PROCEDURE (this: _Form) PUTBeforeInsert* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 119, p1)
    END PUTBeforeInsert;

    PROCEDURE (this: _Form) AfterInsert* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 120)
    END AfterInsert;

    PROCEDURE (this: _Form) PUTAfterInsert* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 120, p1)
    END PUTAfterInsert;

    PROCEDURE (this: _Form) BeforeUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 81)
    END BeforeUpdate;

    PROCEDURE (this: _Form) PUTBeforeUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 81, p1)
    END PUTBeforeUpdate;

    PROCEDURE (this: _Form) AfterUpdate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 82)
    END AfterUpdate;

    PROCEDURE (this: _Form) PUTAfterUpdate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 82, p1)
    END PUTAfterUpdate;

    PROCEDURE (this: _Form) OnDelete* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 75)
    END OnDelete;

    PROCEDURE (this: _Form) PUTOnDelete* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 75, p1)
    END PUTOnDelete;

    PROCEDURE (this: _Form) BeforeDelConfirm* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 121)
    END BeforeDelConfirm;

    PROCEDURE (this: _Form) PUTBeforeDelConfirm* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 121, p1)
    END PUTBeforeDelConfirm;

    PROCEDURE (this: _Form) AfterDelConfirm* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 122)
    END AfterDelConfirm;

    PROCEDURE (this: _Form) PUTAfterDelConfirm* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 122, p1)
    END PUTAfterDelConfirm;

    PROCEDURE (this: _Form) OnOpen* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 73)
    END OnOpen;

    PROCEDURE (this: _Form) PUTOnOpen* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 73, p1)
    END PUTOnOpen;

    PROCEDURE (this: _Form) OnLoad* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 124)
    END OnLoad;

    PROCEDURE (this: _Form) PUTOnLoad* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 124, p1)
    END PUTOnLoad;

    PROCEDURE (this: _Form) OnResize* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 114)
    END OnResize;

    PROCEDURE (this: _Form) PUTOnResize* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 114, p1)
    END PUTOnResize;

    PROCEDURE (this: _Form) OnUnload* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 125)
    END OnUnload;

    PROCEDURE (this: _Form) PUTOnUnload* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 125, p1)
    END PUTOnUnload;

    PROCEDURE (this: _Form) OnClose* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 74)
    END OnClose;

    PROCEDURE (this: _Form) PUTOnClose* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 74, p1)
    END PUTOnClose;

    PROCEDURE (this: _Form) OnActivate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 109)
    END OnActivate;

    PROCEDURE (this: _Form) PUTOnActivate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 109, p1)
    END PUTOnActivate;

    PROCEDURE (this: _Form) OnDeactivate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END OnDeactivate;

    PROCEDURE (this: _Form) PUTOnDeactivate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 110, p1)
    END PUTOnDeactivate;

    PROCEDURE (this: _Form) OnGotFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END OnGotFocus;

    PROCEDURE (this: _Form) PUTOnGotFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 112, p1)
    END PUTOnGotFocus;

    PROCEDURE (this: _Form) OnLostFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END OnLostFocus;

    PROCEDURE (this: _Form) PUTOnLostFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 113, p1)
    END PUTOnLostFocus;

    PROCEDURE (this: _Form) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 123)
    END OnClick;

    PROCEDURE (this: _Form) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 123, p1)
    END PUTOnClick;

    PROCEDURE (this: _Form) OnDblClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 223)
    END OnDblClick;

    PROCEDURE (this: _Form) PUTOnDblClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 223, p1)
    END PUTOnDblClick;

    PROCEDURE (this: _Form) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END OnMouseDown;

    PROCEDURE (this: _Form) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: _Form) OnMouseMove* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END OnMouseMove;

    PROCEDURE (this: _Form) PUTOnMouseMove* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTOnMouseMove;

    PROCEDURE (this: _Form) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END OnMouseUp;

    PROCEDURE (this: _Form) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: _Form) OnKeyDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 101)
    END OnKeyDown;

    PROCEDURE (this: _Form) PUTOnKeyDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 101, p1)
    END PUTOnKeyDown;

    PROCEDURE (this: _Form) OnKeyUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 102)
    END OnKeyUp;

    PROCEDURE (this: _Form) PUTOnKeyUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 102, p1)
    END PUTOnKeyUp;

    PROCEDURE (this: _Form) OnKeyPress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END OnKeyPress;

    PROCEDURE (this: _Form) PUTOnKeyPress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTOnKeyPress;

    PROCEDURE (this: _Form) KeyPreview* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 368)
    END KeyPreview;

    PROCEDURE (this: _Form) PUTKeyPreview* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 368, p1)
    END PUTKeyPreview;

    PROCEDURE (this: _Form) OnError* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 116)
    END OnError;

    PROCEDURE (this: _Form) PUTOnError* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 116, p1)
    END PUTOnError;

    PROCEDURE (this: _Form) OnFilter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 375)
    END OnFilter;

    PROCEDURE (this: _Form) PUTOnFilter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 375, p1)
    END PUTOnFilter;

    PROCEDURE (this: _Form) OnApplyFilter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 376)
    END OnApplyFilter;

    PROCEDURE (this: _Form) PUTOnApplyFilter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 376, p1)
    END PUTOnApplyFilter;

    PROCEDURE (this: _Form) OnTimer* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 107)
    END OnTimer;

    PROCEDURE (this: _Form) PUTOnTimer* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 107, p1)
    END PUTOnTimer;

    PROCEDURE (this: _Form) TimerInterval* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END TimerInterval;

    PROCEDURE (this: _Form) PUTTimerInterval* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTTimerInterval;

    PROCEDURE (this: _Form) Dirty* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 318)
    END Dirty;

    PROCEDURE (this: _Form) PUTDirty* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 318, p1)
    END PUTDirty;

    PROCEDURE (this: _Form) WindowWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 319)
    END WindowWidth;

    PROCEDURE (this: _Form) PUTWindowWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 319, p1)
    END PUTWindowWidth;

    PROCEDURE (this: _Form) WindowHeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 320)
    END WindowHeight;

    PROCEDURE (this: _Form) PUTWindowHeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 320, p1)
    END PUTWindowHeight;

    PROCEDURE (this: _Form) CurrentView* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 321)
    END CurrentView;

    PROCEDURE (this: _Form) PUTCurrentView* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 321, p1)
    END PUTCurrentView;

    PROCEDURE (this: _Form) CurrentSectionTop* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 323)
    END CurrentSectionTop;

    PROCEDURE (this: _Form) PUTCurrentSectionTop* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 323, p1)
    END PUTCurrentSectionTop;

    PROCEDURE (this: _Form) CurrentSectionLeft* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 322)
    END CurrentSectionLeft;

    PROCEDURE (this: _Form) PUTCurrentSectionLeft* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 322, p1)
    END PUTCurrentSectionLeft;

    PROCEDURE (this: _Form) SelLeft* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 330)
    END SelLeft;

    PROCEDURE (this: _Form) PUTSelLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 330, p1)
    END PUTSelLeft;

    PROCEDURE (this: _Form) SelTop* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 331)
    END SelTop;

    PROCEDURE (this: _Form) PUTSelTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 331, p1)
    END PUTSelTop;

    PROCEDURE (this: _Form) SelWidth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 332)
    END SelWidth;

    PROCEDURE (this: _Form) PUTSelWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 332, p1)
    END PUTSelWidth;

    PROCEDURE (this: _Form) SelHeight* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 333)
    END SelHeight;

    PROCEDURE (this: _Form) PUTSelHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 333, p1)
    END PUTSelHeight;

    PROCEDURE (this: _Form) CurrentRecord* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 334)
    END CurrentRecord;

    PROCEDURE (this: _Form) PUTCurrentRecord* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 334, p1)
    END PUTCurrentRecord;

    PROCEDURE (this: _Form) PictureData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 187)
    END PictureData;

    PROCEDURE (this: _Form) PUTPictureData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 187, p1)
    END PUTPictureData;

    PROCEDURE (this: _Form) InsideHeight* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 360)
    END InsideHeight;

    PROCEDURE (this: _Form) PUTInsideHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 360, p1)
    END PUTInsideHeight;

    PROCEDURE (this: _Form) InsideWidth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 361)
    END InsideWidth;

    PROCEDURE (this: _Form) PUTInsideWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 361, p1)
    END PUTInsideWidth;

    PROCEDURE (this: _Form) PicturePalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 356)
    END PicturePalette;

    PROCEDURE (this: _Form) PUTPicturePalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 356, p1)
    END PUTPicturePalette;

    PROCEDURE (this: _Form) HasModule* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 385)
    END HasModule;

    PROCEDURE (this: _Form) PUTHasModule* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 385, p1)
    END PUTHasModule;

    PROCEDURE (this: _Form) acHiddenCurrentPage* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 406)
    END acHiddenCurrentPage;

    PROCEDURE (this: _Form) PUTacHiddenCurrentPage* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 406, p1)
    END PUTacHiddenCurrentPage;

    PROCEDURE (this: _Form) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Form) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Form) NewRecord* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 2147)
    END NewRecord;

    PROCEDURE (this: _Form) Undo* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2145, NIL);
    END Undo;

    PROCEDURE (this: _Form) ActiveControl* (): Control, NEW;
    BEGIN
        RETURN This_Control(CtlC.GetAny(this, 2006))
    END ActiveControl;

    PROCEDURE (this: _Form) DefaultControl* (ControlType: INTEGER): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ControlType, arg[0]);
        CtlC.CallGetMethod(this, 2150, arg, ret);
        RETURN This_Control(CtlC.VarAny(ret))
    END DefaultControl;

    PROCEDURE (this: _Form) Dynaset* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2085)
    END Dynaset;

    PROCEDURE (this: _Form) RecordsetClone* (): CtlDAO.Recordset, NEW;
    BEGIN
        RETURN CtlDAO.ThisRecordset(CtlC.GetAny(this, 2086))
    END RecordsetClone;

    PROCEDURE (this: _Form) Section* (var: CtlT.Any): Section, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(var, arg[0]);
        CtlC.CallGetMethod(this, 2088, arg, ret);
        RETURN This_Section(CtlC.VarAny(ret))
    END Section;

    PROCEDURE (this: _Form) Form* (): Form, NEW;
    BEGIN
        RETURN This_Form(CtlC.GetAny(this, 2089))
    END Form;

    PROCEDURE (this: _Form) Module* (): Module, NEW;
    BEGIN
        RETURN ThisModule(CtlC.GetAny(this, 2090))
    END Module;

    PROCEDURE (this: _Form) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Form) ConnectControl* (): Control, NEW;
    BEGIN
        RETURN This_Control(CtlC.GetAny(this, 2092))
    END ConnectControl;

    PROCEDURE (this: _Form) Recalc* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2017, NIL);
    END Recalc;

    PROCEDURE (this: _Form) Requery* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Requery;

    PROCEDURE (this: _Form) Refresh* (), NEW;
    BEGIN
        CtlC.CallMethod(this, -550, NIL);
    END Refresh;

    PROCEDURE (this: _Form) Repaint* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2020, NIL);
    END Repaint;

    PROCEDURE (this: _Form) GoToPage* (PageNumber: INTEGER; Right: INTEGER; Down: INTEGER), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PageNumber, arg[2]);
        CtlC.IntVar(Right, arg[1]);
        CtlC.IntVar(Down, arg[0]);
        CtlC.CallParMethod(this, 2021, arg, NIL);
    END GoToPage;

    PROCEDURE (this: _Form) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2022, NIL);
    END SetFocus;

    PROCEDURE (this: _Form) Controls* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 0))
    END Controls;

    PROCEDURE (this: _Form) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _Form) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;


    (* ---------- Forms, dual ---------- *)

    PROCEDURE (this: Forms) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: Forms) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: Forms) Item* (Index: CtlT.Any): Form, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Form(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Forms) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: Forms) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- _Report, hidden, dual ---------- *)

    PROCEDURE (this: _Report) FormName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 39)
    END FormName;

    PROCEDURE (this: _Report) PUTFormName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 39, p1)
    END PUTFormName;

    PROCEDURE (this: _Report) RecordSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 153)
    END RecordSource;

    PROCEDURE (this: _Report) PUTRecordSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 153, p1)
    END PUTRecordSource;

    PROCEDURE (this: _Report) Filter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 271)
    END Filter;

    PROCEDURE (this: _Report) PUTFilter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 271, p1)
    END PUTFilter;

    PROCEDURE (this: _Report) FilterOn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 374)
    END FilterOn;

    PROCEDURE (this: _Report) PUTFilterOn* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 374, p1)
    END PUTFilterOn;

    PROCEDURE (this: _Report) OrderBy* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 373)
    END OrderBy;

    PROCEDURE (this: _Report) PUTOrderBy* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 373, p1)
    END PUTOrderBy;

    PROCEDURE (this: _Report) OrderByOn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 379)
    END OrderByOn;

    PROCEDURE (this: _Report) PUTOrderByOn* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 379, p1)
    END PUTOrderByOn;

    PROCEDURE (this: _Report) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 17)
    END Caption;

    PROCEDURE (this: _Report) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 17, p1)
    END PUTCaption;

    PROCEDURE (this: _Report) RecordLocks* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 26)
    END RecordLocks;

    PROCEDURE (this: _Report) PUTRecordLocks* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 26, p1)
    END PUTRecordLocks;

    PROCEDURE (this: _Report) PageHeader* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 43)
    END PageHeader;

    PROCEDURE (this: _Report) PUTPageHeader* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 43, p1)
    END PUTPageHeader;

    PROCEDURE (this: _Report) PageFooter* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 40)
    END PageFooter;

    PROCEDURE (this: _Report) PUTPageFooter* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 40, p1)
    END PUTPageFooter;

    PROCEDURE (this: _Report) DateGrouping* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 314)
    END DateGrouping;

    PROCEDURE (this: _Report) PUTDateGrouping* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 314, p1)
    END PUTDateGrouping;

    PROCEDURE (this: _Report) GrpKeepTogether* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 315)
    END GrpKeepTogether;

    PROCEDURE (this: _Report) PUTGrpKeepTogether* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 315, p1)
    END PUTGrpKeepTogether;

    PROCEDURE (this: _Report) MinButton* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 92)
    END MinButton;

    PROCEDURE (this: _Report) PUTMinButton* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 92, p1)
    END PUTMinButton;

    PROCEDURE (this: _Report) MaxButton* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 91)
    END MaxButton;

    PROCEDURE (this: _Report) PUTMaxButton* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 91, p1)
    END PUTMaxButton;

    PROCEDURE (this: _Report) Width* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 147)
    END Width;

    PROCEDURE (this: _Report) PUTWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 147, p1)
    END PUTWidth;

    PROCEDURE (this: _Report) Picture* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 7)
    END Picture;

    PROCEDURE (this: _Report) PUTPicture* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 7, p1)
    END PUTPicture;

    PROCEDURE (this: _Report) PictureType* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 384)
    END PictureType;

    PROCEDURE (this: _Report) PUTPictureType* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 384, p1)
    END PUTPictureType;

    PROCEDURE (this: _Report) PictureSizeMode* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 357)
    END PictureSizeMode;

    PROCEDURE (this: _Report) PUTPictureSizeMode* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 357, p1)
    END PUTPictureSizeMode;

    PROCEDURE (this: _Report) PictureAlignment* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 354)
    END PictureAlignment;

    PROCEDURE (this: _Report) PUTPictureAlignment* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 354, p1)
    END PUTPictureAlignment;

    PROCEDURE (this: _Report) PictureTiling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 358)
    END PictureTiling;

    PROCEDURE (this: _Report) PUTPictureTiling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 358, p1)
    END PUTPictureTiling;

    PROCEDURE (this: _Report) PicturePages* (): BYTE, NEW;
    BEGIN
        RETURN CtlC.GetByte(this, 355)
    END PicturePages;

    PROCEDURE (this: _Report) PUTPicturePages* (p1: BYTE), NEW;
    BEGIN
        CtlC.PutByte(this, 355, p1)
    END PUTPicturePages;

    PROCEDURE (this: _Report) MenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 261)
    END MenuBar;

    PROCEDURE (this: _Report) PUTMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 261, p1)
    END PUTMenuBar;

    PROCEDURE (this: _Report) Toolbar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 396)
    END Toolbar;

    PROCEDURE (this: _Report) PUTToolbar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 396, p1)
    END PUTToolbar;

    PROCEDURE (this: _Report) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 336)
    END ShortcutMenuBar;

    PROCEDURE (this: _Report) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 336, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Report) GridX* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 41)
    END GridX;

    PROCEDURE (this: _Report) PUTGridX* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 41, p1)
    END PUTGridX;

    PROCEDURE (this: _Report) GridY* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 42)
    END GridY;

    PROCEDURE (this: _Report) PUTGridY* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 42, p1)
    END PUTGridY;

    PROCEDURE (this: _Report) LayoutForPrint* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 140)
    END LayoutForPrint;

    PROCEDURE (this: _Report) PUTLayoutForPrint* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 140, p1)
    END PUTLayoutForPrint;

    PROCEDURE (this: _Report) FastLaserPrinting* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 141)
    END FastLaserPrinting;

    PROCEDURE (this: _Report) PUTFastLaserPrinting* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 141, p1)
    END PUTFastLaserPrinting;

    PROCEDURE (this: _Report) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 217)
    END HelpFile;

    PROCEDURE (this: _Report) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 217, p1)
    END PUTHelpFile;

    PROCEDURE (this: _Report) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 218)
    END HelpContextId;

    PROCEDURE (this: _Report) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 218, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _Report) Hwnd* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 191)
    END Hwnd;

    PROCEDURE (this: _Report) PUTHwnd* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 191, p1)
    END PUTHwnd;

    PROCEDURE (this: _Report) Count* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 194)
    END Count;

    PROCEDURE (this: _Report) PUTCount* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 194, p1)
    END PUTCount;

    PROCEDURE (this: _Report) Page* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 195)
    END Page;

    PROCEDURE (this: _Report) PUTPage* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 195, p1)
    END PUTPage;

    PROCEDURE (this: _Report) Pages* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 196)
    END Pages;

    PROCEDURE (this: _Report) PUTPages* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 196, p1)
    END PUTPages;

    PROCEDURE (this: _Report) LogicalPageWidth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 197)
    END LogicalPageWidth;

    PROCEDURE (this: _Report) PUTLogicalPageWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 197, p1)
    END PUTLogicalPageWidth;

    PROCEDURE (this: _Report) LogicalPageHeight* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 198)
    END LogicalPageHeight;

    PROCEDURE (this: _Report) PUTLogicalPageHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 198, p1)
    END PUTLogicalPageHeight;

    PROCEDURE (this: _Report) ZoomControl* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 216)
    END ZoomControl;

    PROCEDURE (this: _Report) PUTZoomControl* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 216, p1)
    END PUTZoomControl;

    PROCEDURE (this: _Report) HasData* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 201)
    END HasData;

    PROCEDURE (this: _Report) PUTHasData* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 201, p1)
    END PUTHasData;

    PROCEDURE (this: _Report) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Left;

    PROCEDURE (this: _Report) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTLeft;

    PROCEDURE (this: _Report) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 138)
    END Top;

    PROCEDURE (this: _Report) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 138, p1)
    END PUTTop;

    PROCEDURE (this: _Report) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 44)
    END Height;

    PROCEDURE (this: _Report) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 44, p1)
    END PUTHeight;

    PROCEDURE (this: _Report) PrintSection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 224)
    END PrintSection;

    PROCEDURE (this: _Report) PUTPrintSection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 224, p1)
    END PUTPrintSection;

    PROCEDURE (this: _Report) NextRecord* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 225)
    END NextRecord;

    PROCEDURE (this: _Report) PUTNextRecord* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 225, p1)
    END PUTNextRecord;

    PROCEDURE (this: _Report) MoveLayout* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 226)
    END MoveLayout;

    PROCEDURE (this: _Report) PUTMoveLayout* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 226, p1)
    END PUTMoveLayout;

    PROCEDURE (this: _Report) FormatCount* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 227)
    END FormatCount;

    PROCEDURE (this: _Report) PUTFormatCount* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 227, p1)
    END PUTFormatCount;

    PROCEDURE (this: _Report) PrintCount* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 228)
    END PrintCount;

    PROCEDURE (this: _Report) PUTPrintCount* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 228, p1)
    END PUTPrintCount;

    PROCEDURE (this: _Report) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 145)
    END Visible;

    PROCEDURE (this: _Report) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 145, p1)
    END PUTVisible;

    PROCEDURE (this: _Report) Painting* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 264)
    END Painting;

    PROCEDURE (this: _Report) PUTPainting* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 264, p1)
    END PUTPainting;

    PROCEDURE (this: _Report) PrtMip* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 188)
    END PrtMip;

    PROCEDURE (this: _Report) PUTPrtMip* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 188, p1)
    END PUTPrtMip;

    PROCEDURE (this: _Report) PrtDevMode* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 189)
    END PrtDevMode;

    PROCEDURE (this: _Report) PUTPrtDevMode* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 189, p1)
    END PUTPrtDevMode;

    PROCEDURE (this: _Report) PrtDevNames* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 190)
    END PrtDevNames;

    PROCEDURE (this: _Report) PUTPrtDevNames* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 190, p1)
    END PUTPrtDevNames;

    PROCEDURE (this: _Report) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 203)
    END ForeColor;

    PROCEDURE (this: _Report) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 203, p1)
    END PUTForeColor;

    PROCEDURE (this: _Report) CurrentX* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 204)
    END CurrentX;

    PROCEDURE (this: _Report) PUTCurrentX* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 204, p1)
    END PUTCurrentX;

    PROCEDURE (this: _Report) CurrentY* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 205)
    END CurrentY;

    PROCEDURE (this: _Report) PUTCurrentY* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 205, p1)
    END PUTCurrentY;

    PROCEDURE (this: _Report) ScaleHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 206)
    END ScaleHeight;

    PROCEDURE (this: _Report) PUTScaleHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 206, p1)
    END PUTScaleHeight;

    PROCEDURE (this: _Report) ScaleLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 207)
    END ScaleLeft;

    PROCEDURE (this: _Report) PUTScaleLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 207, p1)
    END PUTScaleLeft;

    PROCEDURE (this: _Report) ScaleMode* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 208)
    END ScaleMode;

    PROCEDURE (this: _Report) PUTScaleMode* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 208, p1)
    END PUTScaleMode;

    PROCEDURE (this: _Report) ScaleTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 209)
    END ScaleTop;

    PROCEDURE (this: _Report) PUTScaleTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 209, p1)
    END PUTScaleTop;

    PROCEDURE (this: _Report) ScaleWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 210)
    END ScaleWidth;

    PROCEDURE (this: _Report) PUTScaleWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 210, p1)
    END PUTScaleWidth;

    PROCEDURE (this: _Report) FontBold* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 32)
    END FontBold;

    PROCEDURE (this: _Report) PUTFontBold* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 32, p1)
    END PUTFontBold;

    PROCEDURE (this: _Report) FontItalic* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 33)
    END FontItalic;

    PROCEDURE (this: _Report) PUTFontItalic* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 33, p1)
    END PUTFontItalic;

    PROCEDURE (this: _Report) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34)
    END FontName;

    PROCEDURE (this: _Report) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34, p1)
    END PUTFontName;

    PROCEDURE (this: _Report) FontSize* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 35)
    END FontSize;

    PROCEDURE (this: _Report) PUTFontSize* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 35, p1)
    END PUTFontSize;

    PROCEDURE (this: _Report) FontUnderline* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 36)
    END FontUnderline;

    PROCEDURE (this: _Report) PUTFontUnderline* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 36, p1)
    END PUTFontUnderline;

    PROCEDURE (this: _Report) DrawMode* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 211)
    END DrawMode;

    PROCEDURE (this: _Report) PUTDrawMode* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 211, p1)
    END PUTDrawMode;

    PROCEDURE (this: _Report) DrawStyle* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 212)
    END DrawStyle;

    PROCEDURE (this: _Report) PUTDrawStyle* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 212, p1)
    END PUTDrawStyle;

    PROCEDURE (this: _Report) DrawWidth* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 213)
    END DrawWidth;

    PROCEDURE (this: _Report) PUTDrawWidth* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 213, p1)
    END PUTDrawWidth;

    PROCEDURE (this: _Report) FillColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 215)
    END FillColor;

    PROCEDURE (this: _Report) PUTFillColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 215, p1)
    END PUTFillColor;

    PROCEDURE (this: _Report) FillStyle* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 214)
    END FillStyle;

    PROCEDURE (this: _Report) PUTFillStyle* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 214, p1)
    END PUTFillStyle;

    PROCEDURE (this: _Report) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 20)
    END Name;

    PROCEDURE (this: _Report) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 20, p1)
    END PUTName;

    PROCEDURE (this: _Report) PaletteSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 95)
    END PaletteSource;

    PROCEDURE (this: _Report) PUTPaletteSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 95, p1)
    END PUTPaletteSource;

    PROCEDURE (this: _Report) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 297)
    END Tag;

    PROCEDURE (this: _Report) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 297, p1)
    END PUTTag;

    PROCEDURE (this: _Report) PaintPalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 97)
    END PaintPalette;

    PROCEDURE (this: _Report) PUTPaintPalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 97, p1)
    END PUTPaintPalette;

    PROCEDURE (this: _Report) OnMenu* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 60)
    END OnMenu;

    PROCEDURE (this: _Report) PUTOnMenu* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 60, p1)
    END PUTOnMenu;

    PROCEDURE (this: _Report) OnOpen* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 73)
    END OnOpen;

    PROCEDURE (this: _Report) PUTOnOpen* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 73, p1)
    END PUTOnOpen;

    PROCEDURE (this: _Report) OnClose* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 74)
    END OnClose;

    PROCEDURE (this: _Report) PUTOnClose* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 74, p1)
    END PUTOnClose;

    PROCEDURE (this: _Report) OnActivate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 109)
    END OnActivate;

    PROCEDURE (this: _Report) PUTOnActivate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 109, p1)
    END PUTOnActivate;

    PROCEDURE (this: _Report) OnDeactivate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END OnDeactivate;

    PROCEDURE (this: _Report) PUTOnDeactivate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 110, p1)
    END PUTOnDeactivate;

    PROCEDURE (this: _Report) OnNoData* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 118)
    END OnNoData;

    PROCEDURE (this: _Report) PUTOnNoData* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 118, p1)
    END PUTOnNoData;

    PROCEDURE (this: _Report) OnPage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 79)
    END OnPage;

    PROCEDURE (this: _Report) PUTOnPage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 79, p1)
    END PUTOnPage;

    PROCEDURE (this: _Report) OnError* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 116)
    END OnError;

    PROCEDURE (this: _Report) PUTOnError* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 116, p1)
    END PUTOnError;

    PROCEDURE (this: _Report) Dirty* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 318)
    END Dirty;

    PROCEDURE (this: _Report) PUTDirty* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 318, p1)
    END PUTDirty;

    PROCEDURE (this: _Report) CurrentRecord* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 334)
    END CurrentRecord;

    PROCEDURE (this: _Report) PUTCurrentRecord* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 334, p1)
    END PUTCurrentRecord;

    PROCEDURE (this: _Report) PictureData* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 187)
    END PictureData;

    PROCEDURE (this: _Report) PUTPictureData* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 187, p1)
    END PUTPictureData;

    PROCEDURE (this: _Report) PicturePalette* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 356)
    END PicturePalette;

    PROCEDURE (this: _Report) PUTPicturePalette* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 356, p1)
    END PUTPicturePalette;

    PROCEDURE (this: _Report) HasModule* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 385)
    END HasModule;

    PROCEDURE (this: _Report) PUTHasModule* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 385, p1)
    END PUTHasModule;

    PROCEDURE (this: _Report) acHiddenCurrentPage* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 406)
    END acHiddenCurrentPage;

    PROCEDURE (this: _Report) PUTacHiddenCurrentPage* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 406, p1)
    END PUTacHiddenCurrentPage;

    PROCEDURE (this: _Report) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Report) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Report) ActiveControl* (): Control, NEW;
    BEGIN
        RETURN This_Control(CtlC.GetAny(this, 2006))
    END ActiveControl;

    PROCEDURE (this: _Report) DefaultControl* (ControlType: INTEGER): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ControlType, arg[0]);
        CtlC.CallGetMethod(this, 2150, arg, ret);
        RETURN This_Control(CtlC.VarAny(ret))
    END DefaultControl;

    PROCEDURE (this: _Report) Circle* (flags: SHORTINT; X: SHORTREAL; Y: SHORTREAL; radius: SHORTREAL; color: INTEGER; start: SHORTREAL; end: SHORTREAL; aspect: SHORTREAL), NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant;
    BEGIN
        CtlC.SIntVar(flags, arg[7]);
        CtlC.SRealVar(X, arg[6]);
        CtlC.SRealVar(Y, arg[5]);
        CtlC.SRealVar(radius, arg[4]);
        CtlC.IntVar(color, arg[3]);
        CtlC.SRealVar(start, arg[2]);
        CtlC.SRealVar(end, arg[1]);
        CtlC.SRealVar(aspect, arg[0]);
        CtlC.CallParMethod(this, 2118, arg, NIL);
    END Circle;

    PROCEDURE (this: _Report) Line* (flags: SHORTINT; x1: SHORTREAL; y1: SHORTREAL; x2: SHORTREAL; y2: SHORTREAL; color: INTEGER), NEW;
        VAR arg: ARRAY 6 OF CtlT.Variant;
    BEGIN
        CtlC.SIntVar(flags, arg[5]);
        CtlC.SRealVar(x1, arg[4]);
        CtlC.SRealVar(y1, arg[3]);
        CtlC.SRealVar(x2, arg[2]);
        CtlC.SRealVar(y2, arg[1]);
        CtlC.IntVar(color, arg[0]);
        CtlC.CallParMethod(this, 2152, arg, NIL);
    END Line;

    PROCEDURE (this: _Report) PSet* (flags: SHORTINT; X: SHORTREAL; Y: SHORTREAL; color: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.SIntVar(flags, arg[3]);
        CtlC.SRealVar(X, arg[2]);
        CtlC.SRealVar(Y, arg[1]);
        CtlC.IntVar(color, arg[0]);
        CtlC.CallParMethod(this, 2117, arg, NIL);
    END PSet;

    PROCEDURE (this: _Report) Scale* (flags: SHORTINT; x1: SHORTREAL; y1: SHORTREAL; x2: SHORTREAL; y2: SHORTREAL), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.SIntVar(flags, arg[4]);
        CtlC.SRealVar(x1, arg[3]);
        CtlC.SRealVar(y1, arg[2]);
        CtlC.SRealVar(x2, arg[1]);
        CtlC.SRealVar(y2, arg[0]);
        CtlC.CallParMethod(this, 2116, arg, NIL);
    END Scale;

    PROCEDURE (this: _Report) TextWidth* (Expr: ARRAY OF CHAR): SHORTREAL, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[0]);
        CtlC.CallParMethod(this, 2114, arg, ret);
        RETURN CtlC.VarSReal(ret)
    END TextWidth;

    PROCEDURE (this: _Report) TextHeight* (Expr: ARRAY OF CHAR): SHORTREAL, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[0]);
        CtlC.CallParMethod(this, 2115, arg, ret);
        RETURN CtlC.VarSReal(ret)
    END TextHeight;

    PROCEDURE (this: _Report) Print* (Expr: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[0]);
        CtlC.CallParMethod(this, 2153, arg, NIL);
    END Print;

    PROCEDURE (this: _Report) Section* (Index: CtlT.Any): Section, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2088, arg, ret);
        RETURN This_Section(CtlC.VarAny(ret))
    END Section;

    PROCEDURE (this: _Report) GroupLevel* (Index: INTEGER): GroupLevel, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 2098, arg, ret);
        RETURN This_GroupLevel(CtlC.VarAny(ret))
    END GroupLevel;

    PROCEDURE (this: _Report) Report* (): Report, NEW;
    BEGIN
        RETURN This_Report(CtlC.GetAny(this, 2097))
    END Report;

    PROCEDURE (this: _Report) Module* (): Module, NEW;
    BEGIN
        RETURN ThisModule(CtlC.GetAny(this, 2090))
    END Module;

    PROCEDURE (this: _Report) Properties* (): Properties, NEW;
    BEGIN
        RETURN ThisProperties(CtlC.GetAny(this, 2091))
    END Properties;

    PROCEDURE (this: _Report) Controls* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 0))
    END Controls;

    PROCEDURE (this: _Report) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: _Report) _Evaluate* (bstrExpr: ARRAY OF CHAR; (* optional *) ppsa: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrExpr, arg[1]);
        CtlC.AnyVar(ppsa, arg[0]);
        CtlC.CallParMethod(this, -5, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Evaluate;


    (* ---------- Reports, dual ---------- *)

    PROCEDURE (this: Reports) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: Reports) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: Reports) Item* (Index: CtlT.Any): Report, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN This_Report(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Reports) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Count;

    PROCEDURE (this: Reports) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- Screen, dual, nonextensible ---------- *)

    PROCEDURE (this: Screen) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: Screen) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: Screen) ActiveDatasheet* (): Form, NEW;
    BEGIN
        RETURN This_Form(CtlC.GetAny(this, 2146))
    END ActiveDatasheet;

    PROCEDURE (this: Screen) ActiveControl* (): Control, NEW;
    BEGIN
        RETURN This_Control(CtlC.GetAny(this, 2006))
    END ActiveControl;

    PROCEDURE (this: Screen) PreviousControl* (): Control, NEW;
    BEGIN
        RETURN This_Control(CtlC.GetAny(this, 2007))
    END PreviousControl;

    PROCEDURE (this: Screen) ActiveForm* (): Form, NEW;
    BEGIN
        RETURN This_Form(CtlC.GetAny(this, 2008))
    END ActiveForm;

    PROCEDURE (this: Screen) ActiveReport* (): Report, NEW;
    BEGIN
        RETURN This_Report(CtlC.GetAny(this, 2009))
    END ActiveReport;

    PROCEDURE (this: Screen) MousePointer* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 2106)
    END MousePointer;

    PROCEDURE (this: Screen) PUTMousePointer* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 2106, p1)
    END PUTMousePointer;


    (* ---------- _Application, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Application) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2005))
    END Application;

    PROCEDURE (this: _Application) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2087)
    END Parent;

    PROCEDURE (this: _Application) CodeContextObject* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2082)
    END CodeContextObject;

    PROCEDURE (this: _Application) NewCurrentDatabase* (filepath: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(filepath, arg[0]);
        CtlC.CallParMethod(this, 2142, arg, NIL);
    END NewCurrentDatabase;

    PROCEDURE (this: _Application) OpenCurrentDatabase* (filepath: ARRAY OF CHAR; Exclusive: BOOLEAN), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(filepath, arg[1]);
        CtlC.BoolVar(Exclusive, arg[0]);
        CtlC.CallParMethod(this, 2140, arg, NIL);
    END OpenCurrentDatabase;

    PROCEDURE (this: _Application) MenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2010)
    END MenuBar;

    PROCEDURE (this: _Application) PUTMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2010, p1)
    END PUTMenuBar;

    PROCEDURE (this: _Application) CurrentObjectType* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END CurrentObjectType;

    PROCEDURE (this: _Application) CurrentObjectName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2012)
    END CurrentObjectName;

    PROCEDURE (this: _Application) GetOption* (OptionName: ARRAY OF CHAR): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(OptionName, arg[0]);
        CtlC.CallParMethod(this, 2013, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GetOption;

    PROCEDURE (this: _Application) SetOption* (OptionName: ARRAY OF CHAR; Setting: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(OptionName, arg[1]);
        CtlC.AnyVar(Setting, arg[0]);
        CtlC.CallParMethod(this, 2014, arg, NIL);
    END SetOption;

    PROCEDURE (this: _Application) Echo* (EchoOn: SHORTINT; bstrStatusBarText: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.SIntVar(EchoOn, arg[1]);
        CtlC.StrVar(bstrStatusBarText, arg[0]);
        CtlC.CallParMethod(this, 2015, arg, NIL);
    END Echo;

    PROCEDURE (this: _Application) CloseCurrentDatabase* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2141, NIL);
    END CloseCurrentDatabase;

    PROCEDURE (this: _Application) Quit* (Option: AcQuitOption), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Option, arg[0]);
        CtlC.CallParMethod(this, 2016, arg, NIL);
    END Quit;

    PROCEDURE (this: _Application) Forms* (): Forms, NEW;
    BEGIN
        RETURN ThisForms(CtlC.GetAny(this, 2002))
    END Forms;

    PROCEDURE (this: _Application) Reports* (): Reports, NEW;
    BEGIN
        RETURN ThisReports(CtlC.GetAny(this, 2003))
    END Reports;

    PROCEDURE (this: _Application) Screen* (): Screen, NEW;
    BEGIN
        RETURN ThisScreen(CtlC.GetAny(this, 2004))
    END Screen;

    PROCEDURE (this: _Application) DoCmd* (): IDoCmd, NEW;
    BEGIN
        RETURN ThisIDoCmd(CtlC.GetAny(this, 2025))
    END DoCmd;

    PROCEDURE (this: _Application) ShortcutMenuBar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2107)
    END ShortcutMenuBar;

    PROCEDURE (this: _Application) PUTShortcutMenuBar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2107, p1)
    END PUTShortcutMenuBar;

    PROCEDURE (this: _Application) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 2148)
    END Visible;

    PROCEDURE (this: _Application) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 2148, p1)
    END PUTVisible;

    PROCEDURE (this: _Application) UserControl* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 2149)
    END UserControl;

    PROCEDURE (this: _Application) PUTUserControl* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 2149, p1)
    END PUTUserControl;

    PROCEDURE (this: _Application) SysCmd* (Action: AcSysCmdAction; (* optional *) Argument2: CtlT.Any; Argument3: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Action, arg[2]);
        CtlC.AnyVar(Argument2, arg[1]);
        CtlC.AnyVar(Argument3, arg[0]);
        CtlC.CallParMethod(this, 2028, arg, ret);
        RETURN CtlC.VarAny(ret)
    END SysCmd;

    PROCEDURE (this: _Application) CreateForm* ((* optional *) Database: CtlT.Any; FormTemplate: CtlT.Any): Form, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Database, arg[1]);
        CtlC.AnyVar(FormTemplate, arg[0]);
        CtlC.CallParMethod(this, 2029, arg, ret);
        RETURN This_Form(CtlC.VarAny(ret))
    END CreateForm;

    PROCEDURE (this: _Application) CreateReport* ((* optional *) Database: CtlT.Any; ReportTemplate: CtlT.Any): Report, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Database, arg[1]);
        CtlC.AnyVar(ReportTemplate, arg[0]);
        CtlC.CallParMethod(this, 2030, arg, ret);
        RETURN This_Report(CtlC.VarAny(ret))
    END CreateReport;

    PROCEDURE (this: _Application) CreateControl* (FormName: ARRAY OF CHAR; ControlType: AcControlType; Section: AcSection; (* optional *) Parent: CtlT.Any; ColumnName: CtlT.Any; Left: CtlT.Any; Top: CtlT.Any; Width: CtlT.Any; Height: CtlT.Any): Control, NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FormName, arg[8]);
        CtlC.IntVar(ControlType, arg[7]);
        CtlC.IntVar(Section, arg[6]);
        CtlC.AnyVar(Parent, arg[5]);
        CtlC.AnyVar(ColumnName, arg[4]);
        CtlC.AnyVar(Left, arg[3]);
        CtlC.AnyVar(Top, arg[2]);
        CtlC.AnyVar(Width, arg[1]);
        CtlC.AnyVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2031, arg, ret);
        RETURN This_Control(CtlC.VarAny(ret))
    END CreateControl;

    PROCEDURE (this: _Application) CreateReportControl* (ReportName: ARRAY OF CHAR; ControlType: AcControlType; Section: AcSection; (* optional *) Parent: CtlT.Any; ColumnName: CtlT.Any; Left: CtlT.Any; Top: CtlT.Any; Width: CtlT.Any; Height: CtlT.Any): Control, NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ReportName, arg[8]);
        CtlC.IntVar(ControlType, arg[7]);
        CtlC.IntVar(Section, arg[6]);
        CtlC.AnyVar(Parent, arg[5]);
        CtlC.AnyVar(ColumnName, arg[4]);
        CtlC.AnyVar(Left, arg[3]);
        CtlC.AnyVar(Top, arg[2]);
        CtlC.AnyVar(Width, arg[1]);
        CtlC.AnyVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2032, arg, ret);
        RETURN This_Control(CtlC.VarAny(ret))
    END CreateReportControl;

    PROCEDURE (this: _Application) CreateControlEx* (FormName: ARRAY OF CHAR; ControlType: AcControlType; Section: AcSection; Parent: ARRAY OF CHAR; ControlSource: ARRAY OF CHAR; Left: INTEGER; Top: INTEGER; Width: INTEGER; Height: INTEGER): Control, NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FormName, arg[8]);
        CtlC.IntVar(ControlType, arg[7]);
        CtlC.IntVar(Section, arg[6]);
        CtlC.StrVar(Parent, arg[5]);
        CtlC.StrVar(ControlSource, arg[4]);
        CtlC.IntVar(Left, arg[3]);
        CtlC.IntVar(Top, arg[2]);
        CtlC.IntVar(Width, arg[1]);
        CtlC.IntVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2164, arg, ret);
        RETURN This_Control(CtlC.VarAny(ret))
    END CreateControlEx;

    PROCEDURE (this: _Application) CreateReportControlEx* (ReportName: ARRAY OF CHAR; ControlType: AcControlType; Section: AcSection; Parent: ARRAY OF CHAR; ControlName: ARRAY OF CHAR; Left: INTEGER; Top: INTEGER; Width: INTEGER; Height: INTEGER): Control, NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ReportName, arg[8]);
        CtlC.IntVar(ControlType, arg[7]);
        CtlC.IntVar(Section, arg[6]);
        CtlC.StrVar(Parent, arg[5]);
        CtlC.StrVar(ControlName, arg[4]);
        CtlC.IntVar(Left, arg[3]);
        CtlC.IntVar(Top, arg[2]);
        CtlC.IntVar(Width, arg[1]);
        CtlC.IntVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2165, arg, ret);
        RETURN This_Control(CtlC.VarAny(ret))
    END CreateReportControlEx;

    PROCEDURE (this: _Application) DeleteControl* (FormName: ARRAY OF CHAR; ControlName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FormName, arg[1]);
        CtlC.StrVar(ControlName, arg[0]);
        CtlC.CallParMethod(this, 2033, arg, NIL);
    END DeleteControl;

    PROCEDURE (this: _Application) DeleteReportControl* (ReportName: ARRAY OF CHAR; ControlName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(ReportName, arg[1]);
        CtlC.StrVar(ControlName, arg[0]);
        CtlC.CallParMethod(this, 2034, arg, NIL);
    END DeleteReportControl;

    PROCEDURE (this: _Application) CreateGroupLevel* (ReportName: ARRAY OF CHAR; Expression: ARRAY OF CHAR; Header: SHORTINT; Footer: SHORTINT): INTEGER, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ReportName, arg[3]);
        CtlC.StrVar(Expression, arg[2]);
        CtlC.SIntVar(Header, arg[1]);
        CtlC.SIntVar(Footer, arg[0]);
        CtlC.CallParMethod(this, 2051, arg, ret);
        RETURN CtlC.VarInt(ret)
    END CreateGroupLevel;

    PROCEDURE (this: _Application) DMin* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2035, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DMin;

    PROCEDURE (this: _Application) DMax* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2036, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DMax;

    PROCEDURE (this: _Application) DSum* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2037, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DSum;

    PROCEDURE (this: _Application) DAvg* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2038, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DAvg;

    PROCEDURE (this: _Application) DLookup* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2039, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DLookup;

    PROCEDURE (this: _Application) DLast* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2040, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DLast;

    PROCEDURE (this: _Application) DVar* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2041, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DVar;

    PROCEDURE (this: _Application) DVarP* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2042, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DVarP;

    PROCEDURE (this: _Application) DStDev* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2043, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DStDev;

    PROCEDURE (this: _Application) DStDevP* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2044, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DStDevP;

    PROCEDURE (this: _Application) DFirst* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2045, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DFirst;

    PROCEDURE (this: _Application) DCount* (Expr: ARRAY OF CHAR; Domain: ARRAY OF CHAR; (* optional *) Criteria: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Expr, arg[2]);
        CtlC.StrVar(Domain, arg[1]);
        CtlC.AnyVar(Criteria, arg[0]);
        CtlC.CallParMethod(this, 2046, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DCount;

    PROCEDURE (this: _Application) Eval* (StringExpr: ARRAY OF CHAR): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(StringExpr, arg[0]);
        CtlC.CallParMethod(this, 2047, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Eval;

    PROCEDURE (this: _Application) CurrentUser* (): CtlT.Strg, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2048, ret);
        RETURN CtlC.VarStr(ret)
    END CurrentUser;

    PROCEDURE (this: _Application) DDEInitiate* (Application: ARRAY OF CHAR; Topic: ARRAY OF CHAR): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Application, arg[1]);
        CtlC.StrVar(Topic, arg[0]);
        CtlC.CallParMethod(this, 2052, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DDEInitiate;

    PROCEDURE (this: _Application) DDEExecute* (ChanNum: CtlT.Any; Command: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ChanNum, arg[1]);
        CtlC.StrVar(Command, arg[0]);
        CtlC.CallParMethod(this, 2053, arg, NIL);
    END DDEExecute;

    PROCEDURE (this: _Application) DDEPoke* (ChanNum: CtlT.Any; Item: ARRAY OF CHAR; Data: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ChanNum, arg[2]);
        CtlC.StrVar(Item, arg[1]);
        CtlC.StrVar(Data, arg[0]);
        CtlC.CallParMethod(this, 2054, arg, NIL);
    END DDEPoke;

    PROCEDURE (this: _Application) DDERequest* (ChanNum: CtlT.Any; Item: ARRAY OF CHAR): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ChanNum, arg[1]);
        CtlC.StrVar(Item, arg[0]);
        CtlC.CallParMethod(this, 2055, arg, ret);
        RETURN CtlC.VarStr(ret)
    END DDERequest;

    PROCEDURE (this: _Application) DDETerminate* (ChanNum: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ChanNum, arg[0]);
        CtlC.CallParMethod(this, 2056, arg, NIL);
    END DDETerminate;

    PROCEDURE (this: _Application) DDETerminateAll* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2057, NIL);
    END DDETerminateAll;

    PROCEDURE (this: _Application) DBEngine* (): CtlDAO.DBEngine, NEW;
    BEGIN
        RETURN CtlDAO.This_DBEngine(CtlC.GetAny(this, 2110))
    END DBEngine;

    PROCEDURE (this: _Application) CurrentDb* (): CtlDAO.Database, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2049, ret);
        RETURN CtlDAO.ThisDatabase(CtlC.VarAny(ret))
    END CurrentDb;

    PROCEDURE (this: _Application) CodeDb* (): CtlDAO.Database, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2050, ret);
        RETURN CtlDAO.ThisDatabase(CtlC.VarAny(ret))
    END CodeDb;

    PROCEDURE (this: _Application) BeginUndoable* (Hwnd: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Hwnd, arg[0]);
        CtlC.CallParMethod(this, 2099, arg, NIL);
    END BeginUndoable;

    PROCEDURE (this: _Application) SetUndoRecording* (yesno: SHORTINT), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SIntVar(yesno, arg[0]);
        CtlC.CallParMethod(this, 2100, arg, NIL);
    END SetUndoRecording;

    PROCEDURE (this: _Application) BuildCriteria* (Field: ARRAY OF CHAR; FieldType: SHORTINT; Expression: ARRAY OF CHAR): CtlT.Strg, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Field, arg[2]);
        CtlC.SIntVar(FieldType, arg[1]);
        CtlC.StrVar(Expression, arg[0]);
        CtlC.CallParMethod(this, 2138, arg, ret);
        RETURN CtlC.VarStr(ret)
    END BuildCriteria;

    PROCEDURE (this: _Application) InsertText* (Text: ARRAY OF CHAR; ModuleName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Text, arg[1]);
        CtlC.StrVar(ModuleName, arg[0]);
        CtlC.CallParMethod(this, 2093, arg, NIL);
    END InsertText;

    PROCEDURE (this: _Application) ReloadAddIns* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2154, NIL);
    END ReloadAddIns;

    PROCEDURE (this: _Application) DefaultWorkspaceClone* (): CtlDAO.Workspace, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2157, ret);
        RETURN CtlDAO.ThisWorkspace(CtlC.VarAny(ret))
    END DefaultWorkspaceClone;

    PROCEDURE (this: _Application) RefreshTitleBar* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2158, NIL);
    END RefreshTitleBar;

    PROCEDURE (this: _Application) AddAutoCorrect* (ChangeFrom: ARRAY OF CHAR; ChangeTo: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(ChangeFrom, arg[1]);
        CtlC.StrVar(ChangeTo, arg[0]);
        CtlC.CallParMethod(this, 2159, arg, NIL);
    END AddAutoCorrect;

    PROCEDURE (this: _Application) DelAutoCorrect* (ChangeFrom: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(ChangeFrom, arg[0]);
        CtlC.CallParMethod(this, 2160, arg, NIL);
    END DelAutoCorrect;

    PROCEDURE (this: _Application) hWndAccessApp* (): INTEGER, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2163, ret);
        RETURN CtlC.VarInt(ret)
    END hWndAccessApp;

    PROCEDURE (this: _Application) Run* (Procedure: ARRAY OF CHAR; (* optional *) Arg1: CtlT.Any; Arg2: CtlT.Any; Arg3: CtlT.Any; Arg4: CtlT.Any; Arg5: CtlT.Any; Arg6: CtlT.Any; Arg7: CtlT.Any; Arg8: CtlT.Any; Arg9: CtlT.Any; Arg10: CtlT.Any; Arg11: CtlT.Any; Arg12: CtlT.Any; Arg13: CtlT.Any; Arg14: CtlT.Any; Arg15: CtlT.Any; Arg16: CtlT.Any; Arg17: CtlT.Any; Arg18: CtlT.Any; Arg19: CtlT.Any; Arg20: CtlT.Any; Arg21: CtlT.Any; Arg22: CtlT.Any; Arg23: CtlT.Any; Arg24: CtlT.Any; Arg25: CtlT.Any; Arg26: CtlT.Any; Arg27: CtlT.Any; Arg28: CtlT.Any; Arg29: CtlT.Any; Arg30: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 31 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Procedure, arg[30]);
        CtlC.AnyVar(Arg1, arg[29]);
        CtlC.AnyVar(Arg2, arg[28]);
        CtlC.AnyVar(Arg3, arg[27]);
        CtlC.AnyVar(Arg4, arg[26]);
        CtlC.AnyVar(Arg5, arg[25]);
        CtlC.AnyVar(Arg6, arg[24]);
        CtlC.AnyVar(Arg7, arg[23]);
        CtlC.AnyVar(Arg8, arg[22]);
        CtlC.AnyVar(Arg9, arg[21]);
        CtlC.AnyVar(Arg10, arg[20]);
        CtlC.AnyVar(Arg11, arg[19]);
        CtlC.AnyVar(Arg12, arg[18]);
        CtlC.AnyVar(Arg13, arg[17]);
        CtlC.AnyVar(Arg14, arg[16]);
        CtlC.AnyVar(Arg15, arg[15]);
        CtlC.AnyVar(Arg16, arg[14]);
        CtlC.AnyVar(Arg17, arg[13]);
        CtlC.AnyVar(Arg18, arg[12]);
        CtlC.AnyVar(Arg19, arg[11]);
        CtlC.AnyVar(Arg20, arg[10]);
        CtlC.AnyVar(Arg21, arg[9]);
        CtlC.AnyVar(Arg22, arg[8]);
        CtlC.AnyVar(Arg23, arg[7]);
        CtlC.AnyVar(Arg24, arg[6]);
        CtlC.AnyVar(Arg25, arg[5]);
        CtlC.AnyVar(Arg26, arg[4]);
        CtlC.AnyVar(Arg27, arg[3]);
        CtlC.AnyVar(Arg28, arg[2]);
        CtlC.AnyVar(Arg29, arg[1]);
        CtlC.AnyVar(Arg30, arg[0]);
        CtlC.CallParMethod(this, 2134, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Run;

    PROCEDURE (this: _Application) Nz* (Value: CtlT.Any; (* optional *) ValueIfNull: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Value, arg[1]);
        CtlC.AnyVar(ValueIfNull, arg[0]);
        CtlC.CallParMethod(this, 2135, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Nz;

    PROCEDURE (this: _Application) LoadPicture* (FileName: ARRAY OF CHAR): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2166, arg, ret);
        RETURN CtlC.VarObj(ret)
    END LoadPicture;

    PROCEDURE (this: _Application) ReplaceModule* (objtyp: INTEGER; ModuleName: ARRAY OF CHAR; FileName: ARRAY OF CHAR; token: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(objtyp, arg[3]);
        CtlC.StrVar(ModuleName, arg[2]);
        CtlC.StrVar(FileName, arg[1]);
        CtlC.IntVar(token, arg[0]);
        CtlC.CallParMethod(this, 2168, arg, NIL);
    END ReplaceModule;

    PROCEDURE (this: _Application) AccessError* (ErrorNumber: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(ErrorNumber, arg[0]);
        CtlC.CallParMethod(this, 2169, arg, ret);
        RETURN CtlC.VarAny(ret)
    END AccessError;

    PROCEDURE (this: _Application) BuilderString* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2170, ret);
        RETURN CtlC.VarAny(ret)
    END BuilderString;

    PROCEDURE (this: _Application) StringFromGUID* (Guid: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Guid, arg[0]);
        CtlC.CallParMethod(this, 2171, arg, ret);
        RETURN CtlC.VarAny(ret)
    END StringFromGUID;

    PROCEDURE (this: _Application) GUIDFromString* (String: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(String, arg[0]);
        CtlC.CallParMethod(this, 2172, arg, ret);
        RETURN CtlC.VarAny(ret)
    END GUIDFromString;

    PROCEDURE (this: _Application) AppLoadString* (id: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(id, arg[0]);
        CtlC.CallParMethod(this, 2173, arg, ret);
        RETURN CtlC.VarAny(ret)
    END AppLoadString;

    PROCEDURE (this: _Application) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.ThisCommandBars(CtlC.GetAny(this, 2174))
    END CommandBars;

    PROCEDURE (this: _Application) Assistant* (): CtlOffice.Assistant, NEW;
    BEGIN
        RETURN CtlOffice.ThisAssistant(CtlC.GetAny(this, 2175))
    END Assistant;

    PROCEDURE (this: _Application) FollowHyperlink* (Address: ARRAY OF CHAR; SubAddress: ARRAY OF CHAR; NewWindow: BOOLEAN; AddHistory: BOOLEAN; ExtraInfo: CtlT.Any; Method: CtlOffice.MsoExtraInfoMethod; HeaderInfo: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 7 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Address, arg[6]);
        CtlC.StrVar(SubAddress, arg[5]);
        CtlC.BoolVar(NewWindow, arg[4]);
        CtlC.BoolVar(AddHistory, arg[3]);
        CtlC.AnyVar(ExtraInfo, arg[2]);
        CtlC.IntVar(Method, arg[1]);
        CtlC.StrVar(HeaderInfo, arg[0]);
        CtlC.CallParMethod(this, 2176, arg, NIL);
    END FollowHyperlink;

    PROCEDURE (this: _Application) SaveAsText* (ObjectType: INTEGER; ObjectName: ARRAY OF CHAR; FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[2]);
        CtlC.StrVar(ObjectName, arg[1]);
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2178, arg, NIL);
    END SaveAsText;

    PROCEDURE (this: _Application) LoadFromText* (ObjectType: INTEGER; ObjectName: ARRAY OF CHAR; FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ObjectType, arg[2]);
        CtlC.StrVar(ObjectName, arg[1]);
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2179, arg, NIL);
    END LoadFromText;

    PROCEDURE (this: _Application) AddToFavorites* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2184, NIL);
    END AddToFavorites;

    PROCEDURE (this: _Application) RefreshDatabaseWindow* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2186, NIL);
    END RefreshDatabaseWindow;

    PROCEDURE (this: _Application) References* (): References, NEW;
    BEGIN
        RETURN This_References(CtlC.GetAny(this, 2187))
    END References;

    PROCEDURE (this: _Application) Modules* (): Modules, NEW;
    BEGIN
        RETURN ThisModules(CtlC.GetAny(this, 2188))
    END Modules;

    PROCEDURE (this: _Application) FileSearch* (): CtlOffice.FileSearch, NEW;
    BEGIN
        RETURN CtlOffice.ThisFileSearch(CtlC.GetAny(this, 2189))
    END FileSearch;

    PROCEDURE (this: _Application) IsCompiled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 2193)
    END IsCompiled;

    PROCEDURE (this: _Application) RunCommand* (Command: AcCommand), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Command, arg[0]);
        CtlC.CallParMethod(this, 2194, arg, NIL);
    END RunCommand;

    PROCEDURE (this: _Application) HyperlinkPart* (Hyperlink: CtlT.Any; Part: AcHyperlinkPart): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Hyperlink, arg[1]);
        CtlC.IntVar(Part, arg[0]);
        CtlC.CallParMethod(this, 2195, arg, ret);
        RETURN CtlC.VarStr(ret)
    END HyperlinkPart;


    (* ---------- Reference, dual, nonextensible ---------- *)

    PROCEDURE (this: Reference) Collection* (): References, NEW;
    BEGIN
        RETURN This_References(CtlC.GetAny(this, 1610743808))
    END Collection;

    PROCEDURE (this: Reference) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743809)
    END Name;

    PROCEDURE (this: Reference) Guid* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743810)
    END Guid;

    PROCEDURE (this: Reference) Major* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Major;

    PROCEDURE (this: Reference) Minor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743812)
    END Minor;

    PROCEDURE (this: Reference) FullPath* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743813)
    END FullPath;

    PROCEDURE (this: Reference) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743814)
    END BuiltIn;

    PROCEDURE (this: Reference) IsBroken* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743815)
    END IsBroken;

    PROCEDURE (this: Reference) Kind* (): RefKind, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743816)
    END Kind;


    (* ---------- _References, dual, nonextensible ---------- *)

    PROCEDURE (this: _References) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Parent;

    PROCEDURE (this: _References) Item* (var: CtlT.Any): Reference, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(var, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisReference(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _References) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743810)
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
        CtlC.CallParMethod(this, 1610743812, arg, ret);
        RETURN ThisReference(CtlC.VarAny(ret))
    END AddFromGuid;

    PROCEDURE (this: _References) AddFromFile* (FileName: ARRAY OF CHAR): Reference, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610743813, arg, ret);
        RETURN ThisReference(CtlC.VarAny(ret))
    END AddFromFile;

    PROCEDURE (this: _References) Remove* (reference: Reference), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(reference, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, NIL);
    END Remove;


    (* ---------- _References_Events, hidden, nonextensible ---------- *)

    PROCEDURE (this: _References_Events) ItemAdded* (reference: Reference), NEW, ABSTRACT;

    PROCEDURE (this: _References_Events) ItemRemoved* (reference: Reference), NEW, ABSTRACT;

    PROCEDURE (this: _References_Events) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 0: ASSERT(n = 1, 11); this.ItemAdded(ThisReference(CtlC.VarAny(par[0])))
        | 1: ASSERT(n = 1, 11); this.ItemRemoved(ThisReference(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: _References_Events) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{F163F201-ADA2-11CF-89A9-00A0C9054129}"
    END GetIID;


    (* ---------- _Dummy, hidden, dual, nonextensible ---------- *)


    (* ---------- ___IVbaModule, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ___IVbaModule) Parent* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743808)
    END Parent;

    PROCEDURE (this: ___IVbaModule) VBA* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743809)
    END VBA;

    PROCEDURE (this: ___IVbaModule) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: ___IVbaModule) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTName;

    PROCEDURE (this: ___IVbaModule) AddFromString* (String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743812, arg, NIL);
    END AddFromString;

    PROCEDURE (this: ___IVbaModule) AddFromFile* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610743813, arg, NIL);
    END AddFromFile;

    PROCEDURE (this: ___IVbaModule) Lines* (Line: INTEGER; cLine: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.IntVar(cLine, arg[0]);
        CtlC.CallGetMethod(this, 1610743814, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Lines;

    PROCEDURE (this: ___IVbaModule) CountOfLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743815)
    END CountOfLines;

    PROCEDURE (this: ___IVbaModule) InsertLines* (Line: INTEGER; String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743816, arg, NIL);
    END InsertLines;

    PROCEDURE (this: ___IVbaModule) DeleteLines* (StartLine: INTEGER; Count: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(StartLine, arg[1]);
        CtlC.IntVar(Count, arg[0]);
        CtlC.CallParMethod(this, 1610743817, arg, NIL);
    END DeleteLines;

    PROCEDURE (this: ___IVbaModule) ReplaceLine* (Line: INTEGER; String: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 1610743818, arg, NIL);
    END ReplaceLine;

    PROCEDURE (this: ___IVbaModule) ProcStartLine* (ProcName: ARRAY OF CHAR; ProcKind: _ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743819, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcStartLine;

    PROCEDURE (this: ___IVbaModule) ProcCountLines* (ProcName: ARRAY OF CHAR; ProcKind: _ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743820, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcCountLines;

    PROCEDURE (this: ___IVbaModule) ProcBodyLine* (ProcName: ARRAY OF CHAR; ProcKind: _ProcKind): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ProcName, arg[1]);
        CtlC.IntVar(ProcKind, arg[0]);
        CtlC.CallGetMethod(this, 1610743821, arg, ret);
        RETURN CtlC.VarInt(ret)
    END ProcBodyLine;

    PROCEDURE (this: ___IVbaModule) ProcOfLine* (Line: INTEGER; OUT pprockind: _ProcKind): CtlT.Strg, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Line, arg[1]);
        CtlC.RefIntVar(pprockind, arg[0]);
        CtlC.CallGetMethod(this, 1610743822, arg, ret);
        RETURN CtlC.VarStr(ret)
    END ProcOfLine;

    PROCEDURE (this: ___IVbaModule) DeclCountOfLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743823)
    END DeclCountOfLines;

    PROCEDURE (this: ___IVbaModule) CreateEventProc* (EventName: ARRAY OF CHAR; ObjectName: ARRAY OF CHAR): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EventName, arg[1]);
        CtlC.StrVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 1610743824, arg, ret);
        RETURN CtlC.VarInt(ret)
    END CreateEventProc;

    PROCEDURE (this: ___IVbaModule) Find* (Target: ARRAY OF CHAR; VAR StartLine: INTEGER; VAR StartColumn: INTEGER; VAR EndLine: INTEGER; VAR EndColumn: INTEGER; WholeWord: BOOLEAN; MatchCase: BOOLEAN; PatternSearch: BOOLEAN): BOOLEAN, NEW;
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

    PROCEDURE (this: ___IVbaModule) GetEditor* (): ___Editor, NEW;
    BEGIN
        RETURN This___IVbaEditor(CtlC.GetAny(this, 1610743826))
    END GetEditor;


    (* ---------- ___IVbaEditors, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ___IVbaEditors) Parent* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743808)
    END Parent;

    PROCEDURE (this: ___IVbaEditors) VBA* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743809)
    END VBA;

    PROCEDURE (this: ___IVbaEditors) Item* (var: CtlT.Any): ___Editor, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(var, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This___IVbaEditor(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: ___IVbaEditors) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Count;

    PROCEDURE (this: ___IVbaEditors) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: ___IVbaEditors) Current* (): ___Editor, NEW;
    BEGIN
        RETURN This___IVbaEditor(CtlC.GetAny(this, 1610743813))
    END Current;

    PROCEDURE (this: ___IVbaEditors) PUTCurrent* (p1: ___Editor), NEW;
    BEGIN
        CtlC.PutObj(this, 1610743813, p1)
    END PUTCurrent;


    (* ---------- ___IVbaEditor, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ___IVbaEditor) Parent* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743808)
    END Parent;

    PROCEDURE (this: ___IVbaEditor) VBA* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743809)
    END VBA;

    PROCEDURE (this: ___IVbaEditor) Window* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743810)
    END Window;

    PROCEDURE (this: ___IVbaEditor) GetSelection* (OUT StartLine: INTEGER; OUT StartColumn: INTEGER; OUT EndLine: INTEGER; OUT EndColumn: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(StartLine, arg[3]);
        CtlC.RefIntVar(StartColumn, arg[2]);
        CtlC.RefIntVar(EndLine, arg[1]);
        CtlC.RefIntVar(EndColumn, arg[0]);
        CtlC.CallParMethod(this, 1610743811, arg, NIL);
    END GetSelection;

    PROCEDURE (this: ___IVbaEditor) SetSelection* (StartLine: INTEGER; StartColumn: INTEGER; EndLine: INTEGER; EndColumn: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(StartLine, arg[3]);
        CtlC.IntVar(StartColumn, arg[2]);
        CtlC.IntVar(EndLine, arg[1]);
        CtlC.IntVar(EndColumn, arg[0]);
        CtlC.CallParMethod(this, 1610743812, arg, NIL);
    END SetSelection;

    PROCEDURE (this: ___IVbaEditor) TopLine* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743813)
    END TopLine;

    PROCEDURE (this: ___IVbaEditor) PUTTopLine* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743813, p1)
    END PUTTopLine;

    PROCEDURE (this: ___IVbaEditor) CountOfVisibleLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743815)
    END CountOfVisibleLines;

    PROCEDURE (this: ___IVbaEditor) ___CodeModule* (): ___CodeModule, NEW;
    BEGIN
        RETURN This___IVbaModule(CtlC.GetAny(this, 1610743816))
    END ___CodeModule;

    PROCEDURE (this: ___IVbaEditor) Show* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743817, NIL);
    END Show;

    PROCEDURE (this: ___IVbaEditor) CodePaneView* (): ___vbext_CodePaneview, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743818)
    END CodePaneView;


    (* ---------- IVbaReferences, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IVbaReferences) Parent* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743808)
    END Parent;

    PROCEDURE (this: IVbaReferences) VBA* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 1610743809)
    END VBA;

    PROCEDURE (this: IVbaReferences) Item* (var: CtlT.Any): ___Reference, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(var, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This___Reference(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: IVbaReferences) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743811)
    END Count;

    PROCEDURE (this: IVbaReferences) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;

    PROCEDURE (this: IVbaReferences) CreateFromGuid* (bstrGuid: ARRAY OF CHAR; Major: INTEGER; Minor: INTEGER): ___Reference, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrGuid, arg[2]);
        CtlC.IntVar(Major, arg[1]);
        CtlC.IntVar(Minor, arg[0]);
        CtlC.CallParMethod(this, 1610743813, arg, ret);
        RETURN This___Reference(CtlC.VarAny(ret))
    END CreateFromGuid;

    PROCEDURE (this: IVbaReferences) CreateFromFile* (bstrFileName: ARRAY OF CHAR): ___Reference, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrFileName, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, ret);
        RETURN This___Reference(CtlC.VarAny(ret))
    END CreateFromFile;

    PROCEDURE (this: IVbaReferences) Remove* ( Reference: ___Reference), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar( Reference, arg[0]);
        CtlC.CallParMethod(this, 1610743815, arg, NIL);
    END Remove;


    (* ---------- ___Reference, dual, nonextensible ---------- *)

    PROCEDURE (this: ___Reference) Collection* (): IVbaReferences, NEW;
    BEGIN
        RETURN ThisIVbaReferences(CtlC.GetAny(this, 1610743808))
    END Collection;

    PROCEDURE (this: ___Reference) VBA* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743809)
    END VBA;

    PROCEDURE (this: ___Reference) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743810)
    END Name;

    PROCEDURE (this: ___Reference) Guid* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743811)
    END Guid;

    PROCEDURE (this: ___Reference) Major* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743812)
    END Major;

    PROCEDURE (this: ___Reference) Minor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743813)
    END Minor;

    PROCEDURE (this: ___Reference) Location* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743814)
    END Location;

    PROCEDURE (this: ___Reference) IsDefault* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743815)
    END IsDefault;

    PROCEDURE (this: ___Reference) IsBroken* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743816)
    END IsBroken;

    PROCEDURE (this: ___Reference) Kind* (): ___RefKind, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743817)
    END Kind;

    PROCEDURE (this: ___Reference) Description* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743818)
    END Description;


    (* ---------- ___IVbaExtReferencesEvents, nonextensible ---------- *)

    PROCEDURE (this: ___IVbaExtReferencesEvents) ItemAdded* ( Reference: ___Reference), NEW, ABSTRACT;

    PROCEDURE (this: ___IVbaExtReferencesEvents) ItemRemoved* ( Reference: ___Reference), NEW, ABSTRACT;

    PROCEDURE (this: ___IVbaExtReferencesEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 0: ASSERT(n = 1, 11); this.ItemAdded(This___Reference(CtlC.VarAny(par[0])))
        | 1: ASSERT(n = 1, 11); this.ItemRemoved(This___Reference(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: ___IVbaExtReferencesEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{CDDE3804-2064-11CF-867F-00AA005FF34A}"
    END GetIID;


    PROCEDURE NewDoCmd* (): IDoCmd;
    BEGIN
        RETURN ThisIDoCmd(CtlC.NewObj("{C547E761-9658-101B-81EE-00AA004750E2}"))
    END NewDoCmd;

    PROCEDURE NewAccessField* (): _AccessField;
    BEGIN
        RETURN This_AccessField(CtlC.NewObj("{044E54C5-B19B-11CE-A689-00AA003F0F07}"))
    END NewAccessField;

    PROCEDURE NewHyperlink* (): _Hyperlink;
    BEGIN
        RETURN This_Hyperlink(CtlC.NewObj("{50D56610-60AC-11CF-82C9-00AA004B9FE6}"))
    END NewHyperlink;

    PROCEDURE NewPage* (): _Page;
    BEGIN
        RETURN This_Page(CtlC.NewObj("{3B06E973-E47C-11CD-8701-00AA003F0F07}"))
    END NewPage;

    PROCEDURE NewControl* (): _Control;
    BEGIN
        RETURN This_Control(CtlC.NewObj("{02F92C80-8F8E-101B-AF4E-00AA003F0F07}"))
    END NewControl;

    PROCEDURE New_ControlInReportEvents* (): _Control;
    BEGIN
        RETURN This_Control(CtlC.NewObj("{90B322A4-F1D9-11CD-8701-00AA003F0F07}"))
    END New_ControlInReportEvents;

    PROCEDURE NewLabel* (): _Label;
    BEGIN
        RETURN This_Label(CtlC.NewObj("{3B06E947-E47C-11CD-8701-00AA003F0F07}"))
    END NewLabel;

    PROCEDURE New_ChildLabel* (): _Label;
    BEGIN
        RETURN This_Label(CtlC.NewObj("{BC9E4359-F037-11CD-8701-00AA003F0F07}"))
    END New_ChildLabel;

    PROCEDURE NewRectangle* (): _Rectangle;
    BEGIN
        RETURN This_Rectangle(CtlC.NewObj("{3B06E949-E47C-11CD-8701-00AA003F0F07}"))
    END NewRectangle;

    PROCEDURE NewLine* (): _Line;
    BEGIN
        RETURN This_Line(CtlC.NewObj("{3B06E94B-E47C-11CD-8701-00AA003F0F07}"))
    END NewLine;

    PROCEDURE NewImage* (): _Image;
    BEGIN
        RETURN This_Image(CtlC.NewObj("{3B06E94D-E47C-11CD-8701-00AA003F0F07}"))
    END NewImage;

    PROCEDURE NewCommandButton* (): _CommandButton;
    BEGIN
        RETURN This_CommandButton(CtlC.NewObj("{3B06E94F-E47C-11CD-8701-00AA003F0F07}"))
    END NewCommandButton;

    PROCEDURE NewOptionButton* (): _OptionButton;
    BEGIN
        RETURN This_OptionButton(CtlC.NewObj("{3B06E951-E47C-11CD-8701-00AA003F0F07}"))
    END NewOptionButton;

    PROCEDURE New_OptionButtonInOption* (): _OptionButton;
    BEGIN
        RETURN This_OptionButton(CtlC.NewObj("{BC9E435A-F037-11CD-8701-00AA003F0F07}"))
    END New_OptionButtonInOption;

    PROCEDURE NewCheckBox* (): _Checkbox;
    BEGIN
        RETURN This_Checkbox(CtlC.NewObj("{3B06E953-E47C-11CD-8701-00AA003F0F07}"))
    END NewCheckBox;

    PROCEDURE New_CheckBoxInOption* (): _Checkbox;
    BEGIN
        RETURN This_Checkbox(CtlC.NewObj("{BC9E435C-F037-11CD-8701-00AA003F0F07}"))
    END New_CheckBoxInOption;

    PROCEDURE NewOptionGroup* (): _OptionGroup;
    BEGIN
        RETURN This_OptionGroup(CtlC.NewObj("{3B06E955-E47C-11CD-8701-00AA003F0F07}"))
    END NewOptionGroup;

    PROCEDURE NewBoundObjectFrame* (): _BoundObjectFrame;
    BEGIN
        RETURN This_BoundObjectFrame(CtlC.NewObj("{3B06E957-E47C-11CD-8701-00AA003F0F07}"))
    END NewBoundObjectFrame;

    PROCEDURE NewTextBox* (): _Textbox;
    BEGIN
        RETURN This_Textbox(CtlC.NewObj("{3B06E945-E47C-11CD-8701-00AA003F0F07}"))
    END NewTextBox;

    PROCEDURE NewListBox* (): _ListBox;
    BEGIN
        RETURN This_ListBox(CtlC.NewObj("{3B06E959-E47C-11CD-8701-00AA003F0F07}"))
    END NewListBox;

    PROCEDURE NewComboBox* (): _Combobox;
    BEGIN
        RETURN This_Combobox(CtlC.NewObj("{3B06E95B-E47C-11CD-8701-00AA003F0F07}"))
    END NewComboBox;

    PROCEDURE NewObjectFrame* (): _ObjectFrame;
    BEGIN
        RETURN This_ObjectFrame(CtlC.NewObj("{3B06E95D-E47C-11CD-8701-00AA003F0F07}"))
    END NewObjectFrame;

    PROCEDURE NewPageBreak* (): _PageBreak;
    BEGIN
        RETURN This_PageBreak(CtlC.NewObj("{3B06E95F-E47C-11CD-8701-00AA003F0F07}"))
    END NewPageBreak;

    PROCEDURE NewToggleButton* (): _ToggleButton;
    BEGIN
        RETURN This_ToggleButton(CtlC.NewObj("{3B06E961-E47C-11CD-8701-00AA003F0F07}"))
    END NewToggleButton;

    PROCEDURE New_ToggleButtonInOption* (): _ToggleButton;
    BEGIN
        RETURN This_ToggleButton(CtlC.NewObj("{BC9E435E-F037-11CD-8701-00AA003F0F07}"))
    END New_ToggleButtonInOption;

    PROCEDURE NewPaletteButton* (): _PaletteButton;
    BEGIN
        RETURN This_PaletteButton(CtlC.NewObj("{9CD4A762-A6A9-11CE-A686-00AA003F0F07}"))
    END NewPaletteButton;

    PROCEDURE NewSubForm* (): _SubForm;
    BEGIN
        RETURN This_SubForm(CtlC.NewObj("{3B06E963-E47C-11CD-8701-00AA003F0F07}"))
    END NewSubForm;

    PROCEDURE NewSubReport* (): _SubReport;
    BEGIN
        RETURN This_SubReport(CtlC.NewObj("{3B06E965-E47C-11CD-8701-00AA003F0F07}"))
    END NewSubReport;

    PROCEDURE NewCustomControl* (): _CustomControl;
    BEGIN
        RETURN This_CustomControl(CtlC.NewObj("{3B06E967-E47C-11CD-8701-00AA003F0F07}"))
    END NewCustomControl;

    PROCEDURE New_CustomControlInReport* (): _CustomControl;
    BEGIN
        RETURN This_CustomControl(CtlC.NewObj("{300471E0-7426-11CE-AB63-00AA0042B7CE}"))
    END New_CustomControlInReport;

    PROCEDURE NewTabControl* (): _TabControl;
    BEGIN
        RETURN This_TabControl(CtlC.NewObj("{3B06E970-E47C-11CD-8701-00AA003F0F07}"))
    END NewTabControl;

    PROCEDURE NewSection* (): _Section;
    BEGIN
        RETURN This_Section(CtlC.NewObj("{BC9E4355-F037-11CD-8701-00AA003F0F07}"))
    END NewSection;

    PROCEDURE NewGroupLevel* (): _GroupLevel;
    BEGIN
        RETURN This_GroupLevel(CtlC.NewObj("{BC9E4356-F037-11CD-8701-00AA003F0F07}"))
    END NewGroupLevel;

    PROCEDURE New_SectionInReport* (): _Section;
    BEGIN
        RETURN This_Section(CtlC.NewObj("{BC9E4360-F037-11CD-8701-00AA003F0F07}"))
    END New_SectionInReport;

    PROCEDURE New_PageHdrFtrInReport* (): _Section;
    BEGIN
        RETURN This_Section(CtlC.NewObj("{7AD9E906-BAF8-11CE-A68A-00AA003F0F07}"))
    END New_PageHdrFtrInReport;

    PROCEDURE NewForm* (): _Form;
    BEGIN
        RETURN This_Form(CtlC.NewObj("{483615A0-74BE-101B-AF4E-00AA003F0F07}"))
    END NewForm;

    PROCEDURE NewReport* (): _Report;
    BEGIN
        RETURN This_Report(CtlC.NewObj("{27CE30A0-91FF-101B-AF4E-00AA003F0F07}"))
    END NewReport;

    PROCEDURE NewApplication* (): _Application;
    BEGIN
        RETURN This_Application(CtlC.NewObj("{8CC49940-3146-11CF-97A1-00AA00424A9F}"))
    END NewApplication;

    PROCEDURE NewReferences* (): _References;
    BEGIN
        RETURN This_References(CtlC.NewObj("{EB106214-9C89-11CF-A2B3-00A0C90542FF}"))
    END NewReferences;

    PROCEDURE NewClass* (): _Dummy;
    BEGIN
        RETURN This_Dummy(CtlC.NewObj("{8B06E321-B23C-11CF-89A8-00A0C9054129}"))
    END NewClass;

    PROCEDURE New___CodeModule* (): ___IVbaModule;
    BEGIN
        RETURN This___IVbaModule(CtlC.NewObj("{0002E170-0000-0000-C000-000000000046}"))
    END New___CodeModule;

    PROCEDURE New___Editors* (): ___IVbaEditors;
    BEGIN
        RETURN This___IVbaEditors(CtlC.NewObj("{0002E174-0000-0000-C000-000000000046}"))
    END New___Editors;

    PROCEDURE New___Editor* (): ___IVbaEditor;
    BEGIN
        RETURN This___IVbaEditor(CtlC.NewObj("{0002E178-0000-0000-C000-000000000046}"))
    END New___Editor;

    PROCEDURE New___References* (): IVbaReferences;
    BEGIN
        RETURN ThisIVbaReferences(CtlC.NewObj("{0002E17C-0000-0000-C000-000000000046}"))
    END New___References;

END CtlAccess8.
