MODULE CtlOutlook9;
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

    (* Microsoft Outlook 9.0 Object Library, help: C:\Program Files\Microsoft Office\Office\VBAOUTL9.CHM, id: 5247608 *)
    (* guid: {00062FFF-0000-0000-C000-000000000046}, lcid: 0, syskind: win32, version: 9.0 *)

    IMPORT CtlT, CtlC, CtlOffice;

    CONST
        (* OlActionCopyLike *)
            olReply* = 0;
            olReplyAll* = 1;
            olForward* = 2;
            olReplyFolder* = 3;
            olRespond* = 4;
        (* OlActionReplyStyle *)
            olOmitOriginalText* = 0;
            olEmbedOriginalItem* = 1;
            olIncludeOriginalText* = 2;
            olIndentOriginalText* = 3;
            olLinkOriginalItem* = 4;
            olUserPreference* = 5;
            olReplyTickOriginalText* = 1000;
        (* OlActionResponseStyle *)
            olOpen* = 0;
            olSend* = 1;
            olPrompt* = 2;
        (* OlActionShowOn *)
            olDontShow* = 0;
            olMenu* = 1;
            olMenuAndToolbar* = 2;
        (* OlAttachmentType *)
            olByValue* = 1;
            olByReference* = 4;
            olEmbeddeditem* = 5;
            olOLE* = 6;
        (* OlBusyStatus *)
            olFree* = 0;
            olTentative* = 1;
            olBusy* = 2;
            olOutOfOffice* = 3;
        (* OlDaysOfWeek *)
            olSunday* = 1;
            olMonday* = 2;
            olTuesday* = 4;
            olWednesday* = 8;
            olThursday* = 16;
            olFriday* = 32;
            olSaturday* = 64;
        (* OlDefaultFolders *)
            olFolderDeletedItems* = 3;
            olFolderOutbox* = 4;
            olFolderSentMail* = 5;
            olFolderInbox* = 6;
            olFolderCalendar* = 9;
            olFolderContacts* = 10;
            olFolderJournal* = 11;
            olFolderNotes* = 12;
            olFolderTasks* = 13;
            olFolderDrafts* = 16;
        (* OlDisplayType *)
            olUser* = 0;
            olDistList* = 1;
            olForum* = 2;
            olAgent* = 3;
            olOrganization* = 4;
            olPrivateDistList* = 5;
            olRemoteUser* = 6;
        (* OlEditorType *)
            olEditorText* = 1;
            olEditorHTML* = 2;
            olEditorRTF* = 3;
            olEditorWord* = 4;
        (* OlFlagStatus *)
            olNoFlag* = 0;
            olFlagComplete* = 1;
            olFlagMarked* = 2;
        (* OlFolderDisplayMode *)
            olFolderDisplayNormal* = 0;
            olFolderDisplayFolderOnly* = 1;
            olFolderDisplayNoNavigation* = 2;
        (* OlFormRegistry *)
            olDefaultRegistry* = 0;
            olPersonalRegistry* = 2;
            olFolderRegistry* = 3;
            olOrganizationRegistry* = 4;
        (* OlGender *)
            olUnspecified* = 0;
            olFemale* = 1;
            olMale* = 2;
        (* OlImportance *)
            olImportanceLow* = 0;
            olImportanceNormal* = 1;
            olImportanceHigh* = 2;
        (* OlInspectorClose *)
            olSave* = 0;
            olDiscard* = 1;
            olPromptForSave* = 2;
        (* OlItemType *)
            olMailItem* = 0;
            olAppointmentItem* = 1;
            olContactItem* = 2;
            olTaskItem* = 3;
            olJournalItem* = 4;
            olNoteItem* = 5;
            olPostItem* = 6;
            olDistributionListItem* = 7;
        (* OlJournalRecipientType *)
            olAssociatedContact* = 1;
        (* OlMailingAddress *)
            olNone* = 0;
            olHome* = 1;
            olBusiness* = 2;
            olOther* = 3;
        (* OlMailRecipientType *)
            olOriginator* = 0;
            olTo* = 1;
            olCC* = 2;
            olBCC* = 3;
        (* OlMeetingRecipientType *)
            olOrganizer* = 0;
            olRequired* = 1;
            olOptional* = 2;
            olResource* = 3;
        (* OlMeetingResponse *)
            olMeetingTentative* = 2;
            olMeetingAccepted* = 3;
            olMeetingDeclined* = 4;
        (* OlMeetingStatus *)
            olNonMeeting* = 0;
            olMeeting* = 1;
            olMeetingReceived* = 3;
            olMeetingCanceled* = 5;
        (* OlNetMeetingType *)
            olNetMeeting* = 0;
            olNetShow* = 1;
            olChat* = 2;
        (* OlNoteColor *)
            olBlue* = 0;
            olGreen* = 1;
            olPink* = 2;
            olYellow* = 3;
            olWhite* = 4;
        (* OlObjectClass *)
            olApplication* = 0;
            olNamespace* = 1;
            olFolder* = 2;
            olRecipient* = 4;
            olAttachment* = 5;
            olAddressList* = 7;
            olAddressEntry* = 8;
            olFolders* = 15;
            olItems* = 16;
            olRecipients* = 17;
            olAttachments* = 18;
            olAddressLists* = 20;
            olAddressEntries* = 21;
            olAppointment* = 26;
            olMeetingRequest* = 53;
            olMeetingCancellation* = 54;
            olMeetingResponseNegative* = 55;
            olMeetingResponsePositive* = 56;
            olMeetingResponseTentative* = 57;
            olRecurrencePattern* = 28;
            olExceptions* = 29;
            olException* = 30;
            olAction* = 32;
            olActions* = 33;
            olExplorer* = 34;
            olInspector* = 35;
            olPages* = 36;
            olFormDescription* = 37;
            olUserProperties* = 38;
            olUserProperty* = 39;
            olContact* = 40;
            olDocument* = 41;
            olJournal* = 42;
            olMail* = 43;
            olNote* = 44;
            olPost* = 45;
            olReport* = 46;
            olRemote* = 47;
            olTask* = 48;
            olTaskRequest* = 49;
            olTaskRequestUpdate* = 50;
            olTaskRequestAccept* = 51;
            olTaskRequestDecline* = 52;
            olExplorers* = 60;
            olInspectors* = 61;
            olPanes* = 62;
            olOutlookBarPane* = 63;
            olOutlookBarStorage* = 64;
            olOutlookBarGroups* = 65;
            olOutlookBarGroup* = 66;
            olOutlookBarShortcuts* = 67;
            olOutlookBarShortcut* = 68;
            olDistributionList* = 69;
            olPropertyPageSite* = 70;
            olPropertyPages* = 71;
            olSyncObject* = 72;
            olSyncObjects* = 73;
            olSelection* = 74;
            olLink* = 75;
            olLinks* = 76;
        (* OlOutlookBarViewType *)
            olLargeIcon* = 0;
            olSmallIcon* = 1;
        (* OlPane *)
            olOutlookBar* = 1;
            olFolderList* = 2;
            olPreview* = 3;
        (* OlRecurrenceState *)
            olApptNotRecurring* = 0;
            olApptMaster* = 1;
            olApptOccurrence* = 2;
            olApptException* = 3;
        (* OlRecurrenceType *)
            olRecursDaily* = 0;
            olRecursWeekly* = 1;
            olRecursMonthly* = 2;
            olRecursMonthNth* = 3;
            olRecursYearly* = 5;
            olRecursYearNth* = 6;
        (* OlRemoteStatus *)
            olRemoteStatusNone* = 0;
            olUnMarked* = 1;
            olMarkedForDownload* = 2;
            olMarkedForCopy* = 3;
            olMarkedForDelete* = 4;
        (* OlResponseStatus *)
            olResponseNone* = 0;
            olResponseOrganized* = 1;
            olResponseTentative* = 2;
            olResponseAccepted* = 3;
            olResponseDeclined* = 4;
            olResponseNotResponded* = 5;
        (* OlSaveAsType *)
            olTXT* = 0;
            olRTF* = 1;
            olTemplate* = 2;
            olMSG* = 3;
            olDoc* = 4;
            olHTML* = 5;
            olVCard* = 6;
            olVCal* = 7;
        (* OlSensitivity *)
            olNormal* = 0;
            olPersonal* = 1;
            olPrivate* = 2;
            olConfidential* = 3;
        (* OlSortOrder *)
            olSortNone* = 0;
            olAscending* = 1;
            olDescending* = 2;
        (* OlTaskDelegationState *)
            olTaskNotDelegated* = 0;
            olTaskDelegationUnknown* = 1;
            olTaskDelegationAccepted* = 2;
            olTaskDelegationDeclined* = 3;
        (* OlTaskOwnership *)
            olNewTask* = 0;
            olDelegatedTask* = 1;
            olOwnTask* = 2;
        (* OlTaskRecipientType *)
            olUpdate* = 2;
            olFinalStatus* = 3;
        (* OlTaskResponse *)
            olTaskSimple* = 0;
            olTaskAssign* = 1;
            olTaskAccept* = 2;
            olTaskDecline* = 3;
        (* OlTaskStatus *)
            olTaskNotStarted* = 0;
            olTaskInProgress* = 1;
            olTaskComplete* = 2;
            olTaskWaiting* = 3;
            olTaskDeferred* = 4;
        (* OlTrackingStatus *)
            olTrackingNone* = 0;
            olTrackingDelivered* = 1;
            olTrackingNotDelivered* = 2;
            olTrackingNotRead* = 3;
            olTrackingRecallFailure* = 4;
            olTrackingRecallSuccess* = 5;
            olTrackingRead* = 6;
            olTrackingReplied* = 7;
        (* OlUserPropertyType *)
            olText* = 1;
            olNumber* = 3;
            olDateTime* = 5;
            olYesNo* = 6;
            olDuration* = 7;
            olKeywords* = 11;
            olPercent* = 12;
            olCurrency* = 14;
            olFormula* = 18;
            olCombination* = 19;
        (* OlWindowState *)
            olMaximized* = 0;
            olMinimized* = 1;
            olNormalWindow* = 2;
        (* OlSyncState *)
            olSyncStopped* = 0;
            olSyncStarted* = 1;


    TYPE
        OlActionCopyLike* = INTEGER;
        OlActionReplyStyle* = INTEGER;
        OlActionResponseStyle* = INTEGER;
        OlActionShowOn* = INTEGER;
        OlAttachmentType* = INTEGER;
        OlBusyStatus* = INTEGER;
        OlDaysOfWeek* = INTEGER;
        OlDefaultFolders* = INTEGER;
        OlDisplayType* = INTEGER;
        OlEditorType* = INTEGER;
        OlFlagStatus* = INTEGER;
        OlFolderDisplayMode* = INTEGER;
        OlFormRegistry* = INTEGER;
        OlGender* = INTEGER;
        OlImportance* = INTEGER;
        OlInspectorClose* = INTEGER;
        OlItemType* = INTEGER;
        OlJournalRecipientType* = INTEGER;
        OlMailingAddress* = INTEGER;
        OlMailRecipientType* = INTEGER;
        OlMeetingRecipientType* = INTEGER;
        OlMeetingResponse* = INTEGER;
        OlMeetingStatus* = INTEGER;
        OlNetMeetingType* = INTEGER;
        OlNoteColor* = INTEGER;
        OlObjectClass* = INTEGER;
        OlOutlookBarViewType* = INTEGER;
        OlPane* = INTEGER;
        OlRecurrenceState* = INTEGER;
        OlRecurrenceType* = INTEGER;
        OlRemoteStatus* = INTEGER;
        OlResponseStatus* = INTEGER;
        OlSaveAsType* = INTEGER;
        OlSensitivity* = INTEGER;
        OlSortOrder* = INTEGER;
        OlTaskDelegationState* = INTEGER;
        OlTaskOwnership* = INTEGER;
        OlTaskRecipientType* = INTEGER;
        OlTaskResponse* = INTEGER;
        OlTaskStatus* = INTEGER;
        OlTrackingStatus* = INTEGER;
        OlUserPropertyType* = INTEGER;
        OlWindowState* = INTEGER;
        OlSyncState* = INTEGER;
        Action* = POINTER TO RECORD (CtlT.Object) END;
        _Application* = POINTER TO RECORD (CtlT.Object) END;
        _NameSpace* = POINTER TO RECORD (CtlT.Object) END;
        Recipient* = POINTER TO RECORD (CtlT.Object) END;
        AddressEntry* = POINTER TO RECORD (CtlT.Object) END;
        AddressEntries* = POINTER TO RECORD (CtlT.Object) END;
        _Folders* = POINTER TO RECORD (CtlT.Object) END;
        MAPIFolder* = POINTER TO RECORD (CtlT.Object) END;
        _Items* = POINTER TO RECORD (CtlT.Object) END;
        _Explorer* = POINTER TO RECORD (CtlT.Object) END;
        Panes* = POINTER TO RECORD (CtlT.Object) END;
        Selection* = POINTER TO RECORD (CtlT.Object) END;
        AddressLists* = POINTER TO RECORD (CtlT.Object) END;
        AddressList* = POINTER TO RECORD (CtlT.Object) END;
        SyncObjects* = POINTER TO RECORD (CtlT.Object) END;
        SyncObject* = _SyncObject;
        _SyncObject* = POINTER TO RECORD (CtlT.Object) END;
        SyncObjectEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _Inspector* = POINTER TO RECORD (CtlT.Object) END;
        _Explorers* = POINTER TO RECORD (CtlT.Object) END;
        Explorer* = _Explorer;
        ExplorerEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _Inspectors* = POINTER TO RECORD (CtlT.Object) END;
        Inspector* = _Inspector;
        InspectorEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        Actions* = POINTER TO RECORD (CtlT.Object) END;
        ApplicationEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        PropertyPages* = POINTER TO RECORD (CtlT.Object) END;
        _AppointmentItem* = POINTER TO RECORD (CtlT.Object) END;
        Attachments* = POINTER TO RECORD (CtlT.Object) END;
        Attachment* = POINTER TO RECORD (CtlT.Object) END;
        FormDescription* = POINTER TO RECORD (CtlT.Object) END;
        UserProperties* = POINTER TO RECORD (CtlT.Object) END;
        UserProperty* = POINTER TO RECORD (CtlT.Object) END;
        Recipients* = POINTER TO RECORD (CtlT.Object) END;
        MailItem* = _MailItem;
        _MailItem* = POINTER TO RECORD (CtlT.Object) END;
        Links* = POINTER TO RECORD (CtlT.Object) END;
        Link* = POINTER TO RECORD (CtlT.Object) END;
        ItemEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        RecurrencePattern* = POINTER TO RECORD (CtlT.Object) END;
        Exceptions* = POINTER TO RECORD (CtlT.Object) END;
        Exception* = POINTER TO RECORD (CtlT.Object) END;
        AppointmentItem* = _AppointmentItem;
        MeetingItem* = _MeetingItem;
        _MeetingItem* = POINTER TO RECORD (CtlT.Object) END;
        _ContactItem* = POINTER TO RECORD (CtlT.Object) END;
        _DistListItem* = POINTER TO RECORD (CtlT.Object) END;
        _DocumentItem* = POINTER TO RECORD (CtlT.Object) END;
        ExplorersEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        FoldersEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        InspectorsEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        ItemsEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _JournalItem* = POINTER TO RECORD (CtlT.Object) END;
        NameSpaceEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _NoteItem* = POINTER TO RECORD (CtlT.Object) END;
        OutlookBarGroup* = POINTER TO RECORD (CtlT.Object) END;
        _OutlookBarShortcuts* = POINTER TO RECORD (CtlT.Object) END;
        OutlookBarShortcut* = POINTER TO RECORD (CtlT.Object) END;
        _OutlookBarGroups* = POINTER TO RECORD (CtlT.Object) END;
        OutlookBarGroupsEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _OutlookBarPane* = POINTER TO RECORD (CtlT.Object) END;
        OutlookBarStorage* = POINTER TO RECORD (CtlT.Object) END;
        OutlookBarPaneEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        OutlookBarShortcutsEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        PropertyPageSite* = POINTER TO RECORD (CtlT.Object) END;
        Pages* = POINTER TO RECORD (CtlT.Object) END;
        _PostItem* = POINTER TO RECORD (CtlT.Object) END;
        _RemoteItem* = POINTER TO RECORD (CtlT.Object) END;
        _ReportItem* = POINTER TO RECORD (CtlT.Object) END;
        _TaskItem* = POINTER TO RECORD (CtlT.Object) END;
        TaskItem* = _TaskItem;
        _TaskRequestAcceptItem* = POINTER TO RECORD (CtlT.Object) END;
        _TaskRequestDeclineItem* = POINTER TO RECORD (CtlT.Object) END;
        _TaskRequestItem* = POINTER TO RECORD (CtlT.Object) END;
        _TaskRequestUpdateItem* = POINTER TO RECORD (CtlT.Object) END;
        Application* = _Application;
        ContactItem* = _ContactItem;
        DistListItem* = _DistListItem;
        DocumentItem* = _DocumentItem;
        Explorers* = _Explorers;
        Inspectors* = _Inspectors;
        Folders* = _Folders;
        Items* = _Items;
        JournalItem* = _JournalItem;
        NameSpace* = _NameSpace;
        NoteItem* = _NoteItem;
        OutlookBarGroups* = _OutlookBarGroups;
        OutlookBarPane* = _OutlookBarPane;
        OutlookBarShortcuts* = _OutlookBarShortcuts;
        PostItem* = _PostItem;
        RemoteItem* = _RemoteItem;
        ReportItem* = _ReportItem;
        TaskRequestAcceptItem* = _TaskRequestAcceptItem;
        TaskRequestDeclineItem* = _TaskRequestDeclineItem;
        TaskRequestItem* = _TaskRequestItem;
        TaskRequestUpdateItem* = _TaskRequestUpdateItem;
        _DRecipientControl* = POINTER TO RECORD (CtlT.Object) END;
        _DRecipientControlEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _RecipientControl* = _DRecipientControl;
        _DDocSiteControl* = POINTER TO RECORD (CtlT.Object) END;
        _DDocSiteControlEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        _DocSiteControl* = _DDocSiteControl;


    PROCEDURE ThisAction* (v: CtlT.Any): Action;
        VAR new: Action;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063043-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAction;

    PROCEDURE IsAction* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063043-0000-0000-C000-000000000046}")
    END IsAction;

    PROCEDURE This_Application* (v: CtlT.Any): _Application;
        VAR new: _Application;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063001-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Application;

    PROCEDURE Is_Application* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063001-0000-0000-C000-000000000046}")
    END Is_Application;

    PROCEDURE This_NameSpace* (v: CtlT.Any): _NameSpace;
        VAR new: _NameSpace;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063002-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_NameSpace;

    PROCEDURE Is_NameSpace* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063002-0000-0000-C000-000000000046}")
    END Is_NameSpace;

    PROCEDURE ThisRecipient* (v: CtlT.Any): Recipient;
        VAR new: Recipient;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063045-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRecipient;

    PROCEDURE IsRecipient* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063045-0000-0000-C000-000000000046}")
    END IsRecipient;

    PROCEDURE ThisAddressEntry* (v: CtlT.Any): AddressEntry;
        VAR new: AddressEntry;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006304B-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAddressEntry;

    PROCEDURE IsAddressEntry* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006304B-0000-0000-C000-000000000046}")
    END IsAddressEntry;

    PROCEDURE ThisAddressEntries* (v: CtlT.Any): AddressEntries;
        VAR new: AddressEntries;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006304A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAddressEntries;

    PROCEDURE IsAddressEntries* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006304A-0000-0000-C000-000000000046}")
    END IsAddressEntries;

    PROCEDURE This_Folders* (v: CtlT.Any): _Folders;
        VAR new: _Folders;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063040-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Folders;

    PROCEDURE Is_Folders* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063040-0000-0000-C000-000000000046}")
    END Is_Folders;

    PROCEDURE ThisMAPIFolder* (v: CtlT.Any): MAPIFolder;
        VAR new: MAPIFolder;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063006-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisMAPIFolder;

    PROCEDURE IsMAPIFolder* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063006-0000-0000-C000-000000000046}")
    END IsMAPIFolder;

    PROCEDURE This_Items* (v: CtlT.Any): _Items;
        VAR new: _Items;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063041-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Items;

    PROCEDURE Is_Items* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063041-0000-0000-C000-000000000046}")
    END Is_Items;

    PROCEDURE This_Explorer* (v: CtlT.Any): _Explorer;
        VAR new: _Explorer;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063003-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Explorer;

    PROCEDURE Is_Explorer* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063003-0000-0000-C000-000000000046}")
    END Is_Explorer;

    PROCEDURE ThisPanes* (v: CtlT.Any): Panes;
        VAR new: Panes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063009-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPanes;

    PROCEDURE IsPanes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063009-0000-0000-C000-000000000046}")
    END IsPanes;

    PROCEDURE ThisSelection* (v: CtlT.Any): Selection;
        VAR new: Selection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063087-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSelection;

    PROCEDURE IsSelection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063087-0000-0000-C000-000000000046}")
    END IsSelection;

    PROCEDURE ThisAddressLists* (v: CtlT.Any): AddressLists;
        VAR new: AddressLists;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063048-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAddressLists;

    PROCEDURE IsAddressLists* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063048-0000-0000-C000-000000000046}")
    END IsAddressLists;

    PROCEDURE ThisAddressList* (v: CtlT.Any): AddressList;
        VAR new: AddressList;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063049-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAddressList;

    PROCEDURE IsAddressList* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063049-0000-0000-C000-000000000046}")
    END IsAddressList;

    PROCEDURE ThisSyncObjects* (v: CtlT.Any): SyncObjects;
        VAR new: SyncObjects;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063086-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSyncObjects;

    PROCEDURE IsSyncObjects* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063086-0000-0000-C000-000000000046}")
    END IsSyncObjects;

    PROCEDURE This_SyncObject* (v: CtlT.Any): _SyncObject;
        VAR new: _SyncObject;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063083-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_SyncObject;

    PROCEDURE Is_SyncObject* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063083-0000-0000-C000-000000000046}")
    END Is_SyncObject;

    PROCEDURE This_Inspector* (v: CtlT.Any): _Inspector;
        VAR new: _Inspector;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063005-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Inspector;

    PROCEDURE Is_Inspector* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063005-0000-0000-C000-000000000046}")
    END Is_Inspector;

    PROCEDURE This_Explorers* (v: CtlT.Any): _Explorers;
        VAR new: _Explorers;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006300A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Explorers;

    PROCEDURE Is_Explorers* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006300A-0000-0000-C000-000000000046}")
    END Is_Explorers;

    PROCEDURE This_Inspectors* (v: CtlT.Any): _Inspectors;
        VAR new: _Inspectors;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063008-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Inspectors;

    PROCEDURE Is_Inspectors* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063008-0000-0000-C000-000000000046}")
    END Is_Inspectors;

    PROCEDURE ThisActions* (v: CtlT.Any): Actions;
        VAR new: Actions;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006303E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisActions;

    PROCEDURE IsActions* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006303E-0000-0000-C000-000000000046}")
    END IsActions;

    PROCEDURE ThisPropertyPages* (v: CtlT.Any): PropertyPages;
        VAR new: PropertyPages;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063080-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPropertyPages;

    PROCEDURE IsPropertyPages* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063080-0000-0000-C000-000000000046}")
    END IsPropertyPages;

    PROCEDURE This_AppointmentItem* (v: CtlT.Any): _AppointmentItem;
        VAR new: _AppointmentItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063033-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_AppointmentItem;

    PROCEDURE Is_AppointmentItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063033-0000-0000-C000-000000000046}")
    END Is_AppointmentItem;

    PROCEDURE ThisAttachments* (v: CtlT.Any): Attachments;
        VAR new: Attachments;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006303C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAttachments;

    PROCEDURE IsAttachments* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006303C-0000-0000-C000-000000000046}")
    END IsAttachments;

    PROCEDURE ThisAttachment* (v: CtlT.Any): Attachment;
        VAR new: Attachment;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063007-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAttachment;

    PROCEDURE IsAttachment* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063007-0000-0000-C000-000000000046}")
    END IsAttachment;

    PROCEDURE ThisFormDescription* (v: CtlT.Any): FormDescription;
        VAR new: FormDescription;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063046-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFormDescription;

    PROCEDURE IsFormDescription* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063046-0000-0000-C000-000000000046}")
    END IsFormDescription;

    PROCEDURE ThisUserProperties* (v: CtlT.Any): UserProperties;
        VAR new: UserProperties;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006303D-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisUserProperties;

    PROCEDURE IsUserProperties* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006303D-0000-0000-C000-000000000046}")
    END IsUserProperties;

    PROCEDURE ThisUserProperty* (v: CtlT.Any): UserProperty;
        VAR new: UserProperty;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063042-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisUserProperty;

    PROCEDURE IsUserProperty* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063042-0000-0000-C000-000000000046}")
    END IsUserProperty;

    PROCEDURE ThisRecipients* (v: CtlT.Any): Recipients;
        VAR new: Recipients;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006303B-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRecipients;

    PROCEDURE IsRecipients* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006303B-0000-0000-C000-000000000046}")
    END IsRecipients;

    PROCEDURE This_MailItem* (v: CtlT.Any): _MailItem;
        VAR new: _MailItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063034-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_MailItem;

    PROCEDURE Is_MailItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063034-0000-0000-C000-000000000046}")
    END Is_MailItem;

    PROCEDURE ThisLinks* (v: CtlT.Any): Links;
        VAR new: Links;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006308A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLinks;

    PROCEDURE IsLinks* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006308A-0000-0000-C000-000000000046}")
    END IsLinks;

    PROCEDURE ThisLink* (v: CtlT.Any): Link;
        VAR new: Link;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063089-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLink;

    PROCEDURE IsLink* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063089-0000-0000-C000-000000000046}")
    END IsLink;

    PROCEDURE ThisRecurrencePattern* (v: CtlT.Any): RecurrencePattern;
        VAR new: RecurrencePattern;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063044-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRecurrencePattern;

    PROCEDURE IsRecurrencePattern* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063044-0000-0000-C000-000000000046}")
    END IsRecurrencePattern;

    PROCEDURE ThisExceptions* (v: CtlT.Any): Exceptions;
        VAR new: Exceptions;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006304C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisExceptions;

    PROCEDURE IsExceptions* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006304C-0000-0000-C000-000000000046}")
    END IsExceptions;

    PROCEDURE ThisException* (v: CtlT.Any): Exception;
        VAR new: Exception;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006304D-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisException;

    PROCEDURE IsException* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006304D-0000-0000-C000-000000000046}")
    END IsException;

    PROCEDURE This_MeetingItem* (v: CtlT.Any): _MeetingItem;
        VAR new: _MeetingItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063062-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_MeetingItem;

    PROCEDURE Is_MeetingItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063062-0000-0000-C000-000000000046}")
    END Is_MeetingItem;

    PROCEDURE This_ContactItem* (v: CtlT.Any): _ContactItem;
        VAR new: _ContactItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063021-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ContactItem;

    PROCEDURE Is_ContactItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063021-0000-0000-C000-000000000046}")
    END Is_ContactItem;

    PROCEDURE This_DistListItem* (v: CtlT.Any): _DistListItem;
        VAR new: _DistListItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063081-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DistListItem;

    PROCEDURE Is_DistListItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063081-0000-0000-C000-000000000046}")
    END Is_DistListItem;

    PROCEDURE This_DocumentItem* (v: CtlT.Any): _DocumentItem;
        VAR new: _DocumentItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063020-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DocumentItem;

    PROCEDURE Is_DocumentItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063020-0000-0000-C000-000000000046}")
    END Is_DocumentItem;

    PROCEDURE This_JournalItem* (v: CtlT.Any): _JournalItem;
        VAR new: _JournalItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063022-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_JournalItem;

    PROCEDURE Is_JournalItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063022-0000-0000-C000-000000000046}")
    END Is_JournalItem;

    PROCEDURE This_NoteItem* (v: CtlT.Any): _NoteItem;
        VAR new: _NoteItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063025-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_NoteItem;

    PROCEDURE Is_NoteItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063025-0000-0000-C000-000000000046}")
    END Is_NoteItem;

    PROCEDURE ThisOutlookBarGroup* (v: CtlT.Any): OutlookBarGroup;
        VAR new: OutlookBarGroup;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063073-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisOutlookBarGroup;

    PROCEDURE IsOutlookBarGroup* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063073-0000-0000-C000-000000000046}")
    END IsOutlookBarGroup;

    PROCEDURE This_OutlookBarShortcuts* (v: CtlT.Any): _OutlookBarShortcuts;
        VAR new: _OutlookBarShortcuts;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063074-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_OutlookBarShortcuts;

    PROCEDURE Is_OutlookBarShortcuts* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063074-0000-0000-C000-000000000046}")
    END Is_OutlookBarShortcuts;

    PROCEDURE ThisOutlookBarShortcut* (v: CtlT.Any): OutlookBarShortcut;
        VAR new: OutlookBarShortcut;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063075-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisOutlookBarShortcut;

    PROCEDURE IsOutlookBarShortcut* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063075-0000-0000-C000-000000000046}")
    END IsOutlookBarShortcut;

    PROCEDURE This_OutlookBarGroups* (v: CtlT.Any): _OutlookBarGroups;
        VAR new: _OutlookBarGroups;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063072-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_OutlookBarGroups;

    PROCEDURE Is_OutlookBarGroups* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063072-0000-0000-C000-000000000046}")
    END Is_OutlookBarGroups;

    PROCEDURE This_OutlookBarPane* (v: CtlT.Any): _OutlookBarPane;
        VAR new: _OutlookBarPane;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063070-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_OutlookBarPane;

    PROCEDURE Is_OutlookBarPane* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063070-0000-0000-C000-000000000046}")
    END Is_OutlookBarPane;

    PROCEDURE ThisOutlookBarStorage* (v: CtlT.Any): OutlookBarStorage;
        VAR new: OutlookBarStorage;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063071-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisOutlookBarStorage;

    PROCEDURE IsOutlookBarStorage* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063071-0000-0000-C000-000000000046}")
    END IsOutlookBarStorage;

    PROCEDURE ThisPropertyPageSite* (v: CtlT.Any): PropertyPageSite;
        VAR new: PropertyPageSite;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006307F-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPropertyPageSite;

    PROCEDURE IsPropertyPageSite* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006307F-0000-0000-C000-000000000046}")
    END IsPropertyPageSite;

    PROCEDURE ThisPages* (v: CtlT.Any): Pages;
        VAR new: Pages;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006303F-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPages;

    PROCEDURE IsPages* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006303F-0000-0000-C000-000000000046}")
    END IsPages;

    PROCEDURE This_PostItem* (v: CtlT.Any): _PostItem;
        VAR new: _PostItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063024-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_PostItem;

    PROCEDURE Is_PostItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063024-0000-0000-C000-000000000046}")
    END Is_PostItem;

    PROCEDURE This_RemoteItem* (v: CtlT.Any): _RemoteItem;
        VAR new: _RemoteItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063023-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_RemoteItem;

    PROCEDURE Is_RemoteItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063023-0000-0000-C000-000000000046}")
    END Is_RemoteItem;

    PROCEDURE This_ReportItem* (v: CtlT.Any): _ReportItem;
        VAR new: _ReportItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063026-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_ReportItem;

    PROCEDURE Is_ReportItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063026-0000-0000-C000-000000000046}")
    END Is_ReportItem;

    PROCEDURE This_TaskItem* (v: CtlT.Any): _TaskItem;
        VAR new: _TaskItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063035-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_TaskItem;

    PROCEDURE Is_TaskItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063035-0000-0000-C000-000000000046}")
    END Is_TaskItem;

    PROCEDURE This_TaskRequestAcceptItem* (v: CtlT.Any): _TaskRequestAcceptItem;
        VAR new: _TaskRequestAcceptItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063038-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_TaskRequestAcceptItem;

    PROCEDURE Is_TaskRequestAcceptItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063038-0000-0000-C000-000000000046}")
    END Is_TaskRequestAcceptItem;

    PROCEDURE This_TaskRequestDeclineItem* (v: CtlT.Any): _TaskRequestDeclineItem;
        VAR new: _TaskRequestDeclineItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063039-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_TaskRequestDeclineItem;

    PROCEDURE Is_TaskRequestDeclineItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063039-0000-0000-C000-000000000046}")
    END Is_TaskRequestDeclineItem;

    PROCEDURE This_TaskRequestItem* (v: CtlT.Any): _TaskRequestItem;
        VAR new: _TaskRequestItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063036-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_TaskRequestItem;

    PROCEDURE Is_TaskRequestItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063036-0000-0000-C000-000000000046}")
    END Is_TaskRequestItem;

    PROCEDURE This_TaskRequestUpdateItem* (v: CtlT.Any): _TaskRequestUpdateItem;
        VAR new: _TaskRequestUpdateItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063037-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_TaskRequestUpdateItem;

    PROCEDURE Is_TaskRequestUpdateItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063037-0000-0000-C000-000000000046}")
    END Is_TaskRequestUpdateItem;

    PROCEDURE This_DRecipientControl* (v: CtlT.Any): _DRecipientControl;
        VAR new: _DRecipientControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006F025-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DRecipientControl;

    PROCEDURE Is_DRecipientControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006F025-0000-0000-C000-000000000046}")
    END Is_DRecipientControl;

    PROCEDURE This_DDocSiteControl* (v: CtlT.Any): _DDocSiteControl;
        VAR new: _DDocSiteControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0006F026-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DDocSiteControl;

    PROCEDURE Is_DDocSiteControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0006F026-0000-0000-C000-000000000046}")
    END Is_DDocSiteControl;



    (* ---------- Action, dual ---------- *)

    PROCEDURE (this: Action) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Action) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Action) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Action) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Action) CopyLike* (): OlActionCopyLike, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END CopyLike;

    PROCEDURE (this: Action) PUTCopyLike* (p1: OlActionCopyLike), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTCopyLike;

    PROCEDURE (this: Action) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Enabled;

    PROCEDURE (this: Action) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTEnabled;

    PROCEDURE (this: Action) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: Action) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: Action) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: Action) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTName;

    PROCEDURE (this: Action) Prefix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61)
    END Prefix;

    PROCEDURE (this: Action) PUTPrefix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61, p1)
    END PUTPrefix;

    PROCEDURE (this: Action) ReplyStyle* (): OlActionReplyStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END ReplyStyle;

    PROCEDURE (this: Action) PUTReplyStyle* (p1: OlActionReplyStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTReplyStyle;

    PROCEDURE (this: Action) ResponseStyle* (): OlActionResponseStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END ResponseStyle;

    PROCEDURE (this: Action) PUTResponseStyle* (p1: OlActionResponseStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTResponseStyle;

    PROCEDURE (this: Action) ShowOn* (): OlActionShowOn, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END ShowOn;

    PROCEDURE (this: Action) PUTShowOn* (p1: OlActionShowOn), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTShowOn;

    PROCEDURE (this: Action) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 108, NIL);
    END Delete;

    PROCEDURE (this: Action) Execute* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 106, ret);
        RETURN CtlC.VarObj(ret)
    END Execute;


    (* ---------- _Application, dual ---------- *)

    PROCEDURE (this: _Application) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _Application) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _Application) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _Application) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _Application) Assistant* (): CtlOffice.Assistant, NEW;
    BEGIN
        RETURN CtlOffice.ThisAssistant(CtlC.GetAny(this, 276))
    END Assistant;

    PROCEDURE (this: _Application) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: _Application) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 278)
    END Version;

    PROCEDURE (this: _Application) ActiveExplorer* (): _Explorer, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 273, ret);
        RETURN This_Explorer(CtlC.VarAny(ret))
    END ActiveExplorer;

    PROCEDURE (this: _Application) ActiveInspector* (): _Inspector, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 274, ret);
        RETURN This_Inspector(CtlC.VarAny(ret))
    END ActiveInspector;

    PROCEDURE (this: _Application) CreateItem* (ItemType: OlItemType): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ItemType, arg[0]);
        CtlC.CallParMethod(this, 266, arg, ret);
        RETURN CtlC.VarObj(ret)
    END CreateItem;

    PROCEDURE (this: _Application) CreateItemFromTemplate* (TemplatePath: ARRAY OF CHAR; (* optional *) InFolder: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(TemplatePath, arg[1]);
        CtlC.AnyVar(InFolder, arg[0]);
        CtlC.CallParMethod(this, 267, arg, ret);
        RETURN CtlC.VarObj(ret)
    END CreateItemFromTemplate;

    PROCEDURE (this: _Application) CreateObject* (ObjectName: ARRAY OF CHAR): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 277, arg, ret);
        RETURN CtlC.VarObj(ret)
    END CreateObject;

    PROCEDURE (this: _Application) GetNamespace* (Type: ARRAY OF CHAR): _NameSpace, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Type, arg[0]);
        CtlC.CallParMethod(this, 272, arg, ret);
        RETURN This_NameSpace(CtlC.VarAny(ret))
    END GetNamespace;

    PROCEDURE (this: _Application) Quit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 275, NIL);
    END Quit;

    PROCEDURE (this: _Application) COMAddIns* (): CtlOffice.COMAddIns, NEW;
    BEGIN
        RETURN CtlOffice.ThisCOMAddIns(CtlC.GetAny(this, 280))
    END COMAddIns;

    PROCEDURE (this: _Application) Explorers* (): _Explorers, NEW;
    BEGIN
        RETURN This_Explorers(CtlC.GetAny(this, 281))
    END Explorers;

    PROCEDURE (this: _Application) Inspectors* (): _Inspectors, NEW;
    BEGIN
        RETURN This_Inspectors(CtlC.GetAny(this, 282))
    END Inspectors;

    PROCEDURE (this: _Application) LanguageSettings* (): CtlOffice.LanguageSettings, NEW;
    BEGIN
        RETURN CtlOffice.ThisLanguageSettings(CtlC.GetAny(this, 283))
    END LanguageSettings;

    PROCEDURE (this: _Application) ProductCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 284)
    END ProductCode;

    PROCEDURE (this: _Application) AnswerWizard* (): CtlOffice.AnswerWizard, NEW;
    BEGIN
        RETURN CtlOffice.ThisAnswerWizard(CtlC.GetAny(this, 285))
    END AnswerWizard;

    PROCEDURE (this: _Application) FeatureInstall* (): CtlOffice.MsoFeatureInstall, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 286)
    END FeatureInstall;

    PROCEDURE (this: _Application) PUTFeatureInstall* (p1: CtlOffice.MsoFeatureInstall), NEW;
    BEGIN
        CtlC.PutInt(this, 286, p1)
    END PUTFeatureInstall;

    PROCEDURE (this: _Application) ActiveWindow* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 287, ret);
        RETURN CtlC.VarObj(ret)
    END ActiveWindow;


    (* ---------- _NameSpace, dual ---------- *)

    PROCEDURE (this: _NameSpace) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _NameSpace) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _NameSpace) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _NameSpace) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _NameSpace) CurrentUser* (): Recipient, NEW;
    BEGIN
        RETURN ThisRecipient(CtlC.GetAny(this, 8449))
    END CurrentUser;

    PROCEDURE (this: _NameSpace) Folders* (): _Folders, NEW;
    BEGIN
        RETURN This_Folders(CtlC.GetAny(this, 8451))
    END Folders;

    PROCEDURE (this: _NameSpace) Type* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 8452)
    END Type;

    PROCEDURE (this: _NameSpace) AddressLists* (): AddressLists, NEW;
    BEGIN
        RETURN ThisAddressLists(CtlC.GetAny(this, 8461))
    END AddressLists;

    PROCEDURE (this: _NameSpace) CreateRecipient* (RecipientName: ARRAY OF CHAR): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(RecipientName, arg[0]);
        CtlC.CallParMethod(this, 8458, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END CreateRecipient;

    PROCEDURE (this: _NameSpace) GetDefaultFolder* (FolderType: OlDefaultFolders): MAPIFolder, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(FolderType, arg[0]);
        CtlC.CallParMethod(this, 8459, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetDefaultFolder;

    PROCEDURE (this: _NameSpace) GetFolderFromID* (EntryIDFolder: ARRAY OF CHAR; (* optional *) EntryIDStore: CtlT.Any): MAPIFolder, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EntryIDFolder, arg[1]);
        CtlC.AnyVar(EntryIDStore, arg[0]);
        CtlC.CallParMethod(this, 8456, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetFolderFromID;

    PROCEDURE (this: _NameSpace) GetItemFromID* (EntryIDItem: ARRAY OF CHAR; (* optional *) EntryIDStore: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EntryIDItem, arg[1]);
        CtlC.AnyVar(EntryIDStore, arg[0]);
        CtlC.CallParMethod(this, 8457, arg, ret);
        RETURN CtlC.VarObj(ret)
    END GetItemFromID;

    PROCEDURE (this: _NameSpace) GetRecipientFromID* (EntryID: ARRAY OF CHAR): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EntryID, arg[0]);
        CtlC.CallParMethod(this, 8455, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END GetRecipientFromID;

    PROCEDURE (this: _NameSpace) GetSharedDefaultFolder* (recipient: Recipient; FolderType: OlDefaultFolders): MAPIFolder, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(recipient, arg[1]);
        CtlC.IntVar(FolderType, arg[0]);
        CtlC.CallParMethod(this, 8460, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetSharedDefaultFolder;

    PROCEDURE (this: _NameSpace) Logoff* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8454, NIL);
    END Logoff;

    PROCEDURE (this: _NameSpace) Logon* ((* optional *) Profile: CtlT.Any; Password: CtlT.Any; ShowDialog: CtlT.Any; NewSession: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Profile, arg[3]);
        CtlC.AnyVar(Password, arg[2]);
        CtlC.AnyVar(ShowDialog, arg[1]);
        CtlC.AnyVar(NewSession, arg[0]);
        CtlC.CallParMethod(this, 8453, arg, NIL);
    END Logon;

    PROCEDURE (this: _NameSpace) PickFolder* (): MAPIFolder, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 8462, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END PickFolder;

    PROCEDURE (this: _NameSpace) RefreshRemoteHeaders* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8471, NIL);
    END RefreshRemoteHeaders;

    PROCEDURE (this: _NameSpace) SyncObjects* (): SyncObjects, NEW;
    BEGIN
        RETURN ThisSyncObjects(CtlC.GetAny(this, 8472))
    END SyncObjects;

    PROCEDURE (this: _NameSpace) AddStore* (Store: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Store, arg[0]);
        CtlC.CallParMethod(this, 8473, arg, NIL);
    END AddStore;

    PROCEDURE (this: _NameSpace) RemoveStore* (Folder: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Folder, arg[0]);
        CtlC.CallParMethod(this, 8474, arg, NIL);
    END RemoveStore;


    (* ---------- Recipient, dual ---------- *)

    PROCEDURE (this: Recipient) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Recipient) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Recipient) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Recipient) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 109)
    END Parent;

    PROCEDURE (this: Recipient) Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12291)
    END Address;

    PROCEDURE (this: Recipient) AddressEntry* (): AddressEntry, NEW;
    BEGIN
        RETURN ThisAddressEntry(CtlC.GetAny(this, 121))
    END AddressEntry;

    PROCEDURE (this: Recipient) PUTREFAddressEntry* (p1: AddressEntry), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 121, arg, NIL);
    END PUTREFAddressEntry;

    PROCEDURE (this: Recipient) AutoResponse* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END AutoResponse;

    PROCEDURE (this: Recipient) PUTAutoResponse* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTAutoResponse;

    PROCEDURE (this: Recipient) DisplayType* (): OlDisplayType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 14592)
    END DisplayType;

    PROCEDURE (this: Recipient) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: Recipient) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 91)
    END Index;

    PROCEDURE (this: Recipient) MeetingResponseStatus* (): OlResponseStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END MeetingResponseStatus;

    PROCEDURE (this: Recipient) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: Recipient) Resolved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 100)
    END Resolved;

    PROCEDURE (this: Recipient) TrackingStatus* (): OlTrackingStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END TrackingStatus;

    PROCEDURE (this: Recipient) PUTTrackingStatus* (p1: OlTrackingStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 118, p1)
    END PUTTrackingStatus;

    PROCEDURE (this: Recipient) TrackingStatusTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 119)
    END TrackingStatusTime;

    PROCEDURE (this: Recipient) PUTTrackingStatusTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 119, p1)
    END PUTTrackingStatusTime;

    PROCEDURE (this: Recipient) Type* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3093)
    END Type;

    PROCEDURE (this: Recipient) PUTType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 3093, p1)
    END PUTType;

    PROCEDURE (this: Recipient) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 110, NIL);
    END Delete;

    PROCEDURE (this: Recipient) FreeBusy* (Start: CtlT.OleDate; MinPerChar: INTEGER; (* optional *) CompleteFormat: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.DateVar(Start, arg[2]);
        CtlC.IntVar(MinPerChar, arg[1]);
        CtlC.AnyVar(CompleteFormat, arg[0]);
        CtlC.CallParMethod(this, 111, arg, ret);
        RETURN CtlC.VarStr(ret)
    END FreeBusy;

    PROCEDURE (this: Recipient) Resolve* (): BOOLEAN, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 113, ret);
        RETURN CtlC.VarBool(ret)
    END Resolve;


    (* ---------- AddressEntry, dual ---------- *)

    PROCEDURE (this: AddressEntry) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: AddressEntry) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: AddressEntry) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: AddressEntry) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: AddressEntry) Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12291)
    END Address;

    PROCEDURE (this: AddressEntry) PUTAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12291, p1)
    END PUTAddress;

    PROCEDURE (this: AddressEntry) DisplayType* (): OlDisplayType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 14592)
    END DisplayType;

    PROCEDURE (this: AddressEntry) ID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END ID;

    PROCEDURE (this: AddressEntry) Manager* (): AddressEntry, NEW;
    BEGIN
        RETURN ThisAddressEntry(CtlC.GetAny(this, 771))
    END Manager;

    PROCEDURE (this: AddressEntry) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: AddressEntry) PUTMAPIOBJECT* (p1: CtlT.IUnknown), NEW;
    BEGIN
        CtlC.PutIntfce(this, 61696, p1)
    END PUTMAPIOBJECT;

    PROCEDURE (this: AddressEntry) Members* (): AddressEntries, NEW;
    BEGIN
        RETURN ThisAddressEntries(CtlC.GetAny(this, 772))
    END Members;

    PROCEDURE (this: AddressEntry) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: AddressEntry) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTName;

    PROCEDURE (this: AddressEntry) Type* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12290)
    END Type;

    PROCEDURE (this: AddressEntry) PUTType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12290, p1)
    END PUTType;

    PROCEDURE (this: AddressEntry) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 770, NIL);
    END Delete;

    PROCEDURE (this: AddressEntry) Details* ((* optional *) HWnd: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(HWnd, arg[0]);
        CtlC.CallParMethod(this, 769, arg, NIL);
    END Details;

    PROCEDURE (this: AddressEntry) GetFreeBusy* (Start: CtlT.OleDate; MinPerChar: INTEGER; (* optional *) CompleteFormat: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.DateVar(Start, arg[2]);
        CtlC.IntVar(MinPerChar, arg[1]);
        CtlC.AnyVar(CompleteFormat, arg[0]);
        CtlC.CallParMethod(this, 774, arg, ret);
        RETURN CtlC.VarStr(ret)
    END GetFreeBusy;

    PROCEDURE (this: AddressEntry) Update* ((* optional *) MakePermanent: CtlT.Any; Refresh: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(MakePermanent, arg[1]);
        CtlC.AnyVar(Refresh, arg[0]);
        CtlC.CallParMethod(this, 768, arg, NIL);
    END Update;

    PROCEDURE (this: AddressEntry) UpdateFreeBusy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 775, NIL);
    END UpdateFreeBusy;


    (* ---------- AddressEntries, dual ---------- *)

    PROCEDURE (this: AddressEntries) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: AddressEntries) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: AddressEntries) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: AddressEntries) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: AddressEntries) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: AddressEntries) Item* (Index: CtlT.Any): AddressEntry, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisAddressEntry(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: AddressEntries) RawTable* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 90)
    END RawTable;

    PROCEDURE (this: AddressEntries) Add* (Type: ARRAY OF CHAR; (* optional *) Name: CtlT.Any; Address: CtlT.Any): AddressEntry, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Type, arg[2]);
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(Address, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN ThisAddressEntry(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: AddressEntries) GetFirst* (): AddressEntry, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 86, ret);
        RETURN ThisAddressEntry(CtlC.VarAny(ret))
    END GetFirst;

    PROCEDURE (this: AddressEntries) GetLast* (): AddressEntry, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 88, ret);
        RETURN ThisAddressEntry(CtlC.VarAny(ret))
    END GetLast;

    PROCEDURE (this: AddressEntries) GetNext* (): AddressEntry, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 87, ret);
        RETURN ThisAddressEntry(CtlC.VarAny(ret))
    END GetNext;

    PROCEDURE (this: AddressEntries) GetPrevious* (): AddressEntry, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 89, ret);
        RETURN ThisAddressEntry(CtlC.VarAny(ret))
    END GetPrevious;

    PROCEDURE (this: AddressEntries) Sort* ((* optional *) Property: CtlT.Any; Order: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Property, arg[1]);
        CtlC.AnyVar(Order, arg[0]);
        CtlC.CallParMethod(this, 97, arg, NIL);
    END Sort;


    (* ---------- _Folders, dual ---------- *)

    PROCEDURE (this: _Folders) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _Folders) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _Folders) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _Folders) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _Folders) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: _Folders) Item* (Index: CtlT.Any): MAPIFolder, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _Folders) RawTable* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 90)
    END RawTable;

    PROCEDURE (this: _Folders) Add* (Name: ARRAY OF CHAR; (* optional *) Type: CtlT.Any): MAPIFolder, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: _Folders) GetFirst* (): MAPIFolder, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 86, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetFirst;

    PROCEDURE (this: _Folders) GetLast* (): MAPIFolder, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 88, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetLast;

    PROCEDURE (this: _Folders) GetNext* (): MAPIFolder, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 87, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetNext;

    PROCEDURE (this: _Folders) GetPrevious* (): MAPIFolder, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 89, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetPrevious;

    PROCEDURE (this: _Folders) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- MAPIFolder, dual ---------- *)

    PROCEDURE (this: MAPIFolder) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: MAPIFolder) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: MAPIFolder) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: MAPIFolder) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: MAPIFolder) DefaultItemType* (): OlItemType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12550)
    END DefaultItemType;

    PROCEDURE (this: MAPIFolder) DefaultMessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12551)
    END DefaultMessageClass;

    PROCEDURE (this: MAPIFolder) Description* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12292)
    END Description;

    PROCEDURE (this: MAPIFolder) PUTDescription* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12292, p1)
    END PUTDescription;

    PROCEDURE (this: MAPIFolder) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: MAPIFolder) Folders* (): _Folders, NEW;
    BEGIN
        RETURN This_Folders(CtlC.GetAny(this, 8451))
    END Folders;

    PROCEDURE (this: MAPIFolder) Items* (): _Items, NEW;
    BEGIN
        RETURN This_Items(CtlC.GetAny(this, 12544))
    END Items;

    PROCEDURE (this: MAPIFolder) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: MAPIFolder) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTName;

    PROCEDURE (this: MAPIFolder) StoreID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12552)
    END StoreID;

    PROCEDURE (this: MAPIFolder) UnReadItemCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 13827)
    END UnReadItemCount;

    PROCEDURE (this: MAPIFolder) CopyTo* (DestinationFolder: MAPIFolder): MAPIFolder, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestinationFolder, arg[0]);
        CtlC.CallParMethod(this, 61490, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END CopyTo;

    PROCEDURE (this: MAPIFolder) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61509, NIL);
    END Delete;

    PROCEDURE (this: MAPIFolder) Display* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 12548, NIL);
    END Display;

    PROCEDURE (this: MAPIFolder) GetExplorer* ((* optional *) DisplayMode: CtlT.Any): _Explorer, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(DisplayMode, arg[0]);
        CtlC.CallParMethod(this, 12545, arg, ret);
        RETURN This_Explorer(CtlC.VarAny(ret))
    END GetExplorer;

    PROCEDURE (this: MAPIFolder) MoveTo* (DestinationFolder: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestinationFolder, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, NIL);
    END MoveTo;

    PROCEDURE (this: MAPIFolder) UserPermissions* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 12561)
    END UserPermissions;

    PROCEDURE (this: MAPIFolder) WebViewOn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 12562)
    END WebViewOn;

    PROCEDURE (this: MAPIFolder) PUTWebViewOn* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 12562, p1)
    END PUTWebViewOn;

    PROCEDURE (this: MAPIFolder) WebViewURL* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12563)
    END WebViewURL;

    PROCEDURE (this: MAPIFolder) PUTWebViewURL* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12563, p1)
    END PUTWebViewURL;

    PROCEDURE (this: MAPIFolder) WebViewAllowNavigation* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 12564)
    END WebViewAllowNavigation;

    PROCEDURE (this: MAPIFolder) PUTWebViewAllowNavigation* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 12564, p1)
    END PUTWebViewAllowNavigation;

    PROCEDURE (this: MAPIFolder) AddToPFFavorites* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 12565, NIL);
    END AddToPFFavorites;


    (* ---------- _Items, dual ---------- *)

    PROCEDURE (this: _Items) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _Items) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _Items) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _Items) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _Items) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: _Items) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: _Items) RawTable* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 90)
    END RawTable;

    PROCEDURE (this: _Items) IncludeRecurrences* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 206)
    END IncludeRecurrences;

    PROCEDURE (this: _Items) PUTIncludeRecurrences* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 206, p1)
    END PUTIncludeRecurrences;

    PROCEDURE (this: _Items) Add* ((* optional *) Type: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Add;

    PROCEDURE (this: _Items) Find* (Filter: ARRAY OF CHAR): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Filter, arg[0]);
        CtlC.CallParMethod(this, 98, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Find;

    PROCEDURE (this: _Items) FindNext* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 99, ret);
        RETURN CtlC.VarObj(ret)
    END FindNext;

    PROCEDURE (this: _Items) GetFirst* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 86, ret);
        RETURN CtlC.VarObj(ret)
    END GetFirst;

    PROCEDURE (this: _Items) GetLast* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 88, ret);
        RETURN CtlC.VarObj(ret)
    END GetLast;

    PROCEDURE (this: _Items) GetNext* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 87, ret);
        RETURN CtlC.VarObj(ret)
    END GetNext;

    PROCEDURE (this: _Items) GetPrevious* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 89, ret);
        RETURN CtlC.VarObj(ret)
    END GetPrevious;

    PROCEDURE (this: _Items) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;

    PROCEDURE (this: _Items) ResetColumns* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 93, NIL);
    END ResetColumns;

    PROCEDURE (this: _Items) Restrict* (Filter: ARRAY OF CHAR): _Items, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Filter, arg[0]);
        CtlC.CallParMethod(this, 100, arg, ret);
        RETURN This_Items(CtlC.VarAny(ret))
    END Restrict;

    PROCEDURE (this: _Items) SetColumns* (Columns: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Columns, arg[0]);
        CtlC.CallParMethod(this, 92, arg, NIL);
    END SetColumns;

    PROCEDURE (this: _Items) Sort* (Property: ARRAY OF CHAR; (* optional *) Descending: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Property, arg[1]);
        CtlC.AnyVar(Descending, arg[0]);
        CtlC.CallParMethod(this, 97, arg, NIL);
    END Sort;


    (* ---------- _Explorer, dual ---------- *)

    PROCEDURE (this: _Explorer) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _Explorer) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _Explorer) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _Explorer) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _Explorer) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.This_CommandBars(CtlC.GetAny(this, 8448))
    END CommandBars;

    PROCEDURE (this: _Explorer) CurrentFolder* (): MAPIFolder, NEW;
    BEGIN
        RETURN ThisMAPIFolder(CtlC.GetAny(this, 8449))
    END CurrentFolder;

    PROCEDURE (this: _Explorer) PUTREFCurrentFolder* (p1: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 8449, arg, NIL);
    END PUTREFCurrentFolder;

    PROCEDURE (this: _Explorer) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8451, NIL);
    END Close;

    PROCEDURE (this: _Explorer) Display* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8452, NIL);
    END Display;

    PROCEDURE (this: _Explorer) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 8465)
    END Caption;

    PROCEDURE (this: _Explorer) CurrentView* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 8704)
    END CurrentView;

    PROCEDURE (this: _Explorer) PUTCurrentView* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 8704, p1)
    END PUTCurrentView;

    PROCEDURE (this: _Explorer) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8468)
    END Height;

    PROCEDURE (this: _Explorer) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8468, p1)
    END PUTHeight;

    PROCEDURE (this: _Explorer) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8469)
    END Left;

    PROCEDURE (this: _Explorer) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8469, p1)
    END PUTLeft;

    PROCEDURE (this: _Explorer) Panes* (): Panes, NEW;
    BEGIN
        RETURN ThisPanes(CtlC.GetAny(this, 8705))
    END Panes;

    PROCEDURE (this: _Explorer) Selection* (): Selection, NEW;
    BEGIN
        RETURN ThisSelection(CtlC.GetAny(this, 8706))
    END Selection;

    PROCEDURE (this: _Explorer) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8470)
    END Top;

    PROCEDURE (this: _Explorer) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8470, p1)
    END PUTTop;

    PROCEDURE (this: _Explorer) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8471)
    END Width;

    PROCEDURE (this: _Explorer) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8471, p1)
    END PUTWidth;

    PROCEDURE (this: _Explorer) WindowState* (): OlWindowState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8466)
    END WindowState;

    PROCEDURE (this: _Explorer) PUTWindowState* (p1: OlWindowState), NEW;
    BEGIN
        CtlC.PutInt(this, 8466, p1)
    END PUTWindowState;

    PROCEDURE (this: _Explorer) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8467, NIL);
    END Activate;

    PROCEDURE (this: _Explorer) IsPaneVisible* (Pane: OlPane): BOOLEAN, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Pane, arg[0]);
        CtlC.CallParMethod(this, 8707, arg, ret);
        RETURN CtlC.VarBool(ret)
    END IsPaneVisible;

    PROCEDURE (this: _Explorer) ShowPane* (Pane: OlPane; Visible: BOOLEAN), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Pane, arg[1]);
        CtlC.BoolVar(Visible, arg[0]);
        CtlC.CallParMethod(this, 8708, arg, NIL);
    END ShowPane;

    PROCEDURE (this: _Explorer) Views* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 12553)
    END Views;


    (* ---------- Panes, dual ---------- *)

    PROCEDURE (this: Panes) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Panes) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Panes) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Panes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Panes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Panes) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;


    (* ---------- Selection, dual ---------- *)

    PROCEDURE (this: Selection) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Selection) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Selection) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Selection) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Selection) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Selection) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;


    (* ---------- AddressLists, dual ---------- *)

    PROCEDURE (this: AddressLists) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: AddressLists) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: AddressLists) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: AddressLists) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: AddressLists) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: AddressLists) Item* (Index: CtlT.Any): AddressList, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisAddressList(CtlC.VarAny(ret))
    END Item;


    (* ---------- AddressList, dual ---------- *)

    PROCEDURE (this: AddressList) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: AddressList) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: AddressList) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: AddressList) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: AddressList) AddressEntries* (): AddressEntries, NEW;
    BEGIN
        RETURN ThisAddressEntries(CtlC.GetAny(this, 256))
    END AddressEntries;

    PROCEDURE (this: AddressList) ID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END ID;

    PROCEDURE (this: AddressList) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 91)
    END Index;

    PROCEDURE (this: AddressList) IsReadOnly* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61463)
    END IsReadOnly;

    PROCEDURE (this: AddressList) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;


    (* ---------- SyncObjects, dual ---------- *)

    PROCEDURE (this: SyncObjects) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: SyncObjects) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: SyncObjects) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: SyncObjects) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: SyncObjects) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: SyncObjects) Item* (Index: CtlT.Any): SyncObject, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN This_SyncObject(CtlC.VarAny(ret))
    END Item;


    (* ---------- _SyncObject, dual ---------- *)

    PROCEDURE (this: _SyncObject) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _SyncObject) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _SyncObject) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _SyncObject) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _SyncObject) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 8448)
    END Name;

    PROCEDURE (this: _SyncObject) Start* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8449, NIL);
    END Start;

    PROCEDURE (this: _SyncObject) Stop* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8450, NIL);
    END Stop;


    (* ---------- SyncObjectEvents ---------- *)

    PROCEDURE (this: SyncObjectEvents) SyncStart* (), NEW, ABSTRACT;

    PROCEDURE (this: SyncObjectEvents) Progress* (State: OlSyncState; Description: ARRAY OF CHAR; Value: INTEGER; Max: INTEGER), NEW, ABSTRACT;

    PROCEDURE (this: SyncObjectEvents) OnError* (Code: INTEGER; Description: ARRAY OF CHAR), NEW, ABSTRACT;

    PROCEDURE (this: SyncObjectEvents) SyncEnd* (), NEW, ABSTRACT;

    PROCEDURE (this: SyncObjectEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 0, 11); this.SyncStart()
        | 61442: ASSERT(n = 4, 11); this.Progress(CtlC.VarInt(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), CtlC.VarInt(par[0]))
        | 61443: ASSERT(n = 2, 11); this.OnError(CtlC.VarInt(par[1]), CtlC.VarStr(par[0]))
        | 61444: ASSERT(n = 0, 11); this.SyncEnd()
        END
    END Invoke;

    PROCEDURE (this: SyncObjectEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{00063085-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- _Inspector, dual ---------- *)

    PROCEDURE (this: _Inspector) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _Inspector) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _Inspector) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _Inspector) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _Inspector) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.This_CommandBars(CtlC.GetAny(this, 8448))
    END CommandBars;

    PROCEDURE (this: _Inspector) CurrentItem* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 8450)
    END CurrentItem;

    PROCEDURE (this: _Inspector) EditorType* (): OlEditorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8464)
    END EditorType;

    PROCEDURE (this: _Inspector) ModifiedFormPages* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 8454)
    END ModifiedFormPages;

    PROCEDURE (this: _Inspector) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 8451, arg, NIL);
    END Close;

    PROCEDURE (this: _Inspector) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 8452, arg, NIL);
    END Display;

    PROCEDURE (this: _Inspector) HideFormPage* (PageName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PageName, arg[0]);
        CtlC.CallParMethod(this, 8456, arg, NIL);
    END HideFormPage;

    PROCEDURE (this: _Inspector) IsWordMail* (): BOOLEAN, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 8453, ret);
        RETURN CtlC.VarBool(ret)
    END IsWordMail;

    PROCEDURE (this: _Inspector) SetCurrentFormPage* (PageName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PageName, arg[0]);
        CtlC.CallParMethod(this, 8460, arg, NIL);
    END SetCurrentFormPage;

    PROCEDURE (this: _Inspector) ShowFormPage* (PageName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PageName, arg[0]);
        CtlC.CallParMethod(this, 8457, arg, NIL);
    END ShowFormPage;

    PROCEDURE (this: _Inspector) HTMLEditor* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 8462)
    END HTMLEditor;

    PROCEDURE (this: _Inspector) WordEditor* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 8463)
    END WordEditor;

    PROCEDURE (this: _Inspector) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 8465)
    END Caption;

    PROCEDURE (this: _Inspector) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8468)
    END Height;

    PROCEDURE (this: _Inspector) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8468, p1)
    END PUTHeight;

    PROCEDURE (this: _Inspector) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8469)
    END Left;

    PROCEDURE (this: _Inspector) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8469, p1)
    END PUTLeft;

    PROCEDURE (this: _Inspector) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8470)
    END Top;

    PROCEDURE (this: _Inspector) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8470, p1)
    END PUTTop;

    PROCEDURE (this: _Inspector) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8471)
    END Width;

    PROCEDURE (this: _Inspector) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 8471, p1)
    END PUTWidth;

    PROCEDURE (this: _Inspector) WindowState* (): OlWindowState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8466)
    END WindowState;

    PROCEDURE (this: _Inspector) PUTWindowState* (p1: OlWindowState), NEW;
    BEGIN
        CtlC.PutInt(this, 8466, p1)
    END PUTWindowState;

    PROCEDURE (this: _Inspector) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8467, NIL);
    END Activate;


    (* ---------- _Explorers, dual ---------- *)

    PROCEDURE (this: _Explorers) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _Explorers) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _Explorers) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _Explorers) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _Explorers) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: _Explorers) Item* (Index: CtlT.Any): Explorer, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN This_Explorer(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _Explorers) Add* (Folder: CtlT.Any; DisplayMode: OlFolderDisplayMode): _Explorer, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Folder, arg[1]);
        CtlC.IntVar(DisplayMode, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN This_Explorer(CtlC.VarAny(ret))
    END Add;


    (* ---------- ExplorerEvents ---------- *)

    PROCEDURE (this: ExplorerEvents) Activate* (), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) FolderSwitch* (), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) BeforeFolderSwitch* (NewFolder: CtlT.Object; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) ViewSwitch* (), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) BeforeViewSwitch* (NewView: CtlT.Any; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) Deactivate* (), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) SelectionChange* (), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) Close* (), NEW, ABSTRACT;

    PROCEDURE (this: ExplorerEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 0, 11); this.Activate()
        | 61442: ASSERT(n = 0, 11); this.FolderSwitch()
        | 61443: ASSERT(n = 2, 11); this.BeforeFolderSwitch(CtlC.VarObj(par[1]), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61444: ASSERT(n = 0, 11); this.ViewSwitch()
        | 61445: ASSERT(n = 2, 11); this.BeforeViewSwitch(CtlC.VarAny(par[1]), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61446: ASSERT(n = 0, 11); this.Deactivate()
        | 61447: ASSERT(n = 0, 11); this.SelectionChange()
        | 61448: ASSERT(n = 0, 11); this.Close()
        END
    END Invoke;

    PROCEDURE (this: ExplorerEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006304F-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- _Inspectors, dual ---------- *)

    PROCEDURE (this: _Inspectors) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _Inspectors) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _Inspectors) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _Inspectors) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _Inspectors) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: _Inspectors) Item* (Index: CtlT.Any): Inspector, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN This_Inspector(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _Inspectors) Add* (Item: CtlT.Object): _Inspector, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Item, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN This_Inspector(CtlC.VarAny(ret))
    END Add;


    (* ---------- InspectorEvents ---------- *)

    PROCEDURE (this: InspectorEvents) Activate* (), NEW, ABSTRACT;

    PROCEDURE (this: InspectorEvents) Deactivate* (), NEW, ABSTRACT;

    PROCEDURE (this: InspectorEvents) Close* (), NEW, ABSTRACT;

    PROCEDURE (this: InspectorEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 0, 11); this.Activate()
        | 61446: ASSERT(n = 0, 11); this.Deactivate()
        | 61448: ASSERT(n = 0, 11); this.Close()
        END
    END Invoke;

    PROCEDURE (this: InspectorEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006307D-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- Actions, dual ---------- *)

    PROCEDURE (this: Actions) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Actions) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Actions) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Actions) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Actions) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Actions) Item* (Index: CtlT.Any): Action, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisAction(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Actions) Add* (): Action, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 100, ret);
        RETURN ThisAction(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Actions) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 82, arg, NIL);
    END Remove;


    (* ---------- ApplicationEvents ---------- *)

    PROCEDURE (this: ApplicationEvents) ItemSend* (Item: CtlT.Object; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ApplicationEvents) NewMail* (), NEW, ABSTRACT;

    PROCEDURE (this: ApplicationEvents) Reminder* (Item: CtlT.Object), NEW, ABSTRACT;

    PROCEDURE (this: ApplicationEvents) OptionsPagesAdd* (Pages: PropertyPages), NEW, ABSTRACT;

    PROCEDURE (this: ApplicationEvents) Startup* (), NEW, ABSTRACT;

    PROCEDURE (this: ApplicationEvents) Quit* (), NEW, ABSTRACT;

    PROCEDURE (this: ApplicationEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61442: ASSERT(n = 2, 11); this.ItemSend(CtlC.VarObj(par[1]), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61443: ASSERT(n = 0, 11); this.NewMail()
        | 61444: ASSERT(n = 1, 11); this.Reminder(CtlC.VarObj(par[0]))
        | 61445: ASSERT(n = 1, 11); this.OptionsPagesAdd(ThisPropertyPages(CtlC.VarAny(par[0])))
        | 61446: ASSERT(n = 0, 11); this.Startup()
        | 61447: ASSERT(n = 0, 11); this.Quit()
        END
    END Invoke;

    PROCEDURE (this: ApplicationEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006304E-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- PropertyPages, dual ---------- *)

    PROCEDURE (this: PropertyPages) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: PropertyPages) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: PropertyPages) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: PropertyPages) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: PropertyPages) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: PropertyPages) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: PropertyPages) Add* (Page: CtlT.Any; Title: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Page, arg[1]);
        CtlC.StrVar(Title, arg[0]);
        CtlC.CallParMethod(this, 95, arg, NIL);
    END Add;

    PROCEDURE (this: PropertyPages) Remove* (Index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- _AppointmentItem, dual ---------- *)

    PROCEDURE (this: _AppointmentItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _AppointmentItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _AppointmentItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _AppointmentItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _AppointmentItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _AppointmentItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _AppointmentItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _AppointmentItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _AppointmentItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _AppointmentItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _AppointmentItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _AppointmentItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _AppointmentItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _AppointmentItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _AppointmentItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _AppointmentItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _AppointmentItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _AppointmentItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _AppointmentItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _AppointmentItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _AppointmentItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _AppointmentItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _AppointmentItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _AppointmentItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _AppointmentItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _AppointmentItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _AppointmentItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _AppointmentItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _AppointmentItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _AppointmentItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _AppointmentItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _AppointmentItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _AppointmentItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _AppointmentItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _AppointmentItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _AppointmentItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _AppointmentItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _AppointmentItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _AppointmentItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _AppointmentItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _AppointmentItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _AppointmentItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _AppointmentItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _AppointmentItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _AppointmentItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _AppointmentItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _AppointmentItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _AppointmentItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _AppointmentItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _AppointmentItem) AllDayEvent* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33301)
    END AllDayEvent;

    PROCEDURE (this: _AppointmentItem) PUTAllDayEvent* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33301, p1)
    END PUTAllDayEvent;

    PROCEDURE (this: _AppointmentItem) BusyStatus* (): OlBusyStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33285)
    END BusyStatus;

    PROCEDURE (this: _AppointmentItem) PUTBusyStatus* (p1: OlBusyStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 33285, p1)
    END PUTBusyStatus;

    PROCEDURE (this: _AppointmentItem) Duration* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33299)
    END Duration;

    PROCEDURE (this: _AppointmentItem) PUTDuration* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33299, p1)
    END PUTDuration;

    PROCEDURE (this: _AppointmentItem) End* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33294)
    END End;

    PROCEDURE (this: _AppointmentItem) PUTEnd* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33294, p1)
    END PUTEnd;

    PROCEDURE (this: _AppointmentItem) IsOnlineMeeting* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33344)
    END IsOnlineMeeting;

    PROCEDURE (this: _AppointmentItem) PUTIsOnlineMeeting* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33344, p1)
    END PUTIsOnlineMeeting;

    PROCEDURE (this: _AppointmentItem) IsRecurring* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33315)
    END IsRecurring;

    PROCEDURE (this: _AppointmentItem) Location* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33288)
    END Location;

    PROCEDURE (this: _AppointmentItem) PUTLocation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33288, p1)
    END PUTLocation;

    PROCEDURE (this: _AppointmentItem) MeetingStatus* (): OlMeetingStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33303)
    END MeetingStatus;

    PROCEDURE (this: _AppointmentItem) PUTMeetingStatus* (p1: OlMeetingStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 33303, p1)
    END PUTMeetingStatus;

    PROCEDURE (this: _AppointmentItem) NetMeetingAutoStart* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33348)
    END NetMeetingAutoStart;

    PROCEDURE (this: _AppointmentItem) PUTNetMeetingAutoStart* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33348, p1)
    END PUTNetMeetingAutoStart;

    PROCEDURE (this: _AppointmentItem) NetMeetingOrganizerAlias* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33347)
    END NetMeetingOrganizerAlias;

    PROCEDURE (this: _AppointmentItem) PUTNetMeetingOrganizerAlias* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33347, p1)
    END PUTNetMeetingOrganizerAlias;

    PROCEDURE (this: _AppointmentItem) NetMeetingServer* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33346)
    END NetMeetingServer;

    PROCEDURE (this: _AppointmentItem) PUTNetMeetingServer* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33346, p1)
    END PUTNetMeetingServer;

    PROCEDURE (this: _AppointmentItem) NetMeetingType* (): OlNetMeetingType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33345)
    END NetMeetingType;

    PROCEDURE (this: _AppointmentItem) PUTNetMeetingType* (p1: OlNetMeetingType), NEW;
    BEGIN
        CtlC.PutInt(this, 33345, p1)
    END PUTNetMeetingType;

    PROCEDURE (this: _AppointmentItem) OptionalAttendees* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3587)
    END OptionalAttendees;

    PROCEDURE (this: _AppointmentItem) PUTOptionalAttendees* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3587, p1)
    END PUTOptionalAttendees;

    PROCEDURE (this: _AppointmentItem) Organizer* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 66)
    END Organizer;

    PROCEDURE (this: _AppointmentItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _AppointmentItem) RecurrenceState* (): OlRecurrenceState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 62789)
    END RecurrenceState;

    PROCEDURE (this: _AppointmentItem) ReminderMinutesBeforeStart* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34049)
    END ReminderMinutesBeforeStart;

    PROCEDURE (this: _AppointmentItem) PUTReminderMinutesBeforeStart* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 34049, p1)
    END PUTReminderMinutesBeforeStart;

    PROCEDURE (this: _AppointmentItem) ReminderOverrideDefault* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34076)
    END ReminderOverrideDefault;

    PROCEDURE (this: _AppointmentItem) PUTReminderOverrideDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34076, p1)
    END PUTReminderOverrideDefault;

    PROCEDURE (this: _AppointmentItem) ReminderPlaySound* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34078)
    END ReminderPlaySound;

    PROCEDURE (this: _AppointmentItem) PUTReminderPlaySound* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34078, p1)
    END PUTReminderPlaySound;

    PROCEDURE (this: _AppointmentItem) ReminderSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34051)
    END ReminderSet;

    PROCEDURE (this: _AppointmentItem) PUTReminderSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34051, p1)
    END PUTReminderSet;

    PROCEDURE (this: _AppointmentItem) ReminderSoundFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34079)
    END ReminderSoundFile;

    PROCEDURE (this: _AppointmentItem) PUTReminderSoundFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34079, p1)
    END PUTReminderSoundFile;

    PROCEDURE (this: _AppointmentItem) ReplyTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33312)
    END ReplyTime;

    PROCEDURE (this: _AppointmentItem) PUTReplyTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33312, p1)
    END PUTReplyTime;

    PROCEDURE (this: _AppointmentItem) RequiredAttendees* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3588)
    END RequiredAttendees;

    PROCEDURE (this: _AppointmentItem) PUTRequiredAttendees* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3588, p1)
    END PUTRequiredAttendees;

    PROCEDURE (this: _AppointmentItem) Resources* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3586)
    END Resources;

    PROCEDURE (this: _AppointmentItem) PUTResources* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3586, p1)
    END PUTResources;

    PROCEDURE (this: _AppointmentItem) ResponseRequested* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 99)
    END ResponseRequested;

    PROCEDURE (this: _AppointmentItem) PUTResponseRequested* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 99, p1)
    END PUTResponseRequested;

    PROCEDURE (this: _AppointmentItem) ResponseStatus* (): OlResponseStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33304)
    END ResponseStatus;

    PROCEDURE (this: _AppointmentItem) Start* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33293)
    END Start;

    PROCEDURE (this: _AppointmentItem) PUTStart* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33293, p1)
    END PUTStart;

    PROCEDURE (this: _AppointmentItem) ClearRecurrencePattern* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61605, NIL);
    END ClearRecurrencePattern;

    PROCEDURE (this: _AppointmentItem) ForwardAsVcal* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 62791, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END ForwardAsVcal;

    PROCEDURE (this: _AppointmentItem) GetRecurrencePattern* (): RecurrencePattern, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61604, ret);
        RETURN ThisRecurrencePattern(CtlC.VarAny(ret))
    END GetRecurrencePattern;

    PROCEDURE (this: _AppointmentItem) Respond* (Response: OlMeetingResponse; (* optional *) fNoUI: CtlT.Any; fAdditionalTextDialog: CtlT.Any): MeetingItem, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Response, arg[2]);
        CtlC.AnyVar(fNoUI, arg[1]);
        CtlC.AnyVar(fAdditionalTextDialog, arg[0]);
        CtlC.CallParMethod(this, 62722, arg, ret);
        RETURN This_MeetingItem(CtlC.VarAny(ret))
    END Respond;

    PROCEDURE (this: _AppointmentItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;

    PROCEDURE (this: _AppointmentItem) NetMeetingDocPathName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33351)
    END NetMeetingDocPathName;

    PROCEDURE (this: _AppointmentItem) PUTNetMeetingDocPathName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33351, p1)
    END PUTNetMeetingDocPathName;

    PROCEDURE (this: _AppointmentItem) NetShowURL* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33352)
    END NetShowURL;

    PROCEDURE (this: _AppointmentItem) PUTNetShowURL* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33352, p1)
    END PUTNetShowURL;

    PROCEDURE (this: _AppointmentItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;

    PROCEDURE (this: _AppointmentItem) ConferenceServerAllowExternal* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33350)
    END ConferenceServerAllowExternal;

    PROCEDURE (this: _AppointmentItem) PUTConferenceServerAllowExternal* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33350, p1)
    END PUTConferenceServerAllowExternal;

    PROCEDURE (this: _AppointmentItem) ConferenceServerPassword* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33353)
    END ConferenceServerPassword;

    PROCEDURE (this: _AppointmentItem) PUTConferenceServerPassword* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33353, p1)
    END PUTConferenceServerPassword;


    (* ---------- Attachments, dual ---------- *)

    PROCEDURE (this: Attachments) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Attachments) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Attachments) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Attachments) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Attachments) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Attachments) Item* (Index: CtlT.Any): Attachment, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisAttachment(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Attachments) Add* (Source: CtlT.Any; (* optional *) Type: CtlT.Any; Position: CtlT.Any; DisplayName: CtlT.Any): Attachment, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Source, arg[3]);
        CtlC.AnyVar(Type, arg[2]);
        CtlC.AnyVar(Position, arg[1]);
        CtlC.AnyVar(DisplayName, arg[0]);
        CtlC.CallParMethod(this, 101, arg, ret);
        RETURN ThisAttachment(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Attachments) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- Attachment, dual ---------- *)

    PROCEDURE (this: Attachment) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Attachment) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Attachment) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Attachment) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 113)
    END Parent;

    PROCEDURE (this: Attachment) DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END DisplayName;

    PROCEDURE (this: Attachment) PUTDisplayName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTDisplayName;

    PROCEDURE (this: Attachment) FileName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14084)
    END FileName;

    PROCEDURE (this: Attachment) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 91)
    END Index;

    PROCEDURE (this: Attachment) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: Attachment) PathName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14088)
    END PathName;

    PROCEDURE (this: Attachment) Position* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 114)
    END Position;

    PROCEDURE (this: Attachment) PUTPosition* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 114, p1)
    END PUTPosition;

    PROCEDURE (this: Attachment) Type* (): OlAttachmentType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 14085)
    END Type;

    PROCEDURE (this: Attachment) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 105, NIL);
    END Delete;

    PROCEDURE (this: Attachment) SaveAsFile* (Path: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[0]);
        CtlC.CallParMethod(this, 104, arg, NIL);
    END SaveAsFile;


    (* ---------- FormDescription, dual ---------- *)

    PROCEDURE (this: FormDescription) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: FormDescription) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: FormDescription) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: FormDescription) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: FormDescription) Category* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 13060)
    END Category;

    PROCEDURE (this: FormDescription) PUTCategory* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 13060, p1)
    END PUTCategory;

    PROCEDURE (this: FormDescription) CategorySub* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 13061)
    END CategorySub;

    PROCEDURE (this: FormDescription) PUTCategorySub* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 13061, p1)
    END PUTCategorySub;

    PROCEDURE (this: FormDescription) Comment* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12292)
    END Comment;

    PROCEDURE (this: FormDescription) PUTComment* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12292, p1)
    END PUTComment;

    PROCEDURE (this: FormDescription) ContactName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 13059)
    END ContactName;

    PROCEDURE (this: FormDescription) PUTContactName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 13059, p1)
    END PUTContactName;

    PROCEDURE (this: FormDescription) DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END DisplayName;

    PROCEDURE (this: FormDescription) PUTDisplayName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTDisplayName;

    PROCEDURE (this: FormDescription) Hidden* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 13063)
    END Hidden;

    PROCEDURE (this: FormDescription) PUTHidden* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 13063, p1)
    END PUTHidden;

    PROCEDURE (this: FormDescription) Icon* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 4093)
    END Icon;

    PROCEDURE (this: FormDescription) PUTIcon* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 4093, p1)
    END PUTIcon;

    PROCEDURE (this: FormDescription) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 102)
    END Locked;

    PROCEDURE (this: FormDescription) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 102, p1)
    END PUTLocked;

    PROCEDURE (this: FormDescription) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: FormDescription) MiniIcon* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 4092)
    END MiniIcon;

    PROCEDURE (this: FormDescription) PUTMiniIcon* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 4092, p1)
    END PUTMiniIcon;

    PROCEDURE (this: FormDescription) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61469)
    END Name;

    PROCEDURE (this: FormDescription) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61469, p1)
    END PUTName;

    PROCEDURE (this: FormDescription) Number* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END Number;

    PROCEDURE (this: FormDescription) PUTNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTNumber;

    PROCEDURE (this: FormDescription) OneOff* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 101)
    END OneOff;

    PROCEDURE (this: FormDescription) PUTOneOff* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 101, p1)
    END PUTOneOff;

    PROCEDURE (this: FormDescription) Password* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END Password;

    PROCEDURE (this: FormDescription) PUTPassword* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTPassword;

    PROCEDURE (this: FormDescription) ScriptText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 109)
    END ScriptText;

    PROCEDURE (this: FormDescription) Template* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END Template;

    PROCEDURE (this: FormDescription) PUTTemplate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTTemplate;

    PROCEDURE (this: FormDescription) UseWordMail* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 105)
    END UseWordMail;

    PROCEDURE (this: FormDescription) PUTUseWordMail* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 105, p1)
    END PUTUseWordMail;

    PROCEDURE (this: FormDescription) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 13057)
    END Version;

    PROCEDURE (this: FormDescription) PUTVersion* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 13057, p1)
    END PUTVersion;

    PROCEDURE (this: FormDescription) PublishForm* (Registry: OlFormRegistry; (* optional *) Folder: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Registry, arg[1]);
        CtlC.AnyVar(Folder, arg[0]);
        CtlC.CallParMethod(this, 107, arg, NIL);
    END PublishForm;


    (* ---------- UserProperties, dual ---------- *)

    PROCEDURE (this: UserProperties) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: UserProperties) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: UserProperties) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: UserProperties) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: UserProperties) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: UserProperties) Item* (Index: CtlT.Any): UserProperty, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisUserProperty(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: UserProperties) Add* (Name: ARRAY OF CHAR; Type: OlUserPropertyType; (* optional *) AddToFolderFields: CtlT.Any; DisplayFormat: CtlT.Any): UserProperty, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[3]);
        CtlC.IntVar(Type, arg[2]);
        CtlC.AnyVar(AddToFolderFields, arg[1]);
        CtlC.AnyVar(DisplayFormat, arg[0]);
        CtlC.CallParMethod(this, 102, arg, ret);
        RETURN ThisUserProperty(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: UserProperties) Find* (Name: ARRAY OF CHAR; (* optional *) Custom: CtlT.Any): UserProperty, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Custom, arg[0]);
        CtlC.CallParMethod(this, 103, arg, ret);
        RETURN ThisUserProperty(CtlC.VarAny(ret))
    END Find;

    PROCEDURE (this: UserProperties) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 82, arg, NIL);
    END Remove;


    (* ---------- UserProperty, dual ---------- *)

    PROCEDURE (this: UserProperty) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: UserProperty) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: UserProperty) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: UserProperty) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: UserProperty) Formula* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END Formula;

    PROCEDURE (this: UserProperty) PUTFormula* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTFormula;

    PROCEDURE (this: UserProperty) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END Name;

    PROCEDURE (this: UserProperty) Type* (): OlUserPropertyType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END Type;

    PROCEDURE (this: UserProperty) ValidationFormula* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 104)
    END ValidationFormula;

    PROCEDURE (this: UserProperty) PUTValidationFormula* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 104, p1)
    END PUTValidationFormula;

    PROCEDURE (this: UserProperty) ValidationText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 105)
    END ValidationText;

    PROCEDURE (this: UserProperty) PUTValidationText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 105, p1)
    END PUTValidationText;

    PROCEDURE (this: UserProperty) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: UserProperty) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: UserProperty) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 108, NIL);
    END Delete;


    (* ---------- Recipients, dual ---------- *)

    PROCEDURE (this: Recipients) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Recipients) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Recipients) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Recipients) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Recipients) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Recipients) Item* (Index: CtlT.Any): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Recipients) Add* (Name: ARRAY OF CHAR): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 111, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Recipients) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;

    PROCEDURE (this: Recipients) ResolveAll* (): BOOLEAN, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 126, ret);
        RETURN CtlC.VarBool(ret)
    END ResolveAll;


    (* ---------- _MailItem, dual ---------- *)

    PROCEDURE (this: _MailItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _MailItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _MailItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _MailItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _MailItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _MailItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _MailItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _MailItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _MailItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _MailItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _MailItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _MailItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _MailItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _MailItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _MailItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _MailItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _MailItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _MailItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _MailItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _MailItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _MailItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _MailItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _MailItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _MailItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _MailItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _MailItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _MailItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _MailItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _MailItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _MailItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _MailItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _MailItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _MailItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _MailItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _MailItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _MailItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _MailItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _MailItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _MailItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _MailItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _MailItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _MailItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _MailItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _MailItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _MailItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _MailItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _MailItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _MailItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _MailItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _MailItem) AlternateRecipientAllowed* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 2)
    END AlternateRecipientAllowed;

    PROCEDURE (this: _MailItem) PUTAlternateRecipientAllowed* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 2, p1)
    END PUTAlternateRecipientAllowed;

    PROCEDURE (this: _MailItem) AutoForwarded* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END AutoForwarded;

    PROCEDURE (this: _MailItem) PUTAutoForwarded* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTAutoForwarded;

    PROCEDURE (this: _MailItem) BCC* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3586)
    END BCC;

    PROCEDURE (this: _MailItem) PUTBCC* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3586, p1)
    END PUTBCC;

    PROCEDURE (this: _MailItem) CC* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3587)
    END CC;

    PROCEDURE (this: _MailItem) PUTCC* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3587, p1)
    END PUTCC;

    PROCEDURE (this: _MailItem) DeferredDeliveryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 15)
    END DeferredDeliveryTime;

    PROCEDURE (this: _MailItem) PUTDeferredDeliveryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 15, p1)
    END PUTDeferredDeliveryTime;

    PROCEDURE (this: _MailItem) DeleteAfterSubmit* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3585)
    END DeleteAfterSubmit;

    PROCEDURE (this: _MailItem) PUTDeleteAfterSubmit* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3585, p1)
    END PUTDeleteAfterSubmit;

    PROCEDURE (this: _MailItem) ExpiryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 21)
    END ExpiryTime;

    PROCEDURE (this: _MailItem) PUTExpiryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 21, p1)
    END PUTExpiryTime;

    PROCEDURE (this: _MailItem) FlagDueBy* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 48)
    END FlagDueBy;

    PROCEDURE (this: _MailItem) PUTFlagDueBy* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 48, p1)
    END PUTFlagDueBy;

    PROCEDURE (this: _MailItem) FlagRequest* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34096)
    END FlagRequest;

    PROCEDURE (this: _MailItem) PUTFlagRequest* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34096, p1)
    END PUTFlagRequest;

    PROCEDURE (this: _MailItem) FlagStatus* (): OlFlagStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4240)
    END FlagStatus;

    PROCEDURE (this: _MailItem) PUTFlagStatus* (p1: OlFlagStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 4240, p1)
    END PUTFlagStatus;

    PROCEDURE (this: _MailItem) HTMLBody* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 62468)
    END HTMLBody;

    PROCEDURE (this: _MailItem) PUTHTMLBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 62468, p1)
    END PUTHTMLBody;

    PROCEDURE (this: _MailItem) OriginatorDeliveryReportRequested* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 35)
    END OriginatorDeliveryReportRequested;

    PROCEDURE (this: _MailItem) PUTOriginatorDeliveryReportRequested* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 35, p1)
    END PUTOriginatorDeliveryReportRequested;

    PROCEDURE (this: _MailItem) ReadReceiptRequested* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 41)
    END ReadReceiptRequested;

    PROCEDURE (this: _MailItem) PUTReadReceiptRequested* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 41, p1)
    END PUTReadReceiptRequested;

    PROCEDURE (this: _MailItem) ReceivedByEntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 63)
    END ReceivedByEntryID;

    PROCEDURE (this: _MailItem) ReceivedByName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 64)
    END ReceivedByName;

    PROCEDURE (this: _MailItem) ReceivedOnBehalfOfEntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 67)
    END ReceivedOnBehalfOfEntryID;

    PROCEDURE (this: _MailItem) ReceivedOnBehalfOfName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 68)
    END ReceivedOnBehalfOfName;

    PROCEDURE (this: _MailItem) ReceivedTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 3590)
    END ReceivedTime;

    PROCEDURE (this: _MailItem) RecipientReassignmentProhibited* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 43)
    END RecipientReassignmentProhibited;

    PROCEDURE (this: _MailItem) PUTRecipientReassignmentProhibited* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 43, p1)
    END PUTRecipientReassignmentProhibited;

    PROCEDURE (this: _MailItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _MailItem) ReminderOverrideDefault* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34076)
    END ReminderOverrideDefault;

    PROCEDURE (this: _MailItem) PUTReminderOverrideDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34076, p1)
    END PUTReminderOverrideDefault;

    PROCEDURE (this: _MailItem) ReminderPlaySound* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34078)
    END ReminderPlaySound;

    PROCEDURE (this: _MailItem) PUTReminderPlaySound* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34078, p1)
    END PUTReminderPlaySound;

    PROCEDURE (this: _MailItem) ReminderSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34051)
    END ReminderSet;

    PROCEDURE (this: _MailItem) PUTReminderSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34051, p1)
    END PUTReminderSet;

    PROCEDURE (this: _MailItem) ReminderSoundFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34079)
    END ReminderSoundFile;

    PROCEDURE (this: _MailItem) PUTReminderSoundFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34079, p1)
    END PUTReminderSoundFile;

    PROCEDURE (this: _MailItem) ReminderTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34050)
    END ReminderTime;

    PROCEDURE (this: _MailItem) PUTReminderTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34050, p1)
    END PUTReminderTime;

    PROCEDURE (this: _MailItem) RemoteStatus* (): OlRemoteStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34065)
    END RemoteStatus;

    PROCEDURE (this: _MailItem) PUTRemoteStatus* (p1: OlRemoteStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 34065, p1)
    END PUTRemoteStatus;

    PROCEDURE (this: _MailItem) ReplyRecipientNames* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 80)
    END ReplyRecipientNames;

    PROCEDURE (this: _MailItem) ReplyRecipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 61459))
    END ReplyRecipients;

    PROCEDURE (this: _MailItem) SaveSentMessageFolder* (): MAPIFolder, NEW;
    BEGIN
        RETURN ThisMAPIFolder(CtlC.GetAny(this, 62465))
    END SaveSentMessageFolder;

    PROCEDURE (this: _MailItem) PUTREFSaveSentMessageFolder* (p1: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 62465, arg, NIL);
    END PUTREFSaveSentMessageFolder;

    PROCEDURE (this: _MailItem) SenderName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3098)
    END SenderName;

    PROCEDURE (this: _MailItem) Sent* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62466)
    END Sent;

    PROCEDURE (this: _MailItem) SentOn* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 57)
    END SentOn;

    PROCEDURE (this: _MailItem) SentOnBehalfOfName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 66)
    END SentOnBehalfOfName;

    PROCEDURE (this: _MailItem) PUTSentOnBehalfOfName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 66, p1)
    END PUTSentOnBehalfOfName;

    PROCEDURE (this: _MailItem) Submitted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62467)
    END Submitted;

    PROCEDURE (this: _MailItem) To* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3588)
    END To;

    PROCEDURE (this: _MailItem) PUTTo* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3588, p1)
    END PUTTo;

    PROCEDURE (this: _MailItem) VotingOptions* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61467)
    END VotingOptions;

    PROCEDURE (this: _MailItem) PUTVotingOptions* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61467, p1)
    END PUTVotingOptions;

    PROCEDURE (this: _MailItem) VotingResponse* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34084)
    END VotingResponse;

    PROCEDURE (this: _MailItem) PUTVotingResponse* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34084, p1)
    END PUTVotingResponse;

    PROCEDURE (this: _MailItem) ClearConversationIndex* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63522, NIL);
    END ClearConversationIndex;

    PROCEDURE (this: _MailItem) Forward* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63507, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END Forward;

    PROCEDURE (this: _MailItem) Reply* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63504, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END Reply;

    PROCEDURE (this: _MailItem) ReplyAll* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63505, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END ReplyAll;

    PROCEDURE (this: _MailItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;

    PROCEDURE (this: _MailItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- Links, dual ---------- *)

    PROCEDURE (this: Links) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Links) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Links) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Links) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Links) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Links) Item* (Index: CtlT.Any): Link, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisLink(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Links) Add* (Item: CtlT.Object): Link, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Item, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN ThisLink(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Links) Remove* (Index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- Link, dual ---------- *)

    PROCEDURE (this: Link) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Link) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Link) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Link) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 109)
    END Parent;

    PROCEDURE (this: Link) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: Link) Type* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8449)
    END Type;

    PROCEDURE (this: Link) Item* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 8450)
    END Item;


    (* ---------- ItemEvents ---------- *)

    PROCEDURE (this: ItemEvents) Open* (VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) CustomAction* (Action: CtlT.Object; Response: CtlT.Object; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) CustomPropertyChange* (Name: ARRAY OF CHAR), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) Forward* (Forward: CtlT.Object; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) Close* (VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) PropertyChange* (Name: ARRAY OF CHAR), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) Read* (), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) Reply* (Response: CtlT.Object; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) ReplyAll* (Response: CtlT.Object; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) Send* (VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) Write* (VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) BeforeCheckNames* (VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) AttachmentAdd* (attachment: Attachment), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) AttachmentRead* (attachment: Attachment), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) BeforeAttachmentSave* (attachment: Attachment; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: ItemEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61443: ASSERT(n = 1, 11); this.Open(CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61446: ASSERT(n = 3, 11); this.CustomAction(CtlC.VarObj(par[2]), CtlC.VarObj(par[1]), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61448: ASSERT(n = 1, 11); this.CustomPropertyChange(CtlC.VarStr(par[0]))
        | 62568: ASSERT(n = 2, 11); this.Forward(CtlC.VarObj(par[1]), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61444: ASSERT(n = 1, 11); this.Close(CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61449: ASSERT(n = 1, 11); this.PropertyChange(CtlC.VarStr(par[0]))
        | 61441: ASSERT(n = 0, 11); this.Read()
        | 62566: ASSERT(n = 2, 11); this.Reply(CtlC.VarObj(par[1]), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 62567: ASSERT(n = 2, 11); this.ReplyAll(CtlC.VarObj(par[1]), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61445: ASSERT(n = 1, 11); this.Send(CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61442: ASSERT(n = 1, 11); this.Write(CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61450: ASSERT(n = 1, 11); this.BeforeCheckNames(CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61451: ASSERT(n = 1, 11); this.AttachmentAdd(ThisAttachment(CtlC.VarAny(par[0])))
        | 61452: ASSERT(n = 1, 11); this.AttachmentRead(ThisAttachment(CtlC.VarAny(par[0])))
        | 61453: ASSERT(n = 2, 11); this.BeforeAttachmentSave(ThisAttachment(CtlC.VarAny(par[1])), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        END
    END Invoke;

    PROCEDURE (this: ItemEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006303A-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- RecurrencePattern, dual ---------- *)

    PROCEDURE (this: RecurrencePattern) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: RecurrencePattern) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: RecurrencePattern) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: RecurrencePattern) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: RecurrencePattern) DayOfMonth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4096)
    END DayOfMonth;

    PROCEDURE (this: RecurrencePattern) PUTDayOfMonth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 4096, p1)
    END PUTDayOfMonth;

    PROCEDURE (this: RecurrencePattern) DayOfWeekMask* (): OlDaysOfWeek, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4097)
    END DayOfWeekMask;

    PROCEDURE (this: RecurrencePattern) PUTDayOfWeekMask* (p1: OlDaysOfWeek), NEW;
    BEGIN
        CtlC.PutInt(this, 4097, p1)
    END PUTDayOfWeekMask;

    PROCEDURE (this: RecurrencePattern) Duration* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4109)
    END Duration;

    PROCEDURE (this: RecurrencePattern) PUTDuration* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 4109, p1)
    END PUTDuration;

    PROCEDURE (this: RecurrencePattern) EndTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 4108)
    END EndTime;

    PROCEDURE (this: RecurrencePattern) PUTEndTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 4108, p1)
    END PUTEndTime;

    PROCEDURE (this: RecurrencePattern) Exceptions* (): Exceptions, NEW;
    BEGIN
        RETURN ThisExceptions(CtlC.GetAny(this, 4110))
    END Exceptions;

    PROCEDURE (this: RecurrencePattern) Instance* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4099)
    END Instance;

    PROCEDURE (this: RecurrencePattern) PUTInstance* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 4099, p1)
    END PUTInstance;

    PROCEDURE (this: RecurrencePattern) Interval* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4100)
    END Interval;

    PROCEDURE (this: RecurrencePattern) PUTInterval* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 4100, p1)
    END PUTInterval;

    PROCEDURE (this: RecurrencePattern) MonthOfYear* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4102)
    END MonthOfYear;

    PROCEDURE (this: RecurrencePattern) PUTMonthOfYear* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 4102, p1)
    END PUTMonthOfYear;

    PROCEDURE (this: RecurrencePattern) NoEndDate* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4107)
    END NoEndDate;

    PROCEDURE (this: RecurrencePattern) PUTNoEndDate* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4107, p1)
    END PUTNoEndDate;

    PROCEDURE (this: RecurrencePattern) Occurrences* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4101)
    END Occurrences;

    PROCEDURE (this: RecurrencePattern) PUTOccurrences* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 4101, p1)
    END PUTOccurrences;

    PROCEDURE (this: RecurrencePattern) PatternEndDate* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 4098)
    END PatternEndDate;

    PROCEDURE (this: RecurrencePattern) PUTPatternEndDate* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 4098, p1)
    END PUTPatternEndDate;

    PROCEDURE (this: RecurrencePattern) PatternStartDate* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 4104)
    END PatternStartDate;

    PROCEDURE (this: RecurrencePattern) PUTPatternStartDate* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 4104, p1)
    END PUTPatternStartDate;

    PROCEDURE (this: RecurrencePattern) RecurrenceType* (): OlRecurrenceType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4103)
    END RecurrenceType;

    PROCEDURE (this: RecurrencePattern) PUTRecurrenceType* (p1: OlRecurrenceType), NEW;
    BEGIN
        CtlC.PutInt(this, 4103, p1)
    END PUTRecurrenceType;

    PROCEDURE (this: RecurrencePattern) Regenerate* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4106)
    END Regenerate;

    PROCEDURE (this: RecurrencePattern) PUTRegenerate* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4106, p1)
    END PUTRegenerate;

    PROCEDURE (this: RecurrencePattern) StartTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 4105)
    END StartTime;

    PROCEDURE (this: RecurrencePattern) PUTStartTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 4105, p1)
    END PUTStartTime;

    PROCEDURE (this: RecurrencePattern) GetOccurrence* (StartDate: CtlT.OleDate): AppointmentItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.DateVar(StartDate, arg[0]);
        CtlC.CallParMethod(this, 4111, arg, ret);
        RETURN This_AppointmentItem(CtlC.VarAny(ret))
    END GetOccurrence;


    (* ---------- Exceptions, dual ---------- *)

    PROCEDURE (this: Exceptions) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Exceptions) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Exceptions) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Exceptions) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Exceptions) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Exceptions) Item* (Index: CtlT.Any): Exception, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisException(CtlC.VarAny(ret))
    END Item;


    (* ---------- Exception, dual ---------- *)

    PROCEDURE (this: Exception) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Exception) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Exception) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Exception) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Exception) AppointmentItem* (): AppointmentItem, NEW;
    BEGIN
        RETURN This_AppointmentItem(CtlC.GetAny(this, 8193))
    END AppointmentItem;

    PROCEDURE (this: Exception) Deleted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 8194)
    END Deleted;

    PROCEDURE (this: Exception) OriginalDate* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 8192)
    END OriginalDate;


    (* ---------- _MeetingItem, dual ---------- *)

    PROCEDURE (this: _MeetingItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _MeetingItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _MeetingItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _MeetingItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _MeetingItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _MeetingItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _MeetingItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _MeetingItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _MeetingItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _MeetingItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _MeetingItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _MeetingItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _MeetingItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _MeetingItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _MeetingItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _MeetingItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _MeetingItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _MeetingItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _MeetingItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _MeetingItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _MeetingItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _MeetingItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _MeetingItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _MeetingItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _MeetingItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _MeetingItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _MeetingItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _MeetingItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _MeetingItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _MeetingItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _MeetingItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _MeetingItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _MeetingItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _MeetingItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _MeetingItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _MeetingItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _MeetingItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _MeetingItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _MeetingItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _MeetingItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _MeetingItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _MeetingItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _MeetingItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _MeetingItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _MeetingItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _MeetingItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _MeetingItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _MeetingItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _MeetingItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _MeetingItem) AutoForwarded* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END AutoForwarded;

    PROCEDURE (this: _MeetingItem) PUTAutoForwarded* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTAutoForwarded;

    PROCEDURE (this: _MeetingItem) DeferredDeliveryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 15)
    END DeferredDeliveryTime;

    PROCEDURE (this: _MeetingItem) PUTDeferredDeliveryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 15, p1)
    END PUTDeferredDeliveryTime;

    PROCEDURE (this: _MeetingItem) DeleteAfterSubmit* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3585)
    END DeleteAfterSubmit;

    PROCEDURE (this: _MeetingItem) PUTDeleteAfterSubmit* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3585, p1)
    END PUTDeleteAfterSubmit;

    PROCEDURE (this: _MeetingItem) ExpiryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 21)
    END ExpiryTime;

    PROCEDURE (this: _MeetingItem) PUTExpiryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 21, p1)
    END PUTExpiryTime;

    PROCEDURE (this: _MeetingItem) FlagDueBy* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 48)
    END FlagDueBy;

    PROCEDURE (this: _MeetingItem) PUTFlagDueBy* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 48, p1)
    END PUTFlagDueBy;

    PROCEDURE (this: _MeetingItem) FlagRequest* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34096)
    END FlagRequest;

    PROCEDURE (this: _MeetingItem) PUTFlagRequest* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34096, p1)
    END PUTFlagRequest;

    PROCEDURE (this: _MeetingItem) FlagStatus* (): OlFlagStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4240)
    END FlagStatus;

    PROCEDURE (this: _MeetingItem) PUTFlagStatus* (p1: OlFlagStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 4240, p1)
    END PUTFlagStatus;

    PROCEDURE (this: _MeetingItem) OriginatorDeliveryReportRequested* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 35)
    END OriginatorDeliveryReportRequested;

    PROCEDURE (this: _MeetingItem) PUTOriginatorDeliveryReportRequested* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 35, p1)
    END PUTOriginatorDeliveryReportRequested;

    PROCEDURE (this: _MeetingItem) ReceivedTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 3590)
    END ReceivedTime;

    PROCEDURE (this: _MeetingItem) PUTReceivedTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 3590, p1)
    END PUTReceivedTime;

    PROCEDURE (this: _MeetingItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _MeetingItem) ReminderSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34051)
    END ReminderSet;

    PROCEDURE (this: _MeetingItem) PUTReminderSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34051, p1)
    END PUTReminderSet;

    PROCEDURE (this: _MeetingItem) ReminderTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34050)
    END ReminderTime;

    PROCEDURE (this: _MeetingItem) PUTReminderTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34050, p1)
    END PUTReminderTime;

    PROCEDURE (this: _MeetingItem) ReplyRecipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 61459))
    END ReplyRecipients;

    PROCEDURE (this: _MeetingItem) SaveSentMessageFolder* (): MAPIFolder, NEW;
    BEGIN
        RETURN ThisMAPIFolder(CtlC.GetAny(this, 62465))
    END SaveSentMessageFolder;

    PROCEDURE (this: _MeetingItem) PUTREFSaveSentMessageFolder* (p1: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 62465, arg, NIL);
    END PUTREFSaveSentMessageFolder;

    PROCEDURE (this: _MeetingItem) SenderName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3098)
    END SenderName;

    PROCEDURE (this: _MeetingItem) Sent* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62466)
    END Sent;

    PROCEDURE (this: _MeetingItem) SentOn* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 57)
    END SentOn;

    PROCEDURE (this: _MeetingItem) Submitted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62467)
    END Submitted;

    PROCEDURE (this: _MeetingItem) Forward* (): MeetingItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63507, ret);
        RETURN This_MeetingItem(CtlC.VarAny(ret))
    END Forward;

    PROCEDURE (this: _MeetingItem) GetAssociatedAppointment* (AddToCalendar: BOOLEAN): AppointmentItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToCalendar, arg[0]);
        CtlC.CallParMethod(this, 63328, arg, ret);
        RETURN This_AppointmentItem(CtlC.VarAny(ret))
    END GetAssociatedAppointment;

    PROCEDURE (this: _MeetingItem) Reply* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63504, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END Reply;

    PROCEDURE (this: _MeetingItem) ReplyAll* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63505, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END ReplyAll;

    PROCEDURE (this: _MeetingItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;

    PROCEDURE (this: _MeetingItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _ContactItem, dual ---------- *)

    PROCEDURE (this: _ContactItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _ContactItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _ContactItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _ContactItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _ContactItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _ContactItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _ContactItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _ContactItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _ContactItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _ContactItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _ContactItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _ContactItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _ContactItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _ContactItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _ContactItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _ContactItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _ContactItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _ContactItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _ContactItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _ContactItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _ContactItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _ContactItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _ContactItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _ContactItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _ContactItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _ContactItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _ContactItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _ContactItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _ContactItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _ContactItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _ContactItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _ContactItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _ContactItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _ContactItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _ContactItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _ContactItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _ContactItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _ContactItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _ContactItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _ContactItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _ContactItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _ContactItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _ContactItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _ContactItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _ContactItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _ContactItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _ContactItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _ContactItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _ContactItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _ContactItem) Account* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14848)
    END Account;

    PROCEDURE (this: _ContactItem) PUTAccount* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14848, p1)
    END PUTAccount;

    PROCEDURE (this: _ContactItem) Anniversary* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 14913)
    END Anniversary;

    PROCEDURE (this: _ContactItem) PUTAnniversary* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 14913, p1)
    END PUTAnniversary;

    PROCEDURE (this: _ContactItem) AssistantName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14896)
    END AssistantName;

    PROCEDURE (this: _ContactItem) PUTAssistantName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14896, p1)
    END PUTAssistantName;

    PROCEDURE (this: _ContactItem) AssistantTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14894)
    END AssistantTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTAssistantTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14894, p1)
    END PUTAssistantTelephoneNumber;

    PROCEDURE (this: _ContactItem) Birthday* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 14914)
    END Birthday;

    PROCEDURE (this: _ContactItem) PUTBirthday* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 14914, p1)
    END PUTBirthday;

    PROCEDURE (this: _ContactItem) Business2TelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14875)
    END Business2TelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTBusiness2TelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14875, p1)
    END PUTBusiness2TelephoneNumber;

    PROCEDURE (this: _ContactItem) BusinessAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32795)
    END BusinessAddress;

    PROCEDURE (this: _ContactItem) PUTBusinessAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32795, p1)
    END PUTBusinessAddress;

    PROCEDURE (this: _ContactItem) BusinessAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32838)
    END BusinessAddressCity;

    PROCEDURE (this: _ContactItem) PUTBusinessAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32838, p1)
    END PUTBusinessAddressCity;

    PROCEDURE (this: _ContactItem) BusinessAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32841)
    END BusinessAddressCountry;

    PROCEDURE (this: _ContactItem) PUTBusinessAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32841, p1)
    END PUTBusinessAddressCountry;

    PROCEDURE (this: _ContactItem) BusinessAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32840)
    END BusinessAddressPostalCode;

    PROCEDURE (this: _ContactItem) PUTBusinessAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32840, p1)
    END PUTBusinessAddressPostalCode;

    PROCEDURE (this: _ContactItem) BusinessAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32842)
    END BusinessAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) PUTBusinessAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32842, p1)
    END PUTBusinessAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) BusinessAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32839)
    END BusinessAddressState;

    PROCEDURE (this: _ContactItem) PUTBusinessAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32839, p1)
    END PUTBusinessAddressState;

    PROCEDURE (this: _ContactItem) BusinessAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32837)
    END BusinessAddressStreet;

    PROCEDURE (this: _ContactItem) PUTBusinessAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32837, p1)
    END PUTBusinessAddressStreet;

    PROCEDURE (this: _ContactItem) BusinessFaxNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14884)
    END BusinessFaxNumber;

    PROCEDURE (this: _ContactItem) PUTBusinessFaxNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14884, p1)
    END PUTBusinessFaxNumber;

    PROCEDURE (this: _ContactItem) BusinessHomePage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14929)
    END BusinessHomePage;

    PROCEDURE (this: _ContactItem) PUTBusinessHomePage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14929, p1)
    END PUTBusinessHomePage;

    PROCEDURE (this: _ContactItem) BusinessTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14856)
    END BusinessTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTBusinessTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14856, p1)
    END PUTBusinessTelephoneNumber;

    PROCEDURE (this: _ContactItem) CallbackTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14850)
    END CallbackTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTCallbackTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14850, p1)
    END PUTCallbackTelephoneNumber;

    PROCEDURE (this: _ContactItem) CarTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14878)
    END CarTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTCarTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14878, p1)
    END PUTCarTelephoneNumber;

    PROCEDURE (this: _ContactItem) Children* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32780)
    END Children;

    PROCEDURE (this: _ContactItem) PUTChildren* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32780, p1)
    END PUTChildren;

    PROCEDURE (this: _ContactItem) CompanyAndFullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32792)
    END CompanyAndFullName;

    PROCEDURE (this: _ContactItem) CompanyLastFirstNoSpace* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32818)
    END CompanyLastFirstNoSpace;

    PROCEDURE (this: _ContactItem) CompanyLastFirstSpaceOnly* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32819)
    END CompanyLastFirstSpaceOnly;

    PROCEDURE (this: _ContactItem) CompanyMainTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14935)
    END CompanyMainTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTCompanyMainTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14935, p1)
    END PUTCompanyMainTelephoneNumber;

    PROCEDURE (this: _ContactItem) CompanyName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14870)
    END CompanyName;

    PROCEDURE (this: _ContactItem) PUTCompanyName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14870, p1)
    END PUTCompanyName;

    PROCEDURE (this: _ContactItem) ComputerNetworkName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14921)
    END ComputerNetworkName;

    PROCEDURE (this: _ContactItem) PUTComputerNetworkName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14921, p1)
    END PUTComputerNetworkName;

    PROCEDURE (this: _ContactItem) CustomerID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14922)
    END CustomerID;

    PROCEDURE (this: _ContactItem) PUTCustomerID* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14922, p1)
    END PUTCustomerID;

    PROCEDURE (this: _ContactItem) Department* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14872)
    END Department;

    PROCEDURE (this: _ContactItem) PUTDepartment* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14872, p1)
    END PUTDepartment;

    PROCEDURE (this: _ContactItem) Email1Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32899)
    END Email1Address;

    PROCEDURE (this: _ContactItem) PUTEmail1Address* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32899, p1)
    END PUTEmail1Address;

    PROCEDURE (this: _ContactItem) Email1AddressType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32898)
    END Email1AddressType;

    PROCEDURE (this: _ContactItem) PUTEmail1AddressType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32898, p1)
    END PUTEmail1AddressType;

    PROCEDURE (this: _ContactItem) Email1DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32896)
    END Email1DisplayName;

    PROCEDURE (this: _ContactItem) Email1EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32901)
    END Email1EntryID;

    PROCEDURE (this: _ContactItem) Email2Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32915)
    END Email2Address;

    PROCEDURE (this: _ContactItem) PUTEmail2Address* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32915, p1)
    END PUTEmail2Address;

    PROCEDURE (this: _ContactItem) Email2AddressType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32914)
    END Email2AddressType;

    PROCEDURE (this: _ContactItem) PUTEmail2AddressType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32914, p1)
    END PUTEmail2AddressType;

    PROCEDURE (this: _ContactItem) Email2DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32912)
    END Email2DisplayName;

    PROCEDURE (this: _ContactItem) Email2EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32917)
    END Email2EntryID;

    PROCEDURE (this: _ContactItem) Email3Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32931)
    END Email3Address;

    PROCEDURE (this: _ContactItem) PUTEmail3Address* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32931, p1)
    END PUTEmail3Address;

    PROCEDURE (this: _ContactItem) Email3AddressType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32930)
    END Email3AddressType;

    PROCEDURE (this: _ContactItem) PUTEmail3AddressType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32930, p1)
    END PUTEmail3AddressType;

    PROCEDURE (this: _ContactItem) Email3DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32928)
    END Email3DisplayName;

    PROCEDURE (this: _ContactItem) Email3EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32933)
    END Email3EntryID;

    PROCEDURE (this: _ContactItem) FileAs* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32773)
    END FileAs;

    PROCEDURE (this: _ContactItem) PUTFileAs* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32773, p1)
    END PUTFileAs;

    PROCEDURE (this: _ContactItem) FirstName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14854)
    END FirstName;

    PROCEDURE (this: _ContactItem) PUTFirstName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14854, p1)
    END PUTFirstName;

    PROCEDURE (this: _ContactItem) FTPSite* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14924)
    END FTPSite;

    PROCEDURE (this: _ContactItem) PUTFTPSite* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14924, p1)
    END PUTFTPSite;

    PROCEDURE (this: _ContactItem) FullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END FullName;

    PROCEDURE (this: _ContactItem) PUTFullName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTFullName;

    PROCEDURE (this: _ContactItem) FullNameAndCompany* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32793)
    END FullNameAndCompany;

    PROCEDURE (this: _ContactItem) Gender* (): OlGender, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 14925)
    END Gender;

    PROCEDURE (this: _ContactItem) PUTGender* (p1: OlGender), NEW;
    BEGIN
        CtlC.PutInt(this, 14925, p1)
    END PUTGender;

    PROCEDURE (this: _ContactItem) GovernmentIDNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14855)
    END GovernmentIDNumber;

    PROCEDURE (this: _ContactItem) PUTGovernmentIDNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14855, p1)
    END PUTGovernmentIDNumber;

    PROCEDURE (this: _ContactItem) Hobby* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14915)
    END Hobby;

    PROCEDURE (this: _ContactItem) PUTHobby* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14915, p1)
    END PUTHobby;

    PROCEDURE (this: _ContactItem) Home2TelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14895)
    END Home2TelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTHome2TelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14895, p1)
    END PUTHome2TelephoneNumber;

    PROCEDURE (this: _ContactItem) HomeAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32794)
    END HomeAddress;

    PROCEDURE (this: _ContactItem) PUTHomeAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32794, p1)
    END PUTHomeAddress;

    PROCEDURE (this: _ContactItem) HomeAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14937)
    END HomeAddressCity;

    PROCEDURE (this: _ContactItem) PUTHomeAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14937, p1)
    END PUTHomeAddressCity;

    PROCEDURE (this: _ContactItem) HomeAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14938)
    END HomeAddressCountry;

    PROCEDURE (this: _ContactItem) PUTHomeAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14938, p1)
    END PUTHomeAddressCountry;

    PROCEDURE (this: _ContactItem) HomeAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14939)
    END HomeAddressPostalCode;

    PROCEDURE (this: _ContactItem) PUTHomeAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14939, p1)
    END PUTHomeAddressPostalCode;

    PROCEDURE (this: _ContactItem) HomeAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14942)
    END HomeAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) PUTHomeAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14942, p1)
    END PUTHomeAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) HomeAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14940)
    END HomeAddressState;

    PROCEDURE (this: _ContactItem) PUTHomeAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14940, p1)
    END PUTHomeAddressState;

    PROCEDURE (this: _ContactItem) HomeAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14941)
    END HomeAddressStreet;

    PROCEDURE (this: _ContactItem) PUTHomeAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14941, p1)
    END PUTHomeAddressStreet;

    PROCEDURE (this: _ContactItem) HomeFaxNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14885)
    END HomeFaxNumber;

    PROCEDURE (this: _ContactItem) PUTHomeFaxNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14885, p1)
    END PUTHomeFaxNumber;

    PROCEDURE (this: _ContactItem) HomeTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14857)
    END HomeTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTHomeTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14857, p1)
    END PUTHomeTelephoneNumber;

    PROCEDURE (this: _ContactItem) Initials* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14858)
    END Initials;

    PROCEDURE (this: _ContactItem) PUTInitials* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14858, p1)
    END PUTInitials;

    PROCEDURE (this: _ContactItem) InternetFreeBusyAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32984)
    END InternetFreeBusyAddress;

    PROCEDURE (this: _ContactItem) PUTInternetFreeBusyAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32984, p1)
    END PUTInternetFreeBusyAddress;

    PROCEDURE (this: _ContactItem) ISDNNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14893)
    END ISDNNumber;

    PROCEDURE (this: _ContactItem) PUTISDNNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14893, p1)
    END PUTISDNNumber;

    PROCEDURE (this: _ContactItem) JobTitle* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14871)
    END JobTitle;

    PROCEDURE (this: _ContactItem) PUTJobTitle* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14871, p1)
    END PUTJobTitle;

    PROCEDURE (this: _ContactItem) Journal* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 32805)
    END Journal;

    PROCEDURE (this: _ContactItem) PUTJournal* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 32805, p1)
    END PUTJournal;

    PROCEDURE (this: _ContactItem) Language* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14860)
    END Language;

    PROCEDURE (this: _ContactItem) PUTLanguage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14860, p1)
    END PUTLanguage;

    PROCEDURE (this: _ContactItem) LastFirstAndSuffix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32822)
    END LastFirstAndSuffix;

    PROCEDURE (this: _ContactItem) LastFirstNoSpace* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32816)
    END LastFirstNoSpace;

    PROCEDURE (this: _ContactItem) LastFirstNoSpaceCompany* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32820)
    END LastFirstNoSpaceCompany;

    PROCEDURE (this: _ContactItem) LastFirstSpaceOnly* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32817)
    END LastFirstSpaceOnly;

    PROCEDURE (this: _ContactItem) LastFirstSpaceOnlyCompany* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32821)
    END LastFirstSpaceOnlyCompany;

    PROCEDURE (this: _ContactItem) LastName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14865)
    END LastName;

    PROCEDURE (this: _ContactItem) PUTLastName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14865, p1)
    END PUTLastName;

    PROCEDURE (this: _ContactItem) LastNameAndFirstName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32791)
    END LastNameAndFirstName;

    PROCEDURE (this: _ContactItem) MailingAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14869)
    END MailingAddress;

    PROCEDURE (this: _ContactItem) PUTMailingAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14869, p1)
    END PUTMailingAddress;

    PROCEDURE (this: _ContactItem) MailingAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14887)
    END MailingAddressCity;

    PROCEDURE (this: _ContactItem) PUTMailingAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14887, p1)
    END PUTMailingAddressCity;

    PROCEDURE (this: _ContactItem) MailingAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14886)
    END MailingAddressCountry;

    PROCEDURE (this: _ContactItem) PUTMailingAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14886, p1)
    END PUTMailingAddressCountry;

    PROCEDURE (this: _ContactItem) MailingAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14890)
    END MailingAddressPostalCode;

    PROCEDURE (this: _ContactItem) PUTMailingAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14890, p1)
    END PUTMailingAddressPostalCode;

    PROCEDURE (this: _ContactItem) MailingAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14891)
    END MailingAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) PUTMailingAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14891, p1)
    END PUTMailingAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) MailingAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14888)
    END MailingAddressState;

    PROCEDURE (this: _ContactItem) PUTMailingAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14888, p1)
    END PUTMailingAddressState;

    PROCEDURE (this: _ContactItem) MailingAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14889)
    END MailingAddressStreet;

    PROCEDURE (this: _ContactItem) PUTMailingAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14889, p1)
    END PUTMailingAddressStreet;

    PROCEDURE (this: _ContactItem) ManagerName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14926)
    END ManagerName;

    PROCEDURE (this: _ContactItem) PUTManagerName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14926, p1)
    END PUTManagerName;

    PROCEDURE (this: _ContactItem) MiddleName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14916)
    END MiddleName;

    PROCEDURE (this: _ContactItem) PUTMiddleName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14916, p1)
    END PUTMiddleName;

    PROCEDURE (this: _ContactItem) MobileTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14876)
    END MobileTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTMobileTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14876, p1)
    END PUTMobileTelephoneNumber;

    PROCEDURE (this: _ContactItem) NetMeetingAlias* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32863)
    END NetMeetingAlias;

    PROCEDURE (this: _ContactItem) PUTNetMeetingAlias* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32863, p1)
    END PUTNetMeetingAlias;

    PROCEDURE (this: _ContactItem) NetMeetingServer* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32864)
    END NetMeetingServer;

    PROCEDURE (this: _ContactItem) PUTNetMeetingServer* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32864, p1)
    END PUTNetMeetingServer;

    PROCEDURE (this: _ContactItem) NickName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14927)
    END NickName;

    PROCEDURE (this: _ContactItem) PUTNickName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14927, p1)
    END PUTNickName;

    PROCEDURE (this: _ContactItem) OfficeLocation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14873)
    END OfficeLocation;

    PROCEDURE (this: _ContactItem) PUTOfficeLocation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14873, p1)
    END PUTOfficeLocation;

    PROCEDURE (this: _ContactItem) OrganizationalIDNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14864)
    END OrganizationalIDNumber;

    PROCEDURE (this: _ContactItem) PUTOrganizationalIDNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14864, p1)
    END PUTOrganizationalIDNumber;

    PROCEDURE (this: _ContactItem) OtherAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32796)
    END OtherAddress;

    PROCEDURE (this: _ContactItem) PUTOtherAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32796, p1)
    END PUTOtherAddress;

    PROCEDURE (this: _ContactItem) OtherAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14943)
    END OtherAddressCity;

    PROCEDURE (this: _ContactItem) PUTOtherAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14943, p1)
    END PUTOtherAddressCity;

    PROCEDURE (this: _ContactItem) OtherAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14944)
    END OtherAddressCountry;

    PROCEDURE (this: _ContactItem) PUTOtherAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14944, p1)
    END PUTOtherAddressCountry;

    PROCEDURE (this: _ContactItem) OtherAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14945)
    END OtherAddressPostalCode;

    PROCEDURE (this: _ContactItem) PUTOtherAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14945, p1)
    END PUTOtherAddressPostalCode;

    PROCEDURE (this: _ContactItem) OtherAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14948)
    END OtherAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) PUTOtherAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14948, p1)
    END PUTOtherAddressPostOfficeBox;

    PROCEDURE (this: _ContactItem) OtherAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14946)
    END OtherAddressState;

    PROCEDURE (this: _ContactItem) PUTOtherAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14946, p1)
    END PUTOtherAddressState;

    PROCEDURE (this: _ContactItem) OtherAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14947)
    END OtherAddressStreet;

    PROCEDURE (this: _ContactItem) PUTOtherAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14947, p1)
    END PUTOtherAddressStreet;

    PROCEDURE (this: _ContactItem) OtherFaxNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14883)
    END OtherFaxNumber;

    PROCEDURE (this: _ContactItem) PUTOtherFaxNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14883, p1)
    END PUTOtherFaxNumber;

    PROCEDURE (this: _ContactItem) OtherTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14879)
    END OtherTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTOtherTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14879, p1)
    END PUTOtherTelephoneNumber;

    PROCEDURE (this: _ContactItem) PagerNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14881)
    END PagerNumber;

    PROCEDURE (this: _ContactItem) PUTPagerNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14881, p1)
    END PUTPagerNumber;

    PROCEDURE (this: _ContactItem) PersonalHomePage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14928)
    END PersonalHomePage;

    PROCEDURE (this: _ContactItem) PUTPersonalHomePage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14928, p1)
    END PUTPersonalHomePage;

    PROCEDURE (this: _ContactItem) PrimaryTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14874)
    END PrimaryTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTPrimaryTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14874, p1)
    END PUTPrimaryTelephoneNumber;

    PROCEDURE (this: _ContactItem) Profession* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14918)
    END Profession;

    PROCEDURE (this: _ContactItem) PUTProfession* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14918, p1)
    END PUTProfession;

    PROCEDURE (this: _ContactItem) RadioTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14877)
    END RadioTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTRadioTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14877, p1)
    END PUTRadioTelephoneNumber;

    PROCEDURE (this: _ContactItem) ReferredBy* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14919)
    END ReferredBy;

    PROCEDURE (this: _ContactItem) PUTReferredBy* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14919, p1)
    END PUTReferredBy;

    PROCEDURE (this: _ContactItem) SelectedMailingAddress* (): OlMailingAddress, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 32802)
    END SelectedMailingAddress;

    PROCEDURE (this: _ContactItem) PUTSelectedMailingAddress* (p1: OlMailingAddress), NEW;
    BEGIN
        CtlC.PutInt(this, 32802, p1)
    END PUTSelectedMailingAddress;

    PROCEDURE (this: _ContactItem) Spouse* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14920)
    END Spouse;

    PROCEDURE (this: _ContactItem) PUTSpouse* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14920, p1)
    END PUTSpouse;

    PROCEDURE (this: _ContactItem) Suffix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14853)
    END Suffix;

    PROCEDURE (this: _ContactItem) PUTSuffix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14853, p1)
    END PUTSuffix;

    PROCEDURE (this: _ContactItem) TelexNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14892)
    END TelexNumber;

    PROCEDURE (this: _ContactItem) PUTTelexNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14892, p1)
    END PUTTelexNumber;

    PROCEDURE (this: _ContactItem) Title* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14917)
    END Title;

    PROCEDURE (this: _ContactItem) PUTTitle* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14917, p1)
    END PUTTitle;

    PROCEDURE (this: _ContactItem) TTYTDDTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14923)
    END TTYTDDTelephoneNumber;

    PROCEDURE (this: _ContactItem) PUTTTYTDDTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14923, p1)
    END PUTTTYTDDTelephoneNumber;

    PROCEDURE (this: _ContactItem) User1* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32847)
    END User1;

    PROCEDURE (this: _ContactItem) PUTUser1* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32847, p1)
    END PUTUser1;

    PROCEDURE (this: _ContactItem) User2* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32848)
    END User2;

    PROCEDURE (this: _ContactItem) PUTUser2* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32848, p1)
    END PUTUser2;

    PROCEDURE (this: _ContactItem) User3* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32849)
    END User3;

    PROCEDURE (this: _ContactItem) PUTUser3* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32849, p1)
    END PUTUser3;

    PROCEDURE (this: _ContactItem) User4* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32850)
    END User4;

    PROCEDURE (this: _ContactItem) PUTUser4* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32850, p1)
    END PUTUser4;

    PROCEDURE (this: _ContactItem) UserCertificate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32790)
    END UserCertificate;

    PROCEDURE (this: _ContactItem) PUTUserCertificate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32790, p1)
    END PUTUserCertificate;

    PROCEDURE (this: _ContactItem) WebPage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32811)
    END WebPage;

    PROCEDURE (this: _ContactItem) PUTWebPage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32811, p1)
    END PUTWebPage;

    PROCEDURE (this: _ContactItem) YomiCompanyName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32814)
    END YomiCompanyName;

    PROCEDURE (this: _ContactItem) PUTYomiCompanyName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32814, p1)
    END PUTYomiCompanyName;

    PROCEDURE (this: _ContactItem) YomiFirstName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32812)
    END YomiFirstName;

    PROCEDURE (this: _ContactItem) PUTYomiFirstName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32812, p1)
    END PUTYomiFirstName;

    PROCEDURE (this: _ContactItem) YomiLastName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32813)
    END YomiLastName;

    PROCEDURE (this: _ContactItem) PUTYomiLastName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32813, p1)
    END PUTYomiLastName;

    PROCEDURE (this: _ContactItem) ForwardAsVcard* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63649, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END ForwardAsVcard;

    PROCEDURE (this: _ContactItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _DistListItem, dual ---------- *)

    PROCEDURE (this: _DistListItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DistListItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _DistListItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _DistListItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DistListItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DistListItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DistListItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DistListItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DistListItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DistListItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DistListItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DistListItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DistListItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DistListItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DistListItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _DistListItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _DistListItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DistListItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DistListItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DistListItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DistListItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DistListItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DistListItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DistListItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _DistListItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DistListItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DistListItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DistListItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DistListItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DistListItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DistListItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DistListItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DistListItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DistListItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DistListItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DistListItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DistListItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DistListItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DistListItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DistListItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DistListItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DistListItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DistListItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DistListItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DistListItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DistListItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DistListItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DistListItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DistListItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DistListItem) DLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32851)
    END DLName;

    PROCEDURE (this: _DistListItem) PUTDLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32851, p1)
    END PUTDLName;

    PROCEDURE (this: _DistListItem) MemberCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 32843)
    END MemberCount;

    PROCEDURE (this: _DistListItem) CheckSum* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 32844)
    END CheckSum;

    PROCEDURE (this: _DistListItem) Members* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 32853)
    END Members;

    PROCEDURE (this: _DistListItem) PUTMembers* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 32853, p1)
    END PUTMembers;

    PROCEDURE (this: _DistListItem) OneOffMembers* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 32852)
    END OneOffMembers;

    PROCEDURE (this: _DistListItem) PUTOneOffMembers* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 32852, p1)
    END PUTOneOffMembers;

    PROCEDURE (this: _DistListItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;

    PROCEDURE (this: _DistListItem) AddMembers* (recipients: Recipients), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(recipients, arg[0]);
        CtlC.CallParMethod(this, 63744, arg, NIL);
    END AddMembers;

    PROCEDURE (this: _DistListItem) RemoveMembers* (recipients: Recipients), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(recipients, arg[0]);
        CtlC.CallParMethod(this, 63745, arg, NIL);
    END RemoveMembers;

    PROCEDURE (this: _DistListItem) GetMember* (Index: INTEGER): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 63749, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END GetMember;


    (* ---------- _DocumentItem, dual ---------- *)

    PROCEDURE (this: _DocumentItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DocumentItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _DocumentItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _DocumentItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DocumentItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DocumentItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DocumentItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DocumentItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DocumentItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DocumentItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DocumentItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DocumentItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DocumentItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DocumentItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DocumentItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _DocumentItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _DocumentItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DocumentItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DocumentItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DocumentItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DocumentItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DocumentItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DocumentItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DocumentItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _DocumentItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DocumentItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DocumentItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DocumentItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DocumentItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DocumentItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DocumentItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DocumentItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DocumentItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DocumentItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DocumentItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DocumentItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DocumentItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DocumentItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DocumentItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DocumentItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DocumentItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DocumentItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DocumentItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DocumentItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DocumentItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DocumentItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DocumentItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DocumentItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DocumentItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DocumentItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- ExplorersEvents ---------- *)

    PROCEDURE (this: ExplorersEvents) NewExplorer* (Explorer: _Explorer), NEW, ABSTRACT;

    PROCEDURE (this: ExplorersEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 1, 11); this.NewExplorer(This_Explorer(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: ExplorersEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{00063078-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- FoldersEvents ---------- *)

    PROCEDURE (this: FoldersEvents) FolderAdd* (Folder: MAPIFolder), NEW, ABSTRACT;

    PROCEDURE (this: FoldersEvents) FolderChange* (Folder: MAPIFolder), NEW, ABSTRACT;

    PROCEDURE (this: FoldersEvents) FolderRemove* (), NEW, ABSTRACT;

    PROCEDURE (this: FoldersEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 1, 11); this.FolderAdd(ThisMAPIFolder(CtlC.VarAny(par[0])))
        | 61442: ASSERT(n = 1, 11); this.FolderChange(ThisMAPIFolder(CtlC.VarAny(par[0])))
        | 61443: ASSERT(n = 0, 11); this.FolderRemove()
        END
    END Invoke;

    PROCEDURE (this: FoldersEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{00063076-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- InspectorsEvents ---------- *)

    PROCEDURE (this: InspectorsEvents) NewInspector* (Inspector: _Inspector), NEW, ABSTRACT;

    PROCEDURE (this: InspectorsEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 1, 11); this.NewInspector(This_Inspector(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: InspectorsEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{00063079-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- ItemsEvents ---------- *)

    PROCEDURE (this: ItemsEvents) ItemAdd* (Item: CtlT.Object), NEW, ABSTRACT;

    PROCEDURE (this: ItemsEvents) ItemChange* (Item: CtlT.Object), NEW, ABSTRACT;

    PROCEDURE (this: ItemsEvents) ItemRemove* (), NEW, ABSTRACT;

    PROCEDURE (this: ItemsEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 1, 11); this.ItemAdd(CtlC.VarObj(par[0]))
        | 61442: ASSERT(n = 1, 11); this.ItemChange(CtlC.VarObj(par[0]))
        | 61443: ASSERT(n = 0, 11); this.ItemRemove()
        END
    END Invoke;

    PROCEDURE (this: ItemsEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{00063077-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- _JournalItem, dual ---------- *)

    PROCEDURE (this: _JournalItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _JournalItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _JournalItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _JournalItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _JournalItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _JournalItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _JournalItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _JournalItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _JournalItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _JournalItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _JournalItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _JournalItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _JournalItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _JournalItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _JournalItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _JournalItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _JournalItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _JournalItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _JournalItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _JournalItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _JournalItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _JournalItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _JournalItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _JournalItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _JournalItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _JournalItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _JournalItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _JournalItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _JournalItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _JournalItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _JournalItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _JournalItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _JournalItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _JournalItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _JournalItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _JournalItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _JournalItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _JournalItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _JournalItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _JournalItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _JournalItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _JournalItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _JournalItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _JournalItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _JournalItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _JournalItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _JournalItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _JournalItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _JournalItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _JournalItem) ContactNames* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3588)
    END ContactNames;

    PROCEDURE (this: _JournalItem) PUTContactNames* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3588, p1)
    END PUTContactNames;

    PROCEDURE (this: _JournalItem) DocPosted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34577)
    END DocPosted;

    PROCEDURE (this: _JournalItem) PUTDocPosted* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34577, p1)
    END PUTDocPosted;

    PROCEDURE (this: _JournalItem) DocPrinted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34574)
    END DocPrinted;

    PROCEDURE (this: _JournalItem) PUTDocPrinted* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34574, p1)
    END PUTDocPrinted;

    PROCEDURE (this: _JournalItem) DocRouted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34576)
    END DocRouted;

    PROCEDURE (this: _JournalItem) PUTDocRouted* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34576, p1)
    END PUTDocRouted;

    PROCEDURE (this: _JournalItem) DocSaved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34575)
    END DocSaved;

    PROCEDURE (this: _JournalItem) PUTDocSaved* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34575, p1)
    END PUTDocSaved;

    PROCEDURE (this: _JournalItem) Duration* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34567)
    END Duration;

    PROCEDURE (this: _JournalItem) PUTDuration* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 34567, p1)
    END PUTDuration;

    PROCEDURE (this: _JournalItem) End* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34568)
    END End;

    PROCEDURE (this: _JournalItem) PUTEnd* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34568, p1)
    END PUTEnd;

    PROCEDURE (this: _JournalItem) Type* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34560)
    END Type;

    PROCEDURE (this: _JournalItem) PUTType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34560, p1)
    END PUTType;

    PROCEDURE (this: _JournalItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _JournalItem) Start* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34566)
    END Start;

    PROCEDURE (this: _JournalItem) PUTStart* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34566, p1)
    END PUTStart;

    PROCEDURE (this: _JournalItem) Forward* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63507, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END Forward;

    PROCEDURE (this: _JournalItem) Reply* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63504, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END Reply;

    PROCEDURE (this: _JournalItem) ReplyAll* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63505, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END ReplyAll;

    PROCEDURE (this: _JournalItem) StartTimer* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63269, NIL);
    END StartTimer;

    PROCEDURE (this: _JournalItem) StopTimer* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63270, NIL);
    END StopTimer;

    PROCEDURE (this: _JournalItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- NameSpaceEvents ---------- *)

    PROCEDURE (this: NameSpaceEvents) OptionsPagesAdd* (Pages: PropertyPages; Folder: MAPIFolder), NEW, ABSTRACT;

    PROCEDURE (this: NameSpaceEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61445: ASSERT(n = 2, 11); this.OptionsPagesAdd(ThisPropertyPages(CtlC.VarAny(par[1])), ThisMAPIFolder(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: NameSpaceEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006308C-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- _NoteItem, dual ---------- *)

    PROCEDURE (this: _NoteItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _NoteItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _NoteItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _NoteItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _NoteItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _NoteItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _NoteItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _NoteItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _NoteItem) Color* (): OlNoteColor, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35584)
    END Color;

    PROCEDURE (this: _NoteItem) PUTColor* (p1: OlNoteColor), NEW;
    BEGIN
        CtlC.PutInt(this, 35584, p1)
    END PUTColor;

    PROCEDURE (this: _NoteItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _NoteItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _NoteItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _NoteItem) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35587)
    END Height;

    PROCEDURE (this: _NoteItem) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35587, p1)
    END PUTHeight;

    PROCEDURE (this: _NoteItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _NoteItem) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35588)
    END Left;

    PROCEDURE (this: _NoteItem) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35588, p1)
    END PUTLeft;

    PROCEDURE (this: _NoteItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _NoteItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _NoteItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _NoteItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _NoteItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 63392)
    END Subject;

    PROCEDURE (this: _NoteItem) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35589)
    END Top;

    PROCEDURE (this: _NoteItem) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35589, p1)
    END PUTTop;

    PROCEDURE (this: _NoteItem) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35586)
    END Width;

    PROCEDURE (this: _NoteItem) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35586, p1)
    END PUTWidth;

    PROCEDURE (this: _NoteItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _NoteItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _NoteItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _NoteItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _NoteItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _NoteItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _NoteItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _NoteItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _NoteItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- OutlookBarGroup, dual ---------- *)

    PROCEDURE (this: OutlookBarGroup) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: OutlookBarGroup) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: OutlookBarGroup) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: OutlookBarGroup) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: OutlookBarGroup) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: OutlookBarGroup) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTName;

    PROCEDURE (this: OutlookBarGroup) Shortcuts* (): _OutlookBarShortcuts, NEW;
    BEGIN
        RETURN This_OutlookBarShortcuts(CtlC.GetAny(this, 8450))
    END Shortcuts;

    PROCEDURE (this: OutlookBarGroup) ViewType* (): OlOutlookBarViewType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 8451)
    END ViewType;

    PROCEDURE (this: OutlookBarGroup) PUTViewType* (p1: OlOutlookBarViewType), NEW;
    BEGIN
        CtlC.PutInt(this, 8451, p1)
    END PUTViewType;


    (* ---------- _OutlookBarShortcuts, dual ---------- *)

    PROCEDURE (this: _OutlookBarShortcuts) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _OutlookBarShortcuts) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _OutlookBarShortcuts) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _OutlookBarShortcuts) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _OutlookBarShortcuts) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: _OutlookBarShortcuts) Item* (Index: CtlT.Any): OutlookBarShortcut, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisOutlookBarShortcut(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _OutlookBarShortcuts) Add* (Target: CtlT.Any; Name: ARRAY OF CHAR; (* optional *) Index: CtlT.Any): OutlookBarShortcut, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Target, arg[2]);
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN ThisOutlookBarShortcut(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: _OutlookBarShortcuts) Remove* (Index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- OutlookBarShortcut, dual ---------- *)

    PROCEDURE (this: OutlookBarShortcut) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: OutlookBarShortcut) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: OutlookBarShortcut) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: OutlookBarShortcut) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: OutlookBarShortcut) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: OutlookBarShortcut) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTName;

    PROCEDURE (this: OutlookBarShortcut) Target* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 8448)
    END Target;


    (* ---------- _OutlookBarGroups, dual ---------- *)

    PROCEDURE (this: _OutlookBarGroups) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _OutlookBarGroups) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _OutlookBarGroups) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _OutlookBarGroups) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _OutlookBarGroups) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: _OutlookBarGroups) Item* (Index: CtlT.Any): OutlookBarGroup, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisOutlookBarGroup(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _OutlookBarGroups) Add* (Name: ARRAY OF CHAR; (* optional *) Index: CtlT.Any): OutlookBarGroup, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 95, arg, ret);
        RETURN ThisOutlookBarGroup(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: _OutlookBarGroups) Remove* (Index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- OutlookBarGroupsEvents ---------- *)

    PROCEDURE (this: OutlookBarGroupsEvents) GroupAdd* (NewGroup: OutlookBarGroup), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarGroupsEvents) BeforeGroupAdd* (VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarGroupsEvents) BeforeGroupRemove* (Group: OutlookBarGroup; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarGroupsEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 1, 11); this.GroupAdd(ThisOutlookBarGroup(CtlC.VarAny(par[0])))
        | 61442: ASSERT(n = 1, 11); this.BeforeGroupAdd(CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61443: ASSERT(n = 2, 11); this.BeforeGroupRemove(ThisOutlookBarGroup(CtlC.VarAny(par[1])), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        END
    END Invoke;

    PROCEDURE (this: OutlookBarGroupsEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006307B-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- _OutlookBarPane, dual ---------- *)

    PROCEDURE (this: _OutlookBarPane) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _OutlookBarPane) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _OutlookBarPane) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _OutlookBarPane) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _OutlookBarPane) Contents* (): OutlookBarStorage, NEW;
    BEGIN
        RETURN ThisOutlookBarStorage(CtlC.GetAny(this, 8448))
    END Contents;

    PROCEDURE (this: _OutlookBarPane) CurrentGroup* (): OutlookBarGroup, NEW;
    BEGIN
        RETURN ThisOutlookBarGroup(CtlC.GetAny(this, 8449))
    END CurrentGroup;

    PROCEDURE (this: _OutlookBarPane) PUTREFCurrentGroup* (p1: OutlookBarGroup), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 8449, arg, NIL);
    END PUTREFCurrentGroup;

    PROCEDURE (this: _OutlookBarPane) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: _OutlookBarPane) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 8451)
    END Visible;

    PROCEDURE (this: _OutlookBarPane) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 8451, p1)
    END PUTVisible;


    (* ---------- OutlookBarStorage, dual ---------- *)

    PROCEDURE (this: OutlookBarStorage) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: OutlookBarStorage) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: OutlookBarStorage) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: OutlookBarStorage) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: OutlookBarStorage) Groups* (): _OutlookBarGroups, NEW;
    BEGIN
        RETURN This_OutlookBarGroups(CtlC.GetAny(this, 0))
    END Groups;


    (* ---------- OutlookBarPaneEvents ---------- *)

    PROCEDURE (this: OutlookBarPaneEvents) BeforeNavigate* (Shortcut: OutlookBarShortcut; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarPaneEvents) BeforeGroupSwitch* (ToGroup: OutlookBarGroup; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarPaneEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 2, 11); this.BeforeNavigate(ThisOutlookBarShortcut(CtlC.VarAny(par[1])), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61442: ASSERT(n = 2, 11); this.BeforeGroupSwitch(ThisOutlookBarGroup(CtlC.VarAny(par[1])), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        END
    END Invoke;

    PROCEDURE (this: OutlookBarPaneEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006307A-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- OutlookBarShortcutsEvents ---------- *)

    PROCEDURE (this: OutlookBarShortcutsEvents) ShortcutAdd* (NewShortcut: OutlookBarShortcut), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarShortcutsEvents) BeforeShortcutAdd* (VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarShortcutsEvents) BeforeShortcutRemove* (Shortcut: OutlookBarShortcut; VAR Cancel: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: OutlookBarShortcutsEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 1, 11); this.ShortcutAdd(ThisOutlookBarShortcut(CtlC.VarAny(par[0])))
        | 61442: ASSERT(n = 1, 11); this.BeforeShortcutAdd(CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        | 61443: ASSERT(n = 2, 11); this.BeforeShortcutRemove(ThisOutlookBarShortcut(CtlC.VarAny(par[1])), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        END
    END Invoke;

    PROCEDURE (this: OutlookBarShortcutsEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006307C-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- PropertyPageSite, dual ---------- *)

    PROCEDURE (this: PropertyPageSite) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: PropertyPageSite) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: PropertyPageSite) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: PropertyPageSite) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: PropertyPageSite) OnStatusChange* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8448, NIL);
    END OnStatusChange;


    (* ---------- Pages, dual ---------- *)

    PROCEDURE (this: Pages) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Pages) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: Pages) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: Pages) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: Pages) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Pages) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Pages) Add* ((* optional *) Name: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[0]);
        CtlC.CallParMethod(this, 300, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Add;

    PROCEDURE (this: Pages) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 301, arg, NIL);
    END Remove;


    (* ---------- _PostItem, dual ---------- *)

    PROCEDURE (this: _PostItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _PostItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _PostItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _PostItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _PostItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _PostItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _PostItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _PostItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _PostItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _PostItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _PostItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _PostItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _PostItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _PostItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _PostItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _PostItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _PostItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _PostItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _PostItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _PostItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _PostItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _PostItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _PostItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _PostItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _PostItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _PostItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _PostItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _PostItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _PostItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _PostItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _PostItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _PostItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _PostItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _PostItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _PostItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _PostItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _PostItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _PostItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _PostItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _PostItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _PostItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _PostItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _PostItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _PostItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _PostItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _PostItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _PostItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _PostItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _PostItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _PostItem) ExpiryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 21)
    END ExpiryTime;

    PROCEDURE (this: _PostItem) PUTExpiryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 21, p1)
    END PUTExpiryTime;

    PROCEDURE (this: _PostItem) HTMLBody* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 62468)
    END HTMLBody;

    PROCEDURE (this: _PostItem) PUTHTMLBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 62468, p1)
    END PUTHTMLBody;

    PROCEDURE (this: _PostItem) ReceivedTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 3590)
    END ReceivedTime;

    PROCEDURE (this: _PostItem) SenderName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3098)
    END SenderName;

    PROCEDURE (this: _PostItem) SentOn* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 57)
    END SentOn;

    PROCEDURE (this: _PostItem) ClearConversationIndex* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63522, NIL);
    END ClearConversationIndex;

    PROCEDURE (this: _PostItem) Forward* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63507, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END Forward;

    PROCEDURE (this: _PostItem) Post* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Post;

    PROCEDURE (this: _PostItem) Reply* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63504, ret);
        RETURN This_MailItem(CtlC.VarAny(ret))
    END Reply;

    PROCEDURE (this: _PostItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _RemoteItem, dual ---------- *)

    PROCEDURE (this: _RemoteItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _RemoteItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _RemoteItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _RemoteItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _RemoteItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _RemoteItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _RemoteItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _RemoteItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _RemoteItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _RemoteItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _RemoteItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _RemoteItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _RemoteItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _RemoteItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _RemoteItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _RemoteItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _RemoteItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _RemoteItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _RemoteItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _RemoteItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _RemoteItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _RemoteItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _RemoteItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _RemoteItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _RemoteItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _RemoteItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _RemoteItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _RemoteItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _RemoteItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _RemoteItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _RemoteItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _RemoteItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _RemoteItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _RemoteItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _RemoteItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _RemoteItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _RemoteItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _RemoteItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _RemoteItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _RemoteItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _RemoteItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _RemoteItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _RemoteItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _RemoteItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _RemoteItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _RemoteItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _RemoteItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _RemoteItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _RemoteItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _RemoteItem) HasAttachment* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36615)
    END HasAttachment;

    PROCEDURE (this: _RemoteItem) RemoteMessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36610)
    END RemoteMessageClass;

    PROCEDURE (this: _RemoteItem) TransferSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 36613)
    END TransferSize;

    PROCEDURE (this: _RemoteItem) TransferTime* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 36612)
    END TransferTime;

    PROCEDURE (this: _RemoteItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _ReportItem, dual ---------- *)

    PROCEDURE (this: _ReportItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _ReportItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _ReportItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _ReportItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _ReportItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _ReportItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _ReportItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _ReportItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _ReportItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _ReportItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _ReportItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _ReportItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _ReportItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _ReportItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _ReportItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _ReportItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _ReportItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _ReportItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _ReportItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _ReportItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _ReportItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _ReportItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _ReportItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _ReportItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _ReportItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _ReportItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _ReportItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _ReportItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _ReportItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _ReportItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _ReportItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _ReportItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _ReportItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _ReportItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _ReportItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _ReportItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _ReportItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _ReportItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _ReportItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _ReportItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _ReportItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _ReportItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _ReportItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _ReportItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _ReportItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _ReportItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _ReportItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _ReportItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _ReportItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _ReportItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _TaskItem, dual ---------- *)

    PROCEDURE (this: _TaskItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _TaskItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _TaskItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _TaskItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _TaskItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _TaskItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _TaskItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _TaskItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _TaskItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _TaskItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _TaskItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _TaskItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _TaskItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _TaskItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _TaskItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _TaskItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _TaskItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _TaskItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _TaskItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _TaskItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _TaskItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _TaskItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _TaskItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _TaskItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _TaskItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _TaskItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _TaskItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _TaskItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _TaskItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _TaskItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _TaskItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _TaskItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _TaskItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _TaskItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _TaskItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _TaskItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _TaskItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _TaskItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _TaskItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _TaskItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _TaskItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _TaskItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _TaskItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _TaskItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _TaskItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _TaskItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _TaskItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _TaskItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _TaskItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _TaskItem) ActualWork* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33040)
    END ActualWork;

    PROCEDURE (this: _TaskItem) PUTActualWork* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33040, p1)
    END PUTActualWork;

    PROCEDURE (this: _TaskItem) CardData* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33067)
    END CardData;

    PROCEDURE (this: _TaskItem) PUTCardData* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33067, p1)
    END PUTCardData;

    PROCEDURE (this: _TaskItem) Complete* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33052)
    END Complete;

    PROCEDURE (this: _TaskItem) PUTComplete* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33052, p1)
    END PUTComplete;

    PROCEDURE (this: _TaskItem) Contacts* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34106)
    END Contacts;

    PROCEDURE (this: _TaskItem) PUTContacts* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34106, p1)
    END PUTContacts;

    PROCEDURE (this: _TaskItem) ContactNames* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34108)
    END ContactNames;

    PROCEDURE (this: _TaskItem) PUTContactNames* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34108, p1)
    END PUTContactNames;

    PROCEDURE (this: _TaskItem) DateCompleted* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33039)
    END DateCompleted;

    PROCEDURE (this: _TaskItem) PUTDateCompleted* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33039, p1)
    END PUTDateCompleted;

    PROCEDURE (this: _TaskItem) DelegationState* (): OlTaskDelegationState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33066)
    END DelegationState;

    PROCEDURE (this: _TaskItem) Delegator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33057)
    END Delegator;

    PROCEDURE (this: _TaskItem) DueDate* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33029)
    END DueDate;

    PROCEDURE (this: _TaskItem) PUTDueDate* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33029, p1)
    END PUTDueDate;

    PROCEDURE (this: _TaskItem) IsRecurring* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62999)
    END IsRecurring;

    PROCEDURE (this: _TaskItem) Ordinal* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33059)
    END Ordinal;

    PROCEDURE (this: _TaskItem) PUTOrdinal* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33059, p1)
    END PUTOrdinal;

    PROCEDURE (this: _TaskItem) Owner* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33055)
    END Owner;

    PROCEDURE (this: _TaskItem) PUTOwner* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33055, p1)
    END PUTOwner;

    PROCEDURE (this: _TaskItem) Ownership* (): OlTaskOwnership, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33065)
    END Ownership;

    PROCEDURE (this: _TaskItem) PercentComplete* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 63007)
    END PercentComplete;

    PROCEDURE (this: _TaskItem) PUTPercentComplete* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 63007, p1)
    END PUTPercentComplete;

    PROCEDURE (this: _TaskItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _TaskItem) ReminderTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34050)
    END ReminderTime;

    PROCEDURE (this: _TaskItem) PUTReminderTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34050, p1)
    END PUTReminderTime;

    PROCEDURE (this: _TaskItem) ReminderOverrideDefault* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34076)
    END ReminderOverrideDefault;

    PROCEDURE (this: _TaskItem) PUTReminderOverrideDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34076, p1)
    END PUTReminderOverrideDefault;

    PROCEDURE (this: _TaskItem) ReminderPlaySound* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34078)
    END ReminderPlaySound;

    PROCEDURE (this: _TaskItem) PUTReminderPlaySound* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34078, p1)
    END PUTReminderPlaySound;

    PROCEDURE (this: _TaskItem) ReminderSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34051)
    END ReminderSet;

    PROCEDURE (this: _TaskItem) PUTReminderSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34051, p1)
    END PUTReminderSet;

    PROCEDURE (this: _TaskItem) ReminderSoundFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34079)
    END ReminderSoundFile;

    PROCEDURE (this: _TaskItem) PUTReminderSoundFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34079, p1)
    END PUTReminderSoundFile;

    PROCEDURE (this: _TaskItem) ResponseState* (): OlTaskResponse, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 63011)
    END ResponseState;

    PROCEDURE (this: _TaskItem) Role* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33063)
    END Role;

    PROCEDURE (this: _TaskItem) PUTRole* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33063, p1)
    END PUTRole;

    PROCEDURE (this: _TaskItem) SchedulePlusPriority* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33071)
    END SchedulePlusPriority;

    PROCEDURE (this: _TaskItem) PUTSchedulePlusPriority* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33071, p1)
    END PUTSchedulePlusPriority;

    PROCEDURE (this: _TaskItem) StartDate* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33028)
    END StartDate;

    PROCEDURE (this: _TaskItem) PUTStartDate* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33028, p1)
    END PUTStartDate;

    PROCEDURE (this: _TaskItem) Status* (): OlTaskStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33025)
    END Status;

    PROCEDURE (this: _TaskItem) PUTStatus* (p1: OlTaskStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 33025, p1)
    END PUTStatus;

    PROCEDURE (this: _TaskItem) StatusOnCompletionRecipients* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3586)
    END StatusOnCompletionRecipients;

    PROCEDURE (this: _TaskItem) PUTStatusOnCompletionRecipients* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3586, p1)
    END PUTStatusOnCompletionRecipients;

    PROCEDURE (this: _TaskItem) StatusUpdateRecipients* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3587)
    END StatusUpdateRecipients;

    PROCEDURE (this: _TaskItem) PUTStatusUpdateRecipients* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3587, p1)
    END PUTStatusUpdateRecipients;

    PROCEDURE (this: _TaskItem) TeamTask* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33027)
    END TeamTask;

    PROCEDURE (this: _TaskItem) PUTTeamTask* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33027, p1)
    END PUTTeamTask;

    PROCEDURE (this: _TaskItem) TotalWork* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33041)
    END TotalWork;

    PROCEDURE (this: _TaskItem) PUTTotalWork* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33041, p1)
    END PUTTotalWork;

    PROCEDURE (this: _TaskItem) Assign* (): TaskItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63008, ret);
        RETURN This_TaskItem(CtlC.VarAny(ret))
    END Assign;

    PROCEDURE (this: _TaskItem) CancelResponseState* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63010, NIL);
    END CancelResponseState;

    PROCEDURE (this: _TaskItem) ClearRecurrencePattern* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61605, NIL);
    END ClearRecurrencePattern;

    PROCEDURE (this: _TaskItem) GetRecurrencePattern* (): RecurrencePattern, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61604, ret);
        RETURN ThisRecurrencePattern(CtlC.VarAny(ret))
    END GetRecurrencePattern;

    PROCEDURE (this: _TaskItem) MarkComplete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 62989, NIL);
    END MarkComplete;

    PROCEDURE (this: _TaskItem) Respond* (Response: OlTaskResponse; fNoUI: CtlT.Any; fAdditionalTextDialog: CtlT.Any): TaskItem, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Response, arg[2]);
        CtlC.AnyVar(fNoUI, arg[1]);
        CtlC.AnyVar(fAdditionalTextDialog, arg[0]);
        CtlC.CallParMethod(this, 63009, arg, ret);
        RETURN This_TaskItem(CtlC.VarAny(ret))
    END Respond;

    PROCEDURE (this: _TaskItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;

    PROCEDURE (this: _TaskItem) SkipRecurrence* (): BOOLEAN, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63012, ret);
        RETURN CtlC.VarBool(ret)
    END SkipRecurrence;

    PROCEDURE (this: _TaskItem) StatusReport* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 62994, ret);
        RETURN CtlC.VarObj(ret)
    END StatusReport;

    PROCEDURE (this: _TaskItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _TaskRequestAcceptItem, dual ---------- *)

    PROCEDURE (this: _TaskRequestAcceptItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _TaskRequestAcceptItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _TaskRequestAcceptItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _TaskRequestAcceptItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _TaskRequestAcceptItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _TaskRequestAcceptItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _TaskRequestAcceptItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _TaskRequestAcceptItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _TaskRequestAcceptItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _TaskRequestAcceptItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _TaskRequestAcceptItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _TaskRequestAcceptItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _TaskRequestAcceptItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _TaskRequestAcceptItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _TaskRequestAcceptItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _TaskRequestAcceptItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _TaskRequestAcceptItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _TaskRequestAcceptItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _TaskRequestAcceptItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _TaskRequestAcceptItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _TaskRequestAcceptItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _TaskRequestAcceptItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _TaskRequestAcceptItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _TaskRequestAcceptItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _TaskRequestAcceptItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _TaskRequestAcceptItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _TaskRequestAcceptItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _TaskRequestAcceptItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _TaskRequestAcceptItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _TaskRequestAcceptItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _TaskRequestAcceptItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _TaskRequestAcceptItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _TaskRequestAcceptItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _TaskRequestAcceptItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _TaskRequestAcceptItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _TaskRequestAcceptItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _TaskRequestAcceptItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _TaskRequestAcceptItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _TaskRequestAcceptItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _TaskRequestAcceptItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_TaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;

    PROCEDURE (this: _TaskRequestAcceptItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _TaskRequestDeclineItem, dual ---------- *)

    PROCEDURE (this: _TaskRequestDeclineItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _TaskRequestDeclineItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _TaskRequestDeclineItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _TaskRequestDeclineItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _TaskRequestDeclineItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _TaskRequestDeclineItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _TaskRequestDeclineItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _TaskRequestDeclineItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _TaskRequestDeclineItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _TaskRequestDeclineItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _TaskRequestDeclineItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _TaskRequestDeclineItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _TaskRequestDeclineItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _TaskRequestDeclineItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _TaskRequestDeclineItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _TaskRequestDeclineItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _TaskRequestDeclineItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _TaskRequestDeclineItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _TaskRequestDeclineItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _TaskRequestDeclineItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _TaskRequestDeclineItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _TaskRequestDeclineItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _TaskRequestDeclineItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _TaskRequestDeclineItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _TaskRequestDeclineItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _TaskRequestDeclineItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _TaskRequestDeclineItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _TaskRequestDeclineItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _TaskRequestDeclineItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _TaskRequestDeclineItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _TaskRequestDeclineItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _TaskRequestDeclineItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _TaskRequestDeclineItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _TaskRequestDeclineItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _TaskRequestDeclineItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _TaskRequestDeclineItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _TaskRequestDeclineItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _TaskRequestDeclineItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _TaskRequestDeclineItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _TaskRequestDeclineItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_TaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;

    PROCEDURE (this: _TaskRequestDeclineItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _TaskRequestItem, dual ---------- *)

    PROCEDURE (this: _TaskRequestItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _TaskRequestItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _TaskRequestItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _TaskRequestItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _TaskRequestItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _TaskRequestItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _TaskRequestItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _TaskRequestItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _TaskRequestItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _TaskRequestItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _TaskRequestItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _TaskRequestItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _TaskRequestItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _TaskRequestItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _TaskRequestItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _TaskRequestItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _TaskRequestItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _TaskRequestItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _TaskRequestItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _TaskRequestItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _TaskRequestItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _TaskRequestItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _TaskRequestItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _TaskRequestItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _TaskRequestItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _TaskRequestItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _TaskRequestItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _TaskRequestItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _TaskRequestItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _TaskRequestItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _TaskRequestItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _TaskRequestItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _TaskRequestItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _TaskRequestItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _TaskRequestItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _TaskRequestItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _TaskRequestItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _TaskRequestItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _TaskRequestItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _TaskRequestItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _TaskRequestItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _TaskRequestItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _TaskRequestItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _TaskRequestItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _TaskRequestItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _TaskRequestItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _TaskRequestItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _TaskRequestItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _TaskRequestItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _TaskRequestItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_TaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;

    PROCEDURE (this: _TaskRequestItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _TaskRequestUpdateItem, dual ---------- *)

    PROCEDURE (this: _TaskRequestUpdateItem) Application* (): _Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _TaskRequestUpdateItem) Class* (): OlObjectClass, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 61450)
    END Class;

    PROCEDURE (this: _TaskRequestUpdateItem) Session* (): _NameSpace, NEW;
    BEGIN
        RETURN This_NameSpace(CtlC.GetAny(this, 61451))
    END Session;

    PROCEDURE (this: _TaskRequestUpdateItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _TaskRequestUpdateItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _TaskRequestUpdateItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _TaskRequestUpdateItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _TaskRequestUpdateItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _TaskRequestUpdateItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _TaskRequestUpdateItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _TaskRequestUpdateItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _TaskRequestUpdateItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _TaskRequestUpdateItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _TaskRequestUpdateItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _TaskRequestUpdateItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _TaskRequestUpdateItem) GetInspector* (): _Inspector, NEW;
    BEGIN
        RETURN This_Inspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _TaskRequestUpdateItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _TaskRequestUpdateItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _TaskRequestUpdateItem) MAPIOBJECT* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 61696)
    END MAPIOBJECT;

    PROCEDURE (this: _TaskRequestUpdateItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _TaskRequestUpdateItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _TaskRequestUpdateItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _TaskRequestUpdateItem) OutlookInternalVersion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _TaskRequestUpdateItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _TaskRequestUpdateItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _TaskRequestUpdateItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _TaskRequestUpdateItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _TaskRequestUpdateItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _TaskRequestUpdateItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _TaskRequestUpdateItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _TaskRequestUpdateItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _TaskRequestUpdateItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _TaskRequestUpdateItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _TaskRequestUpdateItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _TaskRequestUpdateItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _TaskRequestUpdateItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _TaskRequestUpdateItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _TaskRequestUpdateItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _TaskRequestUpdateItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _TaskRequestUpdateItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_TaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;

    PROCEDURE (this: _TaskRequestUpdateItem) Links* (): Links, NEW;
    BEGIN
        RETURN ThisLinks(CtlC.GetAny(this, 62469))
    END Links;


    (* ---------- _DRecipientControl, hidden ---------- *)

    PROCEDURE (this: _DRecipientControl) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: _DRecipientControl) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: _DRecipientControl) BackColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: _DRecipientControl) PUTBackColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: _DRecipientControl) ForeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: _DRecipientControl) PUTForeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: _DRecipientControl) ReadOnly* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147356664)
    END ReadOnly;

    PROCEDURE (this: _DRecipientControl) PUTReadOnly* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147356664, p1)
    END PUTReadOnly;

    PROCEDURE (this: _DRecipientControl) Font* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -512)
    END Font;

    PROCEDURE (this: _DRecipientControl) PUTFont* (p1: CtlT.Object), NEW;
    BEGIN
        CtlC.PutObj(this, -512, p1)
    END PUTFont;

    PROCEDURE (this: _DRecipientControl) SpecialEffect* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: _DRecipientControl) PUTSpecialEffect* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;


    (* ---------- _DRecipientControlEvents, hidden ---------- *)

    PROCEDURE (this: _DRecipientControlEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        END
    END Invoke;

    PROCEDURE (this: _DRecipientControlEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{D87E7E17-6897-11CE-A6C0-00AA00608FAA}"
    END GetIID;


    (* ---------- _DDocSiteControl, hidden ---------- *)

    PROCEDURE (this: _DDocSiteControl) ReadOnly* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147356664)
    END ReadOnly;

    PROCEDURE (this: _DDocSiteControl) PUTReadOnly* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147356664, p1)
    END PUTReadOnly;


    (* ---------- _DDocSiteControlEvents, hidden ---------- *)

    PROCEDURE (this: _DDocSiteControlEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        END
    END Invoke;

    PROCEDURE (this: _DDocSiteControlEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{50BB9B50-811D-11CE-B565-00AA00608FAA}"
    END GetIID;


    PROCEDURE NewSyncObject* (): _SyncObject;
    BEGIN
        RETURN This_SyncObject(CtlC.NewObj("{00063084-0000-0000-C000-000000000046}"))
    END NewSyncObject;

    PROCEDURE NewExplorer* (): _Explorer;
    BEGIN
        RETURN This_Explorer(CtlC.NewObj("{00063050-0000-0000-C000-000000000046}"))
    END NewExplorer;

    PROCEDURE NewInspector* (): _Inspector;
    BEGIN
        RETURN This_Inspector(CtlC.NewObj("{00063058-0000-0000-C000-000000000046}"))
    END NewInspector;

    PROCEDURE NewMailItem* (): _MailItem;
    BEGIN
        RETURN This_MailItem(CtlC.NewObj("{00061033-0000-0000-C000-000000000046}"))
    END NewMailItem;

    PROCEDURE NewAppointmentItem* (): _AppointmentItem;
    BEGIN
        RETURN This_AppointmentItem(CtlC.NewObj("{00061030-0000-0000-C000-000000000046}"))
    END NewAppointmentItem;

    PROCEDURE NewMeetingItem* (): _MeetingItem;
    BEGIN
        RETURN This_MeetingItem(CtlC.NewObj("{00061036-0000-0000-C000-000000000046}"))
    END NewMeetingItem;

    PROCEDURE NewTaskItem* (): _TaskItem;
    BEGIN
        RETURN This_TaskItem(CtlC.NewObj("{00061032-0000-0000-C000-000000000046}"))
    END NewTaskItem;

    PROCEDURE NewApplication* (): _Application;
    BEGIN
        RETURN This_Application(CtlC.NewObj("{0006F03A-0000-0000-C000-000000000046}"))
    END NewApplication;

    PROCEDURE NewContactItem* (): _ContactItem;
    BEGIN
        RETURN This_ContactItem(CtlC.NewObj("{00061031-0000-0000-C000-000000000046}"))
    END NewContactItem;

    PROCEDURE NewDistListItem* (): _DistListItem;
    BEGIN
        RETURN This_DistListItem(CtlC.NewObj("{0006103C-0000-0000-C000-000000000046}"))
    END NewDistListItem;

    PROCEDURE NewDocumentItem* (): _DocumentItem;
    BEGIN
        RETURN This_DocumentItem(CtlC.NewObj("{00061061-0000-0000-C000-000000000046}"))
    END NewDocumentItem;

    PROCEDURE NewExplorers* (): _Explorers;
    BEGIN
        RETURN This_Explorers(CtlC.NewObj("{00063053-0000-0000-C000-000000000046}"))
    END NewExplorers;

    PROCEDURE NewInspectors* (): _Inspectors;
    BEGIN
        RETURN This_Inspectors(CtlC.NewObj("{00063054-0000-0000-C000-000000000046}"))
    END NewInspectors;

    PROCEDURE NewFolders* (): _Folders;
    BEGIN
        RETURN This_Folders(CtlC.NewObj("{00063051-0000-0000-C000-000000000046}"))
    END NewFolders;

    PROCEDURE NewItems* (): _Items;
    BEGIN
        RETURN This_Items(CtlC.NewObj("{00063052-0000-0000-C000-000000000046}"))
    END NewItems;

    PROCEDURE NewJournalItem* (): _JournalItem;
    BEGIN
        RETURN This_JournalItem(CtlC.NewObj("{00061037-0000-0000-C000-000000000046}"))
    END NewJournalItem;

    PROCEDURE NewNameSpace* (): _NameSpace;
    BEGIN
        RETURN This_NameSpace(CtlC.NewObj("{0006308B-0000-0000-C000-000000000046}"))
    END NewNameSpace;

    PROCEDURE NewNoteItem* (): _NoteItem;
    BEGIN
        RETURN This_NoteItem(CtlC.NewObj("{00061034-0000-0000-C000-000000000046}"))
    END NewNoteItem;

    PROCEDURE NewOutlookBarGroups* (): _OutlookBarGroups;
    BEGIN
        RETURN This_OutlookBarGroups(CtlC.NewObj("{00063056-0000-0000-C000-000000000046}"))
    END NewOutlookBarGroups;

    PROCEDURE NewOutlookBarPane* (): _OutlookBarPane;
    BEGIN
        RETURN This_OutlookBarPane(CtlC.NewObj("{00063055-0000-0000-C000-000000000046}"))
    END NewOutlookBarPane;

    PROCEDURE NewOutlookBarShortcuts* (): _OutlookBarShortcuts;
    BEGIN
        RETURN This_OutlookBarShortcuts(CtlC.NewObj("{00063057-0000-0000-C000-000000000046}"))
    END NewOutlookBarShortcuts;

    PROCEDURE NewPostItem* (): _PostItem;
    BEGIN
        RETURN This_PostItem(CtlC.NewObj("{0006103A-0000-0000-C000-000000000046}"))
    END NewPostItem;

    PROCEDURE NewRemoteItem* (): _RemoteItem;
    BEGIN
        RETURN This_RemoteItem(CtlC.NewObj("{00061060-0000-0000-C000-000000000046}"))
    END NewRemoteItem;

    PROCEDURE NewReportItem* (): _ReportItem;
    BEGIN
        RETURN This_ReportItem(CtlC.NewObj("{00061035-0000-0000-C000-000000000046}"))
    END NewReportItem;

    PROCEDURE NewTaskRequestAcceptItem* (): _TaskRequestAcceptItem;
    BEGIN
        RETURN This_TaskRequestAcceptItem(CtlC.NewObj("{00061052-0000-0000-C000-000000000046}"))
    END NewTaskRequestAcceptItem;

    PROCEDURE NewTaskRequestDeclineItem* (): _TaskRequestDeclineItem;
    BEGIN
        RETURN This_TaskRequestDeclineItem(CtlC.NewObj("{00061053-0000-0000-C000-000000000046}"))
    END NewTaskRequestDeclineItem;

    PROCEDURE NewTaskRequestItem* (): _TaskRequestItem;
    BEGIN
        RETURN This_TaskRequestItem(CtlC.NewObj("{00061050-0000-0000-C000-000000000046}"))
    END NewTaskRequestItem;

    PROCEDURE NewTaskRequestUpdateItem* (): _TaskRequestUpdateItem;
    BEGIN
        RETURN This_TaskRequestUpdateItem(CtlC.NewObj("{00061051-0000-0000-C000-000000000046}"))
    END NewTaskRequestUpdateItem;

    PROCEDURE New_RecipientControl* (): _DRecipientControl;
    BEGIN
        RETURN This_DRecipientControl(CtlC.NewObj("{0006F023-0000-0000-C000-000000000046}"))
    END New_RecipientControl;

    PROCEDURE New_DocSiteControl* (): _DDocSiteControl;
    BEGIN
        RETURN This_DDocSiteControl(CtlC.NewObj("{0006F024-0000-0000-C000-000000000046}"))
    END New_DocSiteControl;

END CtlOutlook9.
