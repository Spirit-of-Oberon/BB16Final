MODULE CtlOutlook8;
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

    (* Microsoft Outlook 8.0 Object Library, help: C:\Program Files\Microsoft Office\Office\VBAOUTL.HLP, id: 0 *)
    (* guid: {00062FFF-0000-0000-C000-000000000046}, lcid: 0, syskind: win32, version: 8.0 *)

    IMPORT CtlT, CtlC, CtlOffice, CtlMSForms;

    CONST
        (* OlAttachmentType *)
            olByValue* = 1;
            olByReference* = 4;
            olEmbeddedItem* = 5;
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
        (* OlFolderDisplayMode *)
            olFolderDisplayNormal* = 0;
            olFolderDisplayFolderOnly* = 1;
            olFolderDisplayNoNavigation* = 2;
        (* OlFormRegistry *)
            olDefaultRegistry* = 0;
            olOrganizationRegistry* = 4;
            olPersonalRegistry* = 2;
            olFolderRegistry* = 3;
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
        (* OlItems *)
            olMailItem* = 0;
            olAppointmentItem* = 1;
            olContactItem* = 2;
            olTaskItem* = 3;
            olJournalItem* = 4;
            olNoteItem* = 5;
            olPostItem* = 6;
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
        (* OlMeetingStatus *)
            olNonMeeting* = 0;
            olMeeting* = 1;
            olMeetingReceived* = 3;
            olMeetingCanceled* = 5;
        (* OlNoteColor *)
            olBlue* = 0;
            olGreen* = 1;
            olPink* = 2;
            olYellow* = 3;
            olWhite* = 4;
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
        (* OlMeetingResponse *)
            olMeetingAccepted* = 3;
            olMeetingDeclined* = 4;
            olMeetingTentative* = 2;
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
        (* OlSensitivity *)
            olNormal* = 0;
            olPersonal* = 1;
            olPrivate* = 2;
            olConfidential* = 3;
        (* OlFlagStatus *)
            olNoFlag* = 0;
            olFlagComplete* = 1;
            olFlagMarked* = 2;
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
            olUpdate* = 1;
            olFinalStatus* = 2;
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
        (* OlActionResponseStyle *)
            olOpen* = 0;
            olSend* = 1;
            olPrompt* = 2;
        (* OlActionShowOn *)
            olDontShow* = 0;
            olMenu* = 1;
            olMenuAndToolbar* = 2;


    TYPE
        OlAttachmentType* = INTEGER;
        OlBusyStatus* = INTEGER;
        OlDaysOfWeek* = INTEGER;
        OlDefaultFolders* = INTEGER;
        OlFolderDisplayMode* = INTEGER;
        OlFormRegistry* = INTEGER;
        OlGender* = INTEGER;
        OlImportance* = INTEGER;
        OlInspectorClose* = INTEGER;
        OlItems* = INTEGER;
        OlJournalRecipientType* = INTEGER;
        OlMailingAddress* = INTEGER;
        OlMailRecipientType* = INTEGER;
        OlMeetingRecipientType* = INTEGER;
        OlMeetingStatus* = INTEGER;
        OlNoteColor* = INTEGER;
        OlRecurrenceType* = INTEGER;
        OlRemoteStatus* = INTEGER;
        OlMeetingResponse* = INTEGER;
        OlResponseStatus* = INTEGER;
        OlSaveAsType* = INTEGER;
        OlSensitivity* = INTEGER;
        OlFlagStatus* = INTEGER;
        OlTaskDelegationState* = INTEGER;
        OlTaskOwnership* = INTEGER;
        OlTaskRecipientType* = INTEGER;
        OlTaskResponse* = INTEGER;
        OlTaskStatus* = INTEGER;
        OlTrackingStatus* = INTEGER;
        OlUserPropertyType* = INTEGER;
        OlActionCopyLike* = INTEGER;
        OlActionReplyStyle* = INTEGER;
        OlActionResponseStyle* = INTEGER;
        OlActionShowOn* = INTEGER;
        _DItemEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        Action* = POINTER TO RECORD (CtlT.Object) END;
        Actions* = POINTER TO RECORD (CtlT.Object) END;
        _DApplication* = POINTER TO RECORD (CtlT.Object) END;
        Application* = _DApplication;
        _DAppointmentItem* = POINTER TO RECORD (CtlT.Object) END;
        AppointmentItem* = _DAppointmentItem;
        Attachment* = POINTER TO RECORD (CtlT.Object) END;
        Attachments* = POINTER TO RECORD (CtlT.Object) END;
        _DContactItem* = POINTER TO RECORD (CtlT.Object) END;
        ContactItem* = _DContactItem;
        Explorer* = POINTER TO RECORD (CtlT.Object) END;
        Folders* = POINTER TO RECORD (CtlT.Object) END;
        FormDescription* = POINTER TO RECORD (CtlT.Object) END;
        Inspector* = POINTER TO RECORD (CtlT.Object) END;
        Items* = POINTER TO RECORD (CtlT.Object) END;
        _DJournalItem* = POINTER TO RECORD (CtlT.Object) END;
        JournalItem* = _DJournalItem;
        _DMailItem* = POINTER TO RECORD (CtlT.Object) END;
        MailItem* = _DMailItem;
        MAPIFolder* = POINTER TO RECORD (CtlT.Object) END;
        _DMeetingCanceledItem* = POINTER TO RECORD (CtlT.Object) END;
        _MeetingCanceledItem* = _DMeetingCanceledItem;
        _DMeetingRequestAcceptedItem* = POINTER TO RECORD (CtlT.Object) END;
        _MeetingRequestAcceptedItem* = _DMeetingRequestAcceptedItem;
        _DMeetingRequestDeclinedItem* = POINTER TO RECORD (CtlT.Object) END;
        _MeetingRequestDeclinedItem* = _DMeetingRequestDeclinedItem;
        _DMeetingRequestItem* = POINTER TO RECORD (CtlT.Object) END;
        MeetingRequestItem* = _DMeetingRequestItem;
        _DMeetingRequestTentativeItem* = POINTER TO RECORD (CtlT.Object) END;
        _MeetingRequestTentativeItem* = _DMeetingRequestTentativeItem;
        NameSpace* = POINTER TO RECORD (CtlT.Object) END;
        _DNoteItem* = POINTER TO RECORD (CtlT.Object) END;
        NoteItem* = _DNoteItem;
        _DOfficeDocumentItem* = POINTER TO RECORD (CtlT.Object) END;
        _OfficeDocumentItem* = _DOfficeDocumentItem;
        Pages* = POINTER TO RECORD (CtlT.Object) END;
        _DPostItem* = POINTER TO RECORD (CtlT.Object) END;
        PostItem* = _DPostItem;
        Recipient* = POINTER TO RECORD (CtlT.Object) END;
        Recipients* = POINTER TO RECORD (CtlT.Object) END;
        RecurrencePattern* = POINTER TO RECORD (CtlT.Object) END;
        _DRemoteItem* = POINTER TO RECORD (CtlT.Object) END;
        RemoteItem* = _DRemoteItem;
        _DReportItem* = POINTER TO RECORD (CtlT.Object) END;
        ReportItem* = _DReportItem;
        _DTaskItem* = POINTER TO RECORD (CtlT.Object) END;
        TaskItem* = _DTaskItem;
        _DTaskRequestAcceptItem* = POINTER TO RECORD (CtlT.Object) END;
        _TaskRequestAcceptItem* = _DTaskRequestAcceptItem;
        _DTaskRequestDeclineItem* = POINTER TO RECORD (CtlT.Object) END;
        _TaskRequestDeclineItem* = _DTaskRequestDeclineItem;
        _DTaskRequestItem* = POINTER TO RECORD (CtlT.Object) END;
        TaskRequestItem* = _DTaskRequestItem;
        _DTaskRequestUpdateItem* = POINTER TO RECORD (CtlT.Object) END;
        _TaskRequestUpdateItem* = _DTaskRequestUpdateItem;
        UserProperties* = POINTER TO RECORD (CtlT.Object) END;
        UserProperty* = POINTER TO RECORD (CtlT.Object) END;
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

    PROCEDURE This_DApplication* (v: CtlT.Any): _DApplication;
        VAR new: _DApplication;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063001-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DApplication;

    PROCEDURE Is_DApplication* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063001-0000-0000-C000-000000000046}")
    END Is_DApplication;

    PROCEDURE This_DAppointmentItem* (v: CtlT.Any): _DAppointmentItem;
        VAR new: _DAppointmentItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063033-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DAppointmentItem;

    PROCEDURE Is_DAppointmentItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063033-0000-0000-C000-000000000046}")
    END Is_DAppointmentItem;

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

    PROCEDURE This_DContactItem* (v: CtlT.Any): _DContactItem;
        VAR new: _DContactItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063021-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DContactItem;

    PROCEDURE Is_DContactItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063021-0000-0000-C000-000000000046}")
    END Is_DContactItem;

    PROCEDURE ThisExplorer* (v: CtlT.Any): Explorer;
        VAR new: Explorer;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063003-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisExplorer;

    PROCEDURE IsExplorer* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063003-0000-0000-C000-000000000046}")
    END IsExplorer;

    PROCEDURE ThisFolders* (v: CtlT.Any): Folders;
        VAR new: Folders;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063040-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFolders;

    PROCEDURE IsFolders* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063040-0000-0000-C000-000000000046}")
    END IsFolders;

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

    PROCEDURE ThisInspector* (v: CtlT.Any): Inspector;
        VAR new: Inspector;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063005-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisInspector;

    PROCEDURE IsInspector* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063005-0000-0000-C000-000000000046}")
    END IsInspector;

    PROCEDURE ThisItems* (v: CtlT.Any): Items;
        VAR new: Items;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063041-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisItems;

    PROCEDURE IsItems* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063041-0000-0000-C000-000000000046}")
    END IsItems;

    PROCEDURE This_DJournalItem* (v: CtlT.Any): _DJournalItem;
        VAR new: _DJournalItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063022-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DJournalItem;

    PROCEDURE Is_DJournalItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063022-0000-0000-C000-000000000046}")
    END Is_DJournalItem;

    PROCEDURE This_DMailItem* (v: CtlT.Any): _DMailItem;
        VAR new: _DMailItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063034-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DMailItem;

    PROCEDURE Is_DMailItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063034-0000-0000-C000-000000000046}")
    END Is_DMailItem;

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

    PROCEDURE This_DMeetingCanceledItem* (v: CtlT.Any): _DMeetingCanceledItem;
        VAR new: _DMeetingCanceledItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063028-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DMeetingCanceledItem;

    PROCEDURE Is_DMeetingCanceledItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063028-0000-0000-C000-000000000046}")
    END Is_DMeetingCanceledItem;

    PROCEDURE This_DMeetingRequestAcceptedItem* (v: CtlT.Any): _DMeetingRequestAcceptedItem;
        VAR new: _DMeetingRequestAcceptedItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063030-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DMeetingRequestAcceptedItem;

    PROCEDURE Is_DMeetingRequestAcceptedItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063030-0000-0000-C000-000000000046}")
    END Is_DMeetingRequestAcceptedItem;

    PROCEDURE This_DMeetingRequestDeclinedItem* (v: CtlT.Any): _DMeetingRequestDeclinedItem;
        VAR new: _DMeetingRequestDeclinedItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063031-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DMeetingRequestDeclinedItem;

    PROCEDURE Is_DMeetingRequestDeclinedItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063031-0000-0000-C000-000000000046}")
    END Is_DMeetingRequestDeclinedItem;

    PROCEDURE This_DMeetingRequestItem* (v: CtlT.Any): _DMeetingRequestItem;
        VAR new: _DMeetingRequestItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063029-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DMeetingRequestItem;

    PROCEDURE Is_DMeetingRequestItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063029-0000-0000-C000-000000000046}")
    END Is_DMeetingRequestItem;

    PROCEDURE This_DMeetingRequestTentativeItem* (v: CtlT.Any): _DMeetingRequestTentativeItem;
        VAR new: _DMeetingRequestTentativeItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063032-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DMeetingRequestTentativeItem;

    PROCEDURE Is_DMeetingRequestTentativeItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063032-0000-0000-C000-000000000046}")
    END Is_DMeetingRequestTentativeItem;

    PROCEDURE ThisNameSpace* (v: CtlT.Any): NameSpace;
        VAR new: NameSpace;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063002-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisNameSpace;

    PROCEDURE IsNameSpace* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063002-0000-0000-C000-000000000046}")
    END IsNameSpace;

    PROCEDURE This_DNoteItem* (v: CtlT.Any): _DNoteItem;
        VAR new: _DNoteItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063025-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DNoteItem;

    PROCEDURE Is_DNoteItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063025-0000-0000-C000-000000000046}")
    END Is_DNoteItem;

    PROCEDURE This_DOfficeDocumentItem* (v: CtlT.Any): _DOfficeDocumentItem;
        VAR new: _DOfficeDocumentItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063020-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DOfficeDocumentItem;

    PROCEDURE Is_DOfficeDocumentItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063020-0000-0000-C000-000000000046}")
    END Is_DOfficeDocumentItem;

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

    PROCEDURE This_DPostItem* (v: CtlT.Any): _DPostItem;
        VAR new: _DPostItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063024-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DPostItem;

    PROCEDURE Is_DPostItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063024-0000-0000-C000-000000000046}")
    END Is_DPostItem;

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

    PROCEDURE This_DRemoteItem* (v: CtlT.Any): _DRemoteItem;
        VAR new: _DRemoteItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063023-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DRemoteItem;

    PROCEDURE Is_DRemoteItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063023-0000-0000-C000-000000000046}")
    END Is_DRemoteItem;

    PROCEDURE This_DReportItem* (v: CtlT.Any): _DReportItem;
        VAR new: _DReportItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063026-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DReportItem;

    PROCEDURE Is_DReportItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063026-0000-0000-C000-000000000046}")
    END Is_DReportItem;

    PROCEDURE This_DTaskItem* (v: CtlT.Any): _DTaskItem;
        VAR new: _DTaskItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063035-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DTaskItem;

    PROCEDURE Is_DTaskItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063035-0000-0000-C000-000000000046}")
    END Is_DTaskItem;

    PROCEDURE This_DTaskRequestAcceptItem* (v: CtlT.Any): _DTaskRequestAcceptItem;
        VAR new: _DTaskRequestAcceptItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063038-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DTaskRequestAcceptItem;

    PROCEDURE Is_DTaskRequestAcceptItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063038-0000-0000-C000-000000000046}")
    END Is_DTaskRequestAcceptItem;

    PROCEDURE This_DTaskRequestDeclineItem* (v: CtlT.Any): _DTaskRequestDeclineItem;
        VAR new: _DTaskRequestDeclineItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063039-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DTaskRequestDeclineItem;

    PROCEDURE Is_DTaskRequestDeclineItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063039-0000-0000-C000-000000000046}")
    END Is_DTaskRequestDeclineItem;

    PROCEDURE This_DTaskRequestItem* (v: CtlT.Any): _DTaskRequestItem;
        VAR new: _DTaskRequestItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063036-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DTaskRequestItem;

    PROCEDURE Is_DTaskRequestItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063036-0000-0000-C000-000000000046}")
    END Is_DTaskRequestItem;

    PROCEDURE This_DTaskRequestUpdateItem* (v: CtlT.Any): _DTaskRequestUpdateItem;
        VAR new: _DTaskRequestUpdateItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00063037-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_DTaskRequestUpdateItem;

    PROCEDURE Is_DTaskRequestUpdateItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00063037-0000-0000-C000-000000000046}")
    END Is_DTaskRequestUpdateItem;

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



    (* ---------- _DItemEvents ---------- *)

    PROCEDURE (this: _DItemEvents) Read* (): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) Write* (): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) Open* (): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) Close* (): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) Send* (): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) Reply* (Response: CtlT.Object): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) ReplyAll* (Response: CtlT.Object): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) Forward* (Forward: CtlT.Object): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) CustomAction* (Action: CtlT.Object; Response: CtlT.Object): BOOLEAN, NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) CustomPropertyChange* (Name: ARRAY OF CHAR), NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) PropertyChange* (Name: ARRAY OF CHAR), NEW, ABSTRACT;

    PROCEDURE (this: _DItemEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 61441: ASSERT(n = 0, 11); CtlC.BoolVar(this.Read(), ret)
        | 61442: ASSERT(n = 0, 11); CtlC.BoolVar(this.Write(), ret)
        | 61443: ASSERT(n = 0, 11); CtlC.BoolVar(this.Open(), ret)
        | 61444: ASSERT(n = 0, 11); CtlC.BoolVar(this.Close(), ret)
        | 61445: ASSERT(n = 0, 11); CtlC.BoolVar(this.Send(), ret)
        | 62566: ASSERT(n = 1, 11); CtlC.BoolVar(this.Reply(CtlC.VarObj(par[0])), ret)
        | 62567: ASSERT(n = 1, 11); CtlC.BoolVar(this.ReplyAll(CtlC.VarObj(par[0])), ret)
        | 62568: ASSERT(n = 1, 11); CtlC.BoolVar(this.Forward(CtlC.VarObj(par[0])), ret)
        | 61446: ASSERT(n = 2, 11); CtlC.BoolVar(this.CustomAction(CtlC.VarObj(par[1]), CtlC.VarObj(par[0])), ret)
        | 61448: ASSERT(n = 1, 11); this.CustomPropertyChange(CtlC.VarStr(par[0]))
        | 61449: ASSERT(n = 1, 11); this.PropertyChange(CtlC.VarStr(par[0]))
        END
    END Invoke;

    PROCEDURE (this: _DItemEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{0006303A-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- Action ---------- *)

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

    PROCEDURE (this: Action) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

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


    (* ---------- Actions ---------- *)

    PROCEDURE (this: Actions) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Actions) Add* (): Action, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 100, ret);
        RETURN ThisAction(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Actions) Item* (Index: CtlT.Any): Action, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisAction(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Actions) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 82, arg, NIL);
    END Remove;


    (* ---------- _DApplication ---------- *)

    PROCEDURE (this: _DApplication) Assistant* (): CtlOffice.Assistant, NEW;
    BEGIN
        RETURN CtlOffice.ThisAssistant(CtlC.GetAny(this, 276))
    END Assistant;

    PROCEDURE (this: _DApplication) ActiveExplorer* (): Explorer, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 273, ret);
        RETURN ThisExplorer(CtlC.VarAny(ret))
    END ActiveExplorer;

    PROCEDURE (this: _DApplication) ActiveInspector* (): Inspector, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 274, ret);
        RETURN ThisInspector(CtlC.VarAny(ret))
    END ActiveInspector;

    PROCEDURE (this: _DApplication) CreateItem* (ItemType: OlItems): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ItemType, arg[0]);
        CtlC.CallParMethod(this, 266, arg, ret);
        RETURN CtlC.VarObj(ret)
    END CreateItem;

    PROCEDURE (this: _DApplication) CreateItemFromTemplate* (TemplatePath: ARRAY OF CHAR; (* optional *) InFolder: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(TemplatePath, arg[1]);
        CtlC.AnyVar(InFolder, arg[0]);
        CtlC.CallParMethod(this, 267, arg, ret);
        RETURN CtlC.VarObj(ret)
    END CreateItemFromTemplate;

    PROCEDURE (this: _DApplication) CreateObject* (ObjectName: ARRAY OF CHAR): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(ObjectName, arg[0]);
        CtlC.CallParMethod(this, 277, arg, ret);
        RETURN CtlC.VarObj(ret)
    END CreateObject;

    PROCEDURE (this: _DApplication) GetNamespace* (Type: ARRAY OF CHAR): NameSpace, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Type, arg[0]);
        CtlC.CallParMethod(this, 272, arg, ret);
        RETURN ThisNameSpace(CtlC.VarAny(ret))
    END GetNamespace;

    PROCEDURE (this: _DApplication) Quit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 275, NIL);
    END Quit;


    (* ---------- _DAppointmentItem ---------- *)

    PROCEDURE (this: _DAppointmentItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DAppointmentItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DAppointmentItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DAppointmentItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DAppointmentItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DAppointmentItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DAppointmentItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DAppointmentItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DAppointmentItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DAppointmentItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DAppointmentItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DAppointmentItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DAppointmentItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DAppointmentItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DAppointmentItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DAppointmentItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DAppointmentItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DAppointmentItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DAppointmentItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DAppointmentItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DAppointmentItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DAppointmentItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DAppointmentItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DAppointmentItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DAppointmentItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DAppointmentItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DAppointmentItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DAppointmentItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DAppointmentItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DAppointmentItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DAppointmentItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DAppointmentItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DAppointmentItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DAppointmentItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DAppointmentItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DAppointmentItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DAppointmentItem) AllDayEvent* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33301)
    END AllDayEvent;

    PROCEDURE (this: _DAppointmentItem) PUTAllDayEvent* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33301, p1)
    END PUTAllDayEvent;

    PROCEDURE (this: _DAppointmentItem) BusyStatus* (): OlBusyStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33285)
    END BusyStatus;

    PROCEDURE (this: _DAppointmentItem) PUTBusyStatus* (p1: OlBusyStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 33285, p1)
    END PUTBusyStatus;

    PROCEDURE (this: _DAppointmentItem) Duration* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33299)
    END Duration;

    PROCEDURE (this: _DAppointmentItem) PUTDuration* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33299, p1)
    END PUTDuration;

    PROCEDURE (this: _DAppointmentItem) End* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33294)
    END End;

    PROCEDURE (this: _DAppointmentItem) PUTEnd* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33294, p1)
    END PUTEnd;

    PROCEDURE (this: _DAppointmentItem) IsRecurring* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33315)
    END IsRecurring;

    PROCEDURE (this: _DAppointmentItem) Location* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33288)
    END Location;

    PROCEDURE (this: _DAppointmentItem) PUTLocation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33288, p1)
    END PUTLocation;

    PROCEDURE (this: _DAppointmentItem) MeetingStatus* (): OlMeetingStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33303)
    END MeetingStatus;

    PROCEDURE (this: _DAppointmentItem) PUTMeetingStatus* (p1: OlMeetingStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 33303, p1)
    END PUTMeetingStatus;

    PROCEDURE (this: _DAppointmentItem) OptionalAttendees* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3587)
    END OptionalAttendees;

    PROCEDURE (this: _DAppointmentItem) PUTOptionalAttendees* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3587, p1)
    END PUTOptionalAttendees;

    PROCEDURE (this: _DAppointmentItem) Organizer* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 66)
    END Organizer;

    PROCEDURE (this: _DAppointmentItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _DAppointmentItem) ReminderMinutesBeforeStart* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34049)
    END ReminderMinutesBeforeStart;

    PROCEDURE (this: _DAppointmentItem) PUTReminderMinutesBeforeStart* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 34049, p1)
    END PUTReminderMinutesBeforeStart;

    PROCEDURE (this: _DAppointmentItem) ReminderOverrideDefault* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34076)
    END ReminderOverrideDefault;

    PROCEDURE (this: _DAppointmentItem) PUTReminderOverrideDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34076, p1)
    END PUTReminderOverrideDefault;

    PROCEDURE (this: _DAppointmentItem) ReminderPlaySound* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34078)
    END ReminderPlaySound;

    PROCEDURE (this: _DAppointmentItem) PUTReminderPlaySound* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34078, p1)
    END PUTReminderPlaySound;

    PROCEDURE (this: _DAppointmentItem) ReminderSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34051)
    END ReminderSet;

    PROCEDURE (this: _DAppointmentItem) PUTReminderSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34051, p1)
    END PUTReminderSet;

    PROCEDURE (this: _DAppointmentItem) ReminderSoundFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34079)
    END ReminderSoundFile;

    PROCEDURE (this: _DAppointmentItem) PUTReminderSoundFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34079, p1)
    END PUTReminderSoundFile;

    PROCEDURE (this: _DAppointmentItem) ReplyTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33312)
    END ReplyTime;

    PROCEDURE (this: _DAppointmentItem) PUTReplyTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33312, p1)
    END PUTReplyTime;

    PROCEDURE (this: _DAppointmentItem) RequiredAttendees* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3588)
    END RequiredAttendees;

    PROCEDURE (this: _DAppointmentItem) PUTRequiredAttendees* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3588, p1)
    END PUTRequiredAttendees;

    PROCEDURE (this: _DAppointmentItem) Resources* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3586)
    END Resources;

    PROCEDURE (this: _DAppointmentItem) PUTResources* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3586, p1)
    END PUTResources;

    PROCEDURE (this: _DAppointmentItem) ResponseRequested* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 99)
    END ResponseRequested;

    PROCEDURE (this: _DAppointmentItem) PUTResponseRequested* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 99, p1)
    END PUTResponseRequested;

    PROCEDURE (this: _DAppointmentItem) ResponseStatus* (): OlResponseStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33304)
    END ResponseStatus;

    PROCEDURE (this: _DAppointmentItem) Start* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33293)
    END Start;

    PROCEDURE (this: _DAppointmentItem) PUTStart* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33293, p1)
    END PUTStart;

    PROCEDURE (this: _DAppointmentItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DAppointmentItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DAppointmentItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DAppointmentItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DAppointmentItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DAppointmentItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DAppointmentItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DAppointmentItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DAppointmentItem) ClearRecurrencePattern* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61605, NIL);
    END ClearRecurrencePattern;

    PROCEDURE (this: _DAppointmentItem) GetRecurrencePattern* (): RecurrencePattern, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61604, ret);
        RETURN ThisRecurrencePattern(CtlC.VarAny(ret))
    END GetRecurrencePattern;

    PROCEDURE (this: _DAppointmentItem) Respond* (Response: OlMeetingResponse; (* optional *) fNoUI: CtlT.Any; fAdditionalTextDialog: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Response, arg[2]);
        CtlC.AnyVar(fNoUI, arg[1]);
        CtlC.AnyVar(fAdditionalTextDialog, arg[0]);
        CtlC.CallParMethod(this, 62722, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Respond;

    PROCEDURE (this: _DAppointmentItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;


    (* ---------- Attachment ---------- *)

    PROCEDURE (this: Attachment) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

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

    PROCEDURE (this: Attachment) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 113)
    END Parent;

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


    (* ---------- Attachments ---------- *)

    PROCEDURE (this: Attachments) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Attachments) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

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

    PROCEDURE (this: Attachments) Item* (Index: CtlT.Any): Attachment, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisAttachment(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Attachments) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- _DContactItem ---------- *)

    PROCEDURE (this: _DContactItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DContactItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DContactItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DContactItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DContactItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DContactItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DContactItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DContactItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DContactItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DContactItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DContactItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DContactItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DContactItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DContactItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DContactItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DContactItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DContactItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DContactItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DContactItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DContactItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DContactItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DContactItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DContactItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DContactItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DContactItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DContactItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DContactItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DContactItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DContactItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DContactItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DContactItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DContactItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DContactItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DContactItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DContactItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DContactItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DContactItem) Account* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14848)
    END Account;

    PROCEDURE (this: _DContactItem) PUTAccount* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14848, p1)
    END PUTAccount;

    PROCEDURE (this: _DContactItem) Anniversary* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 14913)
    END Anniversary;

    PROCEDURE (this: _DContactItem) PUTAnniversary* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 14913, p1)
    END PUTAnniversary;

    PROCEDURE (this: _DContactItem) AssistantName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14896)
    END AssistantName;

    PROCEDURE (this: _DContactItem) PUTAssistantName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14896, p1)
    END PUTAssistantName;

    PROCEDURE (this: _DContactItem) AssistantTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14894)
    END AssistantTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTAssistantTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14894, p1)
    END PUTAssistantTelephoneNumber;

    PROCEDURE (this: _DContactItem) Birthday* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 14914)
    END Birthday;

    PROCEDURE (this: _DContactItem) PUTBirthday* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 14914, p1)
    END PUTBirthday;

    PROCEDURE (this: _DContactItem) Business2TelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14875)
    END Business2TelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTBusiness2TelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14875, p1)
    END PUTBusiness2TelephoneNumber;

    PROCEDURE (this: _DContactItem) BusinessAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32795)
    END BusinessAddress;

    PROCEDURE (this: _DContactItem) PUTBusinessAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32795, p1)
    END PUTBusinessAddress;

    PROCEDURE (this: _DContactItem) BusinessAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32838)
    END BusinessAddressCity;

    PROCEDURE (this: _DContactItem) PUTBusinessAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32838, p1)
    END PUTBusinessAddressCity;

    PROCEDURE (this: _DContactItem) BusinessAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32841)
    END BusinessAddressCountry;

    PROCEDURE (this: _DContactItem) PUTBusinessAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32841, p1)
    END PUTBusinessAddressCountry;

    PROCEDURE (this: _DContactItem) BusinessAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32840)
    END BusinessAddressPostalCode;

    PROCEDURE (this: _DContactItem) PUTBusinessAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32840, p1)
    END PUTBusinessAddressPostalCode;

    PROCEDURE (this: _DContactItem) BusinessAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32842)
    END BusinessAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) PUTBusinessAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32842, p1)
    END PUTBusinessAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) BusinessAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32839)
    END BusinessAddressState;

    PROCEDURE (this: _DContactItem) PUTBusinessAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32839, p1)
    END PUTBusinessAddressState;

    PROCEDURE (this: _DContactItem) BusinessAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32837)
    END BusinessAddressStreet;

    PROCEDURE (this: _DContactItem) PUTBusinessAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32837, p1)
    END PUTBusinessAddressStreet;

    PROCEDURE (this: _DContactItem) BusinessFaxNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14884)
    END BusinessFaxNumber;

    PROCEDURE (this: _DContactItem) PUTBusinessFaxNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14884, p1)
    END PUTBusinessFaxNumber;

    PROCEDURE (this: _DContactItem) BusinessHomePage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14929)
    END BusinessHomePage;

    PROCEDURE (this: _DContactItem) PUTBusinessHomePage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14929, p1)
    END PUTBusinessHomePage;

    PROCEDURE (this: _DContactItem) BusinessTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14856)
    END BusinessTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTBusinessTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14856, p1)
    END PUTBusinessTelephoneNumber;

    PROCEDURE (this: _DContactItem) CallbackTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14850)
    END CallbackTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTCallbackTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14850, p1)
    END PUTCallbackTelephoneNumber;

    PROCEDURE (this: _DContactItem) CarTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14878)
    END CarTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTCarTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14878, p1)
    END PUTCarTelephoneNumber;

    PROCEDURE (this: _DContactItem) Children* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32780)
    END Children;

    PROCEDURE (this: _DContactItem) PUTChildren* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32780, p1)
    END PUTChildren;

    PROCEDURE (this: _DContactItem) CompanyAndFullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32792)
    END CompanyAndFullName;

    PROCEDURE (this: _DContactItem) CompanyMainTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14935)
    END CompanyMainTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTCompanyMainTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14935, p1)
    END PUTCompanyMainTelephoneNumber;

    PROCEDURE (this: _DContactItem) CompanyName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14870)
    END CompanyName;

    PROCEDURE (this: _DContactItem) PUTCompanyName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14870, p1)
    END PUTCompanyName;

    PROCEDURE (this: _DContactItem) ComputerNetworkName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14921)
    END ComputerNetworkName;

    PROCEDURE (this: _DContactItem) PUTComputerNetworkName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14921, p1)
    END PUTComputerNetworkName;

    PROCEDURE (this: _DContactItem) CustomerID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14922)
    END CustomerID;

    PROCEDURE (this: _DContactItem) PUTCustomerID* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14922, p1)
    END PUTCustomerID;

    PROCEDURE (this: _DContactItem) Department* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14872)
    END Department;

    PROCEDURE (this: _DContactItem) PUTDepartment* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14872, p1)
    END PUTDepartment;

    PROCEDURE (this: _DContactItem) Email1Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32899)
    END Email1Address;

    PROCEDURE (this: _DContactItem) PUTEmail1Address* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32899, p1)
    END PUTEmail1Address;

    PROCEDURE (this: _DContactItem) Email1AddressType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32898)
    END Email1AddressType;

    PROCEDURE (this: _DContactItem) PUTEmail1AddressType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32898, p1)
    END PUTEmail1AddressType;

    PROCEDURE (this: _DContactItem) Email1DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32896)
    END Email1DisplayName;

    PROCEDURE (this: _DContactItem) Email1EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32901)
    END Email1EntryID;

    PROCEDURE (this: _DContactItem) Email2Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32915)
    END Email2Address;

    PROCEDURE (this: _DContactItem) PUTEmail2Address* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32915, p1)
    END PUTEmail2Address;

    PROCEDURE (this: _DContactItem) Email2AddressType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32914)
    END Email2AddressType;

    PROCEDURE (this: _DContactItem) PUTEmail2AddressType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32914, p1)
    END PUTEmail2AddressType;

    PROCEDURE (this: _DContactItem) Email2DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32912)
    END Email2DisplayName;

    PROCEDURE (this: _DContactItem) Email2EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32917)
    END Email2EntryID;

    PROCEDURE (this: _DContactItem) Email3Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32931)
    END Email3Address;

    PROCEDURE (this: _DContactItem) PUTEmail3Address* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32931, p1)
    END PUTEmail3Address;

    PROCEDURE (this: _DContactItem) Email3AddressType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32930)
    END Email3AddressType;

    PROCEDURE (this: _DContactItem) PUTEmail3AddressType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32930, p1)
    END PUTEmail3AddressType;

    PROCEDURE (this: _DContactItem) Email3DisplayName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32928)
    END Email3DisplayName;

    PROCEDURE (this: _DContactItem) Email3EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32933)
    END Email3EntryID;

    PROCEDURE (this: _DContactItem) FileAs* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32773)
    END FileAs;

    PROCEDURE (this: _DContactItem) PUTFileAs* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32773, p1)
    END PUTFileAs;

    PROCEDURE (this: _DContactItem) FirstName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14854)
    END FirstName;

    PROCEDURE (this: _DContactItem) PUTFirstName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14854, p1)
    END PUTFirstName;

    PROCEDURE (this: _DContactItem) FTPSite* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14924)
    END FTPSite;

    PROCEDURE (this: _DContactItem) PUTFTPSite* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14924, p1)
    END PUTFTPSite;

    PROCEDURE (this: _DContactItem) FullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END FullName;

    PROCEDURE (this: _DContactItem) PUTFullName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTFullName;

    PROCEDURE (this: _DContactItem) FullNameAndCompany* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32793)
    END FullNameAndCompany;

    PROCEDURE (this: _DContactItem) Gender* (): OlGender, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 14925)
    END Gender;

    PROCEDURE (this: _DContactItem) PUTGender* (p1: OlGender), NEW;
    BEGIN
        CtlC.PutInt(this, 14925, p1)
    END PUTGender;

    PROCEDURE (this: _DContactItem) GovernmentIDNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14855)
    END GovernmentIDNumber;

    PROCEDURE (this: _DContactItem) PUTGovernmentIDNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14855, p1)
    END PUTGovernmentIDNumber;

    PROCEDURE (this: _DContactItem) Hobby* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14915)
    END Hobby;

    PROCEDURE (this: _DContactItem) PUTHobby* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14915, p1)
    END PUTHobby;

    PROCEDURE (this: _DContactItem) Home2TelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14895)
    END Home2TelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTHome2TelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14895, p1)
    END PUTHome2TelephoneNumber;

    PROCEDURE (this: _DContactItem) HomeAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32794)
    END HomeAddress;

    PROCEDURE (this: _DContactItem) PUTHomeAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32794, p1)
    END PUTHomeAddress;

    PROCEDURE (this: _DContactItem) HomeAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14937)
    END HomeAddressCity;

    PROCEDURE (this: _DContactItem) PUTHomeAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14937, p1)
    END PUTHomeAddressCity;

    PROCEDURE (this: _DContactItem) HomeAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14938)
    END HomeAddressCountry;

    PROCEDURE (this: _DContactItem) PUTHomeAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14938, p1)
    END PUTHomeAddressCountry;

    PROCEDURE (this: _DContactItem) HomeAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14939)
    END HomeAddressPostalCode;

    PROCEDURE (this: _DContactItem) PUTHomeAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14939, p1)
    END PUTHomeAddressPostalCode;

    PROCEDURE (this: _DContactItem) HomeAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14942)
    END HomeAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) PUTHomeAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14942, p1)
    END PUTHomeAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) HomeAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14940)
    END HomeAddressState;

    PROCEDURE (this: _DContactItem) PUTHomeAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14940, p1)
    END PUTHomeAddressState;

    PROCEDURE (this: _DContactItem) HomeAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14941)
    END HomeAddressStreet;

    PROCEDURE (this: _DContactItem) PUTHomeAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14941, p1)
    END PUTHomeAddressStreet;

    PROCEDURE (this: _DContactItem) HomeFaxNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14885)
    END HomeFaxNumber;

    PROCEDURE (this: _DContactItem) PUTHomeFaxNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14885, p1)
    END PUTHomeFaxNumber;

    PROCEDURE (this: _DContactItem) HomeTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14857)
    END HomeTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTHomeTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14857, p1)
    END PUTHomeTelephoneNumber;

    PROCEDURE (this: _DContactItem) Initials* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14858)
    END Initials;

    PROCEDURE (this: _DContactItem) PUTInitials* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14858, p1)
    END PUTInitials;

    PROCEDURE (this: _DContactItem) ISDNNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14893)
    END ISDNNumber;

    PROCEDURE (this: _DContactItem) PUTISDNNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14893, p1)
    END PUTISDNNumber;

    PROCEDURE (this: _DContactItem) JobTitle* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14871)
    END JobTitle;

    PROCEDURE (this: _DContactItem) PUTJobTitle* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14871, p1)
    END PUTJobTitle;

    PROCEDURE (this: _DContactItem) Journal* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 32805)
    END Journal;

    PROCEDURE (this: _DContactItem) PUTJournal* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 32805, p1)
    END PUTJournal;

    PROCEDURE (this: _DContactItem) Language* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14860)
    END Language;

    PROCEDURE (this: _DContactItem) PUTLanguage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14860, p1)
    END PUTLanguage;

    PROCEDURE (this: _DContactItem) LastName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14865)
    END LastName;

    PROCEDURE (this: _DContactItem) PUTLastName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14865, p1)
    END PUTLastName;

    PROCEDURE (this: _DContactItem) LastNameAndFirstName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32791)
    END LastNameAndFirstName;

    PROCEDURE (this: _DContactItem) MailingAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14869)
    END MailingAddress;

    PROCEDURE (this: _DContactItem) PUTMailingAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14869, p1)
    END PUTMailingAddress;

    PROCEDURE (this: _DContactItem) MailingAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14887)
    END MailingAddressCity;

    PROCEDURE (this: _DContactItem) PUTMailingAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14887, p1)
    END PUTMailingAddressCity;

    PROCEDURE (this: _DContactItem) MailingAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14886)
    END MailingAddressCountry;

    PROCEDURE (this: _DContactItem) PUTMailingAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14886, p1)
    END PUTMailingAddressCountry;

    PROCEDURE (this: _DContactItem) MailingAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14890)
    END MailingAddressPostalCode;

    PROCEDURE (this: _DContactItem) PUTMailingAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14890, p1)
    END PUTMailingAddressPostalCode;

    PROCEDURE (this: _DContactItem) MailingAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14891)
    END MailingAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) PUTMailingAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14891, p1)
    END PUTMailingAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) MailingAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14888)
    END MailingAddressState;

    PROCEDURE (this: _DContactItem) PUTMailingAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14888, p1)
    END PUTMailingAddressState;

    PROCEDURE (this: _DContactItem) MailingAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14889)
    END MailingAddressStreet;

    PROCEDURE (this: _DContactItem) PUTMailingAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14889, p1)
    END PUTMailingAddressStreet;

    PROCEDURE (this: _DContactItem) ManagerName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14926)
    END ManagerName;

    PROCEDURE (this: _DContactItem) PUTManagerName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14926, p1)
    END PUTManagerName;

    PROCEDURE (this: _DContactItem) MiddleName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14916)
    END MiddleName;

    PROCEDURE (this: _DContactItem) PUTMiddleName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14916, p1)
    END PUTMiddleName;

    PROCEDURE (this: _DContactItem) MobileTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14876)
    END MobileTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTMobileTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14876, p1)
    END PUTMobileTelephoneNumber;

    PROCEDURE (this: _DContactItem) NickName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14927)
    END NickName;

    PROCEDURE (this: _DContactItem) PUTNickName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14927, p1)
    END PUTNickName;

    PROCEDURE (this: _DContactItem) OfficeLocation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14873)
    END OfficeLocation;

    PROCEDURE (this: _DContactItem) PUTOfficeLocation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14873, p1)
    END PUTOfficeLocation;

    PROCEDURE (this: _DContactItem) OrganizationalIDNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14864)
    END OrganizationalIDNumber;

    PROCEDURE (this: _DContactItem) PUTOrganizationalIDNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14864, p1)
    END PUTOrganizationalIDNumber;

    PROCEDURE (this: _DContactItem) OtherAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32796)
    END OtherAddress;

    PROCEDURE (this: _DContactItem) PUTOtherAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32796, p1)
    END PUTOtherAddress;

    PROCEDURE (this: _DContactItem) OtherAddressCity* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14943)
    END OtherAddressCity;

    PROCEDURE (this: _DContactItem) PUTOtherAddressCity* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14943, p1)
    END PUTOtherAddressCity;

    PROCEDURE (this: _DContactItem) OtherAddressCountry* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14944)
    END OtherAddressCountry;

    PROCEDURE (this: _DContactItem) PUTOtherAddressCountry* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14944, p1)
    END PUTOtherAddressCountry;

    PROCEDURE (this: _DContactItem) OtherAddressPostalCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14945)
    END OtherAddressPostalCode;

    PROCEDURE (this: _DContactItem) PUTOtherAddressPostalCode* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14945, p1)
    END PUTOtherAddressPostalCode;

    PROCEDURE (this: _DContactItem) OtherAddressPostOfficeBox* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14948)
    END OtherAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) PUTOtherAddressPostOfficeBox* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14948, p1)
    END PUTOtherAddressPostOfficeBox;

    PROCEDURE (this: _DContactItem) OtherAddressState* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14946)
    END OtherAddressState;

    PROCEDURE (this: _DContactItem) PUTOtherAddressState* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14946, p1)
    END PUTOtherAddressState;

    PROCEDURE (this: _DContactItem) OtherAddressStreet* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14947)
    END OtherAddressStreet;

    PROCEDURE (this: _DContactItem) PUTOtherAddressStreet* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14947, p1)
    END PUTOtherAddressStreet;

    PROCEDURE (this: _DContactItem) OtherFaxNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14883)
    END OtherFaxNumber;

    PROCEDURE (this: _DContactItem) PUTOtherFaxNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14883, p1)
    END PUTOtherFaxNumber;

    PROCEDURE (this: _DContactItem) OtherTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14879)
    END OtherTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTOtherTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14879, p1)
    END PUTOtherTelephoneNumber;

    PROCEDURE (this: _DContactItem) PagerNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14881)
    END PagerNumber;

    PROCEDURE (this: _DContactItem) PUTPagerNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14881, p1)
    END PUTPagerNumber;

    PROCEDURE (this: _DContactItem) PersonalHomePage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14928)
    END PersonalHomePage;

    PROCEDURE (this: _DContactItem) PUTPersonalHomePage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14928, p1)
    END PUTPersonalHomePage;

    PROCEDURE (this: _DContactItem) PrimaryTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14874)
    END PrimaryTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTPrimaryTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14874, p1)
    END PUTPrimaryTelephoneNumber;

    PROCEDURE (this: _DContactItem) Profession* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14918)
    END Profession;

    PROCEDURE (this: _DContactItem) PUTProfession* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14918, p1)
    END PUTProfession;

    PROCEDURE (this: _DContactItem) RadioTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14877)
    END RadioTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTRadioTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14877, p1)
    END PUTRadioTelephoneNumber;

    PROCEDURE (this: _DContactItem) ReferredBy* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14919)
    END ReferredBy;

    PROCEDURE (this: _DContactItem) PUTReferredBy* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14919, p1)
    END PUTReferredBy;

    PROCEDURE (this: _DContactItem) SelectedMailingAddress* (): OlMailingAddress, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 32802)
    END SelectedMailingAddress;

    PROCEDURE (this: _DContactItem) PUTSelectedMailingAddress* (p1: OlMailingAddress), NEW;
    BEGIN
        CtlC.PutInt(this, 32802, p1)
    END PUTSelectedMailingAddress;

    PROCEDURE (this: _DContactItem) Spouse* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14920)
    END Spouse;

    PROCEDURE (this: _DContactItem) PUTSpouse* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14920, p1)
    END PUTSpouse;

    PROCEDURE (this: _DContactItem) Suffix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14853)
    END Suffix;

    PROCEDURE (this: _DContactItem) PUTSuffix* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14853, p1)
    END PUTSuffix;

    PROCEDURE (this: _DContactItem) TelexNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14892)
    END TelexNumber;

    PROCEDURE (this: _DContactItem) PUTTelexNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14892, p1)
    END PUTTelexNumber;

    PROCEDURE (this: _DContactItem) Title* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14917)
    END Title;

    PROCEDURE (this: _DContactItem) PUTTitle* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14917, p1)
    END PUTTitle;

    PROCEDURE (this: _DContactItem) TTYTDDTelephoneNumber* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 14923)
    END TTYTDDTelephoneNumber;

    PROCEDURE (this: _DContactItem) PUTTTYTDDTelephoneNumber* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 14923, p1)
    END PUTTTYTDDTelephoneNumber;

    PROCEDURE (this: _DContactItem) User1* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32847)
    END User1;

    PROCEDURE (this: _DContactItem) PUTUser1* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32847, p1)
    END PUTUser1;

    PROCEDURE (this: _DContactItem) User2* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32848)
    END User2;

    PROCEDURE (this: _DContactItem) PUTUser2* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32848, p1)
    END PUTUser2;

    PROCEDURE (this: _DContactItem) User3* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32849)
    END User3;

    PROCEDURE (this: _DContactItem) PUTUser3* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32849, p1)
    END PUTUser3;

    PROCEDURE (this: _DContactItem) User4* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32850)
    END User4;

    PROCEDURE (this: _DContactItem) PUTUser4* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32850, p1)
    END PUTUser4;

    PROCEDURE (this: _DContactItem) UserCertificate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32790)
    END UserCertificate;

    PROCEDURE (this: _DContactItem) PUTUserCertificate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32790, p1)
    END PUTUserCertificate;

    PROCEDURE (this: _DContactItem) WebPage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32811)
    END WebPage;

    PROCEDURE (this: _DContactItem) PUTWebPage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32811, p1)
    END PUTWebPage;

    PROCEDURE (this: _DContactItem) YomiCompanyName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32814)
    END YomiCompanyName;

    PROCEDURE (this: _DContactItem) PUTYomiCompanyName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32814, p1)
    END PUTYomiCompanyName;

    PROCEDURE (this: _DContactItem) YomiFirstName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32812)
    END YomiFirstName;

    PROCEDURE (this: _DContactItem) PUTYomiFirstName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32812, p1)
    END PUTYomiFirstName;

    PROCEDURE (this: _DContactItem) YomiLastName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 32813)
    END YomiLastName;

    PROCEDURE (this: _DContactItem) PUTYomiLastName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 32813, p1)
    END PUTYomiLastName;

    PROCEDURE (this: _DContactItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DContactItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DContactItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DContactItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DContactItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DContactItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DContactItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DContactItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;


    (* ---------- Explorer ---------- *)

    PROCEDURE (this: Explorer) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Explorer) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.ThisCommandBars(CtlC.GetAny(this, 8448))
    END CommandBars;

    PROCEDURE (this: Explorer) CurrentFolder* (): MAPIFolder, NEW;
    BEGIN
        RETURN ThisMAPIFolder(CtlC.GetAny(this, 8449))
    END CurrentFolder;

    PROCEDURE (this: Explorer) PUTREFCurrentFolder* (p1: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 8449, arg, NIL);
    END PUTREFCurrentFolder;

    PROCEDURE (this: Explorer) Parent* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61441))
    END Parent;

    PROCEDURE (this: Explorer) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8451, NIL);
    END Close;

    PROCEDURE (this: Explorer) Display* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8452, NIL);
    END Display;


    (* ---------- Folders ---------- *)

    PROCEDURE (this: Folders) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Folders) Add* (Name: ARRAY OF CHAR; (* optional *) Type: CtlT.Any): MAPIFolder, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 100, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Folders) Item* (Index: CtlT.Any): MAPIFolder, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Folders) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;


    (* ---------- FormDescription ---------- *)

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


    (* ---------- Inspector ---------- *)

    PROCEDURE (this: Inspector) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Inspector) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.ThisCommandBars(CtlC.GetAny(this, 8448))
    END CommandBars;

    PROCEDURE (this: Inspector) CurrentItem* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 8450)
    END CurrentItem;

    PROCEDURE (this: Inspector) ModifiedFormPages* (): Pages, NEW;
    BEGIN
        RETURN ThisPages(CtlC.GetAny(this, 8454))
    END ModifiedFormPages;

    PROCEDURE (this: Inspector) Parent* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61441))
    END Parent;

    PROCEDURE (this: Inspector) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 8451, arg, NIL);
    END Close;

    PROCEDURE (this: Inspector) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 8452, arg, NIL);
    END Display;

    PROCEDURE (this: Inspector) HideFormPage* (PageName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PageName, arg[0]);
        CtlC.CallParMethod(this, 8456, arg, NIL);
    END HideFormPage;

    PROCEDURE (this: Inspector) IsWordMail* (): BOOLEAN, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 8453, ret);
        RETURN CtlC.VarBool(ret)
    END IsWordMail;

    PROCEDURE (this: Inspector) SetCurrentFormPage* (PageName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PageName, arg[0]);
        CtlC.CallParMethod(this, 8460, arg, NIL);
    END SetCurrentFormPage;

    PROCEDURE (this: Inspector) ShowFormPage* (PageName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PageName, arg[0]);
        CtlC.CallParMethod(this, 8457, arg, NIL);
    END ShowFormPage;


    (* ---------- Items ---------- *)

    PROCEDURE (this: Items) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Items) IncludeRecurrences* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 206)
    END IncludeRecurrences;

    PROCEDURE (this: Items) PUTIncludeRecurrences* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 206, p1)
    END PUTIncludeRecurrences;

    PROCEDURE (this: Items) Add* ((* optional *) Type: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 200, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Add;

    PROCEDURE (this: Items) Find* (Filter: ARRAY OF CHAR): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Filter, arg[0]);
        CtlC.CallParMethod(this, 203, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Find;

    PROCEDURE (this: Items) FindNext* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 204, ret);
        RETURN CtlC.VarObj(ret)
    END FindNext;

    PROCEDURE (this: Items) Item* (Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Items) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 84, arg, NIL);
    END Remove;

    PROCEDURE (this: Items) Restrict* (Filter: ARRAY OF CHAR): Items, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Filter, arg[0]);
        CtlC.CallParMethod(this, 202, arg, ret);
        RETURN ThisItems(CtlC.VarAny(ret))
    END Restrict;

    PROCEDURE (this: Items) Sort* (Property: ARRAY OF CHAR; (* optional *) Descending: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Property, arg[1]);
        CtlC.AnyVar(Descending, arg[0]);
        CtlC.CallParMethod(this, 205, arg, NIL);
    END Sort;


    (* ---------- _DJournalItem ---------- *)

    PROCEDURE (this: _DJournalItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DJournalItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DJournalItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DJournalItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DJournalItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DJournalItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DJournalItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DJournalItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DJournalItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DJournalItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DJournalItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DJournalItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DJournalItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DJournalItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DJournalItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DJournalItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DJournalItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DJournalItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DJournalItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DJournalItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DJournalItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DJournalItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DJournalItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DJournalItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DJournalItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DJournalItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DJournalItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DJournalItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DJournalItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DJournalItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DJournalItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DJournalItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DJournalItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DJournalItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DJournalItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DJournalItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DJournalItem) ContactNames* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3588)
    END ContactNames;

    PROCEDURE (this: _DJournalItem) PUTContactNames* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3588, p1)
    END PUTContactNames;

    PROCEDURE (this: _DJournalItem) DocPosted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34577)
    END DocPosted;

    PROCEDURE (this: _DJournalItem) PUTDocPosted* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34577, p1)
    END PUTDocPosted;

    PROCEDURE (this: _DJournalItem) DocPrinted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34574)
    END DocPrinted;

    PROCEDURE (this: _DJournalItem) PUTDocPrinted* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34574, p1)
    END PUTDocPrinted;

    PROCEDURE (this: _DJournalItem) DocRouted* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34576)
    END DocRouted;

    PROCEDURE (this: _DJournalItem) PUTDocRouted* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34576, p1)
    END PUTDocRouted;

    PROCEDURE (this: _DJournalItem) DocSaved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34575)
    END DocSaved;

    PROCEDURE (this: _DJournalItem) PUTDocSaved* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34575, p1)
    END PUTDocSaved;

    PROCEDURE (this: _DJournalItem) Duration* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34567)
    END Duration;

    PROCEDURE (this: _DJournalItem) PUTDuration* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 34567, p1)
    END PUTDuration;

    PROCEDURE (this: _DJournalItem) End* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34568)
    END End;

    PROCEDURE (this: _DJournalItem) PUTEnd* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34568, p1)
    END PUTEnd;

    PROCEDURE (this: _DJournalItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _DJournalItem) Start* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34566)
    END Start;

    PROCEDURE (this: _DJournalItem) PUTStart* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34566, p1)
    END PUTStart;

    PROCEDURE (this: _DJournalItem) Type* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34560)
    END Type;

    PROCEDURE (this: _DJournalItem) PUTType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34560, p1)
    END PUTType;

    PROCEDURE (this: _DJournalItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DJournalItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DJournalItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DJournalItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DJournalItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DJournalItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DJournalItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DJournalItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DJournalItem) Forward* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63507, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END Forward;

    PROCEDURE (this: _DJournalItem) Reply* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63504, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END Reply;

    PROCEDURE (this: _DJournalItem) ReplyAll* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63505, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END ReplyAll;

    PROCEDURE (this: _DJournalItem) StartTimer* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63269, NIL);
    END StartTimer;

    PROCEDURE (this: _DJournalItem) StopTimer* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63270, NIL);
    END StopTimer;


    (* ---------- _DMailItem ---------- *)

    PROCEDURE (this: _DMailItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DMailItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DMailItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DMailItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DMailItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DMailItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DMailItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DMailItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DMailItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DMailItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DMailItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DMailItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DMailItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DMailItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DMailItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DMailItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DMailItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DMailItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DMailItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DMailItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DMailItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DMailItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DMailItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DMailItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DMailItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DMailItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DMailItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DMailItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DMailItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DMailItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DMailItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DMailItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DMailItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DMailItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DMailItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DMailItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DMailItem) AlternateRecipientAllowed* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 2)
    END AlternateRecipientAllowed;

    PROCEDURE (this: _DMailItem) PUTAlternateRecipientAllowed* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 2, p1)
    END PUTAlternateRecipientAllowed;

    PROCEDURE (this: _DMailItem) AutoForwarded* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END AutoForwarded;

    PROCEDURE (this: _DMailItem) PUTAutoForwarded* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTAutoForwarded;

    PROCEDURE (this: _DMailItem) BCC* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3586)
    END BCC;

    PROCEDURE (this: _DMailItem) PUTBCC* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3586, p1)
    END PUTBCC;

    PROCEDURE (this: _DMailItem) CC* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3587)
    END CC;

    PROCEDURE (this: _DMailItem) PUTCC* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3587, p1)
    END PUTCC;

    PROCEDURE (this: _DMailItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _DMailItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _DMailItem) DeferredDeliveryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 15)
    END DeferredDeliveryTime;

    PROCEDURE (this: _DMailItem) PUTDeferredDeliveryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 15, p1)
    END PUTDeferredDeliveryTime;

    PROCEDURE (this: _DMailItem) DeleteAfterSubmit* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3585)
    END DeleteAfterSubmit;

    PROCEDURE (this: _DMailItem) PUTDeleteAfterSubmit* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3585, p1)
    END PUTDeleteAfterSubmit;

    PROCEDURE (this: _DMailItem) ExpiryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 21)
    END ExpiryTime;

    PROCEDURE (this: _DMailItem) PUTExpiryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 21, p1)
    END PUTExpiryTime;

    PROCEDURE (this: _DMailItem) FlagDueBy* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 48)
    END FlagDueBy;

    PROCEDURE (this: _DMailItem) PUTFlagDueBy* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 48, p1)
    END PUTFlagDueBy;

    PROCEDURE (this: _DMailItem) FlagRequest* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34096)
    END FlagRequest;

    PROCEDURE (this: _DMailItem) PUTFlagRequest* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34096, p1)
    END PUTFlagRequest;

    PROCEDURE (this: _DMailItem) FlagStatus* (): OlFlagStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4240)
    END FlagStatus;

    PROCEDURE (this: _DMailItem) PUTFlagStatus* (p1: OlFlagStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 4240, p1)
    END PUTFlagStatus;

    PROCEDURE (this: _DMailItem) OriginatorDeliveryReportRequested* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 35)
    END OriginatorDeliveryReportRequested;

    PROCEDURE (this: _DMailItem) PUTOriginatorDeliveryReportRequested* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 35, p1)
    END PUTOriginatorDeliveryReportRequested;

    PROCEDURE (this: _DMailItem) ReadReceiptRequested* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 41)
    END ReadReceiptRequested;

    PROCEDURE (this: _DMailItem) PUTReadReceiptRequested* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 41, p1)
    END PUTReadReceiptRequested;

    PROCEDURE (this: _DMailItem) ReceivedByEntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 63)
    END ReceivedByEntryID;

    PROCEDURE (this: _DMailItem) ReceivedByName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 64)
    END ReceivedByName;

    PROCEDURE (this: _DMailItem) ReceivedOnBehalfOfEntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 67)
    END ReceivedOnBehalfOfEntryID;

    PROCEDURE (this: _DMailItem) ReceivedOnBehalfOfName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 68)
    END ReceivedOnBehalfOfName;

    PROCEDURE (this: _DMailItem) ReceivedTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 3590)
    END ReceivedTime;

    PROCEDURE (this: _DMailItem) RecipientReassignmentProhibited* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 43)
    END RecipientReassignmentProhibited;

    PROCEDURE (this: _DMailItem) PUTRecipientReassignmentProhibited* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 43, p1)
    END PUTRecipientReassignmentProhibited;

    PROCEDURE (this: _DMailItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _DMailItem) ReminderOverrideDefault* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34076)
    END ReminderOverrideDefault;

    PROCEDURE (this: _DMailItem) PUTReminderOverrideDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34076, p1)
    END PUTReminderOverrideDefault;

    PROCEDURE (this: _DMailItem) ReminderPlaySound* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34078)
    END ReminderPlaySound;

    PROCEDURE (this: _DMailItem) PUTReminderPlaySound* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34078, p1)
    END PUTReminderPlaySound;

    PROCEDURE (this: _DMailItem) ReminderSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34051)
    END ReminderSet;

    PROCEDURE (this: _DMailItem) PUTReminderSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34051, p1)
    END PUTReminderSet;

    PROCEDURE (this: _DMailItem) ReminderSoundFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34079)
    END ReminderSoundFile;

    PROCEDURE (this: _DMailItem) PUTReminderSoundFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34079, p1)
    END PUTReminderSoundFile;

    PROCEDURE (this: _DMailItem) ReminderTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34050)
    END ReminderTime;

    PROCEDURE (this: _DMailItem) PUTReminderTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34050, p1)
    END PUTReminderTime;

    PROCEDURE (this: _DMailItem) RemoteStatus* (): OlRemoteStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 34065)
    END RemoteStatus;

    PROCEDURE (this: _DMailItem) ReplyRecipientNames* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 80)
    END ReplyRecipientNames;

    PROCEDURE (this: _DMailItem) ReplyRecipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 61459))
    END ReplyRecipients;

    PROCEDURE (this: _DMailItem) SaveSentMessageFolder* (): MAPIFolder, NEW;
    BEGIN
        RETURN ThisMAPIFolder(CtlC.GetAny(this, 62465))
    END SaveSentMessageFolder;

    PROCEDURE (this: _DMailItem) PUTREFSaveSentMessageFolder* (p1: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 62465, arg, NIL);
    END PUTREFSaveSentMessageFolder;

    PROCEDURE (this: _DMailItem) SenderName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3098)
    END SenderName;

    PROCEDURE (this: _DMailItem) SentOn* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 57)
    END SentOn;

    PROCEDURE (this: _DMailItem) SentOnBehalfOfName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 66)
    END SentOnBehalfOfName;

    PROCEDURE (this: _DMailItem) PUTSentOnBehalfOfName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 66, p1)
    END PUTSentOnBehalfOfName;

    PROCEDURE (this: _DMailItem) To* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3588)
    END To;

    PROCEDURE (this: _DMailItem) PUTTo* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3588, p1)
    END PUTTo;

    PROCEDURE (this: _DMailItem) VotingOptions* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61467)
    END VotingOptions;

    PROCEDURE (this: _DMailItem) PUTVotingOptions* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 61467, p1)
    END PUTVotingOptions;

    PROCEDURE (this: _DMailItem) VotingResponse* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34084)
    END VotingResponse;

    PROCEDURE (this: _DMailItem) PUTVotingResponse* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34084, p1)
    END PUTVotingResponse;

    PROCEDURE (this: _DMailItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DMailItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DMailItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DMailItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DMailItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DMailItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DMailItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DMailItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DMailItem) ClearConversationIndex* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63522, NIL);
    END ClearConversationIndex;

    PROCEDURE (this: _DMailItem) Forward* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63507, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END Forward;

    PROCEDURE (this: _DMailItem) Reply* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63504, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END Reply;

    PROCEDURE (this: _DMailItem) ReplyAll* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63505, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END ReplyAll;

    PROCEDURE (this: _DMailItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;


    (* ---------- MAPIFolder ---------- *)

    PROCEDURE (this: MAPIFolder) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: MAPIFolder) DefaultItemType* (): OlItems, NEW;
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

    PROCEDURE (this: MAPIFolder) Folders* (): Folders, NEW;
    BEGIN
        RETURN ThisFolders(CtlC.GetAny(this, 8451))
    END Folders;

    PROCEDURE (this: MAPIFolder) Items* (): Items, NEW;
    BEGIN
        RETURN ThisItems(CtlC.GetAny(this, 12544))
    END Items;

    PROCEDURE (this: MAPIFolder) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: MAPIFolder) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12289, p1)
    END PUTName;

    PROCEDURE (this: MAPIFolder) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

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

    PROCEDURE (this: MAPIFolder) GetExplorer* ((* optional *) DisplayMode: CtlT.Any): Explorer, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(DisplayMode, arg[0]);
        CtlC.CallParMethod(this, 12545, arg, ret);
        RETURN ThisExplorer(CtlC.VarAny(ret))
    END GetExplorer;

    PROCEDURE (this: MAPIFolder) MoveTo* (DestinationFolder: MAPIFolder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestinationFolder, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, NIL);
    END MoveTo;


    (* ---------- _DMeetingCanceledItem, hidden ---------- *)

    PROCEDURE (this: _DMeetingCanceledItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DMeetingCanceledItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DMeetingCanceledItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DMeetingCanceledItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DMeetingCanceledItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DMeetingCanceledItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DMeetingCanceledItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DMeetingCanceledItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DMeetingCanceledItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DMeetingCanceledItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DMeetingCanceledItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DMeetingCanceledItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DMeetingCanceledItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DMeetingCanceledItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DMeetingCanceledItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DMeetingCanceledItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DMeetingCanceledItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DMeetingCanceledItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DMeetingCanceledItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DMeetingCanceledItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DMeetingCanceledItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DMeetingCanceledItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DMeetingCanceledItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DMeetingCanceledItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DMeetingCanceledItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DMeetingCanceledItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DMeetingCanceledItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DMeetingCanceledItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DMeetingCanceledItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DMeetingCanceledItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DMeetingCanceledItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DMeetingCanceledItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DMeetingCanceledItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DMeetingCanceledItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DMeetingCanceledItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DMeetingCanceledItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DMeetingCanceledItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DMeetingCanceledItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DMeetingCanceledItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DMeetingCanceledItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DMeetingCanceledItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DMeetingCanceledItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DMeetingCanceledItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DMeetingCanceledItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DMeetingCanceledItem) GetAssociatedAppointment* (AddToCalendar: BOOLEAN): AppointmentItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToCalendar, arg[0]);
        CtlC.CallParMethod(this, 63328, arg, ret);
        RETURN This_DAppointmentItem(CtlC.VarAny(ret))
    END GetAssociatedAppointment;

    PROCEDURE (this: _DMeetingCanceledItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;


    (* ---------- _DMeetingRequestAcceptedItem, hidden ---------- *)

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) GetAssociatedAppointment* (AddToCalendar: BOOLEAN): AppointmentItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToCalendar, arg[0]);
        CtlC.CallParMethod(this, 63328, arg, ret);
        RETURN This_DAppointmentItem(CtlC.VarAny(ret))
    END GetAssociatedAppointment;

    PROCEDURE (this: _DMeetingRequestAcceptedItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;


    (* ---------- _DMeetingRequestDeclinedItem, hidden ---------- *)

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) GetAssociatedAppointment* (AddToCalendar: BOOLEAN): AppointmentItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToCalendar, arg[0]);
        CtlC.CallParMethod(this, 63328, arg, ret);
        RETURN This_DAppointmentItem(CtlC.VarAny(ret))
    END GetAssociatedAppointment;

    PROCEDURE (this: _DMeetingRequestDeclinedItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;


    (* ---------- _DMeetingRequestItem ---------- *)

    PROCEDURE (this: _DMeetingRequestItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DMeetingRequestItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DMeetingRequestItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DMeetingRequestItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DMeetingRequestItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DMeetingRequestItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DMeetingRequestItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DMeetingRequestItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DMeetingRequestItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DMeetingRequestItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DMeetingRequestItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DMeetingRequestItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DMeetingRequestItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DMeetingRequestItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DMeetingRequestItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DMeetingRequestItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DMeetingRequestItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DMeetingRequestItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DMeetingRequestItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DMeetingRequestItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DMeetingRequestItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DMeetingRequestItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DMeetingRequestItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DMeetingRequestItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DMeetingRequestItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DMeetingRequestItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DMeetingRequestItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DMeetingRequestItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DMeetingRequestItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DMeetingRequestItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DMeetingRequestItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DMeetingRequestItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DMeetingRequestItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DMeetingRequestItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DMeetingRequestItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DMeetingRequestItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DMeetingRequestItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DMeetingRequestItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DMeetingRequestItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DMeetingRequestItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DMeetingRequestItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DMeetingRequestItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DMeetingRequestItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DMeetingRequestItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DMeetingRequestItem) GetAssociatedAppointment* (AddToCalendar: BOOLEAN): AppointmentItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToCalendar, arg[0]);
        CtlC.CallParMethod(this, 63328, arg, ret);
        RETURN This_DAppointmentItem(CtlC.VarAny(ret))
    END GetAssociatedAppointment;


    (* ---------- _DMeetingRequestTentativeItem, hidden ---------- *)

    PROCEDURE (this: _DMeetingRequestTentativeItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DMeetingRequestTentativeItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DMeetingRequestTentativeItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DMeetingRequestTentativeItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DMeetingRequestTentativeItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DMeetingRequestTentativeItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DMeetingRequestTentativeItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DMeetingRequestTentativeItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DMeetingRequestTentativeItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DMeetingRequestTentativeItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DMeetingRequestTentativeItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DMeetingRequestTentativeItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DMeetingRequestTentativeItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DMeetingRequestTentativeItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DMeetingRequestTentativeItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DMeetingRequestTentativeItem) GetAssociatedAppointment* (AddToCalendar: BOOLEAN): AppointmentItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToCalendar, arg[0]);
        CtlC.CallParMethod(this, 63328, arg, ret);
        RETURN This_DAppointmentItem(CtlC.VarAny(ret))
    END GetAssociatedAppointment;

    PROCEDURE (this: _DMeetingRequestTentativeItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;


    (* ---------- NameSpace ---------- *)

    PROCEDURE (this: NameSpace) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: NameSpace) CurrentUser* (): Recipient, NEW;
    BEGIN
        RETURN ThisRecipient(CtlC.GetAny(this, 8449))
    END CurrentUser;

    PROCEDURE (this: NameSpace) Folders* (): Folders, NEW;
    BEGIN
        RETURN ThisFolders(CtlC.GetAny(this, 8451))
    END Folders;

    PROCEDURE (this: NameSpace) Parent* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61441))
    END Parent;

    PROCEDURE (this: NameSpace) Type* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 8452)
    END Type;

    PROCEDURE (this: NameSpace) CreateRecipient* (RecipientName: ARRAY OF CHAR): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(RecipientName, arg[0]);
        CtlC.CallParMethod(this, 8458, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END CreateRecipient;

    PROCEDURE (this: NameSpace) GetDefaultFolder* (FolderType: OlDefaultFolders): MAPIFolder, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(FolderType, arg[0]);
        CtlC.CallParMethod(this, 8459, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetDefaultFolder;

    PROCEDURE (this: NameSpace) GetFolderFromID* (EntryIDFolder: ARRAY OF CHAR; (* optional *) EntryIDStore: CtlT.Any): MAPIFolder, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EntryIDFolder, arg[1]);
        CtlC.AnyVar(EntryIDStore, arg[0]);
        CtlC.CallParMethod(this, 8456, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetFolderFromID;

    PROCEDURE (this: NameSpace) GetItemFromID* (EntryIDItem: ARRAY OF CHAR; (* optional *) EntryIDStore: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EntryIDItem, arg[1]);
        CtlC.AnyVar(EntryIDStore, arg[0]);
        CtlC.CallParMethod(this, 8457, arg, ret);
        RETURN CtlC.VarObj(ret)
    END GetItemFromID;

    PROCEDURE (this: NameSpace) GetRecipientFromID* (EntryID: ARRAY OF CHAR): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(EntryID, arg[0]);
        CtlC.CallParMethod(this, 8455, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END GetRecipientFromID;

    PROCEDURE (this: NameSpace) GetSharedDefaultFolder* (recipient: Recipient; FolderType: OlDefaultFolders): MAPIFolder, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(recipient, arg[1]);
        CtlC.IntVar(FolderType, arg[0]);
        CtlC.CallParMethod(this, 8460, arg, ret);
        RETURN ThisMAPIFolder(CtlC.VarAny(ret))
    END GetSharedDefaultFolder;

    PROCEDURE (this: NameSpace) Logoff* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 8454, NIL);
    END Logoff;

    PROCEDURE (this: NameSpace) Logon* ((* optional *) Profile: CtlT.Any; Password: CtlT.Any; ShowDialog: CtlT.Any; NewSession: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Profile, arg[3]);
        CtlC.AnyVar(Password, arg[2]);
        CtlC.AnyVar(ShowDialog, arg[1]);
        CtlC.AnyVar(NewSession, arg[0]);
        CtlC.CallParMethod(this, 8453, arg, NIL);
    END Logon;


    (* ---------- _DNoteItem ---------- *)

    PROCEDURE (this: _DNoteItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DNoteItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DNoteItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DNoteItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DNoteItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DNoteItem) Color* (): OlNoteColor, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35584)
    END Color;

    PROCEDURE (this: _DNoteItem) PUTColor* (p1: OlNoteColor), NEW;
    BEGIN
        CtlC.PutInt(this, 35584, p1)
    END PUTColor;

    PROCEDURE (this: _DNoteItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DNoteItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DNoteItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DNoteItem) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35587)
    END Height;

    PROCEDURE (this: _DNoteItem) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35587, p1)
    END PUTHeight;

    PROCEDURE (this: _DNoteItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DNoteItem) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35588)
    END Left;

    PROCEDURE (this: _DNoteItem) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35588, p1)
    END PUTLeft;

    PROCEDURE (this: _DNoteItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DNoteItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DNoteItem) Parent* (): MAPIFolder, NEW;
    BEGIN
        RETURN ThisMAPIFolder(CtlC.GetAny(this, 61441))
    END Parent;

    PROCEDURE (this: _DNoteItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DNoteItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DNoteItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 63392)
    END Subject;

    PROCEDURE (this: _DNoteItem) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35589)
    END Top;

    PROCEDURE (this: _DNoteItem) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35589, p1)
    END PUTTop;

    PROCEDURE (this: _DNoteItem) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 35586)
    END Width;

    PROCEDURE (this: _DNoteItem) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 35586, p1)
    END PUTWidth;

    PROCEDURE (this: _DNoteItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DNoteItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DNoteItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DNoteItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DNoteItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DNoteItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DNoteItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DNoteItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;


    (* ---------- _DOfficeDocumentItem, hidden ---------- *)

    PROCEDURE (this: _DOfficeDocumentItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DOfficeDocumentItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DOfficeDocumentItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DOfficeDocumentItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DOfficeDocumentItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DOfficeDocumentItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DOfficeDocumentItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DOfficeDocumentItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DOfficeDocumentItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DOfficeDocumentItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DOfficeDocumentItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DOfficeDocumentItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DOfficeDocumentItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DOfficeDocumentItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DOfficeDocumentItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DOfficeDocumentItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DOfficeDocumentItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DOfficeDocumentItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DOfficeDocumentItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DOfficeDocumentItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DOfficeDocumentItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DOfficeDocumentItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DOfficeDocumentItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DOfficeDocumentItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DOfficeDocumentItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DOfficeDocumentItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DOfficeDocumentItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DOfficeDocumentItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DOfficeDocumentItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DOfficeDocumentItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DOfficeDocumentItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DOfficeDocumentItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DOfficeDocumentItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DOfficeDocumentItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DOfficeDocumentItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DOfficeDocumentItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DOfficeDocumentItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DOfficeDocumentItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DOfficeDocumentItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DOfficeDocumentItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DOfficeDocumentItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DOfficeDocumentItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DOfficeDocumentItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DOfficeDocumentItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;


    (* ---------- Pages ---------- *)

    PROCEDURE (this: Pages) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Pages) Add* ((* optional *) Name: CtlT.Any): CtlMSForms.Page, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[0]);
        CtlC.CallParMethod(this, 300, arg, ret);
        RETURN CtlMSForms.ThisIPage(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Pages) Item* (Index: CtlT.Any): CtlMSForms.Page, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN CtlMSForms.ThisIPage(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Pages) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 301, arg, NIL);
    END Remove;


    (* ---------- _DPostItem ---------- *)

    PROCEDURE (this: _DPostItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DPostItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DPostItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DPostItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DPostItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DPostItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DPostItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DPostItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DPostItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DPostItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DPostItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DPostItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DPostItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DPostItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DPostItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DPostItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DPostItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DPostItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DPostItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DPostItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DPostItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DPostItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DPostItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DPostItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DPostItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DPostItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DPostItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DPostItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DPostItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DPostItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DPostItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DPostItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DPostItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DPostItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DPostItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DPostItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DPostItem) ConversationIndex* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 113)
    END ConversationIndex;

    PROCEDURE (this: _DPostItem) ConversationTopic* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 112)
    END ConversationTopic;

    PROCEDURE (this: _DPostItem) ExpiryTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 21)
    END ExpiryTime;

    PROCEDURE (this: _DPostItem) PUTExpiryTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 21, p1)
    END PUTExpiryTime;

    PROCEDURE (this: _DPostItem) ReceivedTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 3590)
    END ReceivedTime;

    PROCEDURE (this: _DPostItem) SenderName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3098)
    END SenderName;

    PROCEDURE (this: _DPostItem) SentOn* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 57)
    END SentOn;

    PROCEDURE (this: _DPostItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DPostItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DPostItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DPostItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DPostItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DPostItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DPostItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DPostItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DPostItem) ClearConversationIndex* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63522, NIL);
    END ClearConversationIndex;

    PROCEDURE (this: _DPostItem) Forward* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63507, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END Forward;

    PROCEDURE (this: _DPostItem) Post* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Post;

    PROCEDURE (this: _DPostItem) Reply* (): MailItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63504, ret);
        RETURN This_DMailItem(CtlC.VarAny(ret))
    END Reply;


    (* ---------- Recipient ---------- *)

    PROCEDURE (this: Recipient) Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12291)
    END Address;

    PROCEDURE (this: Recipient) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: Recipient) AutoResponse* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 106)
    END AutoResponse;

    PROCEDURE (this: Recipient) PUTAutoResponse* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 106, p1)
    END PUTAutoResponse;

    PROCEDURE (this: Recipient) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: Recipient) MeetingResponseStatus* (): OlResponseStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END MeetingResponseStatus;

    PROCEDURE (this: Recipient) PUTMeetingResponseStatus* (p1: OlResponseStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTMeetingResponseStatus;

    PROCEDURE (this: Recipient) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: Recipient) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 109)
    END Parent;

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
        RETURN CtlC.GetInt(this, 112)
    END Type;

    PROCEDURE (this: Recipient) PUTType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 112, p1)
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


    (* ---------- Recipients ---------- *)

    PROCEDURE (this: Recipients) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

    PROCEDURE (this: Recipients) Add* (Name: ARRAY OF CHAR): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 111, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Recipients) Item* (Index: CtlT.Any): Recipient, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisRecipient(CtlC.VarAny(ret))
    END Item;

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


    (* ---------- RecurrencePattern ---------- *)

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


    (* ---------- _DRemoteItem ---------- *)

    PROCEDURE (this: _DRemoteItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DRemoteItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DRemoteItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DRemoteItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DRemoteItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DRemoteItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DRemoteItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DRemoteItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DRemoteItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DRemoteItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DRemoteItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DRemoteItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DRemoteItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DRemoteItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DRemoteItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DRemoteItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DRemoteItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DRemoteItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DRemoteItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DRemoteItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DRemoteItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DRemoteItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DRemoteItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DRemoteItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DRemoteItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DRemoteItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DRemoteItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DRemoteItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DRemoteItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DRemoteItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DRemoteItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DRemoteItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DRemoteItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DRemoteItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DRemoteItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DRemoteItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DRemoteItem) HasAttachment* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36615)
    END HasAttachment;

    PROCEDURE (this: _DRemoteItem) RemoteMessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36610)
    END RemoteMessageClass;

    PROCEDURE (this: _DRemoteItem) TransferSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 36613)
    END TransferSize;

    PROCEDURE (this: _DRemoteItem) TransferTime* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 36612)
    END TransferTime;

    PROCEDURE (this: _DRemoteItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DRemoteItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DRemoteItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DRemoteItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DRemoteItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DRemoteItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DRemoteItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DRemoteItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;


    (* ---------- _DReportItem ---------- *)

    PROCEDURE (this: _DReportItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DReportItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DReportItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DReportItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DReportItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DReportItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DReportItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DReportItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DReportItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DReportItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DReportItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DReportItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DReportItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DReportItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DReportItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DReportItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DReportItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DReportItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DReportItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DReportItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DReportItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DReportItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DReportItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DReportItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DReportItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DReportItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DReportItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DReportItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DReportItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DReportItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DReportItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DReportItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DReportItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DReportItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DReportItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DReportItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DReportItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DReportItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DReportItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DReportItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DReportItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DReportItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DReportItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DReportItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;


    (* ---------- _DTaskItem ---------- *)

    PROCEDURE (this: _DTaskItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DTaskItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DTaskItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DTaskItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DTaskItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DTaskItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DTaskItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DTaskItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DTaskItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DTaskItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DTaskItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DTaskItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DTaskItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DTaskItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DTaskItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DTaskItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DTaskItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DTaskItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DTaskItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DTaskItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DTaskItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DTaskItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DTaskItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DTaskItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DTaskItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DTaskItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DTaskItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DTaskItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DTaskItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DTaskItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DTaskItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DTaskItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DTaskItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DTaskItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DTaskItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DTaskItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DTaskItem) ActualWork* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33040)
    END ActualWork;

    PROCEDURE (this: _DTaskItem) PUTActualWork* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33040, p1)
    END PUTActualWork;

    PROCEDURE (this: _DTaskItem) CardData* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33067)
    END CardData;

    PROCEDURE (this: _DTaskItem) PUTCardData* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33067, p1)
    END PUTCardData;

    PROCEDURE (this: _DTaskItem) Complete* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33052)
    END Complete;

    PROCEDURE (this: _DTaskItem) PUTComplete* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33052, p1)
    END PUTComplete;

    PROCEDURE (this: _DTaskItem) Contacts* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34106)
    END Contacts;

    PROCEDURE (this: _DTaskItem) PUTContacts* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34106, p1)
    END PUTContacts;

    PROCEDURE (this: _DTaskItem) DateCompleted* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33039)
    END DateCompleted;

    PROCEDURE (this: _DTaskItem) PUTDateCompleted* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33039, p1)
    END PUTDateCompleted;

    PROCEDURE (this: _DTaskItem) DelegationState* (): OlTaskDelegationState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33066)
    END DelegationState;

    PROCEDURE (this: _DTaskItem) Delegator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33057)
    END Delegator;

    PROCEDURE (this: _DTaskItem) DueDate* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33029)
    END DueDate;

    PROCEDURE (this: _DTaskItem) PUTDueDate* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33029, p1)
    END PUTDueDate;

    PROCEDURE (this: _DTaskItem) IsRecurring* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62999)
    END IsRecurring;

    PROCEDURE (this: _DTaskItem) Ordinal* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33059)
    END Ordinal;

    PROCEDURE (this: _DTaskItem) PUTOrdinal* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33059, p1)
    END PUTOrdinal;

    PROCEDURE (this: _DTaskItem) Owner* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33055)
    END Owner;

    PROCEDURE (this: _DTaskItem) PUTOwner* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33055, p1)
    END PUTOwner;

    PROCEDURE (this: _DTaskItem) Ownership* (): OlTaskOwnership, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33065)
    END Ownership;

    PROCEDURE (this: _DTaskItem) PercentComplete* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 63007)
    END PercentComplete;

    PROCEDURE (this: _DTaskItem) PUTPercentComplete* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 63007, p1)
    END PUTPercentComplete;

    PROCEDURE (this: _DTaskItem) Recipients* (): Recipients, NEW;
    BEGIN
        RETURN ThisRecipients(CtlC.GetAny(this, 63508))
    END Recipients;

    PROCEDURE (this: _DTaskItem) ReminderOverrideDefault* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34076)
    END ReminderOverrideDefault;

    PROCEDURE (this: _DTaskItem) PUTReminderOverrideDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34076, p1)
    END PUTReminderOverrideDefault;

    PROCEDURE (this: _DTaskItem) ReminderPlaySound* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34078)
    END ReminderPlaySound;

    PROCEDURE (this: _DTaskItem) PUTReminderPlaySound* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34078, p1)
    END PUTReminderPlaySound;

    PROCEDURE (this: _DTaskItem) ReminderSet* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34051)
    END ReminderSet;

    PROCEDURE (this: _DTaskItem) PUTReminderSet* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34051, p1)
    END PUTReminderSet;

    PROCEDURE (this: _DTaskItem) ReminderSoundFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34079)
    END ReminderSoundFile;

    PROCEDURE (this: _DTaskItem) PUTReminderSoundFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34079, p1)
    END PUTReminderSoundFile;

    PROCEDURE (this: _DTaskItem) ReminderTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 34050)
    END ReminderTime;

    PROCEDURE (this: _DTaskItem) PUTReminderTime* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 34050, p1)
    END PUTReminderTime;

    PROCEDURE (this: _DTaskItem) ResponseState* (): OlTaskResponse, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 63011)
    END ResponseState;

    PROCEDURE (this: _DTaskItem) Role* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33063)
    END Role;

    PROCEDURE (this: _DTaskItem) PUTRole* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33063, p1)
    END PUTRole;

    PROCEDURE (this: _DTaskItem) SchedulePlusPriority* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 33071)
    END SchedulePlusPriority;

    PROCEDURE (this: _DTaskItem) PUTSchedulePlusPriority* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 33071, p1)
    END PUTSchedulePlusPriority;

    PROCEDURE (this: _DTaskItem) StartDate* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 33028)
    END StartDate;

    PROCEDURE (this: _DTaskItem) PUTStartDate* (p1: CtlT.OleDate), NEW;
    BEGIN
        CtlC.PutDate(this, 33028, p1)
    END PUTStartDate;

    PROCEDURE (this: _DTaskItem) Status* (): OlTaskStatus, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33025)
    END Status;

    PROCEDURE (this: _DTaskItem) PUTStatus* (p1: OlTaskStatus), NEW;
    BEGIN
        CtlC.PutInt(this, 33025, p1)
    END PUTStatus;

    PROCEDURE (this: _DTaskItem) StatusOnCompletionRecipients* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3586)
    END StatusOnCompletionRecipients;

    PROCEDURE (this: _DTaskItem) PUTStatusOnCompletionRecipients* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3586, p1)
    END PUTStatusOnCompletionRecipients;

    PROCEDURE (this: _DTaskItem) StatusUpdateRecipients* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3587)
    END StatusUpdateRecipients;

    PROCEDURE (this: _DTaskItem) PUTStatusUpdateRecipients* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 3587, p1)
    END PUTStatusUpdateRecipients;

    PROCEDURE (this: _DTaskItem) TeamTask* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 33027)
    END TeamTask;

    PROCEDURE (this: _DTaskItem) PUTTeamTask* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 33027, p1)
    END PUTTeamTask;

    PROCEDURE (this: _DTaskItem) TotalWork* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 33041)
    END TotalWork;

    PROCEDURE (this: _DTaskItem) PUTTotalWork* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 33041, p1)
    END PUTTotalWork;

    PROCEDURE (this: _DTaskItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DTaskItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DTaskItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DTaskItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DTaskItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DTaskItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DTaskItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DTaskItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DTaskItem) Assign* (): TaskItem, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63008, ret);
        RETURN This_DTaskItem(CtlC.VarAny(ret))
    END Assign;

    PROCEDURE (this: _DTaskItem) CancelResponseState* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 63010, NIL);
    END CancelResponseState;

    PROCEDURE (this: _DTaskItem) ClearRecurrencePattern* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61605, NIL);
    END ClearRecurrencePattern;

    PROCEDURE (this: _DTaskItem) GetRecurrencePattern* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61604, NIL);
    END GetRecurrencePattern;

    PROCEDURE (this: _DTaskItem) MarkComplete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 62989, NIL);
    END MarkComplete;

    PROCEDURE (this: _DTaskItem) Respond* (Response: OlTaskResponse; fNoUI: CtlT.Any; fAdditionalTextDialog: CtlT.Any): TaskItem, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Response, arg[2]);
        CtlC.AnyVar(fNoUI, arg[1]);
        CtlC.AnyVar(fAdditionalTextDialog, arg[0]);
        CtlC.CallParMethod(this, 63009, arg, ret);
        RETURN This_DTaskItem(CtlC.VarAny(ret))
    END Respond;

    PROCEDURE (this: _DTaskItem) Send* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61557, NIL);
    END Send;

    PROCEDURE (this: _DTaskItem) SkipRecurrence* (): BOOLEAN, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 63012, ret);
        RETURN CtlC.VarBool(ret)
    END SkipRecurrence;

    PROCEDURE (this: _DTaskItem) StatusReport* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 62994, ret);
        RETURN CtlC.VarObj(ret)
    END StatusReport;


    (* ---------- _DTaskRequestAcceptItem, hidden ---------- *)

    PROCEDURE (this: _DTaskRequestAcceptItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DTaskRequestAcceptItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DTaskRequestAcceptItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DTaskRequestAcceptItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DTaskRequestAcceptItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DTaskRequestAcceptItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DTaskRequestAcceptItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DTaskRequestAcceptItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DTaskRequestAcceptItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DTaskRequestAcceptItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DTaskRequestAcceptItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DTaskRequestAcceptItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DTaskRequestAcceptItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DTaskRequestAcceptItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DTaskRequestAcceptItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DTaskRequestAcceptItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DTaskRequestAcceptItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DTaskRequestAcceptItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DTaskRequestAcceptItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DTaskRequestAcceptItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DTaskRequestAcceptItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DTaskRequestAcceptItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DTaskRequestAcceptItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DTaskRequestAcceptItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DTaskRequestAcceptItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DTaskRequestAcceptItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DTaskRequestAcceptItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DTaskRequestAcceptItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DTaskRequestAcceptItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DTaskRequestAcceptItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DTaskRequestAcceptItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DTaskRequestAcceptItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DTaskRequestAcceptItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DTaskRequestAcceptItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DTaskRequestAcceptItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_DTaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;


    (* ---------- _DTaskRequestDeclineItem, hidden ---------- *)

    PROCEDURE (this: _DTaskRequestDeclineItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DTaskRequestDeclineItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DTaskRequestDeclineItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DTaskRequestDeclineItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DTaskRequestDeclineItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DTaskRequestDeclineItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DTaskRequestDeclineItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DTaskRequestDeclineItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DTaskRequestDeclineItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DTaskRequestDeclineItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DTaskRequestDeclineItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DTaskRequestDeclineItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DTaskRequestDeclineItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DTaskRequestDeclineItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DTaskRequestDeclineItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DTaskRequestDeclineItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DTaskRequestDeclineItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DTaskRequestDeclineItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DTaskRequestDeclineItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DTaskRequestDeclineItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DTaskRequestDeclineItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DTaskRequestDeclineItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DTaskRequestDeclineItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DTaskRequestDeclineItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DTaskRequestDeclineItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DTaskRequestDeclineItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DTaskRequestDeclineItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DTaskRequestDeclineItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DTaskRequestDeclineItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DTaskRequestDeclineItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DTaskRequestDeclineItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DTaskRequestDeclineItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DTaskRequestDeclineItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DTaskRequestDeclineItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DTaskRequestDeclineItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_DTaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;


    (* ---------- _DTaskRequestItem ---------- *)

    PROCEDURE (this: _DTaskRequestItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DTaskRequestItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DTaskRequestItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DTaskRequestItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DTaskRequestItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DTaskRequestItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DTaskRequestItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DTaskRequestItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DTaskRequestItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DTaskRequestItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DTaskRequestItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DTaskRequestItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DTaskRequestItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DTaskRequestItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DTaskRequestItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DTaskRequestItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DTaskRequestItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DTaskRequestItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DTaskRequestItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DTaskRequestItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DTaskRequestItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DTaskRequestItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DTaskRequestItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DTaskRequestItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DTaskRequestItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DTaskRequestItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DTaskRequestItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DTaskRequestItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DTaskRequestItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DTaskRequestItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DTaskRequestItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DTaskRequestItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DTaskRequestItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DTaskRequestItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DTaskRequestItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DTaskRequestItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DTaskRequestItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DTaskRequestItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DTaskRequestItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DTaskRequestItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DTaskRequestItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DTaskRequestItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DTaskRequestItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DTaskRequestItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DTaskRequestItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_DTaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;


    (* ---------- _DTaskRequestUpdateItem, hidden ---------- *)

    PROCEDURE (this: _DTaskRequestUpdateItem) Actions* (): Actions, NEW;
    BEGIN
        RETURN ThisActions(CtlC.GetAny(this, 63511))
    END Actions;

    PROCEDURE (this: _DTaskRequestUpdateItem) Application* (): Application, NEW;
    BEGIN
        RETURN This_DApplication(CtlC.GetAny(this, 61440))
    END Application;

    PROCEDURE (this: _DTaskRequestUpdateItem) Attachments* (): Attachments, NEW;
    BEGIN
        RETURN ThisAttachments(CtlC.GetAny(this, 63509))
    END Attachments;

    PROCEDURE (this: _DTaskRequestUpdateItem) BillingInformation* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34101)
    END BillingInformation;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTBillingInformation* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34101, p1)
    END PUTBillingInformation;

    PROCEDURE (this: _DTaskRequestUpdateItem) Body* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 37120)
    END Body;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTBody* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 37120, p1)
    END PUTBody;

    PROCEDURE (this: _DTaskRequestUpdateItem) Categories* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 36865)
    END Categories;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTCategories* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 36865, p1)
    END PUTCategories;

    PROCEDURE (this: _DTaskRequestUpdateItem) Companies* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34107)
    END Companies;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTCompanies* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34107, p1)
    END PUTCompanies;

    PROCEDURE (this: _DTaskRequestUpdateItem) CreationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12295)
    END CreationTime;

    PROCEDURE (this: _DTaskRequestUpdateItem) EntryID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 61470)
    END EntryID;

    PROCEDURE (this: _DTaskRequestUpdateItem) FormDescription* (): FormDescription, NEW;
    BEGIN
        RETURN ThisFormDescription(CtlC.GetAny(this, 61589))
    END FormDescription;

    PROCEDURE (this: _DTaskRequestUpdateItem) GetInspector* (): Inspector, NEW;
    BEGIN
        RETURN ThisInspector(CtlC.GetAny(this, 61502))
    END GetInspector;

    PROCEDURE (this: _DTaskRequestUpdateItem) Importance* (): OlImportance, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 23)
    END Importance;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTImportance* (p1: OlImportance), NEW;
    BEGIN
        CtlC.PutInt(this, 23, p1)
    END PUTImportance;

    PROCEDURE (this: _DTaskRequestUpdateItem) LastModificationTime* (): CtlT.OleDate, NEW;
    BEGIN
        RETURN CtlC.GetDate(this, 12296)
    END LastModificationTime;

    PROCEDURE (this: _DTaskRequestUpdateItem) MessageClass* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 26)
    END MessageClass;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTMessageClass* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 26, p1)
    END PUTMessageClass;

    PROCEDURE (this: _DTaskRequestUpdateItem) Mileage* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34100)
    END Mileage;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTMileage* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 34100, p1)
    END PUTMileage;

    PROCEDURE (this: _DTaskRequestUpdateItem) NoAging* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34062)
    END NoAging;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTNoAging* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34062, p1)
    END PUTNoAging;

    PROCEDURE (this: _DTaskRequestUpdateItem) OutlookInternalVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34130)
    END OutlookInternalVersion;

    PROCEDURE (this: _DTaskRequestUpdateItem) OutlookVersion* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 34132)
    END OutlookVersion;

    PROCEDURE (this: _DTaskRequestUpdateItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

    PROCEDURE (this: _DTaskRequestUpdateItem) Saved* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61603)
    END Saved;

    PROCEDURE (this: _DTaskRequestUpdateItem) Sensitivity* (): OlSensitivity, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 54)
    END Sensitivity;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTSensitivity* (p1: OlSensitivity), NEW;
    BEGIN
        CtlC.PutInt(this, 54, p1)
    END PUTSensitivity;

    PROCEDURE (this: _DTaskRequestUpdateItem) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 3592)
    END Size;

    PROCEDURE (this: _DTaskRequestUpdateItem) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 55)
    END Subject;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 55, p1)
    END PUTSubject;

    PROCEDURE (this: _DTaskRequestUpdateItem) UnRead* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61468)
    END UnRead;

    PROCEDURE (this: _DTaskRequestUpdateItem) PUTUnRead* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61468, p1)
    END PUTUnRead;

    PROCEDURE (this: _DTaskRequestUpdateItem) UserProperties* (): UserProperties, NEW;
    BEGIN
        RETURN ThisUserProperties(CtlC.GetAny(this, 63510))
    END UserProperties;

    PROCEDURE (this: _DTaskRequestUpdateItem) Close* (SaveMode: OlInspectorClose), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SaveMode, arg[0]);
        CtlC.CallParMethod(this, 61475, arg, NIL);
    END Close;

    PROCEDURE (this: _DTaskRequestUpdateItem) Copy* (): CtlT.Object, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 61490, ret);
        RETURN CtlC.VarObj(ret)
    END Copy;

    PROCEDURE (this: _DTaskRequestUpdateItem) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61514, NIL);
    END Delete;

    PROCEDURE (this: _DTaskRequestUpdateItem) Display* ((* optional *) Modal: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Modal, arg[0]);
        CtlC.CallParMethod(this, 61606, arg, NIL);
    END Display;

    PROCEDURE (this: _DTaskRequestUpdateItem) Move* (DestFldr: MAPIFolder): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(DestFldr, arg[0]);
        CtlC.CallParMethod(this, 61492, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Move;

    PROCEDURE (this: _DTaskRequestUpdateItem) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61512, NIL);
    END Save;

    PROCEDURE (this: _DTaskRequestUpdateItem) SaveAs* (Path: ARRAY OF CHAR; (* optional *) Type: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[1]);
        CtlC.AnyVar(Type, arg[0]);
        CtlC.CallParMethod(this, 61521, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _DTaskRequestUpdateItem) PrintOut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 61491, NIL);
    END PrintOut;

    PROCEDURE (this: _DTaskRequestUpdateItem) GetAssociatedTask* (AddToTaskList: BOOLEAN): TaskItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(AddToTaskList, arg[0]);
        CtlC.CallParMethod(this, 61460, arg, ret);
        RETURN This_DTaskItem(CtlC.VarAny(ret))
    END GetAssociatedTask;


    (* ---------- UserProperties ---------- *)

    PROCEDURE (this: UserProperties) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 80)
    END Count;

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

    PROCEDURE (this: UserProperties) Find* (Name: ARRAY OF CHAR; (* optional *) Custom: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Custom, arg[0]);
        CtlC.CallParMethod(this, 103, arg, NIL);
    END Find;

    PROCEDURE (this: UserProperties) Item* (Index: CtlT.Any): UserProperty, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 81, arg, ret);
        RETURN ThisUserProperty(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: UserProperties) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 82, arg, NIL);
    END Remove;


    (* ---------- UserProperty ---------- *)

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
        RETURN CtlC.GetStr(this, 12289)
    END Name;

    PROCEDURE (this: UserProperty) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 61441)
    END Parent;

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

    PROCEDURE (this: _DRecipientControl) Font* (): CtlMSForms.Font, NEW;
    BEGIN
        RETURN CtlMSForms.ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: _DRecipientControl) PUTFont* (p1: CtlMSForms.Font), NEW;
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


    PROCEDURE NewApplication* (): _DApplication;
    BEGIN
        RETURN This_DApplication(CtlC.NewObj("{0006F033-0000-0000-C000-000000000046}"))
    END NewApplication;

    PROCEDURE NewAppointmentItem* (): _DAppointmentItem;
    BEGIN
        RETURN This_DAppointmentItem(CtlC.NewObj("{00061030-0000-0000-C000-000000000046}"))
    END NewAppointmentItem;

    PROCEDURE NewContactItem* (): _DContactItem;
    BEGIN
        RETURN This_DContactItem(CtlC.NewObj("{00061031-0000-0000-C000-000000000046}"))
    END NewContactItem;

    PROCEDURE NewJournalItem* (): _DJournalItem;
    BEGIN
        RETURN This_DJournalItem(CtlC.NewObj("{00061037-0000-0000-C000-000000000046}"))
    END NewJournalItem;

    PROCEDURE NewMailItem* (): _DMailItem;
    BEGIN
        RETURN This_DMailItem(CtlC.NewObj("{00061033-0000-0000-C000-000000000046}"))
    END NewMailItem;

    PROCEDURE New_MeetingCanceledItem* (): _DMeetingCanceledItem;
    BEGIN
        RETURN This_DMeetingCanceledItem(CtlC.NewObj("{00061040-0000-0000-C000-000000000046}"))
    END New_MeetingCanceledItem;

    PROCEDURE New_MeetingRequestAcceptedItem* (): _DMeetingRequestAcceptedItem;
    BEGIN
        RETURN This_DMeetingRequestAcceptedItem(CtlC.NewObj("{00061042-0000-0000-C000-000000000046}"))
    END New_MeetingRequestAcceptedItem;

    PROCEDURE New_MeetingRequestDeclinedItem* (): _DMeetingRequestDeclinedItem;
    BEGIN
        RETURN This_DMeetingRequestDeclinedItem(CtlC.NewObj("{00061043-0000-0000-C000-000000000046}"))
    END New_MeetingRequestDeclinedItem;

    PROCEDURE NewMeetingRequestItem* (): _DMeetingRequestItem;
    BEGIN
        RETURN This_DMeetingRequestItem(CtlC.NewObj("{00061041-0000-0000-C000-000000000046}"))
    END NewMeetingRequestItem;

    PROCEDURE New_MeetingRequestTentativeItem* (): _DMeetingRequestTentativeItem;
    BEGIN
        RETURN This_DMeetingRequestTentativeItem(CtlC.NewObj("{00061044-0000-0000-C000-000000000046}"))
    END New_MeetingRequestTentativeItem;

    PROCEDURE NewNoteItem* (): _DNoteItem;
    BEGIN
        RETURN This_DNoteItem(CtlC.NewObj("{00061034-0000-0000-C000-000000000046}"))
    END NewNoteItem;

    PROCEDURE New_OfficeDocumentItem* (): _DOfficeDocumentItem;
    BEGIN
        RETURN This_DOfficeDocumentItem(CtlC.NewObj("{00061061-0000-0000-C000-000000000046}"))
    END New_OfficeDocumentItem;

    PROCEDURE NewPostItem* (): _DPostItem;
    BEGIN
        RETURN This_DPostItem(CtlC.NewObj("{0006103A-0000-0000-C000-000000000046}"))
    END NewPostItem;

    PROCEDURE NewRemoteItem* (): _DRemoteItem;
    BEGIN
        RETURN This_DRemoteItem(CtlC.NewObj("{00061060-0000-0000-C000-000000000046}"))
    END NewRemoteItem;

    PROCEDURE NewReportItem* (): _DReportItem;
    BEGIN
        RETURN This_DReportItem(CtlC.NewObj("{00061035-0000-0000-C000-000000000046}"))
    END NewReportItem;

    PROCEDURE NewTaskItem* (): _DTaskItem;
    BEGIN
        RETURN This_DTaskItem(CtlC.NewObj("{00061032-0000-0000-C000-000000000046}"))
    END NewTaskItem;

    PROCEDURE New_TaskRequestAcceptItem* (): _DTaskRequestAcceptItem;
    BEGIN
        RETURN This_DTaskRequestAcceptItem(CtlC.NewObj("{00061052-0000-0000-C000-000000000046}"))
    END New_TaskRequestAcceptItem;

    PROCEDURE New_TaskRequestDeclineItem* (): _DTaskRequestDeclineItem;
    BEGIN
        RETURN This_DTaskRequestDeclineItem(CtlC.NewObj("{00061053-0000-0000-C000-000000000046}"))
    END New_TaskRequestDeclineItem;

    PROCEDURE NewTaskRequestItem* (): _DTaskRequestItem;
    BEGIN
        RETURN This_DTaskRequestItem(CtlC.NewObj("{00061050-0000-0000-C000-000000000046}"))
    END NewTaskRequestItem;

    PROCEDURE New_TaskRequestUpdateItem* (): _DTaskRequestUpdateItem;
    BEGIN
        RETURN This_DTaskRequestUpdateItem(CtlC.NewObj("{00061051-0000-0000-C000-000000000046}"))
    END New_TaskRequestUpdateItem;

    PROCEDURE New_RecipientControl* (): _DRecipientControl;
    BEGIN
        RETURN This_DRecipientControl(CtlC.NewObj("{0006F023-0000-0000-C000-000000000046}"))
    END New_RecipientControl;

    PROCEDURE New_DocSiteControl* (): _DDocSiteControl;
    BEGIN
        RETURN This_DDocSiteControl(CtlC.NewObj("{0006F024-0000-0000-C000-000000000046}"))
    END New_DocSiteControl;

END CtlOutlook8.
