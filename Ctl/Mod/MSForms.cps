MODULE CtlMSForms;
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

    (* Microsoft Forms 2.0 Object Library, help: C:\WIN95\SYSTEM\fm20.hlp, id: 0 *)
    (* guid: {0D452EE1-E08F-101A-852E-02608C4D0BB4}, lcid: 0, syskind: win32, version: 2.0, control *)

    IMPORT CtlT, CtlC, CtlStdType;

    CONST
        (* fmDropEffect *)
            fmDropEffectNone* = 0; (* None *)
            fmDropEffectCopy* = 1; (* Copy *)
            fmDropEffectMove* = 2; (* Move *)
            fmDropEffectCopyOrMove* = 3; (* CopyOrMove *)
        (* fmAction *)
            fmActionCut* = 0; (* Cut *)
            fmActionCopy* = 1; (* Copy *)
            fmActionPaste* = 2; (* Paste *)
            fmActionDragDrop* = 3; (* DragDrop *)
        (* fmMode *)
            fmModeInherit* = -2; (* Inherit *)
            fmModeOn* = -1; (* On *)
            fmModeOff* = 0; (* Off *)
        (* fmMousePointer *)
            fmMousePointerDefault* = 0; (* Default *)
            fmMousePointerArrow* = 1; (* Arrow *)
            fmMousePointerCross* = 2; (* Cross *)
            fmMousePointerIBeam* = 3; (* IBeam *)
            fmMousePointerSizeNESW* = 6; (* SizeNESW *)
            fmMousePointerSizeNS* = 7; (* SizeNS *)
            fmMousePointerSizeNWSE* = 8; (* SizeNWSE *)
            fmMousePointerSizeWE* = 9; (* SizeWE *)
            fmMousePointerUpArrow* = 10; (* UpArrow *)
            fmMousePointerHourGlass* = 11; (* HourGlass *)
            fmMousePointerNoDrop* = 12; (* NoDrop *)
            fmMousePointerAppStarting* = 13; (* AppStarting *)
            fmMousePointerHelp* = 14; (* Help *)
            fmMousePointerSizeAll* = 15; (* SizeAll *)
            fmMousePointerCustom* = 99; (* Custom *)
        (* fmScrollBars *)
            fmScrollBarsNone* = 0; (* None *)
            fmScrollBarsHorizontal* = 1; (* Horizontal *)
            fmScrollBarsVertical* = 2; (* Vertical *)
            fmScrollBarsBoth* = 3; (* Both *)
        (* fmScrollAction *)
            fmScrollActionNoChange* = 0; (* NoChange *)
            fmScrollActionLineUp* = 1; (* LineUp *)
            fmScrollActionLineDown* = 2; (* LineDown *)
            fmScrollActionPageUp* = 3; (* PageUp *)
            fmScrollActionPageDown* = 4; (* PageDown *)
            fmScrollActionBegin* = 5; (* Begin *)
            fmScrollActionEnd* = 6; (* End *)
            _fmScrollActionAbsoluteChange* = 7; (* AbsoluteChange *)
            fmScrollActionPropertyChange* = 8; (* PropertyChange *)
            fmScrollActionControlRequest* = 9; (* ControlRequest *)
            fmScrollActionFocusRequest* = 10; (* FocusRequest *)
        (* fmCycle *)
            fmCycleAllForms* = 0; (* AllForms *)
            fmCycleCurrentForm* = 2; (* CurrentForm *)
        (* fmZOrder *)
            fmZOrderFront* = 0; (* Front *)
            fmZOrderBack* = 1; (* Back *)
        (* fmBorderStyle *)
            fmBorderStyleNone* = 0; (* None *)
            fmBorderStyleSingle* = 1; (* Single *)
        (* fmTextAlign *)
            fmTextAlignLeft* = 1; (* Left *)
            fmTextAlignCenter* = 2; (* Center *)
            fmTextAlignRight* = 3; (* Right *)
        (* fmAlignment *)
            fmAlignmentLeft* = 0; (* Left *)
            fmAlignmentRight* = 1; (* Right *)
        (* fmBorders *)
            fmBordersNone* = 0; (* None *)
            fmBordersBox* = 1; (* Box *)
            fmBordersLeft* = 2; (* Left *)
            fmBordersTop* = 3; (* Top *)
        (* fmBackStyle *)
            fmBackStyleTransparent* = 0; (* Transparent *)
            fmBackStyleOpaque* = 1; (* Opaque *)
        (* fmButtonStyle *)
            fmButtonStylePushButton* = 0; (* PushButton *)
            fmButtonStyleToggleButton* = 1; (* ToggleButton *)
        (* fmPicPosition *)
            fmPicPositionCenter* = 0; (* Center *)
            fmPicPositionTopLeft* = 1; (* TopLeft *)
            fmPicPositionTopCenter* = 2; (* TopCenter *)
            fmPicPositionTopRight* = 3; (* TopRight *)
            fmPicPositionCenterLeft* = 4; (* CenterLeft *)
            fmPicPositionCenterRight* = 5; (* CenterRight *)
            fmPicPositionBottomLeft* = 6; (* BottomLeft *)
            fmPicPositionBottomCenter* = 7; (* BottomCenter *)
            fmPicPositionBottomRight* = 8; (* BottomRight *)
        (* fmVerticalScrollBarSide *)
            fmVerticalScrollBarSideRight* = 0; (* Right *)
            fmVerticalScrollBarSideLeft* = 1; (* Left *)
        (* fmLayoutEffect *)
            fmLayoutEffectNone* = 0; (* None *)
            fmLayoutEffectInitiate* = 1; (* Initiate *)
            _fmLayoutEffectRespond* = 2; (* Respond *)
        (* fmSpecialEffect *)
            fmSpecialEffectFlat* = 0; (* Flat *)
            fmSpecialEffectRaised* = 1; (* Raised *)
            fmSpecialEffectSunken* = 2; (* Sunken *)
            fmSpecialEffectEtched* = 3; (* Etched *)
            fmSpecialEffectBump* = 6; (* Bump *)
        (* fmDragState *)
            fmDragStateEnter* = 0; (* Enter *)
            fmDragStateLeave* = 1; (* Leave *)
            fmDragStateOver* = 2; (* Over *)
        (* fmPictureSizeMode *)
            fmPictureSizeModeClip* = 0; (* Clip *)
            fmPictureSizeModeStretch* = 1; (* Stretch *)
            fmPictureSizeModeZoom* = 3; (* Zoom *)
        (* fmPictureAlignment *)
            fmPictureAlignmentTopLeft* = 0; (* TopLeft *)
            fmPictureAlignmentTopRight* = 1; (* TopRight *)
            fmPictureAlignmentCenter* = 2; (* Center *)
            fmPictureAlignmentBottomLeft* = 3; (* BottomLeft *)
            fmPictureAlignmentBottomRight* = 4; (* BottomRight *)
        (* fmButtonEffect *)
            fmButtonEffectFlat* = 0; (* Flat *)
            fmButtonEffectSunken* = 2; (* Sunken *)
        (* fmOrientation *)
            fmOrientationAuto* = -1; (* Auto *)
            fmOrientationVertical* = 0; (* Vertical *)
            fmOrientationHorizontal* = 1; (* Horizontal *)
        (* fmSnapPoint *)
            fmSnapPointTopLeft* = 0; (* TopLeft *)
            fmSnapPointTopCenter* = 1; (* TopCenter *)
            fmSnapPointTopRight* = 2; (* TopRight *)
            fmSnapPointCenterLeft* = 3; (* CenterLeft *)
            fmSnapPointCenter* = 4; (* Center *)
            fmSnapPointCenterRight* = 5; (* CenterRight *)
            fmSnapPointBottomLeft* = 6; (* BottomLeft *)
            fmSnapPointBottomCenter* = 7; (* BottomCenter *)
            fmSnapPointBottomRight* = 8; (* BottomRight *)
        (* fmPicturePosition *)
            fmPicturePositionLeftTop* = 0; (* LeftTop *)
            fmPicturePositionLeftCenter* = 1; (* LeftCenter *)
            fmPicturePositionLeftBottom* = 2; (* LeftBottom *)
            fmPicturePositionRightTop* = 3; (* RightTop *)
            fmPicturePositionRightCenter* = 4; (* RightCenter *)
            fmPicturePositionRightBottom* = 5; (* RightBottom *)
            fmPicturePositionAboveLeft* = 6; (* AboveLeft *)
            fmPicturePositionAboveCenter* = 7; (* AboveCenter *)
            fmPicturePositionAboveRight* = 8; (* AboveRight *)
            fmPicturePositionBelowLeft* = 9; (* BelowLeft *)
            fmPicturePositionBelowCenter* = 10; (* BelowCenter *)
            fmPicturePositionBelowRight* = 11; (* BelowRight *)
            fmPicturePositionCenter* = 12; (* Center *)
        (* fmDisplayStyle *)
            fmDisplayStyleText* = 1; (* Text *)
            fmDisplayStyleList* = 2; (* List *)
            fmDisplayStyleCombo* = 3; (* Combo *)
            fmDisplayStyleCheckBox* = 4; (* CheckBox *)
            fmDisplayStyleOptionButton* = 5; (* OptionButton *)
            fmDisplayStyleToggle* = 6; (* Toggle *)
            fmDisplayStyleDropList* = 7; (* DropList *)
        (* fmShowListWhen *)
            fmShowListWhenNever* = 0; (* Never *)
            fmShowListWhenButton* = 1; (* Button *)
            fmShowListWhenFocus* = 2; (* Focus *)
            fmShowListWhenAlways* = 3; (* Always *)
        (* fmShowDropButtonWhen *)
            fmShowDropButtonWhenNever* = 0; (* Never *)
            fmShowDropButtonWhenFocus* = 1; (* Focus *)
            fmShowDropButtonWhenAlways* = 2; (* Always *)
        (* fmMultiSelect *)
            fmMultiSelectSingle* = 0; (* Single *)
            fmMultiSelectMulti* = 1; (* Multi *)
            fmMultiSelectExtended* = 2; (* Extended *)
        (* fmListStyle *)
            fmListStylePlain* = 0; (* Plain *)
            fmListStyleOption* = 1; (* Option *)
        (* fmEnterFieldBehavior *)
            fmEnterFieldBehaviorSelectAll* = 0; (* SelectAll *)
            fmEnterFieldBehaviorRecallSelection* = 1; (* RecallSelection *)
        (* fmDragBehavior *)
            fmDragBehaviorDisabled* = 0; (* Disabled *)
            fmDragBehaviorEnabled* = 1; (* Enabled *)
        (* fmMatchEntry *)
            fmMatchEntryFirstLetter* = 0; (* FirstLetter *)
            fmMatchEntryComplete* = 1; (* Complete *)
            fmMatchEntryNone* = 2; (* None *)
        (* fmDropButtonStyle *)
            fmDropButtonStylePlain* = 0; (* Plain *)
            fmDropButtonStyleArrow* = 1; (* Arrow *)
            fmDropButtonStyleEllipsis* = 2; (* Ellipsis *)
            fmDropButtonStyleReduce* = 3; (* Reduce *)
        (* fmStyle *)
            fmStyleDropDownCombo* = 0; (* DropDownCombo *)
            fmStyleDropDownList* = 2; (* DropDownList *)
        (* fmTabOrientation *)
            fmTabOrientationTop* = 0; (* Top *)
            fmTabOrientationBottom* = 1; (* Bottom *)
            fmTabOrientationLeft* = 2; (* Left *)
            fmTabOrientationRight* = 3; (* Right *)
        (* fmTabStyle *)
            fmTabStyleTabs* = 0; (* Tabs *)
            fmTabStyleButtons* = 1; (* Buttons *)
            fmTabStyleNone* = 2; (* None *)
        (* fmIMEMode *)
            fmIMEModeNoControl* = 0; (* NoControl *)
            fmIMEModeOn* = 1; (* On *)
            fmIMEModeOff* = 2; (* Off *)
            fmIMEModeDisable* = 3; (* Disable *)
            fmIMEModeHiragana* = 4; (* Hiragana *)
            fmIMEModeKatakana* = 5; (* Katakana *)
            fmIMEModeKatakanaHalf* = 6; (* KatakanaHalf *)
            fmIMEModeAlphaFull* = 7; (* AlphaFull *)
            fmIMEModeAlpha* = 8; (* Alpha *)
            fmIMEModeHangulFull* = 9; (* HangulFull *)
            fmIMEModeHangul* = 10; (* Hangul *)
            fmIMEModeHanziFull* = 11; (* HanziFull *)
            fmIMEModeHanzi* = 12; (* Hanzi *)
        (* fmTransitionEffect *)
            fmTransitionEffectNone* = 0; (* None *)
            fmTransitionEffectCoverUp* = 1; (* CoverUp *)
            fmTransitionEffectCoverRightUp* = 2; (* CoverRightUp *)
            fmTransitionEffectCoverRight* = 3; (* CoverRight *)
            fmTransitionEffectCoverRightDown* = 4; (* CoverRightDown *)
            fmTransitionEffectCoverDown* = 5; (* CoverDown *)
            fmTransitionEffectCoverLeftDown* = 6; (* CoverLeftDown *)
            fmTransitionEffectCoverLeft* = 7; (* CoverLeft *)
            fmTransitionEffectCoverLeftUp* = 8; (* CoverLeftUp *)
            fmTransitionEffectPushUp* = 9; (* PushUp *)
            fmTransitionEffectPushRight* = 10; (* PushRight *)
            fmTransitionEffectPushDown* = 11; (* PushDown *)
            fmTransitionEffectPushLeft* = 12; (* PushLeft *)
        (* fmListBoxStyles, hidden *)
            _fmListBoxStylesNone* = 0; (* None *)
            _fmListBoxStylesListBox* = 1; (* ListBox *)
            _fmListBoxStylesComboBox* = 2; (* ComboBox *)
        (* fmRepeatDirection, hidden *)
            _fmRepeatDirectionHorizontal* = 0; (* Horizontal *)
            _fmRepeatDirectionVertical* = 1; (* Vertical *)
        (* fmEnAutoSize, hidden *)
            _fmEnAutoSizeNone* = 0; (* None *)
            _fmEnAutoSizeHorizontal* = 1; (* Horizontal *)
            _fmEnAutoSizeVertical* = 2; (* Vertical *)
            _fmEnAutoSizeBoth* = 3; (* Both *)


    TYPE
        OLE_COLOR* = INTEGER;
        OLE_HANDLE* = INTEGER;
        OLE_OPTEXCLUSIVE* = BOOLEAN;
        Font* = POINTER TO RECORD (CtlT.Object) END;
        fmDropEffect* = INTEGER;
        fmAction* = INTEGER;
        IDataAutoWrapper* = POINTER TO RECORD (CtlT.Object) END;
        IReturnInteger* = POINTER TO RECORD (CtlT.Object) END;
        IReturnBoolean* = POINTER TO RECORD (CtlT.Object) END;
        IReturnString* = POINTER TO RECORD (CtlT.Object) END;
        IReturnSingle* = POINTER TO RECORD (CtlT.Object) END;
        IReturnEffect* = POINTER TO RECORD (CtlT.Object) END;
        ReturnInteger* = IReturnInteger;
        ReturnBoolean* = IReturnBoolean;
        ReturnString* = IReturnString;
        ReturnSingle* = IReturnSingle;
        ReturnEffect* = IReturnEffect;
        DataObject* = IDataAutoWrapper;
        fmMode* = INTEGER;
        fmMousePointer* = INTEGER;
        fmScrollBars* = INTEGER;
        fmScrollAction* = INTEGER;
        fmCycle* = INTEGER;
        fmZOrder* = INTEGER;
        fmBorderStyle* = INTEGER;
        fmTextAlign* = INTEGER;
        fmAlignment* = INTEGER;
        fmBorders* = INTEGER;
        fmBackStyle* = INTEGER;
        fmButtonStyle* = INTEGER;
        fmPicPosition* = INTEGER;
        fmVerticalScrollBarSide* = INTEGER;
        fmLayoutEffect* = INTEGER;
        fmSpecialEffect* = INTEGER;
        fmDragState* = INTEGER;
        fmPictureSizeMode* = INTEGER;
        fmPictureAlignment* = INTEGER;
        IControl* = POINTER TO RECORD (CtlT.Object) END;
        Controls* = POINTER TO RECORD (CtlT.Object) END;
        IOptionFrame* = POINTER TO RECORD (CtlT.Object) END;
        _UserForm* = POINTER TO RECORD (CtlT.Object) END;
        ControlEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        Control* = IControl;
        FormEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        OptionFrameEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        UserForm* = _UserForm;
        Frame* = IOptionFrame;
        fmButtonEffect* = INTEGER;
        fmOrientation* = INTEGER;
        fmSnapPoint* = INTEGER;
        fmPicturePosition* = INTEGER;
        fmDisplayStyle* = INTEGER;
        fmShowListWhen* = INTEGER;
        fmShowDropButtonWhen* = INTEGER;
        fmMultiSelect* = INTEGER;
        fmListStyle* = INTEGER;
        fmEnterFieldBehavior* = INTEGER;
        fmDragBehavior* = INTEGER;
        fmMatchEntry* = INTEGER;
        fmDropButtonStyle* = INTEGER;
        fmStyle* = INTEGER;
        fmTabOrientation* = INTEGER;
        fmTabStyle* = INTEGER;
        fmIMEMode* = INTEGER;
        ILabelControl* = POINTER TO RECORD (CtlT.Object) END;
        ICommandButton* = POINTER TO RECORD (CtlT.Object) END;
        PIROWSET* = CtlT.IUnknown;
        IMdcText* = POINTER TO RECORD (CtlT.Object) END;
        IMdcList* = POINTER TO RECORD (CtlT.Object) END;
        IMdcCombo* = POINTER TO RECORD (CtlT.Object) END;
        IMdcCheckBox* = POINTER TO RECORD (CtlT.Object) END;
        IMdcOptionButton* = POINTER TO RECORD (CtlT.Object) END;
        IMdcToggleButton* = POINTER TO RECORD (CtlT.Object) END;
        IScrollbar* = POINTER TO RECORD (CtlT.Object) END;
        Tab* = POINTER TO RECORD (CtlT.Object) END;
        Tabs* = POINTER TO RECORD (CtlT.Object) END;
        ITabStrip* = POINTER TO RECORD (CtlT.Object) END;
        ISpinbutton* = POINTER TO RECORD (CtlT.Object) END;
        IImage* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLSubmitButton* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLImage* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLReset* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLCheckbox* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLOption* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLText* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLHidden* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLPassword* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLSelect* = POINTER TO RECORD (CtlT.Object) END;
        IWHTMLTextArea* = POINTER TO RECORD (CtlT.Object) END;
        LabelControlEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        Label* = ILabelControl;
        CommandButtonEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        CommandButton* = ICommandButton;
        MdcTextEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        TextBox* = IMdcText;
        MdcListEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        ListBox* = IMdcList;
        MdcComboEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        ComboBox* = IMdcCombo;
        MdcCheckBoxEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        MdcOptionButtonEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        MdcToggleButtonEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        CheckBox* = IMdcCheckBox;
        OptionButton* = IMdcOptionButton;
        ToggleButton* = IMdcToggleButton;
        NewFont* = Font;
        ScrollbarEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        ScrollBar* = IScrollbar;
        TabStripEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        TabStrip* = ITabStrip;
        SpinbuttonEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        SpinButton* = ISpinbutton;
        ImageEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        Image* = IImage;
        WHTMLControlEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents1* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents2* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents3* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents4* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents5* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents6* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents7* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents9* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        WHTMLControlEvents10* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        HTMLSubmit* = IWHTMLSubmitButton;
        HTMLImage* = IWHTMLImage;
        HTMLReset* = IWHTMLReset;
        HTMLCheckbox* = IWHTMLCheckbox;
        HTMLOption* = IWHTMLOption;
        HTMLText* = IWHTMLText;
        HTMLHidden* = IWHTMLHidden;
        HTMLPassword* = IWHTMLPassword;
        HTMLSelect* = IWHTMLSelect;
        HTMLTextArea* = IWHTMLTextArea;
        fmTransitionEffect* = INTEGER;
        IPage* = POINTER TO RECORD (CtlT.Object) END;
        Pages* = POINTER TO RECORD (CtlT.Object) END;
        IMultiPage* = POINTER TO RECORD (CtlT.Object) END;
        MultiPageEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        MultiPage* = IMultiPage;
        Page* = IPage;
        fmListBoxStyles* = INTEGER;
        fmRepeatDirection* = INTEGER;
        fmEnAutoSize* = INTEGER;


    PROCEDURE ThisFont* (v: CtlT.Any): Font;
        VAR new: Font;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{BEF6E003-A874-101A-8BBA-00AA00300CAB}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFont;

    PROCEDURE IsFont* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{BEF6E003-A874-101A-8BBA-00AA00300CAB}")
    END IsFont;

    PROCEDURE ThisIDataAutoWrapper* (v: CtlT.Any): IDataAutoWrapper;
        VAR new: IDataAutoWrapper;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{EC72F590-F375-11CE-B9E8-00AA006B1A69}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIDataAutoWrapper;

    PROCEDURE IsIDataAutoWrapper* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{EC72F590-F375-11CE-B9E8-00AA006B1A69}")
    END IsIDataAutoWrapper;

    PROCEDURE ThisIReturnInteger* (v: CtlT.Any): IReturnInteger;
        VAR new: IReturnInteger;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{82B02370-B5BC-11CF-810F-00A0C9030074}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIReturnInteger;

    PROCEDURE IsIReturnInteger* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{82B02370-B5BC-11CF-810F-00A0C9030074}")
    END IsIReturnInteger;

    PROCEDURE ThisIReturnBoolean* (v: CtlT.Any): IReturnBoolean;
        VAR new: IReturnBoolean;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{82B02371-B5BC-11CF-810F-00A0C9030074}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIReturnBoolean;

    PROCEDURE IsIReturnBoolean* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{82B02371-B5BC-11CF-810F-00A0C9030074}")
    END IsIReturnBoolean;

    PROCEDURE ThisIReturnString* (v: CtlT.Any): IReturnString;
        VAR new: IReturnString;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{82B02372-B5BC-11CF-810F-00A0C9030074}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIReturnString;

    PROCEDURE IsIReturnString* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{82B02372-B5BC-11CF-810F-00A0C9030074}")
    END IsIReturnString;

    PROCEDURE ThisIReturnSingle* (v: CtlT.Any): IReturnSingle;
        VAR new: IReturnSingle;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8A683C90-BA84-11CF-8110-00A0C9030074}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIReturnSingle;

    PROCEDURE IsIReturnSingle* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8A683C90-BA84-11CF-8110-00A0C9030074}")
    END IsIReturnSingle;

    PROCEDURE ThisIReturnEffect* (v: CtlT.Any): IReturnEffect;
        VAR new: IReturnEffect;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8A683C91-BA84-11CF-8110-00A0C9030074}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIReturnEffect;

    PROCEDURE IsIReturnEffect* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8A683C91-BA84-11CF-8110-00A0C9030074}")
    END IsIReturnEffect;

    PROCEDURE ThisIControl* (v: CtlT.Any): IControl;
        VAR new: IControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC6-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIControl;

    PROCEDURE IsIControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC6-866C-11CF-AB7C-00AA00C08FCF}")
    END IsIControl;

    PROCEDURE ThisControls* (v: CtlT.Any): Controls;
        VAR new: Controls;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC7-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisControls;

    PROCEDURE IsControls* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC7-866C-11CF-AB7C-00AA00C08FCF}")
    END IsControls;

    PROCEDURE ThisIOptionFrame* (v: CtlT.Any): IOptionFrame;
        VAR new: IOptionFrame;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{29B86A70-F52E-11CE-9BCE-00AA00608E01}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIOptionFrame;

    PROCEDURE IsIOptionFrame* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{29B86A70-F52E-11CE-9BCE-00AA00608E01}")
    END IsIOptionFrame;

    PROCEDURE This_UserForm* (v: CtlT.Any): _UserForm;
        VAR new: _UserForm;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC8-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END This_UserForm;

    PROCEDURE Is_UserForm* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC8-866C-11CF-AB7C-00AA00C08FCF}")
    END Is_UserForm;

    PROCEDURE ThisILabelControl* (v: CtlT.Any): ILabelControl;
        VAR new: ILabelControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC1-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisILabelControl;

    PROCEDURE IsILabelControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC1-866C-11CF-AB7C-00AA00C08FCF}")
    END IsILabelControl;

    PROCEDURE ThisICommandButton* (v: CtlT.Any): ICommandButton;
        VAR new: ICommandButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC4-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisICommandButton;

    PROCEDURE IsICommandButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC4-866C-11CF-AB7C-00AA00C08FCF}")
    END IsICommandButton;

    PROCEDURE ThisIMdcText* (v: CtlT.Any): IMdcText;
        VAR new: IMdcText;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8BD21D13-EC42-11CE-9E0D-00AA006002F3}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMdcText;

    PROCEDURE IsIMdcText* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8BD21D13-EC42-11CE-9E0D-00AA006002F3}")
    END IsIMdcText;

    PROCEDURE ThisIMdcList* (v: CtlT.Any): IMdcList;
        VAR new: IMdcList;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8BD21D23-EC42-11CE-9E0D-00AA006002F3}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMdcList;

    PROCEDURE IsIMdcList* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8BD21D23-EC42-11CE-9E0D-00AA006002F3}")
    END IsIMdcList;

    PROCEDURE ThisIMdcCombo* (v: CtlT.Any): IMdcCombo;
        VAR new: IMdcCombo;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8BD21D33-EC42-11CE-9E0D-00AA006002F3}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMdcCombo;

    PROCEDURE IsIMdcCombo* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8BD21D33-EC42-11CE-9E0D-00AA006002F3}")
    END IsIMdcCombo;

    PROCEDURE ThisIMdcCheckBox* (v: CtlT.Any): IMdcCheckBox;
        VAR new: IMdcCheckBox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8BD21D43-EC42-11CE-9E0D-00AA006002F3}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMdcCheckBox;

    PROCEDURE IsIMdcCheckBox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8BD21D43-EC42-11CE-9E0D-00AA006002F3}")
    END IsIMdcCheckBox;

    PROCEDURE ThisIMdcOptionButton* (v: CtlT.Any): IMdcOptionButton;
        VAR new: IMdcOptionButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8BD21D53-EC42-11CE-9E0D-00AA006002F3}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMdcOptionButton;

    PROCEDURE IsIMdcOptionButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8BD21D53-EC42-11CE-9E0D-00AA006002F3}")
    END IsIMdcOptionButton;

    PROCEDURE ThisIMdcToggleButton* (v: CtlT.Any): IMdcToggleButton;
        VAR new: IMdcToggleButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{8BD21D63-EC42-11CE-9E0D-00AA006002F3}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMdcToggleButton;

    PROCEDURE IsIMdcToggleButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{8BD21D63-EC42-11CE-9E0D-00AA006002F3}")
    END IsIMdcToggleButton;

    PROCEDURE ThisIScrollbar* (v: CtlT.Any): IScrollbar;
        VAR new: IScrollbar;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC3-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIScrollbar;

    PROCEDURE IsIScrollbar* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC3-866C-11CF-AB7C-00AA00C08FCF}")
    END IsIScrollbar;

    PROCEDURE ThisTab* (v: CtlT.Any): Tab;
        VAR new: Tab;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{A38BFFC3-A5A0-11CE-8107-00AA00611080}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTab;

    PROCEDURE IsTab* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{A38BFFC3-A5A0-11CE-8107-00AA00611080}")
    END IsTab;

    PROCEDURE ThisTabs* (v: CtlT.Any): Tabs;
        VAR new: Tabs;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{944ACF93-A1E6-11CE-8104-00AA00611080}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTabs;

    PROCEDURE IsTabs* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{944ACF93-A1E6-11CE-8104-00AA00611080}")
    END IsTabs;

    PROCEDURE ThisITabStrip* (v: CtlT.Any): ITabStrip;
        VAR new: ITabStrip;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC2-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisITabStrip;

    PROCEDURE IsITabStrip* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC2-866C-11CF-AB7C-00AA00C08FCF}")
    END IsITabStrip;

    PROCEDURE ThisISpinbutton* (v: CtlT.Any): ISpinbutton;
        VAR new: ISpinbutton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{79176FB3-B7F2-11CE-97EF-00AA006D2776}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisISpinbutton;

    PROCEDURE IsISpinbutton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{79176FB3-B7F2-11CE-97EF-00AA006D2776}")
    END IsISpinbutton;

    PROCEDURE ThisIImage* (v: CtlT.Any): IImage;
        VAR new: IImage;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{4C599243-6926-101B-9992-00000B65C6F9}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIImage;

    PROCEDURE IsIImage* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{4C599243-6926-101B-9992-00000B65C6F9}")
    END IsIImage;

    PROCEDURE ThisIWHTMLSubmitButton* (v: CtlT.Any): IWHTMLSubmitButton;
        VAR new: IWHTMLSubmitButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D111-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLSubmitButton;

    PROCEDURE IsIWHTMLSubmitButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D111-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLSubmitButton;

    PROCEDURE ThisIWHTMLImage* (v: CtlT.Any): IWHTMLImage;
        VAR new: IWHTMLImage;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D113-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLImage;

    PROCEDURE IsIWHTMLImage* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D113-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLImage;

    PROCEDURE ThisIWHTMLReset* (v: CtlT.Any): IWHTMLReset;
        VAR new: IWHTMLReset;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D115-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLReset;

    PROCEDURE IsIWHTMLReset* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D115-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLReset;

    PROCEDURE ThisIWHTMLCheckbox* (v: CtlT.Any): IWHTMLCheckbox;
        VAR new: IWHTMLCheckbox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D117-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLCheckbox;

    PROCEDURE IsIWHTMLCheckbox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D117-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLCheckbox;

    PROCEDURE ThisIWHTMLOption* (v: CtlT.Any): IWHTMLOption;
        VAR new: IWHTMLOption;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D119-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLOption;

    PROCEDURE IsIWHTMLOption* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D119-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLOption;

    PROCEDURE ThisIWHTMLText* (v: CtlT.Any): IWHTMLText;
        VAR new: IWHTMLText;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D11B-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLText;

    PROCEDURE IsIWHTMLText* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D11B-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLText;

    PROCEDURE ThisIWHTMLHidden* (v: CtlT.Any): IWHTMLHidden;
        VAR new: IWHTMLHidden;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D11D-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLHidden;

    PROCEDURE IsIWHTMLHidden* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D11D-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLHidden;

    PROCEDURE ThisIWHTMLPassword* (v: CtlT.Any): IWHTMLPassword;
        VAR new: IWHTMLPassword;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D11F-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLPassword;

    PROCEDURE IsIWHTMLPassword* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D11F-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLPassword;

    PROCEDURE ThisIWHTMLSelect* (v: CtlT.Any): IWHTMLSelect;
        VAR new: IWHTMLSelect;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D123-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLSelect;

    PROCEDURE IsIWHTMLSelect* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D123-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLSelect;

    PROCEDURE ThisIWHTMLTextArea* (v: CtlT.Any): IWHTMLTextArea;
        VAR new: IWHTMLTextArea;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5512D125-5CC6-11CF-8D67-00AA00BDCE1D}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIWHTMLTextArea;

    PROCEDURE IsIWHTMLTextArea* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5512D125-5CC6-11CF-8D67-00AA00BDCE1D}")
    END IsIWHTMLTextArea;

    PROCEDURE ThisIPage* (v: CtlT.Any): IPage;
        VAR new: IPage;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{5CEF5613-713D-11CE-80C9-00AA00611080}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIPage;

    PROCEDURE IsIPage* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{5CEF5613-713D-11CE-80C9-00AA00611080}")
    END IsIPage;

    PROCEDURE ThisPages* (v: CtlT.Any): Pages;
        VAR new: Pages;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{92E11A03-7358-11CE-80CB-00AA00611080}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPages;

    PROCEDURE IsPages* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{92E11A03-7358-11CE-80CB-00AA00611080}")
    END IsPages;

    PROCEDURE ThisIMultiPage* (v: CtlT.Any): IMultiPage;
        VAR new: IMultiPage;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{04598FC9-866C-11CF-AB7C-00AA00C08FCF}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMultiPage;

    PROCEDURE IsIMultiPage* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{04598FC9-866C-11CF-AB7C-00AA00C08FCF}")
    END IsIMultiPage;



    (* ---------- Font ---------- *)

    PROCEDURE (this: Font) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: Font) PUTName* (val: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, val)
    END PUTName;

    PROCEDURE (this: Font) Size* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END Size;

    PROCEDURE (this: Font) PUTSize* (val: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, val)
    END PUTSize;

    PROCEDURE (this: Font) Bold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END Bold;

    PROCEDURE (this: Font) PUTBold* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, val)
    END PUTBold;

    PROCEDURE (this: Font) Italic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END Italic;

    PROCEDURE (this: Font) PUTItalic* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, val)
    END PUTItalic;

    PROCEDURE (this: Font) Underline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END Underline;

    PROCEDURE (this: Font) PUTUnderline* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, val)
    END PUTUnderline;

    PROCEDURE (this: Font) Strikethrough* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END Strikethrough;

    PROCEDURE (this: Font) PUTStrikethrough* (val: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, val)
    END PUTStrikethrough;

    PROCEDURE (this: Font) Weight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END Weight;

    PROCEDURE (this: Font) PUTWeight* (val: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, val)
    END PUTWeight;

    PROCEDURE (this: Font) Charset* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 8)
    END Charset;

    PROCEDURE (this: Font) PUTCharset* (val: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 8, val)
    END PUTCharset;


    (* ---------- IDataAutoWrapper, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IDataAutoWrapper) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743808, NIL);
    END Clear;

    PROCEDURE (this: IDataAutoWrapper) GetFormat* (Format: CtlT.Any): BOOLEAN, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Format, arg[0]);
        CtlC.CallParMethod(this, 1610743809, arg, ret);
        RETURN CtlC.VarBool(ret)
    END GetFormat;

    PROCEDURE (this: IDataAutoWrapper) GetText* ((* optional *) Format: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Format, arg[0]);
        CtlC.CallParMethod(this, 1610743810, arg, ret);
        RETURN CtlC.VarStr(ret)
    END GetText;

    PROCEDURE (this: IDataAutoWrapper) SetText* (Text: ARRAY OF CHAR; (* optional *) Format: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Text, arg[1]);
        CtlC.AnyVar(Format, arg[0]);
        CtlC.CallParMethod(this, 1610743811, arg, NIL);
    END SetText;

    PROCEDURE (this: IDataAutoWrapper) PutInClipboard* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743812, NIL);
    END PutInClipboard;

    PROCEDURE (this: IDataAutoWrapper) GetFromClipboard* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743813, NIL);
    END GetFromClipboard;

    PROCEDURE (this: IDataAutoWrapper) StartDrag* ((* optional *) OKEffect: CtlT.Any): fmDropEffect, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(OKEffect, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, ret);
        RETURN CtlC.VarInt(ret)
    END StartDrag;


    (* ---------- IReturnInteger, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IReturnInteger) PUTValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IReturnInteger) Value* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END Value;


    (* ---------- IReturnBoolean, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IReturnBoolean) PUTValue* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IReturnBoolean) Value* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 0)
    END Value;


    (* ---------- IReturnString, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IReturnString) PUTValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IReturnString) Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Value;


    (* ---------- IReturnSingle, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IReturnSingle) PUTValue* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IReturnSingle) Value* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 0)
    END Value;


    (* ---------- IReturnEffect, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IReturnEffect) PUTValue* (p1: fmDropEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IReturnEffect) Value* (): fmDropEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END Value;


    (* ---------- IControl, dual ---------- *)

    PROCEDURE (this: IControl) PUTCancel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147418056, p1)
    END PUTCancel;

    PROCEDURE (this: IControl) Cancel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147418056)
    END Cancel;

    PROCEDURE (this: IControl) PUTControlSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147385343, p1)
    END PUTControlSource;

    PROCEDURE (this: IControl) ControlSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147385343)
    END ControlSource;

    PROCEDURE (this: IControl) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418043, p1)
    END PUTControlTipText;

    PROCEDURE (this: IControl) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418043)
    END ControlTipText;

    PROCEDURE (this: IControl) PUTDefault* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147418057, p1)
    END PUTDefault;

    PROCEDURE (this: IControl) Default* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147418057)
    END Default;

    PROCEDURE (this: IControl) _SetHeight* (Height: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Height, arg[0]);
        CtlC.CallParMethod(this, 1610743816, arg, NIL);
    END _SetHeight;

    PROCEDURE (this: IControl) _GetHeight* (OUT Height: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(Height, arg[0]);
        CtlC.CallParMethod(this, 1610743817, arg, NIL);
    END _GetHeight;

    PROCEDURE (this: IControl) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418106, p1)
    END PUTHeight;

    PROCEDURE (this: IControl) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418106)
    END Height;

    PROCEDURE (this: IControl) PUTHelpContextID* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -2147418062, p1)
    END PUTHelpContextID;

    PROCEDURE (this: IControl) HelpContextID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -2147418062)
    END HelpContextID;

    PROCEDURE (this: IControl) PUTInSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147385341, p1)
    END PUTInSelection;

    PROCEDURE (this: IControl) InSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147385341)
    END InSelection;

    PROCEDURE (this: IControl) LayoutEffect* (): fmLayoutEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -2147385340)
    END LayoutEffect;

    PROCEDURE (this: IControl) _SetLeft* (Left: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Left, arg[0]);
        CtlC.CallParMethod(this, 1610743825, arg, NIL);
    END _SetLeft;

    PROCEDURE (this: IControl) _GetLeft* (OUT Left: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(Left, arg[0]);
        CtlC.CallParMethod(this, 1610743826, arg, NIL);
    END _GetLeft;

    PROCEDURE (this: IControl) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418109, p1)
    END PUTLeft;

    PROCEDURE (this: IControl) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418109)
    END Left;

    PROCEDURE (this: IControl) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418112, p1)
    END PUTName;

    PROCEDURE (this: IControl) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418112)
    END Name;

    PROCEDURE (this: IControl) _GetOldHeight* (OUT OldHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(OldHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743831, arg, NIL);
    END _GetOldHeight;

    PROCEDURE (this: IControl) OldHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147385339)
    END OldHeight;

    PROCEDURE (this: IControl) _GetOldLeft* (OUT OldLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(OldLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743833, arg, NIL);
    END _GetOldLeft;

    PROCEDURE (this: IControl) OldLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147385338)
    END OldLeft;

    PROCEDURE (this: IControl) _GetOldTop* (OUT OldTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(OldTop, arg[0]);
        CtlC.CallParMethod(this, 1610743835, arg, NIL);
    END _GetOldTop;

    PROCEDURE (this: IControl) OldTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147385337)
    END OldTop;

    PROCEDURE (this: IControl) _GetOldWidth* (OUT OldWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(OldWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743837, arg, NIL);
    END _GetOldWidth;

    PROCEDURE (this: IControl) OldWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147385336)
    END OldWidth;

    PROCEDURE (this: IControl) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -2147385335)
    END Object;

    PROCEDURE (this: IControl) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -2147418104)
    END Parent;

    PROCEDURE (this: IControl) PUTRowSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147385330, p1)
    END PUTRowSource;

    PROCEDURE (this: IControl) RowSource* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147385330)
    END RowSource;

    PROCEDURE (this: IControl) PUTRowSourceType* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, -2147385329, p1)
    END PUTRowSourceType;

    PROCEDURE (this: IControl) RowSourceType* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, -2147385329)
    END RowSourceType;

    PROCEDURE (this: IControl) PUTTabIndex* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, -2147418097, p1)
    END PUTTabIndex;

    PROCEDURE (this: IControl) TabIndex* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, -2147418097)
    END TabIndex;

    PROCEDURE (this: IControl) PUTTabStop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147418098, p1)
    END PUTTabStop;

    PROCEDURE (this: IControl) TabStop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147418098)
    END TabStop;

    PROCEDURE (this: IControl) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418101, p1)
    END PUTTag;

    PROCEDURE (this: IControl) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418101)
    END Tag;

    PROCEDURE (this: IControl) _SetTop* (Top: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Top, arg[0]);
        CtlC.CallParMethod(this, 1610743851, arg, NIL);
    END _SetTop;

    PROCEDURE (this: IControl) _GetTop* (OUT Top: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(Top, arg[0]);
        CtlC.CallParMethod(this, 1610743852, arg, NIL);
    END _GetTop;

    PROCEDURE (this: IControl) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418108, p1)
    END PUTTop;

    PROCEDURE (this: IControl) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418108)
    END Top;

    PROCEDURE (this: IControl) PUTBoundValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, -2147385328, p1)
    END PUTBoundValue;

    PROCEDURE (this: IControl) BoundValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -2147385328)
    END BoundValue;

    PROCEDURE (this: IControl) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147418105, p1)
    END PUTVisible;

    PROCEDURE (this: IControl) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147418105)
    END Visible;

    PROCEDURE (this: IControl) _SetWidth* (Width: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Width, arg[0]);
        CtlC.CallParMethod(this, 1610743859, arg, NIL);
    END _SetWidth;

    PROCEDURE (this: IControl) _GetWidth* (OUT Width: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(Width, arg[0]);
        CtlC.CallParMethod(this, 1610743860, arg, NIL);
    END _GetWidth;

    PROCEDURE (this: IControl) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418107, p1)
    END PUTWidth;

    PROCEDURE (this: IControl) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418107)
    END Width;

    PROCEDURE (this: IControl) Move* ((* optional *) Left: CtlT.Any; Top: CtlT.Any; Width: CtlT.Any; Height: CtlT.Any; Layout: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Left, arg[4]);
        CtlC.AnyVar(Top, arg[3]);
        CtlC.AnyVar(Width, arg[2]);
        CtlC.AnyVar(Height, arg[1]);
        CtlC.AnyVar(Layout, arg[0]);
        CtlC.CallParMethod(this, -2147385088, arg, NIL);
    END Move;

    PROCEDURE (this: IControl) ZOrder* ((* optional *) zPosition: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(zPosition, arg[0]);
        CtlC.CallParMethod(this, -2147385083, arg, NIL);
    END ZOrder;

    PROCEDURE (this: IControl) Select* (SelectInGroup: BOOLEAN), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.BoolVar(SelectInGroup, arg[0]);
        CtlC.CallParMethod(this, -2147385086, arg, NIL);
    END Select;

    PROCEDURE (this: IControl) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, -2147385085, NIL);
    END SetFocus;

    PROCEDURE (this: IControl) _GethWnd* (): INTEGER, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610743867, ret);
        RETURN CtlC.VarInt(ret)
    END _GethWnd;

    PROCEDURE (this: IControl) _GetID* (): INTEGER, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610743868, ret);
        RETURN CtlC.VarInt(ret)
    END _GetID;

    PROCEDURE (this: IControl) _Move* (Left: INTEGER; Top: INTEGER; Width: INTEGER; Height: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Left, arg[3]);
        CtlC.IntVar(Top, arg[2]);
        CtlC.IntVar(Width, arg[1]);
        CtlC.IntVar(Height, arg[0]);
        CtlC.CallParMethod(this, 1610743869, arg, NIL);
    END _Move;

    PROCEDURE (this: IControl) _ZOrder* (zPosition: fmZOrder), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(zPosition, arg[0]);
        CtlC.CallParMethod(this, 1610743870, arg, NIL);
    END _ZOrder;


    (* ---------- Controls, dual ---------- *)

    PROCEDURE (this: Controls) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 60)
    END Count;

    PROCEDURE (this: Controls) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Controls) Item* (varg: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varg, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Controls) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 62, NIL);
    END Clear;

    PROCEDURE (this: Controls) _Move* (cx: INTEGER; cy: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(cx, arg[1]);
        CtlC.IntVar(cy, arg[0]);
        CtlC.CallParMethod(this, 1610743812, arg, NIL);
    END _Move;

    PROCEDURE (this: Controls) SelectAll* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 65, NIL);
    END SelectAll;

    PROCEDURE (this: Controls) _AddByClass* (VAR clsid: INTEGER): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(clsid, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, ret);
        RETURN ThisIControl(CtlC.VarAny(ret))
    END _AddByClass;

    PROCEDURE (this: Controls) AlignToGrid* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743815, NIL);
    END AlignToGrid;

    PROCEDURE (this: Controls) BringForward* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743816, NIL);
    END BringForward;

    PROCEDURE (this: Controls) BringToFront* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743817, NIL);
    END BringToFront;

    PROCEDURE (this: Controls) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743818, NIL);
    END Copy;

    PROCEDURE (this: Controls) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743819, NIL);
    END Cut;

    PROCEDURE (this: Controls) Enum* (): CtlT.IUnknown, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610743820, ret);
        RETURN CtlC.VarIntfce(ret)
    END Enum;

    PROCEDURE (this: Controls) _GetItemByIndex* (lIndex: INTEGER): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(lIndex, arg[0]);
        CtlC.CallParMethod(this, 1610743821, arg, ret);
        RETURN ThisIControl(CtlC.VarAny(ret))
    END _GetItemByIndex;

    PROCEDURE (this: Controls) _GetItemByName* (pstr: ARRAY OF CHAR): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(pstr, arg[0]);
        CtlC.CallParMethod(this, 1610743822, arg, ret);
        RETURN ThisIControl(CtlC.VarAny(ret))
    END _GetItemByName;

    PROCEDURE (this: Controls) _GetItemByID* (ID: INTEGER): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ID, arg[0]);
        CtlC.CallParMethod(this, 1610743823, arg, ret);
        RETURN ThisIControl(CtlC.VarAny(ret))
    END _GetItemByID;

    PROCEDURE (this: Controls) SendBackward* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743824, NIL);
    END SendBackward;

    PROCEDURE (this: Controls) SendToBack* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743825, NIL);
    END SendToBack;

    PROCEDURE (this: Controls) Move* (cx: SHORTREAL; cy: SHORTREAL), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(cx, arg[1]);
        CtlC.SRealVar(cy, arg[0]);
        CtlC.CallParMethod(this, 63, arg, NIL);
    END Move;

    PROCEDURE (this: Controls) Add* (bstrProgID: ARRAY OF CHAR; (* optional *) Name: CtlT.Any; Visible: CtlT.Any): Control, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrProgID, arg[2]);
        CtlC.AnyVar(Name, arg[1]);
        CtlC.AnyVar(Visible, arg[0]);
        CtlC.CallParMethod(this, 66, arg, ret);
        RETURN ThisIControl(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Controls) Remove* (varg: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varg, arg[0]);
        CtlC.CallParMethod(this, 67, arg, NIL);
    END Remove;


    (* ---------- IOptionFrame, hidden, dual ---------- *)

    PROCEDURE (this: IOptionFrame) ActiveControl* (): Control, NEW;
    BEGIN
        RETURN ThisIControl(CtlC.GetAny(this, 256))
    END ActiveControl;

    PROCEDURE (this: IOptionFrame) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IOptionFrame) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IOptionFrame) PUTBorderColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -503, p1)
    END PUTBorderColor;

    PROCEDURE (this: IOptionFrame) BorderColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -503)
    END BorderColor;

    PROCEDURE (this: IOptionFrame) PUTBorderStyle* (p1: fmBorderStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -504, p1)
    END PUTBorderStyle;

    PROCEDURE (this: IOptionFrame) BorderStyle* (): fmBorderStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -504)
    END BorderStyle;

    PROCEDURE (this: IOptionFrame) CanPaste* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 257)
    END CanPaste;

    PROCEDURE (this: IOptionFrame) CanRedo* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 258)
    END CanRedo;

    PROCEDURE (this: IOptionFrame) CanUndo* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 259)
    END CanUndo;

    PROCEDURE (this: IOptionFrame) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: IOptionFrame) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: IOptionFrame) Controls* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 0))
    END Controls;

    PROCEDURE (this: IOptionFrame) PUTCycle* (p1: fmCycle), NEW;
    BEGIN
        CtlC.PutInt(this, 260, p1)
    END PUTCycle;

    PROCEDURE (this: IOptionFrame) Cycle* (): fmCycle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 260)
    END Cycle;

    PROCEDURE (this: IOptionFrame) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IOptionFrame) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IOptionFrame) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IOptionFrame) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IOptionFrame) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IOptionFrame) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IOptionFrame) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IOptionFrame) _GetInsideHeight* (OUT InsideHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(InsideHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743830, arg, NIL);
    END _GetInsideHeight;

    PROCEDURE (this: IOptionFrame) InsideHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 262)
    END InsideHeight;

    PROCEDURE (this: IOptionFrame) _GetInsideWidth* (OUT InsideWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(InsideWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743832, arg, NIL);
    END _GetInsideWidth;

    PROCEDURE (this: IOptionFrame) InsideWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 263)
    END InsideWidth;

    PROCEDURE (this: IOptionFrame) PUTKeepScrollBarsVisible* (p1: fmScrollBars), NEW;
    BEGIN
        CtlC.PutInt(this, 264, p1)
    END PUTKeepScrollBarsVisible;

    PROCEDURE (this: IOptionFrame) KeepScrollBarsVisible* (): fmScrollBars, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 264)
    END KeepScrollBarsVisible;

    PROCEDURE (this: IOptionFrame) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IOptionFrame) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IOptionFrame) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IOptionFrame) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IOptionFrame) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IOptionFrame) PUTPictureAlignment* (p1: fmPictureAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 26, p1)
    END PUTPictureAlignment;

    PROCEDURE (this: IOptionFrame) PictureAlignment* (): fmPictureAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 26)
    END PictureAlignment;

    PROCEDURE (this: IOptionFrame) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: IOptionFrame) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: IOptionFrame) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: IOptionFrame) PUTPictureSizeMode* (p1: fmPictureSizeMode), NEW;
    BEGIN
        CtlC.PutInt(this, 27, p1)
    END PUTPictureSizeMode;

    PROCEDURE (this: IOptionFrame) PictureSizeMode* (): fmPictureSizeMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 27)
    END PictureSizeMode;

    PROCEDURE (this: IOptionFrame) PUTPictureTiling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 28, p1)
    END PUTPictureTiling;

    PROCEDURE (this: IOptionFrame) PictureTiling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 28)
    END PictureTiling;

    PROCEDURE (this: IOptionFrame) PUTScrollBars* (p1: fmScrollBars), NEW;
    BEGIN
        CtlC.PutInt(this, 265, p1)
    END PUTScrollBars;

    PROCEDURE (this: IOptionFrame) ScrollBars* (): fmScrollBars, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 265)
    END ScrollBars;

    PROCEDURE (this: IOptionFrame) _SetScrollHeight* (ScrollHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743852, arg, NIL);
    END _SetScrollHeight;

    PROCEDURE (this: IOptionFrame) _GetScrollHeight* (OUT ScrollHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743853, arg, NIL);
    END _GetScrollHeight;

    PROCEDURE (this: IOptionFrame) PUTScrollHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 266, p1)
    END PUTScrollHeight;

    PROCEDURE (this: IOptionFrame) ScrollHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 266)
    END ScrollHeight;

    PROCEDURE (this: IOptionFrame) _SetScrollLeft* (ScrollLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743856, arg, NIL);
    END _SetScrollLeft;

    PROCEDURE (this: IOptionFrame) _GetScrollLeft* (OUT ScrollLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743857, arg, NIL);
    END _GetScrollLeft;

    PROCEDURE (this: IOptionFrame) PUTScrollLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 267, p1)
    END PUTScrollLeft;

    PROCEDURE (this: IOptionFrame) ScrollLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 267)
    END ScrollLeft;

    PROCEDURE (this: IOptionFrame) _SetScrollTop* (ScrollTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollTop, arg[0]);
        CtlC.CallParMethod(this, 1610743860, arg, NIL);
    END _SetScrollTop;

    PROCEDURE (this: IOptionFrame) _GetScrollTop* (OUT ScrollTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollTop, arg[0]);
        CtlC.CallParMethod(this, 1610743861, arg, NIL);
    END _GetScrollTop;

    PROCEDURE (this: IOptionFrame) PUTScrollTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 268, p1)
    END PUTScrollTop;

    PROCEDURE (this: IOptionFrame) ScrollTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 268)
    END ScrollTop;

    PROCEDURE (this: IOptionFrame) _SetScrollWidth* (ScrollWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743864, arg, NIL);
    END _SetScrollWidth;

    PROCEDURE (this: IOptionFrame) _GetScrollWidth* (OUT ScrollWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743865, arg, NIL);
    END _GetScrollWidth;

    PROCEDURE (this: IOptionFrame) PUTScrollWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 269, p1)
    END PUTScrollWidth;

    PROCEDURE (this: IOptionFrame) ScrollWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 269)
    END ScrollWidth;

    PROCEDURE (this: IOptionFrame) Selected* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 270))
    END Selected;

    PROCEDURE (this: IOptionFrame) PUTSpecialEffect* (p1: fmSpecialEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IOptionFrame) SpecialEffect* (): fmSpecialEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: IOptionFrame) PUTVerticalScrollBarSide* (p1: fmVerticalScrollBarSide), NEW;
    BEGIN
        CtlC.PutInt(this, 271, p1)
    END PUTVerticalScrollBarSide;

    PROCEDURE (this: IOptionFrame) VerticalScrollBarSide* (): fmVerticalScrollBarSide, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 271)
    END VerticalScrollBarSide;

    PROCEDURE (this: IOptionFrame) PUTZoom* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 272, p1)
    END PUTZoom;

    PROCEDURE (this: IOptionFrame) Zoom* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 272)
    END Zoom;

    PROCEDURE (this: IOptionFrame) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 512, NIL);
    END Copy;

    PROCEDURE (this: IOptionFrame) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 513, NIL);
    END Cut;

    PROCEDURE (this: IOptionFrame) Paste* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 514, NIL);
    END Paste;

    PROCEDURE (this: IOptionFrame) RedoAction* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 515, NIL);
    END RedoAction;

    PROCEDURE (this: IOptionFrame) Repaint* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 516, NIL);
    END Repaint;

    PROCEDURE (this: IOptionFrame) Scroll* ((* optional *) xAction: CtlT.Any; yAction: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(xAction, arg[1]);
        CtlC.AnyVar(yAction, arg[0]);
        CtlC.CallParMethod(this, 517, arg, NIL);
    END Scroll;

    PROCEDURE (this: IOptionFrame) SetDefaultTabOrder* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 518, NIL);
    END SetDefaultTabOrder;

    PROCEDURE (this: IOptionFrame) UndoAction* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 519, NIL);
    END UndoAction;

    PROCEDURE (this: IOptionFrame) PUTDesignMode* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 384, p1)
    END PUTDesignMode;

    PROCEDURE (this: IOptionFrame) DesignMode* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 384)
    END DesignMode;

    PROCEDURE (this: IOptionFrame) PUTShowToolbox* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 385, p1)
    END PUTShowToolbox;

    PROCEDURE (this: IOptionFrame) ShowToolbox* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 385)
    END ShowToolbox;

    PROCEDURE (this: IOptionFrame) PUTShowGridDots* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 386, p1)
    END PUTShowGridDots;

    PROCEDURE (this: IOptionFrame) ShowGridDots* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 386)
    END ShowGridDots;

    PROCEDURE (this: IOptionFrame) PUTSnapToGrid* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 387, p1)
    END PUTSnapToGrid;

    PROCEDURE (this: IOptionFrame) SnapToGrid* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 387)
    END SnapToGrid;

    PROCEDURE (this: IOptionFrame) PUTGridX* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 388, p1)
    END PUTGridX;

    PROCEDURE (this: IOptionFrame) GridX* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 388)
    END GridX;

    PROCEDURE (this: IOptionFrame) _SetGridX* (GridX: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(GridX, arg[0]);
        CtlC.CallParMethod(this, 1610743893, arg, NIL);
    END _SetGridX;

    PROCEDURE (this: IOptionFrame) _GetGridX* (OUT GridX: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(GridX, arg[0]);
        CtlC.CallParMethod(this, 1610743894, arg, NIL);
    END _GetGridX;

    PROCEDURE (this: IOptionFrame) PUTGridY* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 389, p1)
    END PUTGridY;

    PROCEDURE (this: IOptionFrame) GridY* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 389)
    END GridY;

    PROCEDURE (this: IOptionFrame) _SetGridY* (GridY: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(GridY, arg[0]);
        CtlC.CallParMethod(this, 1610743897, arg, NIL);
    END _SetGridY;

    PROCEDURE (this: IOptionFrame) _GetGridY* (OUT GridY: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(GridY, arg[0]);
        CtlC.CallParMethod(this, 1610743898, arg, NIL);
    END _GetGridY;


    (* ---------- _UserForm, hidden, dual ---------- *)

    PROCEDURE (this: _UserForm) ActiveControl* (): Control, NEW;
    BEGIN
        RETURN ThisIControl(CtlC.GetAny(this, 256))
    END ActiveControl;

    PROCEDURE (this: _UserForm) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: _UserForm) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: _UserForm) PUTBorderColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -503, p1)
    END PUTBorderColor;

    PROCEDURE (this: _UserForm) BorderColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -503)
    END BorderColor;

    PROCEDURE (this: _UserForm) PUTBorderStyle* (p1: fmBorderStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -504, p1)
    END PUTBorderStyle;

    PROCEDURE (this: _UserForm) BorderStyle* (): fmBorderStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -504)
    END BorderStyle;

    PROCEDURE (this: _UserForm) CanPaste* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 257)
    END CanPaste;

    PROCEDURE (this: _UserForm) CanRedo* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 258)
    END CanRedo;

    PROCEDURE (this: _UserForm) CanUndo* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 259)
    END CanUndo;

    PROCEDURE (this: _UserForm) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: _UserForm) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: _UserForm) Controls* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 0))
    END Controls;

    PROCEDURE (this: _UserForm) PUTCycle* (p1: fmCycle), NEW;
    BEGIN
        CtlC.PutInt(this, 260, p1)
    END PUTCycle;

    PROCEDURE (this: _UserForm) Cycle* (): fmCycle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 260)
    END Cycle;

    PROCEDURE (this: _UserForm) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: _UserForm) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: _UserForm) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: _UserForm) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: _UserForm) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: _UserForm) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: _UserForm) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: _UserForm) _GetInsideHeight* (OUT InsideHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(InsideHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743830, arg, NIL);
    END _GetInsideHeight;

    PROCEDURE (this: _UserForm) InsideHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 262)
    END InsideHeight;

    PROCEDURE (this: _UserForm) _GetInsideWidth* (OUT InsideWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(InsideWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743832, arg, NIL);
    END _GetInsideWidth;

    PROCEDURE (this: _UserForm) InsideWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 263)
    END InsideWidth;

    PROCEDURE (this: _UserForm) PUTKeepScrollBarsVisible* (p1: fmScrollBars), NEW;
    BEGIN
        CtlC.PutInt(this, 264, p1)
    END PUTKeepScrollBarsVisible;

    PROCEDURE (this: _UserForm) KeepScrollBarsVisible* (): fmScrollBars, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 264)
    END KeepScrollBarsVisible;

    PROCEDURE (this: _UserForm) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: _UserForm) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: _UserForm) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: _UserForm) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: _UserForm) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: _UserForm) PUTPictureAlignment* (p1: fmPictureAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 26, p1)
    END PUTPictureAlignment;

    PROCEDURE (this: _UserForm) PictureAlignment* (): fmPictureAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 26)
    END PictureAlignment;

    PROCEDURE (this: _UserForm) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: _UserForm) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: _UserForm) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: _UserForm) PUTPictureSizeMode* (p1: fmPictureSizeMode), NEW;
    BEGIN
        CtlC.PutInt(this, 27, p1)
    END PUTPictureSizeMode;

    PROCEDURE (this: _UserForm) PictureSizeMode* (): fmPictureSizeMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 27)
    END PictureSizeMode;

    PROCEDURE (this: _UserForm) PUTPictureTiling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 28, p1)
    END PUTPictureTiling;

    PROCEDURE (this: _UserForm) PictureTiling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 28)
    END PictureTiling;

    PROCEDURE (this: _UserForm) PUTScrollBars* (p1: fmScrollBars), NEW;
    BEGIN
        CtlC.PutInt(this, 265, p1)
    END PUTScrollBars;

    PROCEDURE (this: _UserForm) ScrollBars* (): fmScrollBars, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 265)
    END ScrollBars;

    PROCEDURE (this: _UserForm) _SetScrollHeight* (ScrollHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743852, arg, NIL);
    END _SetScrollHeight;

    PROCEDURE (this: _UserForm) _GetScrollHeight* (OUT ScrollHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743853, arg, NIL);
    END _GetScrollHeight;

    PROCEDURE (this: _UserForm) PUTScrollHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 266, p1)
    END PUTScrollHeight;

    PROCEDURE (this: _UserForm) ScrollHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 266)
    END ScrollHeight;

    PROCEDURE (this: _UserForm) _SetScrollLeft* (ScrollLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743856, arg, NIL);
    END _SetScrollLeft;

    PROCEDURE (this: _UserForm) _GetScrollLeft* (OUT ScrollLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743857, arg, NIL);
    END _GetScrollLeft;

    PROCEDURE (this: _UserForm) PUTScrollLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 267, p1)
    END PUTScrollLeft;

    PROCEDURE (this: _UserForm) ScrollLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 267)
    END ScrollLeft;

    PROCEDURE (this: _UserForm) _SetScrollTop* (ScrollTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollTop, arg[0]);
        CtlC.CallParMethod(this, 1610743860, arg, NIL);
    END _SetScrollTop;

    PROCEDURE (this: _UserForm) _GetScrollTop* (OUT ScrollTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollTop, arg[0]);
        CtlC.CallParMethod(this, 1610743861, arg, NIL);
    END _GetScrollTop;

    PROCEDURE (this: _UserForm) PUTScrollTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 268, p1)
    END PUTScrollTop;

    PROCEDURE (this: _UserForm) ScrollTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 268)
    END ScrollTop;

    PROCEDURE (this: _UserForm) _SetScrollWidth* (ScrollWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743864, arg, NIL);
    END _SetScrollWidth;

    PROCEDURE (this: _UserForm) _GetScrollWidth* (OUT ScrollWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743865, arg, NIL);
    END _GetScrollWidth;

    PROCEDURE (this: _UserForm) PUTScrollWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 269, p1)
    END PUTScrollWidth;

    PROCEDURE (this: _UserForm) ScrollWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 269)
    END ScrollWidth;

    PROCEDURE (this: _UserForm) Selected* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 270))
    END Selected;

    PROCEDURE (this: _UserForm) PUTSpecialEffect* (p1: fmSpecialEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: _UserForm) SpecialEffect* (): fmSpecialEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: _UserForm) PUTVerticalScrollBarSide* (p1: fmVerticalScrollBarSide), NEW;
    BEGIN
        CtlC.PutInt(this, 271, p1)
    END PUTVerticalScrollBarSide;

    PROCEDURE (this: _UserForm) VerticalScrollBarSide* (): fmVerticalScrollBarSide, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 271)
    END VerticalScrollBarSide;

    PROCEDURE (this: _UserForm) PUTZoom* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 272, p1)
    END PUTZoom;

    PROCEDURE (this: _UserForm) Zoom* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 272)
    END Zoom;

    PROCEDURE (this: _UserForm) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 512, NIL);
    END Copy;

    PROCEDURE (this: _UserForm) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 513, NIL);
    END Cut;

    PROCEDURE (this: _UserForm) Paste* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 514, NIL);
    END Paste;

    PROCEDURE (this: _UserForm) RedoAction* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 515, NIL);
    END RedoAction;

    PROCEDURE (this: _UserForm) Repaint* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 516, NIL);
    END Repaint;

    PROCEDURE (this: _UserForm) Scroll* ((* optional *) xAction: CtlT.Any; yAction: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(xAction, arg[1]);
        CtlC.AnyVar(yAction, arg[0]);
        CtlC.CallParMethod(this, 517, arg, NIL);
    END Scroll;

    PROCEDURE (this: _UserForm) SetDefaultTabOrder* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 518, NIL);
    END SetDefaultTabOrder;

    PROCEDURE (this: _UserForm) UndoAction* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 519, NIL);
    END UndoAction;

    PROCEDURE (this: _UserForm) PUTDesignMode* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 384, p1)
    END PUTDesignMode;

    PROCEDURE (this: _UserForm) DesignMode* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 384)
    END DesignMode;

    PROCEDURE (this: _UserForm) PUTShowToolbox* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 385, p1)
    END PUTShowToolbox;

    PROCEDURE (this: _UserForm) ShowToolbox* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 385)
    END ShowToolbox;

    PROCEDURE (this: _UserForm) PUTShowGridDots* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 386, p1)
    END PUTShowGridDots;

    PROCEDURE (this: _UserForm) ShowGridDots* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 386)
    END ShowGridDots;

    PROCEDURE (this: _UserForm) PUTSnapToGrid* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 387, p1)
    END PUTSnapToGrid;

    PROCEDURE (this: _UserForm) SnapToGrid* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 387)
    END SnapToGrid;

    PROCEDURE (this: _UserForm) PUTGridX* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 388, p1)
    END PUTGridX;

    PROCEDURE (this: _UserForm) GridX* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 388)
    END GridX;

    PROCEDURE (this: _UserForm) _SetGridX* (GridX: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(GridX, arg[0]);
        CtlC.CallParMethod(this, 1610743893, arg, NIL);
    END _SetGridX;

    PROCEDURE (this: _UserForm) _GetGridX* (OUT GridX: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(GridX, arg[0]);
        CtlC.CallParMethod(this, 1610743894, arg, NIL);
    END _GetGridX;

    PROCEDURE (this: _UserForm) PUTGridY* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 389, p1)
    END PUTGridY;

    PROCEDURE (this: _UserForm) GridY* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 389)
    END GridY;

    PROCEDURE (this: _UserForm) _SetGridY* (GridY: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(GridY, arg[0]);
        CtlC.CallParMethod(this, 1610743897, arg, NIL);
    END _SetGridY;

    PROCEDURE (this: _UserForm) _GetGridY* (OUT GridY: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(GridY, arg[0]);
        CtlC.CallParMethod(this, 1610743898, arg, NIL);
    END _GetGridY;

    PROCEDURE (this: _UserForm) PUTDrawBuffer* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 395, p1)
    END PUTDrawBuffer;

    PROCEDURE (this: _UserForm) DrawBuffer* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 395)
    END DrawBuffer;


    (* ---------- ControlEvents, hidden ---------- *)

    PROCEDURE (this: ControlEvents) Enter* (), NEW, ABSTRACT;

    PROCEDURE (this: ControlEvents) Exit* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: ControlEvents) BeforeUpdate* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: ControlEvents) AfterUpdate* (), NEW, ABSTRACT;

    PROCEDURE (this: ControlEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -2147384830: ASSERT(n = 0, 11); this.Enter()
        | -2147384829: ASSERT(n = 1, 11); this.Exit(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -2147384831: ASSERT(n = 1, 11); this.BeforeUpdate(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -2147384832: ASSERT(n = 0, 11); this.AfterUpdate()
        END
    END Invoke;

    PROCEDURE (this: ControlEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{9A4BBF53-4E46-101B-8BBD-00AA003E3B29}"
    END GetIID;


    (* ---------- FormEvents, hidden ---------- *)

    PROCEDURE (this: FormEvents) AddControl* (control: Control), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) BeforeDragOver* (Cancel: ReturnBoolean; control: Control; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; State: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; control: Control; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) Layout* (), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) RemoveControl* (control: Control), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) Scroll* (ActionX: fmScrollAction; ActionY: fmScrollAction; RequestDx: SHORTREAL; RequestDy: SHORTREAL; ActualDx: ReturnSingle; ActualDy: ReturnSingle), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) Zoom* (VAR Percent: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: FormEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 768: ASSERT(n = 1, 11); this.AddControl(ThisIControl(CtlC.VarAny(par[0])))
        | 3: ASSERT(n = 8, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[7])), ThisIControl(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 8, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[7])), ThisIControl(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -600: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 770: ASSERT(n = 0, 11); this.Layout()
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | 771: ASSERT(n = 1, 11); this.RemoveControl(ThisIControl(CtlC.VarAny(par[0])))
        | 772: ASSERT(n = 6, 11); this.Scroll(CtlC.VarInt(par[5]), CtlC.VarInt(par[4]), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnSingle(CtlC.VarAny(par[1])), ThisIReturnSingle(CtlC.VarAny(par[0])))
        | 773: ASSERT(n = 1, 11); this.Zoom(CtlC.VarRefSInt(par[0])[0])
        END
    END Invoke;

    PROCEDURE (this: FormEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{5B9D8FC8-4A71-101B-97A6-00000B65C08B}"
    END GetIID;


    (* ---------- OptionFrameEvents, hidden ---------- *)

    PROCEDURE (this: OptionFrameEvents) AddControl* (control: Control), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) BeforeDragOver* (Cancel: ReturnBoolean; control: Control; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; State: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; control: Control; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) Layout* (), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) RemoveControl* (control: Control), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) Scroll* (ActionX: fmScrollAction; ActionY: fmScrollAction; RequestDx: SHORTREAL; RequestDy: SHORTREAL; ActualDx: ReturnSingle; ActualDy: ReturnSingle), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) Zoom* (VAR Percent: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: OptionFrameEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 768: ASSERT(n = 1, 11); this.AddControl(ThisIControl(CtlC.VarAny(par[0])))
        | 3: ASSERT(n = 8, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[7])), ThisIControl(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 8, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[7])), ThisIControl(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -600: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 770: ASSERT(n = 0, 11); this.Layout()
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | 771: ASSERT(n = 1, 11); this.RemoveControl(ThisIControl(CtlC.VarAny(par[0])))
        | 772: ASSERT(n = 6, 11); this.Scroll(CtlC.VarInt(par[5]), CtlC.VarInt(par[4]), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnSingle(CtlC.VarAny(par[1])), ThisIReturnSingle(CtlC.VarAny(par[0])))
        | 773: ASSERT(n = 1, 11); this.Zoom(CtlC.VarRefSInt(par[0])[0])
        END
    END Invoke;

    PROCEDURE (this: OptionFrameEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{CF3F94A0-F546-11CE-9BCE-00AA00608E01}"
    END GetIID;


    (* ---------- ILabelControl, hidden, dual ---------- *)

    PROCEDURE (this: ILabelControl) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: ILabelControl) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: ILabelControl) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: ILabelControl) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: ILabelControl) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: ILabelControl) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: ILabelControl) PUTBorderColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -503, p1)
    END PUTBorderColor;

    PROCEDURE (this: ILabelControl) BorderColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -503)
    END BorderColor;

    PROCEDURE (this: ILabelControl) PUTBorderStyle* (p1: fmBorderStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -504, p1)
    END PUTBorderStyle;

    PROCEDURE (this: ILabelControl) BorderStyle* (): fmBorderStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -504)
    END BorderStyle;

    PROCEDURE (this: ILabelControl) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTCaption;

    PROCEDURE (this: ILabelControl) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Caption;

    PROCEDURE (this: ILabelControl) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: ILabelControl) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: ILabelControl) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: ILabelControl) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: ILabelControl) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: ILabelControl) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: ILabelControl) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: ILabelControl) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: ILabelControl) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: ILabelControl) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: ILabelControl) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: ILabelControl) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: ILabelControl) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: ILabelControl) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: ILabelControl) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: ILabelControl) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: ILabelControl) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: ILabelControl) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: ILabelControl) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: ILabelControl) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: ILabelControl) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: ILabelControl) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: ILabelControl) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: ILabelControl) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: ILabelControl) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: ILabelControl) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: ILabelControl) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: ILabelControl) PUTPicturePosition* (p1: fmPicturePosition), NEW;
    BEGIN
        CtlC.PutInt(this, 11, p1)
    END PUTPicturePosition;

    PROCEDURE (this: ILabelControl) PicturePosition* (): fmPicturePosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END PicturePosition;

    PROCEDURE (this: ILabelControl) PUTSpecialEffect* (p1: fmSpecialEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: ILabelControl) SpecialEffect* (): fmSpecialEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: ILabelControl) PUTTextAlign* (p1: fmTextAlign), NEW;
    BEGIN
        CtlC.PutInt(this, 13, p1)
    END PUTTextAlign;

    PROCEDURE (this: ILabelControl) TextAlign* (): fmTextAlign, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 13)
    END TextAlign;

    PROCEDURE (this: ILabelControl) PUTWordWrap* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -536, p1)
    END PUTWordWrap;

    PROCEDURE (this: ILabelControl) WordWrap* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -536)
    END WordWrap;

    PROCEDURE (this: ILabelControl) PUTAccelerator* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -543, p1)
    END PUTAccelerator;

    PROCEDURE (this: ILabelControl) Accelerator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -543)
    END Accelerator;

    PROCEDURE (this: ILabelControl) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: ILabelControl) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;

    PROCEDURE (this: ILabelControl) PUT_Value* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUT_Value;

    PROCEDURE (this: ILabelControl) _Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END _Value;


    (* ---------- ICommandButton, hidden, dual ---------- *)

    PROCEDURE (this: ICommandButton) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: ICommandButton) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: ICommandButton) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: ICommandButton) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: ICommandButton) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: ICommandButton) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: ICommandButton) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: ICommandButton) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: ICommandButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: ICommandButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: ICommandButton) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: ICommandButton) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: ICommandButton) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: ICommandButton) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: ICommandButton) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: ICommandButton) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: ICommandButton) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: ICommandButton) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: ICommandButton) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: ICommandButton) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: ICommandButton) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: ICommandButton) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: ICommandButton) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: ICommandButton) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: ICommandButton) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: ICommandButton) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: ICommandButton) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: ICommandButton) PUTTakeFocusOnClick* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 203, p1)
    END PUTTakeFocusOnClick;

    PROCEDURE (this: ICommandButton) TakeFocusOnClick* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 203)
    END TakeFocusOnClick;

    PROCEDURE (this: ICommandButton) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTLocked;

    PROCEDURE (this: ICommandButton) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Locked;

    PROCEDURE (this: ICommandButton) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: ICommandButton) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: ICommandButton) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: ICommandButton) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: ICommandButton) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: ICommandButton) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: ICommandButton) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: ICommandButton) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: ICommandButton) PUTPicturePosition* (p1: fmPicturePosition), NEW;
    BEGIN
        CtlC.PutInt(this, 11, p1)
    END PUTPicturePosition;

    PROCEDURE (this: ICommandButton) PicturePosition* (): fmPicturePosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END PicturePosition;

    PROCEDURE (this: ICommandButton) PUTAccelerator* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -543, p1)
    END PUTAccelerator;

    PROCEDURE (this: ICommandButton) Accelerator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -543)
    END Accelerator;

    PROCEDURE (this: ICommandButton) PUTWordWrap* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -536, p1)
    END PUTWordWrap;

    PROCEDURE (this: ICommandButton) WordWrap* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -536)
    END WordWrap;

    PROCEDURE (this: ICommandButton) PUTValue* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: ICommandButton) Value* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 0)
    END Value;

    PROCEDURE (this: ICommandButton) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: ICommandButton) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;


    (* ---------- IMdcText, hidden, dual ---------- *)

    PROCEDURE (this: IMdcText) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: IMdcText) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: IMdcText) PUTAutoTab* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 217, p1)
    END PUTAutoTab;

    PROCEDURE (this: IMdcText) AutoTab* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 217)
    END AutoTab;

    PROCEDURE (this: IMdcText) PUTAutoWordSelect* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 218, p1)
    END PUTAutoWordSelect;

    PROCEDURE (this: IMdcText) AutoWordSelect* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 218)
    END AutoWordSelect;

    PROCEDURE (this: IMdcText) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IMdcText) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IMdcText) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: IMdcText) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: IMdcText) PUTBorderColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -503, p1)
    END PUTBorderColor;

    PROCEDURE (this: IMdcText) BorderColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -503)
    END BorderColor;

    PROCEDURE (this: IMdcText) PUTBorderStyle* (p1: fmBorderStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -504, p1)
    END PUTBorderStyle;

    PROCEDURE (this: IMdcText) BorderStyle* (): fmBorderStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -504)
    END BorderStyle;

    PROCEDURE (this: IMdcText) PUTBordersSuppress* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 20, p1)
    END PUTBordersSuppress;

    PROCEDURE (this: IMdcText) BordersSuppress* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 20)
    END BordersSuppress;

    PROCEDURE (this: IMdcText) CanPaste* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END CanPaste;

    PROCEDURE (this: IMdcText) PUTCurLine* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 212, p1)
    END PUTCurLine;

    PROCEDURE (this: IMdcText) CurLine* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 212)
    END CurLine;

    PROCEDURE (this: IMdcText) CurTargetX* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 210)
    END CurTargetX;

    PROCEDURE (this: IMdcText) CurTargetY* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 221)
    END CurTargetY;

    PROCEDURE (this: IMdcText) PUTCurX* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 208, p1)
    END PUTCurX;

    PROCEDURE (this: IMdcText) CurX* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 208)
    END CurX;

    PROCEDURE (this: IMdcText) PUTCurY* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 209, p1)
    END PUTCurY;

    PROCEDURE (this: IMdcText) CurY* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 209)
    END CurY;

    PROCEDURE (this: IMdcText) PUTDropButtonStyle* (p1: fmDropButtonStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 305, p1)
    END PUTDropButtonStyle;

    PROCEDURE (this: IMdcText) DropButtonStyle* (): fmDropButtonStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 305)
    END DropButtonStyle;

    PROCEDURE (this: IMdcText) PUTEnterKeyBehavior* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -544, p1)
    END PUTEnterKeyBehavior;

    PROCEDURE (this: IMdcText) EnterKeyBehavior* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -544)
    END EnterKeyBehavior;

    PROCEDURE (this: IMdcText) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IMdcText) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IMdcText) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IMdcText) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IMdcText) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IMdcText) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: IMdcText) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: IMdcText) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: IMdcText) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: IMdcText) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: IMdcText) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: IMdcText) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: IMdcText) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: IMdcText) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: IMdcText) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: IMdcText) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: IMdcText) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: IMdcText) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: IMdcText) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;

    PROCEDURE (this: IMdcText) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IMdcText) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IMdcText) PUTHideSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 207, p1)
    END PUTHideSelection;

    PROCEDURE (this: IMdcText) HideSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 207)
    END HideSelection;

    PROCEDURE (this: IMdcText) PUTIntegralHeight* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 604, p1)
    END PUTIntegralHeight;

    PROCEDURE (this: IMdcText) IntegralHeight* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 604)
    END IntegralHeight;

    PROCEDURE (this: IMdcText) LineCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 214)
    END LineCount;

    PROCEDURE (this: IMdcText) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTLocked;

    PROCEDURE (this: IMdcText) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Locked;

    PROCEDURE (this: IMdcText) PUTMaxLength* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -533, p1)
    END PUTMaxLength;

    PROCEDURE (this: IMdcText) MaxLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -533)
    END MaxLength;

    PROCEDURE (this: IMdcText) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IMdcText) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IMdcText) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IMdcText) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IMdcText) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IMdcText) PUTMultiLine* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -537, p1)
    END PUTMultiLine;

    PROCEDURE (this: IMdcText) MultiLine* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -537)
    END MultiLine;

    PROCEDURE (this: IMdcText) PUTPasswordChar* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -534, p1)
    END PUTPasswordChar;

    PROCEDURE (this: IMdcText) PasswordChar* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -534)
    END PasswordChar;

    PROCEDURE (this: IMdcText) PUTScrollBars* (p1: fmScrollBars), NEW;
    BEGIN
        CtlC.PutInt(this, -535, p1)
    END PUTScrollBars;

    PROCEDURE (this: IMdcText) ScrollBars* (): fmScrollBars, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -535)
    END ScrollBars;

    PROCEDURE (this: IMdcText) PUTSelectionMargin* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 220, p1)
    END PUTSelectionMargin;

    PROCEDURE (this: IMdcText) SelectionMargin* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 220)
    END SelectionMargin;

    PROCEDURE (this: IMdcText) PUTSelLength* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -548, p1)
    END PUTSelLength;

    PROCEDURE (this: IMdcText) SelLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -548)
    END SelLength;

    PROCEDURE (this: IMdcText) PUTSelStart* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -547, p1)
    END PUTSelStart;

    PROCEDURE (this: IMdcText) SelStart* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -547)
    END SelStart;

    PROCEDURE (this: IMdcText) PUTSelText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -546, p1)
    END PUTSelText;

    PROCEDURE (this: IMdcText) SelText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -546)
    END SelText;

    PROCEDURE (this: IMdcText) PUTShowDropButtonWhen* (p1: fmShowDropButtonWhen), NEW;
    BEGIN
        CtlC.PutInt(this, 304, p1)
    END PUTShowDropButtonWhen;

    PROCEDURE (this: IMdcText) ShowDropButtonWhen* (): fmShowDropButtonWhen, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 304)
    END ShowDropButtonWhen;

    PROCEDURE (this: IMdcText) PUTSpecialEffect* (p1: fmSpecialEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IMdcText) SpecialEffect* (): fmSpecialEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: IMdcText) PUTTabKeyBehavior* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -545, p1)
    END PUTTabKeyBehavior;

    PROCEDURE (this: IMdcText) TabKeyBehavior* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -545)
    END TabKeyBehavior;

    PROCEDURE (this: IMdcText) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -517, p1)
    END PUTText;

    PROCEDURE (this: IMdcText) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -517)
    END Text;

    PROCEDURE (this: IMdcText) PUTTextAlign* (p1: fmTextAlign), NEW;
    BEGIN
        CtlC.PutInt(this, 10004, p1)
    END PUTTextAlign;

    PROCEDURE (this: IMdcText) TextAlign* (): fmTextAlign, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 10004)
    END TextAlign;

    PROCEDURE (this: IMdcText) TextLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 216)
    END TextLength;

    PROCEDURE (this: IMdcText) Valid* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -524)
    END Valid;

    PROCEDURE (this: IMdcText) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IMdcText) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: IMdcText) PUTWordWrap* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -536, p1)
    END PUTWordWrap;

    PROCEDURE (this: IMdcText) WordWrap* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -536)
    END WordWrap;

    PROCEDURE (this: IMdcText) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 22, NIL);
    END Copy;

    PROCEDURE (this: IMdcText) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 21, NIL);
    END Cut;

    PROCEDURE (this: IMdcText) Paste* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 24, NIL);
    END Paste;

    PROCEDURE (this: IMdcText) PUTIMEMode* (p1: fmIMEMode), NEW;
    BEGIN
        CtlC.PutInt(this, -542, p1)
    END PUTIMEMode;

    PROCEDURE (this: IMdcText) IMEMode* (): fmIMEMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -542)
    END IMEMode;

    PROCEDURE (this: IMdcText) PUTEnterFieldBehavior* (p1: fmEnterFieldBehavior), NEW;
    BEGIN
        CtlC.PutInt(this, 224, p1)
    END PUTEnterFieldBehavior;

    PROCEDURE (this: IMdcText) EnterFieldBehavior* (): fmEnterFieldBehavior, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 224)
    END EnterFieldBehavior;

    PROCEDURE (this: IMdcText) PUTDragBehavior* (p1: fmDragBehavior), NEW;
    BEGIN
        CtlC.PutInt(this, 225, p1)
    END PUTDragBehavior;

    PROCEDURE (this: IMdcText) DragBehavior* (): fmDragBehavior, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 225)
    END DragBehavior;

    PROCEDURE (this: IMdcText) DisplayStyle* (): fmDisplayStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -540)
    END DisplayStyle;


    (* ---------- IMdcList, hidden, dual ---------- *)

    PROCEDURE (this: IMdcList) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IMdcList) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IMdcList) PUTBorderColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -503, p1)
    END PUTBorderColor;

    PROCEDURE (this: IMdcList) BorderColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -503)
    END BorderColor;

    PROCEDURE (this: IMdcList) PUTBorderStyle* (p1: fmBorderStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -504, p1)
    END PUTBorderStyle;

    PROCEDURE (this: IMdcList) BorderStyle* (): fmBorderStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -504)
    END BorderStyle;

    PROCEDURE (this: IMdcList) PUTBordersSuppress* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 20, p1)
    END PUTBordersSuppress;

    PROCEDURE (this: IMdcList) BordersSuppress* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 20)
    END BordersSuppress;

    PROCEDURE (this: IMdcList) PUTBoundColumn* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 501, p1)
    END PUTBoundColumn;

    PROCEDURE (this: IMdcList) BoundColumn* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 501)
    END BoundColumn;

    PROCEDURE (this: IMdcList) PUTColumnCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 601, p1)
    END PUTColumnCount;

    PROCEDURE (this: IMdcList) ColumnCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 601)
    END ColumnCount;

    PROCEDURE (this: IMdcList) PUTColumnHeads* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 602, p1)
    END PUTColumnHeads;

    PROCEDURE (this: IMdcList) ColumnHeads* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 602)
    END ColumnHeads;

    PROCEDURE (this: IMdcList) PUTColumnWidths* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 603, p1)
    END PUTColumnWidths;

    PROCEDURE (this: IMdcList) ColumnWidths* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 603)
    END ColumnWidths;

    PROCEDURE (this: IMdcList) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IMdcList) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IMdcList) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IMdcList) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IMdcList) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IMdcList) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: IMdcList) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: IMdcList) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: IMdcList) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: IMdcList) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: IMdcList) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: IMdcList) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: IMdcList) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: IMdcList) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: IMdcList) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: IMdcList) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: IMdcList) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: IMdcList) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: IMdcList) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;

    PROCEDURE (this: IMdcList) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IMdcList) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IMdcList) PUTIntegralHeight* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 604, p1)
    END PUTIntegralHeight;

    PROCEDURE (this: IMdcList) IntegralHeight* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 604)
    END IntegralHeight;

    PROCEDURE (this: IMdcList) ListCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -531)
    END ListCount;

    PROCEDURE (this: IMdcList) PUTListCursor* (p1: CtlT.IUnknown), NEW;
    BEGIN
        CtlC.PutIntfce(this, 403, p1)
    END PUTListCursor;

    PROCEDURE (this: IMdcList) ListCursor* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 403)
    END ListCursor;

    PROCEDURE (this: IMdcList) PUTListIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, -526, p1)
    END PUTListIndex;

    PROCEDURE (this: IMdcList) ListIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -526)
    END ListIndex;

    PROCEDURE (this: IMdcList) PUTListStyle* (p1: fmListStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 307, p1)
    END PUTListStyle;

    PROCEDURE (this: IMdcList) ListStyle* (): fmListStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 307)
    END ListStyle;

    PROCEDURE (this: IMdcList) PUTListWidth* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 606, p1)
    END PUTListWidth;

    PROCEDURE (this: IMdcList) ListWidth* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 606)
    END ListWidth;

    PROCEDURE (this: IMdcList) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTLocked;

    PROCEDURE (this: IMdcList) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Locked;

    PROCEDURE (this: IMdcList) PUTMatchEntry* (p1: fmMatchEntry), NEW;
    BEGIN
        CtlC.PutInt(this, 504, p1)
    END PUTMatchEntry;

    PROCEDURE (this: IMdcList) MatchEntry* (): fmMatchEntry, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 504)
    END MatchEntry;

    PROCEDURE (this: IMdcList) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IMdcList) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IMdcList) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IMdcList) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IMdcList) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IMdcList) PUTMultiSelect* (p1: fmMultiSelect), NEW;
    BEGIN
        CtlC.PutInt(this, -532, p1)
    END PUTMultiSelect;

    PROCEDURE (this: IMdcList) MultiSelect* (): fmMultiSelect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -532)
    END MultiSelect;

    PROCEDURE (this: IMdcList) PUTSpecialEffect* (p1: fmSpecialEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IMdcList) SpecialEffect* (): fmSpecialEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: IMdcList) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -517, p1)
    END PUTText;

    PROCEDURE (this: IMdcList) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -517)
    END Text;

    PROCEDURE (this: IMdcList) PUTTextColumn* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 502, p1)
    END PUTTextColumn;

    PROCEDURE (this: IMdcList) TextColumn* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 502)
    END TextColumn;

    PROCEDURE (this: IMdcList) PUTTopIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 611, p1)
    END PUTTopIndex;

    PROCEDURE (this: IMdcList) TopIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 611)
    END TopIndex;

    PROCEDURE (this: IMdcList) Valid* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -524)
    END Valid;

    PROCEDURE (this: IMdcList) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IMdcList) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: IMdcList) Column* ((* optional *) pvargColumn: CtlT.Any; pvargIndex: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargColumn, arg[1]);
        CtlC.AnyVar(pvargIndex, arg[0]);
        CtlC.CallGetMethod(this, -529, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Column;

    PROCEDURE (this: IMdcList) PUTColumn* (pvargColumn: CtlT.Any; (* optional *) pvargIndex: CtlT.Any; p3: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargColumn, arg[2]);
        CtlC.AnyVar(pvargIndex, arg[1]);
        CtlC.AnyVar(p3, arg[0]);
        CtlC.CallPutMethod(this, -529, arg, NIL);
    END PUTColumn;

    PROCEDURE (this: IMdcList) List* ((* optional *) pvargIndex: CtlT.Any; pvargColumn: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[1]);
        CtlC.AnyVar(pvargColumn, arg[0]);
        CtlC.CallGetMethod(this, -528, arg, ret);
        RETURN CtlC.VarAny(ret)
    END List;

    PROCEDURE (this: IMdcList) PUTList* (pvargIndex: CtlT.Any; (* optional *) pvargColumn: CtlT.Any; p3: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[2]);
        CtlC.AnyVar(pvargColumn, arg[1]);
        CtlC.AnyVar(p3, arg[0]);
        CtlC.CallPutMethod(this, -528, arg, NIL);
    END PUTList;

    PROCEDURE (this: IMdcList) Selected* (pvargIndex: CtlT.Any): BOOLEAN, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[0]);
        CtlC.CallGetMethod(this, -527, arg, ret);
        RETURN CtlC.VarBool(ret)
    END Selected;

    PROCEDURE (this: IMdcList) PUTSelected* (pvargIndex: CtlT.Any; p2: BOOLEAN), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[1]);
        CtlC.BoolVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -527, arg, NIL);
    END PUTSelected;

    PROCEDURE (this: IMdcList) AddItem* ((* optional *) pvargItem: CtlT.Any; pvargIndex: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargItem, arg[1]);
        CtlC.AnyVar(pvargIndex, arg[0]);
        CtlC.CallParMethod(this, -553, arg, NIL);
    END AddItem;

    PROCEDURE (this: IMdcList) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, -554, NIL);
    END Clear;

    PROCEDURE (this: IMdcList) RemoveItem* (pvargIndex: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[0]);
        CtlC.CallParMethod(this, -555, arg, NIL);
    END RemoveItem;

    PROCEDURE (this: IMdcList) PUTIMEMode* (p1: fmIMEMode), NEW;
    BEGIN
        CtlC.PutInt(this, -542, p1)
    END PUTIMEMode;

    PROCEDURE (this: IMdcList) IMEMode* (): fmIMEMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -542)
    END IMEMode;

    PROCEDURE (this: IMdcList) DisplayStyle* (): fmDisplayStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -540)
    END DisplayStyle;


    (* ---------- IMdcCombo, hidden, dual ---------- *)

    PROCEDURE (this: IMdcCombo) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: IMdcCombo) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: IMdcCombo) PUTAutoTab* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 217, p1)
    END PUTAutoTab;

    PROCEDURE (this: IMdcCombo) AutoTab* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 217)
    END AutoTab;

    PROCEDURE (this: IMdcCombo) PUTAutoWordSelect* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 218, p1)
    END PUTAutoWordSelect;

    PROCEDURE (this: IMdcCombo) AutoWordSelect* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 218)
    END AutoWordSelect;

    PROCEDURE (this: IMdcCombo) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IMdcCombo) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IMdcCombo) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: IMdcCombo) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: IMdcCombo) PUTBorderColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -503, p1)
    END PUTBorderColor;

    PROCEDURE (this: IMdcCombo) BorderColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -503)
    END BorderColor;

    PROCEDURE (this: IMdcCombo) PUTBorderStyle* (p1: fmBorderStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -504, p1)
    END PUTBorderStyle;

    PROCEDURE (this: IMdcCombo) BorderStyle* (): fmBorderStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -504)
    END BorderStyle;

    PROCEDURE (this: IMdcCombo) PUTBordersSuppress* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 20, p1)
    END PUTBordersSuppress;

    PROCEDURE (this: IMdcCombo) BordersSuppress* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 20)
    END BordersSuppress;

    PROCEDURE (this: IMdcCombo) PUTBoundColumn* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 501, p1)
    END PUTBoundColumn;

    PROCEDURE (this: IMdcCombo) BoundColumn* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 501)
    END BoundColumn;

    PROCEDURE (this: IMdcCombo) CanPaste* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END CanPaste;

    PROCEDURE (this: IMdcCombo) PUTColumnCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 601, p1)
    END PUTColumnCount;

    PROCEDURE (this: IMdcCombo) ColumnCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 601)
    END ColumnCount;

    PROCEDURE (this: IMdcCombo) PUTColumnHeads* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 602, p1)
    END PUTColumnHeads;

    PROCEDURE (this: IMdcCombo) ColumnHeads* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 602)
    END ColumnHeads;

    PROCEDURE (this: IMdcCombo) PUTColumnWidths* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 603, p1)
    END PUTColumnWidths;

    PROCEDURE (this: IMdcCombo) ColumnWidths* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 603)
    END ColumnWidths;

    PROCEDURE (this: IMdcCombo) CurTargetX* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 210)
    END CurTargetX;

    PROCEDURE (this: IMdcCombo) CurTargetY* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 221)
    END CurTargetY;

    PROCEDURE (this: IMdcCombo) PUTCurX* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 208, p1)
    END PUTCurX;

    PROCEDURE (this: IMdcCombo) CurX* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 208)
    END CurX;

    PROCEDURE (this: IMdcCombo) PUTDropButtonStyle* (p1: fmDropButtonStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 305, p1)
    END PUTDropButtonStyle;

    PROCEDURE (this: IMdcCombo) DropButtonStyle* (): fmDropButtonStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 305)
    END DropButtonStyle;

    PROCEDURE (this: IMdcCombo) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IMdcCombo) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IMdcCombo) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IMdcCombo) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IMdcCombo) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IMdcCombo) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: IMdcCombo) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: IMdcCombo) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: IMdcCombo) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: IMdcCombo) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: IMdcCombo) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: IMdcCombo) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: IMdcCombo) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: IMdcCombo) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: IMdcCombo) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: IMdcCombo) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: IMdcCombo) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: IMdcCombo) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: IMdcCombo) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;

    PROCEDURE (this: IMdcCombo) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IMdcCombo) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IMdcCombo) PUTHideSelection* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 207, p1)
    END PUTHideSelection;

    PROCEDURE (this: IMdcCombo) HideSelection* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 207)
    END HideSelection;

    PROCEDURE (this: IMdcCombo) LineCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 214)
    END LineCount;

    PROCEDURE (this: IMdcCombo) ListCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -531)
    END ListCount;

    PROCEDURE (this: IMdcCombo) PUTListCursor* (p1: CtlT.IUnknown), NEW;
    BEGIN
        CtlC.PutIntfce(this, 403, p1)
    END PUTListCursor;

    PROCEDURE (this: IMdcCombo) ListCursor* (): CtlT.IUnknown, NEW;
    BEGIN
        RETURN CtlC.GetIntfce(this, 403)
    END ListCursor;

    PROCEDURE (this: IMdcCombo) PUTListIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, -526, p1)
    END PUTListIndex;

    PROCEDURE (this: IMdcCombo) ListIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -526)
    END ListIndex;

    PROCEDURE (this: IMdcCombo) PUTListRows* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 605, p1)
    END PUTListRows;

    PROCEDURE (this: IMdcCombo) ListRows* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 605)
    END ListRows;

    PROCEDURE (this: IMdcCombo) PUTListStyle* (p1: fmListStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 307, p1)
    END PUTListStyle;

    PROCEDURE (this: IMdcCombo) ListStyle* (): fmListStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 307)
    END ListStyle;

    PROCEDURE (this: IMdcCombo) PUTListWidth* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 606, p1)
    END PUTListWidth;

    PROCEDURE (this: IMdcCombo) ListWidth* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 606)
    END ListWidth;

    PROCEDURE (this: IMdcCombo) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTLocked;

    PROCEDURE (this: IMdcCombo) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Locked;

    PROCEDURE (this: IMdcCombo) PUTMatchEntry* (p1: fmMatchEntry), NEW;
    BEGIN
        CtlC.PutInt(this, 504, p1)
    END PUTMatchEntry;

    PROCEDURE (this: IMdcCombo) MatchEntry* (): fmMatchEntry, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 504)
    END MatchEntry;

    PROCEDURE (this: IMdcCombo) MatchFound* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 505)
    END MatchFound;

    PROCEDURE (this: IMdcCombo) PUTMatchRequired* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 503, p1)
    END PUTMatchRequired;

    PROCEDURE (this: IMdcCombo) MatchRequired* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 503)
    END MatchRequired;

    PROCEDURE (this: IMdcCombo) PUTMaxLength* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -533, p1)
    END PUTMaxLength;

    PROCEDURE (this: IMdcCombo) MaxLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -533)
    END MaxLength;

    PROCEDURE (this: IMdcCombo) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IMdcCombo) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IMdcCombo) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IMdcCombo) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IMdcCombo) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IMdcCombo) PUTSelectionMargin* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 220, p1)
    END PUTSelectionMargin;

    PROCEDURE (this: IMdcCombo) SelectionMargin* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 220)
    END SelectionMargin;

    PROCEDURE (this: IMdcCombo) PUTSelLength* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -548, p1)
    END PUTSelLength;

    PROCEDURE (this: IMdcCombo) SelLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -548)
    END SelLength;

    PROCEDURE (this: IMdcCombo) PUTSelStart* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -547, p1)
    END PUTSelStart;

    PROCEDURE (this: IMdcCombo) SelStart* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -547)
    END SelStart;

    PROCEDURE (this: IMdcCombo) PUTSelText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -546, p1)
    END PUTSelText;

    PROCEDURE (this: IMdcCombo) SelText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -546)
    END SelText;

    PROCEDURE (this: IMdcCombo) PUTShowDropButtonWhen* (p1: fmShowDropButtonWhen), NEW;
    BEGIN
        CtlC.PutInt(this, 304, p1)
    END PUTShowDropButtonWhen;

    PROCEDURE (this: IMdcCombo) ShowDropButtonWhen* (): fmShowDropButtonWhen, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 304)
    END ShowDropButtonWhen;

    PROCEDURE (this: IMdcCombo) PUTSpecialEffect* (p1: fmSpecialEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IMdcCombo) SpecialEffect* (): fmSpecialEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: IMdcCombo) PUTStyle* (p1: fmStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 308, p1)
    END PUTStyle;

    PROCEDURE (this: IMdcCombo) Style* (): fmStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 308)
    END Style;

    PROCEDURE (this: IMdcCombo) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -517, p1)
    END PUTText;

    PROCEDURE (this: IMdcCombo) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -517)
    END Text;

    PROCEDURE (this: IMdcCombo) PUTTextAlign* (p1: fmTextAlign), NEW;
    BEGIN
        CtlC.PutInt(this, 10004, p1)
    END PUTTextAlign;

    PROCEDURE (this: IMdcCombo) TextAlign* (): fmTextAlign, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 10004)
    END TextAlign;

    PROCEDURE (this: IMdcCombo) PUTTextColumn* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 502, p1)
    END PUTTextColumn;

    PROCEDURE (this: IMdcCombo) TextColumn* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 502)
    END TextColumn;

    PROCEDURE (this: IMdcCombo) TextLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 216)
    END TextLength;

    PROCEDURE (this: IMdcCombo) PUTTopIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 611, p1)
    END PUTTopIndex;

    PROCEDURE (this: IMdcCombo) TopIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 611)
    END TopIndex;

    PROCEDURE (this: IMdcCombo) Valid* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -524)
    END Valid;

    PROCEDURE (this: IMdcCombo) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IMdcCombo) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: IMdcCombo) Column* ((* optional *) pvargColumn: CtlT.Any; pvargIndex: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargColumn, arg[1]);
        CtlC.AnyVar(pvargIndex, arg[0]);
        CtlC.CallGetMethod(this, -529, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Column;

    PROCEDURE (this: IMdcCombo) PUTColumn* (pvargColumn: CtlT.Any; (* optional *) pvargIndex: CtlT.Any; p3: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargColumn, arg[2]);
        CtlC.AnyVar(pvargIndex, arg[1]);
        CtlC.AnyVar(p3, arg[0]);
        CtlC.CallPutMethod(this, -529, arg, NIL);
    END PUTColumn;

    PROCEDURE (this: IMdcCombo) List* ((* optional *) pvargIndex: CtlT.Any; pvargColumn: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[1]);
        CtlC.AnyVar(pvargColumn, arg[0]);
        CtlC.CallGetMethod(this, -528, arg, ret);
        RETURN CtlC.VarAny(ret)
    END List;

    PROCEDURE (this: IMdcCombo) PUTList* (pvargIndex: CtlT.Any; (* optional *) pvargColumn: CtlT.Any; p3: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[2]);
        CtlC.AnyVar(pvargColumn, arg[1]);
        CtlC.AnyVar(p3, arg[0]);
        CtlC.CallPutMethod(this, -528, arg, NIL);
    END PUTList;

    PROCEDURE (this: IMdcCombo) AddItem* ((* optional *) pvargItem: CtlT.Any; pvargIndex: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargItem, arg[1]);
        CtlC.AnyVar(pvargIndex, arg[0]);
        CtlC.CallParMethod(this, -553, arg, NIL);
    END AddItem;

    PROCEDURE (this: IMdcCombo) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, -554, NIL);
    END Clear;

    PROCEDURE (this: IMdcCombo) DropDown* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1001, NIL);
    END DropDown;

    PROCEDURE (this: IMdcCombo) RemoveItem* (pvargIndex: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(pvargIndex, arg[0]);
        CtlC.CallParMethod(this, -555, arg, NIL);
    END RemoveItem;

    PROCEDURE (this: IMdcCombo) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 22, NIL);
    END Copy;

    PROCEDURE (this: IMdcCombo) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 21, NIL);
    END Cut;

    PROCEDURE (this: IMdcCombo) Paste* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 24, NIL);
    END Paste;

    PROCEDURE (this: IMdcCombo) PUTIMEMode* (p1: fmIMEMode), NEW;
    BEGIN
        CtlC.PutInt(this, -542, p1)
    END PUTIMEMode;

    PROCEDURE (this: IMdcCombo) IMEMode* (): fmIMEMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -542)
    END IMEMode;

    PROCEDURE (this: IMdcCombo) PUTEnterFieldBehavior* (p1: fmEnterFieldBehavior), NEW;
    BEGIN
        CtlC.PutInt(this, 224, p1)
    END PUTEnterFieldBehavior;

    PROCEDURE (this: IMdcCombo) EnterFieldBehavior* (): fmEnterFieldBehavior, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 224)
    END EnterFieldBehavior;

    PROCEDURE (this: IMdcCombo) PUTDragBehavior* (p1: fmDragBehavior), NEW;
    BEGIN
        CtlC.PutInt(this, 225, p1)
    END PUTDragBehavior;

    PROCEDURE (this: IMdcCombo) DragBehavior* (): fmDragBehavior, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 225)
    END DragBehavior;

    PROCEDURE (this: IMdcCombo) DisplayStyle* (): fmDisplayStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -540)
    END DisplayStyle;


    (* ---------- IMdcCheckBox, hidden, dual ---------- *)

    PROCEDURE (this: IMdcCheckBox) PUTAccelerator* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -543, p1)
    END PUTAccelerator;

    PROCEDURE (this: IMdcCheckBox) Accelerator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -543)
    END Accelerator;

    PROCEDURE (this: IMdcCheckBox) PUTAlignment* (p1: fmAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 710, p1)
    END PUTAlignment;

    PROCEDURE (this: IMdcCheckBox) Alignment* (): fmAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 710)
    END Alignment;

    PROCEDURE (this: IMdcCheckBox) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: IMdcCheckBox) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: IMdcCheckBox) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IMdcCheckBox) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IMdcCheckBox) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: IMdcCheckBox) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: IMdcCheckBox) PUTBordersSuppress* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 20, p1)
    END PUTBordersSuppress;

    PROCEDURE (this: IMdcCheckBox) BordersSuppress* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 20)
    END BordersSuppress;

    PROCEDURE (this: IMdcCheckBox) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: IMdcCheckBox) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: IMdcCheckBox) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IMdcCheckBox) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IMdcCheckBox) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IMdcCheckBox) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IMdcCheckBox) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IMdcCheckBox) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: IMdcCheckBox) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: IMdcCheckBox) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: IMdcCheckBox) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: IMdcCheckBox) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: IMdcCheckBox) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: IMdcCheckBox) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: IMdcCheckBox) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: IMdcCheckBox) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: IMdcCheckBox) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: IMdcCheckBox) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: IMdcCheckBox) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: IMdcCheckBox) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: IMdcCheckBox) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;

    PROCEDURE (this: IMdcCheckBox) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IMdcCheckBox) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IMdcCheckBox) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTLocked;

    PROCEDURE (this: IMdcCheckBox) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Locked;

    PROCEDURE (this: IMdcCheckBox) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IMdcCheckBox) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IMdcCheckBox) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IMdcCheckBox) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IMdcCheckBox) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IMdcCheckBox) PUTMultiSelect* (p1: fmMultiSelect), NEW;
    BEGIN
        CtlC.PutInt(this, -532, p1)
    END PUTMultiSelect;

    PROCEDURE (this: IMdcCheckBox) MultiSelect* (): fmMultiSelect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -532)
    END MultiSelect;

    PROCEDURE (this: IMdcCheckBox) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: IMdcCheckBox) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: IMdcCheckBox) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: IMdcCheckBox) PUTPicturePosition* (p1: fmPicturePosition), NEW;
    BEGIN
        CtlC.PutInt(this, 11, p1)
    END PUTPicturePosition;

    PROCEDURE (this: IMdcCheckBox) PicturePosition* (): fmPicturePosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END PicturePosition;

    PROCEDURE (this: IMdcCheckBox) PUTSpecialEffect* (p1: fmButtonEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IMdcCheckBox) SpecialEffect* (): fmButtonEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: IMdcCheckBox) PUTTripleState* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 700, p1)
    END PUTTripleState;

    PROCEDURE (this: IMdcCheckBox) TripleState* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 700)
    END TripleState;

    PROCEDURE (this: IMdcCheckBox) Valid* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -524)
    END Valid;

    PROCEDURE (this: IMdcCheckBox) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IMdcCheckBox) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: IMdcCheckBox) PUTWordWrap* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -536, p1)
    END PUTWordWrap;

    PROCEDURE (this: IMdcCheckBox) WordWrap* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -536)
    END WordWrap;

    PROCEDURE (this: IMdcCheckBox) DisplayStyle* (): fmDisplayStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -540)
    END DisplayStyle;

    PROCEDURE (this: IMdcCheckBox) PUTGroupName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTGroupName;

    PROCEDURE (this: IMdcCheckBox) GroupName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END GroupName;


    (* ---------- IMdcOptionButton, hidden, dual ---------- *)

    PROCEDURE (this: IMdcOptionButton) PUTAccelerator* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -543, p1)
    END PUTAccelerator;

    PROCEDURE (this: IMdcOptionButton) Accelerator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -543)
    END Accelerator;

    PROCEDURE (this: IMdcOptionButton) PUTAlignment* (p1: fmAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 710, p1)
    END PUTAlignment;

    PROCEDURE (this: IMdcOptionButton) Alignment* (): fmAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 710)
    END Alignment;

    PROCEDURE (this: IMdcOptionButton) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: IMdcOptionButton) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: IMdcOptionButton) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IMdcOptionButton) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IMdcOptionButton) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: IMdcOptionButton) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: IMdcOptionButton) PUTBordersSuppress* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 20, p1)
    END PUTBordersSuppress;

    PROCEDURE (this: IMdcOptionButton) BordersSuppress* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 20)
    END BordersSuppress;

    PROCEDURE (this: IMdcOptionButton) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: IMdcOptionButton) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: IMdcOptionButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IMdcOptionButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IMdcOptionButton) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IMdcOptionButton) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IMdcOptionButton) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IMdcOptionButton) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: IMdcOptionButton) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: IMdcOptionButton) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: IMdcOptionButton) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: IMdcOptionButton) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: IMdcOptionButton) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: IMdcOptionButton) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: IMdcOptionButton) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: IMdcOptionButton) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: IMdcOptionButton) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: IMdcOptionButton) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: IMdcOptionButton) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: IMdcOptionButton) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: IMdcOptionButton) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;

    PROCEDURE (this: IMdcOptionButton) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IMdcOptionButton) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IMdcOptionButton) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTLocked;

    PROCEDURE (this: IMdcOptionButton) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Locked;

    PROCEDURE (this: IMdcOptionButton) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IMdcOptionButton) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IMdcOptionButton) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IMdcOptionButton) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IMdcOptionButton) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IMdcOptionButton) PUTMultiSelect* (p1: fmMultiSelect), NEW;
    BEGIN
        CtlC.PutInt(this, -532, p1)
    END PUTMultiSelect;

    PROCEDURE (this: IMdcOptionButton) MultiSelect* (): fmMultiSelect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -532)
    END MultiSelect;

    PROCEDURE (this: IMdcOptionButton) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: IMdcOptionButton) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: IMdcOptionButton) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: IMdcOptionButton) PUTPicturePosition* (p1: fmPicturePosition), NEW;
    BEGIN
        CtlC.PutInt(this, 11, p1)
    END PUTPicturePosition;

    PROCEDURE (this: IMdcOptionButton) PicturePosition* (): fmPicturePosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END PicturePosition;

    PROCEDURE (this: IMdcOptionButton) PUTSpecialEffect* (p1: fmButtonEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IMdcOptionButton) SpecialEffect* (): fmButtonEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: IMdcOptionButton) PUTTripleState* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 700, p1)
    END PUTTripleState;

    PROCEDURE (this: IMdcOptionButton) TripleState* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 700)
    END TripleState;

    PROCEDURE (this: IMdcOptionButton) Valid* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -524)
    END Valid;

    PROCEDURE (this: IMdcOptionButton) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IMdcOptionButton) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: IMdcOptionButton) PUTWordWrap* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -536, p1)
    END PUTWordWrap;

    PROCEDURE (this: IMdcOptionButton) WordWrap* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -536)
    END WordWrap;

    PROCEDURE (this: IMdcOptionButton) DisplayStyle* (): fmDisplayStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -540)
    END DisplayStyle;

    PROCEDURE (this: IMdcOptionButton) PUTGroupName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTGroupName;

    PROCEDURE (this: IMdcOptionButton) GroupName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END GroupName;


    (* ---------- IMdcToggleButton, hidden, dual ---------- *)

    PROCEDURE (this: IMdcToggleButton) PUTAccelerator* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -543, p1)
    END PUTAccelerator;

    PROCEDURE (this: IMdcToggleButton) Accelerator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -543)
    END Accelerator;

    PROCEDURE (this: IMdcToggleButton) PUTAlignment* (p1: fmAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 710, p1)
    END PUTAlignment;

    PROCEDURE (this: IMdcToggleButton) Alignment* (): fmAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 710)
    END Alignment;

    PROCEDURE (this: IMdcToggleButton) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: IMdcToggleButton) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: IMdcToggleButton) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IMdcToggleButton) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IMdcToggleButton) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: IMdcToggleButton) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: IMdcToggleButton) PUTBordersSuppress* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 20, p1)
    END PUTBordersSuppress;

    PROCEDURE (this: IMdcToggleButton) BordersSuppress* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 20)
    END BordersSuppress;

    PROCEDURE (this: IMdcToggleButton) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: IMdcToggleButton) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: IMdcToggleButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IMdcToggleButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IMdcToggleButton) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IMdcToggleButton) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IMdcToggleButton) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IMdcToggleButton) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: IMdcToggleButton) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: IMdcToggleButton) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: IMdcToggleButton) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: IMdcToggleButton) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: IMdcToggleButton) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: IMdcToggleButton) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: IMdcToggleButton) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: IMdcToggleButton) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: IMdcToggleButton) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: IMdcToggleButton) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: IMdcToggleButton) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: IMdcToggleButton) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: IMdcToggleButton) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;

    PROCEDURE (this: IMdcToggleButton) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IMdcToggleButton) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IMdcToggleButton) PUTLocked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 10, p1)
    END PUTLocked;

    PROCEDURE (this: IMdcToggleButton) Locked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 10)
    END Locked;

    PROCEDURE (this: IMdcToggleButton) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IMdcToggleButton) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IMdcToggleButton) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IMdcToggleButton) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IMdcToggleButton) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IMdcToggleButton) PUTMultiSelect* (p1: fmMultiSelect), NEW;
    BEGIN
        CtlC.PutInt(this, -532, p1)
    END PUTMultiSelect;

    PROCEDURE (this: IMdcToggleButton) MultiSelect* (): fmMultiSelect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -532)
    END MultiSelect;

    PROCEDURE (this: IMdcToggleButton) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: IMdcToggleButton) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: IMdcToggleButton) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: IMdcToggleButton) PUTPicturePosition* (p1: fmPicturePosition), NEW;
    BEGIN
        CtlC.PutInt(this, 11, p1)
    END PUTPicturePosition;

    PROCEDURE (this: IMdcToggleButton) PicturePosition* (): fmPicturePosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END PicturePosition;

    PROCEDURE (this: IMdcToggleButton) PUTSpecialEffect* (p1: fmButtonEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IMdcToggleButton) SpecialEffect* (): fmButtonEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;

    PROCEDURE (this: IMdcToggleButton) PUTTripleState* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 700, p1)
    END PUTTripleState;

    PROCEDURE (this: IMdcToggleButton) TripleState* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 700)
    END TripleState;

    PROCEDURE (this: IMdcToggleButton) Valid* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -524)
    END Valid;

    PROCEDURE (this: IMdcToggleButton) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IMdcToggleButton) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 0)
    END Value;

    PROCEDURE (this: IMdcToggleButton) PUTWordWrap* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -536, p1)
    END PUTWordWrap;

    PROCEDURE (this: IMdcToggleButton) WordWrap* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -536)
    END WordWrap;

    PROCEDURE (this: IMdcToggleButton) DisplayStyle* (): fmDisplayStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -540)
    END DisplayStyle;

    PROCEDURE (this: IMdcToggleButton) PUTGroupName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTGroupName;

    PROCEDURE (this: IMdcToggleButton) GroupName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END GroupName;


    (* ---------- IScrollbar, hidden, dual ---------- *)

    PROCEDURE (this: IScrollbar) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IScrollbar) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IScrollbar) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IScrollbar) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IScrollbar) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IScrollbar) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IScrollbar) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IScrollbar) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IScrollbar) PUTValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IScrollbar) Value* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END Value;

    PROCEDURE (this: IScrollbar) PUTMin* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTMin;

    PROCEDURE (this: IScrollbar) Min* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END Min;

    PROCEDURE (this: IScrollbar) PUTMax* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTMax;

    PROCEDURE (this: IScrollbar) Max* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Max;

    PROCEDURE (this: IScrollbar) PUTSmallChange* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTSmallChange;

    PROCEDURE (this: IScrollbar) SmallChange* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END SmallChange;

    PROCEDURE (this: IScrollbar) PUTLargeChange* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 103, p1)
    END PUTLargeChange;

    PROCEDURE (this: IScrollbar) LargeChange* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END LargeChange;

    PROCEDURE (this: IScrollbar) PUTProportionalThumb* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 104, p1)
    END PUTProportionalThumb;

    PROCEDURE (this: IScrollbar) ProportionalThumb* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 104)
    END ProportionalThumb;

    PROCEDURE (this: IScrollbar) PUTOrientation* (p1: fmOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTOrientation;

    PROCEDURE (this: IScrollbar) Orientation* (): fmOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END Orientation;

    PROCEDURE (this: IScrollbar) PUTDelay* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTDelay;

    PROCEDURE (this: IScrollbar) Delay* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Delay;

    PROCEDURE (this: IScrollbar) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IScrollbar) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IScrollbar) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;


    (* ---------- Tab, dual ---------- *)

    PROCEDURE (this: Tab) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: Tab) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: Tab) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418043, p1)
    END PUTControlTipText;

    PROCEDURE (this: Tab) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418043)
    END ControlTipText;

    PROCEDURE (this: Tab) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: Tab) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: Tab) PUTIndex* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1, p1)
    END PUTIndex;

    PROCEDURE (this: Tab) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1)
    END Index;

    PROCEDURE (this: Tab) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418112, p1)
    END PUTName;

    PROCEDURE (this: Tab) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418112)
    END Name;

    PROCEDURE (this: Tab) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418101, p1)
    END PUTTag;

    PROCEDURE (this: Tab) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418101)
    END Tag;

    PROCEDURE (this: Tab) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147418105, p1)
    END PUTVisible;

    PROCEDURE (this: Tab) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147418105)
    END Visible;

    PROCEDURE (this: Tab) PUTAccelerator* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -543, p1)
    END PUTAccelerator;

    PROCEDURE (this: Tab) Accelerator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -543)
    END Accelerator;


    (* ---------- Tabs, dual ---------- *)

    PROCEDURE (this: Tabs) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 60)
    END Count;

    PROCEDURE (this: Tabs) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Tabs) _GetItemByIndex* (lIndex: INTEGER): Tab, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(lIndex, arg[0]);
        CtlC.CallParMethod(this, 1610743810, arg, ret);
        RETURN ThisTab(CtlC.VarAny(ret))
    END _GetItemByIndex;

    PROCEDURE (this: Tabs) _GetItemByName* (bstr: ARRAY OF CHAR): Tab, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstr, arg[0]);
        CtlC.CallParMethod(this, 1610743811, arg, ret);
        RETURN ThisTab(CtlC.VarAny(ret))
    END _GetItemByName;

    PROCEDURE (this: Tabs) Item* (varg: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varg, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Tabs) Enum* (): CtlT.IUnknown, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610743813, ret);
        RETURN CtlC.VarIntfce(ret)
    END Enum;

    PROCEDURE (this: Tabs) Add* ((* optional *) bstrName: CtlT.Any; bstrCaption: CtlT.Any; lIndex: CtlT.Any): Tab, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(bstrName, arg[2]);
        CtlC.AnyVar(bstrCaption, arg[1]);
        CtlC.AnyVar(lIndex, arg[0]);
        CtlC.CallParMethod(this, 66, arg, ret);
        RETURN ThisTab(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Tabs) _Add* (bstrName: ARRAY OF CHAR; bstrCaption: ARRAY OF CHAR): Tab, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrName, arg[1]);
        CtlC.StrVar(bstrCaption, arg[0]);
        CtlC.CallParMethod(this, 1610743815, arg, ret);
        RETURN ThisTab(CtlC.VarAny(ret))
    END _Add;

    PROCEDURE (this: Tabs) _Insert* (bstrName: ARRAY OF CHAR; bstrCaption: ARRAY OF CHAR; lIndex: INTEGER): Tab, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrName, arg[2]);
        CtlC.StrVar(bstrCaption, arg[1]);
        CtlC.IntVar(lIndex, arg[0]);
        CtlC.CallParMethod(this, 1610743816, arg, ret);
        RETURN ThisTab(CtlC.VarAny(ret))
    END _Insert;

    PROCEDURE (this: Tabs) Remove* (varg: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varg, arg[0]);
        CtlC.CallParMethod(this, 67, arg, NIL);
    END Remove;

    PROCEDURE (this: Tabs) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 62, NIL);
    END Clear;


    (* ---------- ITabStrip, hidden, dual ---------- *)

    PROCEDURE (this: ITabStrip) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: ITabStrip) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: ITabStrip) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: ITabStrip) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: ITabStrip) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: ITabStrip) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: ITabStrip) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: ITabStrip) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: ITabStrip) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: ITabStrip) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: ITabStrip) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: ITabStrip) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: ITabStrip) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: ITabStrip) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: ITabStrip) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: ITabStrip) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: ITabStrip) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: ITabStrip) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: ITabStrip) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: ITabStrip) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: ITabStrip) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: ITabStrip) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: ITabStrip) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: ITabStrip) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: ITabStrip) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: ITabStrip) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: ITabStrip) PUTMultiRow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 514, p1)
    END PUTMultiRow;

    PROCEDURE (this: ITabStrip) MultiRow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 514)
    END MultiRow;

    PROCEDURE (this: ITabStrip) PUTStyle* (p1: fmTabStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 513, p1)
    END PUTStyle;

    PROCEDURE (this: ITabStrip) Style* (): fmTabStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 513)
    END Style;

    PROCEDURE (this: ITabStrip) PUTTabOrientation* (p1: fmTabOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 512, p1)
    END PUTTabOrientation;

    PROCEDURE (this: ITabStrip) TabOrientation* (): fmTabOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 512)
    END TabOrientation;

    PROCEDURE (this: ITabStrip) _SetTabFixedWidth* (TabFixedWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(TabFixedWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743840, arg, NIL);
    END _SetTabFixedWidth;

    PROCEDURE (this: ITabStrip) _GetTabFixedWidth* (OUT TabFixedWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(TabFixedWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743841, arg, NIL);
    END _GetTabFixedWidth;

    PROCEDURE (this: ITabStrip) _SetTabFixedHeight* (TabFixedHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(TabFixedHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743842, arg, NIL);
    END _SetTabFixedHeight;

    PROCEDURE (this: ITabStrip) _GetTabFixedHeight* (OUT TabFixedHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(TabFixedHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743843, arg, NIL);
    END _GetTabFixedHeight;

    PROCEDURE (this: ITabStrip) _GetClientTop* (OUT ClientTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ClientTop, arg[0]);
        CtlC.CallParMethod(this, 1610743844, arg, NIL);
    END _GetClientTop;

    PROCEDURE (this: ITabStrip) ClientTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 548)
    END ClientTop;

    PROCEDURE (this: ITabStrip) _GetClientLeft* (OUT ClientLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ClientLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743846, arg, NIL);
    END _GetClientLeft;

    PROCEDURE (this: ITabStrip) ClientLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 547)
    END ClientLeft;

    PROCEDURE (this: ITabStrip) _GetClientWidth* (OUT ClientWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ClientWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743848, arg, NIL);
    END _GetClientWidth;

    PROCEDURE (this: ITabStrip) ClientWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 549)
    END ClientWidth;

    PROCEDURE (this: ITabStrip) _GetClientHeight* (OUT ClientHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ClientHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743850, arg, NIL);
    END _GetClientHeight;

    PROCEDURE (this: ITabStrip) ClientHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 546)
    END ClientHeight;

    PROCEDURE (this: ITabStrip) Tabs* (): Tabs, NEW;
    BEGIN
        RETURN ThisTabs(CtlC.GetAny(this, 0))
    END Tabs;

    PROCEDURE (this: ITabStrip) SelectedItem* (): Tab, NEW;
    BEGIN
        RETURN ThisTab(CtlC.GetAny(this, 545))
    END SelectedItem;

    PROCEDURE (this: ITabStrip) PUTValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 528, p1)
    END PUTValue;

    PROCEDURE (this: ITabStrip) Value* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 528)
    END Value;

    PROCEDURE (this: ITabStrip) PUTTabFixedWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 515, p1)
    END PUTTabFixedWidth;

    PROCEDURE (this: ITabStrip) TabFixedWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 515)
    END TabFixedWidth;

    PROCEDURE (this: ITabStrip) PUTTabFixedHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 516, p1)
    END PUTTabFixedHeight;

    PROCEDURE (this: ITabStrip) TabFixedHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 516)
    END TabFixedHeight;

    PROCEDURE (this: ITabStrip) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: ITabStrip) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;


    (* ---------- ISpinbutton, hidden, dual ---------- *)

    PROCEDURE (this: ISpinbutton) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: ISpinbutton) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: ISpinbutton) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: ISpinbutton) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: ISpinbutton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: ISpinbutton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: ISpinbutton) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: ISpinbutton) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: ISpinbutton) PUTValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: ISpinbutton) Value* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END Value;

    PROCEDURE (this: ISpinbutton) PUTMin* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTMin;

    PROCEDURE (this: ISpinbutton) Min* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END Min;

    PROCEDURE (this: ISpinbutton) PUTMax* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTMax;

    PROCEDURE (this: ISpinbutton) Max* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Max;

    PROCEDURE (this: ISpinbutton) PUTSmallChange* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTSmallChange;

    PROCEDURE (this: ISpinbutton) SmallChange* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END SmallChange;

    PROCEDURE (this: ISpinbutton) PUTOrientation* (p1: fmOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTOrientation;

    PROCEDURE (this: ISpinbutton) Orientation* (): fmOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END Orientation;

    PROCEDURE (this: ISpinbutton) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: ISpinbutton) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: ISpinbutton) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: ISpinbutton) PUTDelay* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTDelay;

    PROCEDURE (this: ISpinbutton) Delay* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Delay;


    (* ---------- IImage, hidden, dual ---------- *)

    PROCEDURE (this: IImage) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IImage) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IImage) PUTMousePointer* (p1: fmMousePointer), NEW;
    BEGIN
        CtlC.PutInt(this, -521, p1)
    END PUTMousePointer;

    PROCEDURE (this: IImage) MousePointer* (): fmMousePointer, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -521)
    END MousePointer;

    PROCEDURE (this: IImage) PUTAutoSize* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -500, p1)
    END PUTAutoSize;

    PROCEDURE (this: IImage) AutoSize* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -500)
    END AutoSize;

    PROCEDURE (this: IImage) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IImage) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IImage) PUTBackStyle* (p1: fmBackStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -502, p1)
    END PUTBackStyle;

    PROCEDURE (this: IImage) BackStyle* (): fmBackStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -502)
    END BackStyle;

    PROCEDURE (this: IImage) PUTBorderColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -503, p1)
    END PUTBorderColor;

    PROCEDURE (this: IImage) BorderColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -503)
    END BorderColor;

    PROCEDURE (this: IImage) PUTBorderStyle* (p1: fmBorderStyle), NEW;
    BEGIN
        CtlC.PutInt(this, -504, p1)
    END PUTBorderStyle;

    PROCEDURE (this: IImage) BorderStyle* (): fmBorderStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -504)
    END BorderStyle;

    PROCEDURE (this: IImage) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: IImage) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: IImage) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: IImage) PUTMouseIcon* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -522, p1)
    END PUTMouseIcon;

    PROCEDURE (this: IImage) PUTREFMouseIcon* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -522, arg, NIL);
    END PUTREFMouseIcon;

    PROCEDURE (this: IImage) MouseIcon* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -522))
    END MouseIcon;

    PROCEDURE (this: IImage) PUTPictureSizeMode* (p1: fmPictureSizeMode), NEW;
    BEGIN
        CtlC.PutInt(this, 27, p1)
    END PUTPictureSizeMode;

    PROCEDURE (this: IImage) PictureSizeMode* (): fmPictureSizeMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 27)
    END PictureSizeMode;

    PROCEDURE (this: IImage) PUTPictureAlignment* (p1: fmPictureAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 26, p1)
    END PUTPictureAlignment;

    PROCEDURE (this: IImage) PictureAlignment* (): fmPictureAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 26)
    END PictureAlignment;

    PROCEDURE (this: IImage) PUTPictureTiling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 28, p1)
    END PUTPictureTiling;

    PROCEDURE (this: IImage) PictureTiling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 28)
    END PictureTiling;

    PROCEDURE (this: IImage) PUTSpecialEffect* (p1: fmSpecialEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 12, p1)
    END PUTSpecialEffect;

    PROCEDURE (this: IImage) SpecialEffect* (): fmSpecialEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 12)
    END SpecialEffect;


    (* ---------- IWHTMLSubmitButton, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLSubmitButton) PUTAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 601, p1)
    END PUTAction;

    PROCEDURE (this: IWHTMLSubmitButton) Action* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 601)
    END Action;

    PROCEDURE (this: IWHTMLSubmitButton) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 602, p1)
    END PUTCaption;

    PROCEDURE (this: IWHTMLSubmitButton) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 602)
    END Caption;

    PROCEDURE (this: IWHTMLSubmitButton) PUTEncoding* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 603, p1)
    END PUTEncoding;

    PROCEDURE (this: IWHTMLSubmitButton) Encoding* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 603)
    END Encoding;

    PROCEDURE (this: IWHTMLSubmitButton) PUTMethod* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 604, p1)
    END PUTMethod;

    PROCEDURE (this: IWHTMLSubmitButton) Method* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 604)
    END Method;

    PROCEDURE (this: IWHTMLSubmitButton) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLSubmitButton) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLSubmitButton) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLSubmitButton) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;


    (* ---------- IWHTMLImage, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLImage) PUTAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 601, p1)
    END PUTAction;

    PROCEDURE (this: IWHTMLImage) Action* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 601)
    END Action;

    PROCEDURE (this: IWHTMLImage) PUTSource* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 606, p1)
    END PUTSource;

    PROCEDURE (this: IWHTMLImage) Source* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 606)
    END Source;

    PROCEDURE (this: IWHTMLImage) PUTEncoding* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 603, p1)
    END PUTEncoding;

    PROCEDURE (this: IWHTMLImage) Encoding* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 603)
    END Encoding;

    PROCEDURE (this: IWHTMLImage) PUTMethod* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 604, p1)
    END PUTMethod;

    PROCEDURE (this: IWHTMLImage) Method* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 604)
    END Method;

    PROCEDURE (this: IWHTMLImage) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLImage) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLImage) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLImage) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;


    (* ---------- IWHTMLReset, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLReset) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 602, p1)
    END PUTCaption;

    PROCEDURE (this: IWHTMLReset) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 602)
    END Caption;

    PROCEDURE (this: IWHTMLReset) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLReset) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLReset) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLReset) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;


    (* ---------- IWHTMLCheckbox, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLCheckbox) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLCheckbox) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLCheckbox) PUTValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 607, p1)
    END PUTValue;

    PROCEDURE (this: IWHTMLCheckbox) Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 607)
    END Value;

    PROCEDURE (this: IWHTMLCheckbox) PUTChecked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 0, p1)
    END PUTChecked;

    PROCEDURE (this: IWHTMLCheckbox) Checked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 0)
    END Checked;

    PROCEDURE (this: IWHTMLCheckbox) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLCheckbox) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;


    (* ---------- IWHTMLOption, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLOption) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLOption) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLOption) PUTValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 607, p1)
    END PUTValue;

    PROCEDURE (this: IWHTMLOption) Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 607)
    END Value;

    PROCEDURE (this: IWHTMLOption) PUTChecked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 0, p1)
    END PUTChecked;

    PROCEDURE (this: IWHTMLOption) Checked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 0)
    END Checked;

    PROCEDURE (this: IWHTMLOption) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLOption) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;

    PROCEDURE (this: IWHTMLOption) DisplayStyle* (): fmDisplayStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -540)
    END DisplayStyle;


    (* ---------- IWHTMLText, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLText) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLText) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLText) PUTValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IWHTMLText) Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Value;

    PROCEDURE (this: IWHTMLText) PUTMaxLength* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 609, p1)
    END PUTMaxLength;

    PROCEDURE (this: IWHTMLText) MaxLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 609)
    END MaxLength;

    PROCEDURE (this: IWHTMLText) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 610, p1)
    END PUTWidth;

    PROCEDURE (this: IWHTMLText) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 610)
    END Width;

    PROCEDURE (this: IWHTMLText) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLText) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;


    (* ---------- IWHTMLHidden, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLHidden) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLHidden) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLHidden) PUTValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IWHTMLHidden) Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Value;

    PROCEDURE (this: IWHTMLHidden) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLHidden) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;


    (* ---------- IWHTMLPassword, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLPassword) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLPassword) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLPassword) PUTValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IWHTMLPassword) Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Value;

    PROCEDURE (this: IWHTMLPassword) PUTMaxLength* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 609, p1)
    END PUTMaxLength;

    PROCEDURE (this: IWHTMLPassword) MaxLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 609)
    END MaxLength;

    PROCEDURE (this: IWHTMLPassword) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 610, p1)
    END PUTWidth;

    PROCEDURE (this: IWHTMLPassword) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 610)
    END Width;

    PROCEDURE (this: IWHTMLPassword) PUTHTMLType* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 618, p1)
    END PUTHTMLType;

    PROCEDURE (this: IWHTMLPassword) HTMLType* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 618)
    END HTMLType;


    (* ---------- IWHTMLSelect, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLSelect) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLSelect) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLSelect) PUTValues* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 611, p1)
    END PUTValues;

    PROCEDURE (this: IWHTMLSelect) Values* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 611)
    END Values;

    PROCEDURE (this: IWHTMLSelect) PUTDisplayValues* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 612, p1)
    END PUTDisplayValues;

    PROCEDURE (this: IWHTMLSelect) DisplayValues* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 612)
    END DisplayValues;

    PROCEDURE (this: IWHTMLSelect) PUTSelected* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 613, p1)
    END PUTSelected;

    PROCEDURE (this: IWHTMLSelect) Selected* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 613)
    END Selected;

    PROCEDURE (this: IWHTMLSelect) PUTMultiSelect* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 614, p1)
    END PUTMultiSelect;

    PROCEDURE (this: IWHTMLSelect) MultiSelect* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 614)
    END MultiSelect;

    PROCEDURE (this: IWHTMLSelect) PUTSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 619, p1)
    END PUTSize;

    PROCEDURE (this: IWHTMLSelect) Size* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 619)
    END Size;


    (* ---------- IWHTMLTextArea, hidden, dual ---------- *)

    PROCEDURE (this: IWHTMLTextArea) PUTHTMLName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -541, p1)
    END PUTHTMLName;

    PROCEDURE (this: IWHTMLTextArea) HTMLName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -541)
    END HTMLName;

    PROCEDURE (this: IWHTMLTextArea) PUTValue* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTValue;

    PROCEDURE (this: IWHTMLTextArea) Value* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Value;

    PROCEDURE (this: IWHTMLTextArea) PUTRows* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 615, p1)
    END PUTRows;

    PROCEDURE (this: IWHTMLTextArea) Rows* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 615)
    END Rows;

    PROCEDURE (this: IWHTMLTextArea) PUTColumns* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 616, p1)
    END PUTColumns;

    PROCEDURE (this: IWHTMLTextArea) Columns* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 616)
    END Columns;

    PROCEDURE (this: IWHTMLTextArea) PUTWordWrap* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 617, p1)
    END PUTWordWrap;

    PROCEDURE (this: IWHTMLTextArea) WordWrap* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 617)
    END WordWrap;


    (* ---------- LabelControlEvents, hidden ---------- *)

    PROCEDURE (this: LabelControlEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: LabelControlEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -600: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: LabelControlEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{978C9E22-D4B0-11CE-BF2D-00AA003F40D0}"
    END GetIID;


    (* ---------- CommandButtonEvents, hidden ---------- *)

    PROCEDURE (this: CommandButtonEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: CommandButtonEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -600: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: CommandButtonEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{7B020EC1-AF6C-11CE-9F46-00AA00574A4F}"
    END GetIID;


    (* ---------- MdcTextEvents, hidden ---------- *)

    PROCEDURE (this: MdcTextEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) DropButtonClick* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcTextEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | 2002: ASSERT(n = 0, 11); this.DropButtonClick()
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: MdcTextEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{8BD21D12-EC42-11CE-9E0D-00AA006002F3}"
    END GetIID;


    (* ---------- MdcListEvents, hidden ---------- *)

    PROCEDURE (this: MdcListEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcListEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -610: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: MdcListEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{8BD21D22-EC42-11CE-9E0D-00AA006002F3}"
    END GetIID;


    (* ---------- MdcComboEvents, hidden ---------- *)

    PROCEDURE (this: MdcComboEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) DropButtonClick* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcComboEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -610: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | 2002: ASSERT(n = 0, 11); this.DropButtonClick()
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: MdcComboEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{8BD21D32-EC42-11CE-9E0D-00AA006002F3}"
    END GetIID;


    (* ---------- MdcCheckBoxEvents, hidden ---------- *)

    PROCEDURE (this: MdcCheckBoxEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcCheckBoxEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -610: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: MdcCheckBoxEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{8BD21D42-EC42-11CE-9E0D-00AA006002F3}"
    END GetIID;


    (* ---------- MdcOptionButtonEvents, hidden ---------- *)

    PROCEDURE (this: MdcOptionButtonEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcOptionButtonEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -610: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: MdcOptionButtonEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{8BD21D52-EC42-11CE-9E0D-00AA006002F3}"
    END GetIID;


    (* ---------- MdcToggleButtonEvents, hidden ---------- *)

    PROCEDURE (this: MdcToggleButtonEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MdcToggleButtonEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -610: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: MdcToggleButtonEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{8BD21D62-EC42-11CE-9E0D-00AA006002F3}"
    END GetIID;


    (* ---------- ScrollbarEvents, hidden ---------- *)

    PROCEDURE (this: ScrollbarEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) Scroll* (), NEW, ABSTRACT;

    PROCEDURE (this: ScrollbarEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 7: ASSERT(n = 0, 11); this.Scroll()
        END
    END Invoke;

    PROCEDURE (this: ScrollbarEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{7B020EC2-AF6C-11CE-9F46-00AA00574A4F}"
    END GetIID;


    (* ---------- TabStripEvents, hidden ---------- *)

    PROCEDURE (this: TabStripEvents) BeforeDragOver* (Index: INTEGER; Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) BeforeDropOrPaste* (Index: INTEGER; Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) Click* (Index: INTEGER), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) DblClick* (Index: INTEGER; Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) MouseDown* (Index: INTEGER; Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) MouseMove* (Index: INTEGER; Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) MouseUp* (Index: INTEGER; Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: TabStripEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 8, 11); this.BeforeDragOver(CtlC.VarInt(par[7]), ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 8, 11); this.BeforeDropOrPaste(CtlC.VarInt(par[7]), ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -600: ASSERT(n = 1, 11); this.Click(CtlC.VarInt(par[0]))
        | -601: ASSERT(n = 2, 11); this.DblClick(CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -605: ASSERT(n = 5, 11); this.MouseDown(CtlC.VarInt(par[4]), CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 5, 11); this.MouseMove(CtlC.VarInt(par[4]), CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 5, 11); this.MouseUp(CtlC.VarInt(par[4]), CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: TabStripEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{7B020EC7-AF6C-11CE-9F46-00AA00574A4F}"
    END GetIID;


    (* ---------- SpinbuttonEvents, hidden ---------- *)

    PROCEDURE (this: SpinbuttonEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) SpinUp* (), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) SpinDown* (), NEW, ABSTRACT;

    PROCEDURE (this: SpinbuttonEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 5: ASSERT(n = 0, 11); this.SpinUp()
        | 6: ASSERT(n = 0, 11); this.SpinDown()
        END
    END Invoke;

    PROCEDURE (this: SpinbuttonEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{79176FB2-B7F2-11CE-97EF-00AA006D2776}"
    END GetIID;


    (* ---------- ImageEvents, hidden ---------- *)

    PROCEDURE (this: ImageEvents) BeforeDragOver* (Cancel: ReturnBoolean; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; DragState: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) BeforeDropOrPaste* (Cancel: ReturnBoolean; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) DblClick* (Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) Error* (Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) MouseDown* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) MouseMove* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) MouseUp* (Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: ImageEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 3: ASSERT(n = 7, 11); this.BeforeDragOver(ThisIReturnBoolean(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 7, 11); this.BeforeDropOrPaste(ThisIReturnBoolean(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -600: ASSERT(n = 0, 11); this.Click()
        | -601: ASSERT(n = 1, 11); this.DblClick(ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 7, 11); this.Error(CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -605: ASSERT(n = 4, 11); this.MouseDown(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 4, 11); this.MouseMove(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 4, 11); this.MouseUp(CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        END
    END Invoke;

    PROCEDURE (this: ImageEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{4C5992A5-6926-101B-9992-00000B65C6F9}"
    END GetIID;


    (* ---------- WHTMLControlEvents, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{796ED650-5FE9-11CF-8D68-00AA00BDCE1D}"
    END GetIID;


    (* ---------- WHTMLControlEvents1, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents1) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents1) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents1) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE0-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents2, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents2) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents2) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents2) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE1-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents3, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents3) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents3) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents3) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE2-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents4, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents4) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents4) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents4) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE3-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents5, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents5) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents5) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents5) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE4-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents6, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents6) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents6) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents6) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE5-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents7, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents7) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents7) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents7) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE6-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents9, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents9) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents9) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents9) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE8-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- WHTMLControlEvents10, hidden ---------- *)

    PROCEDURE (this: WHTMLControlEvents10) Click* (), NEW, ABSTRACT;

    PROCEDURE (this: WHTMLControlEvents10) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | -600: ASSERT(n = 0, 11); this.Click()
        END
    END Invoke;

    PROCEDURE (this: WHTMLControlEvents10) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{47FF8FE9-6198-11CF-8CE8-00AA006CB389}"
    END GetIID;


    (* ---------- IPage, hidden, dual ---------- *)

    PROCEDURE (this: IPage) Controls* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 0))
    END Controls;

    PROCEDURE (this: IPage) Selected* (): Controls, NEW;
    BEGIN
        RETURN ThisControls(CtlC.GetAny(this, 270))
    END Selected;

    PROCEDURE (this: IPage) ActiveControl* (): Control, NEW;
    BEGIN
        RETURN ThisIControl(CtlC.GetAny(this, 256))
    END ActiveControl;

    PROCEDURE (this: IPage) CanPaste* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 257)
    END CanPaste;

    PROCEDURE (this: IPage) CanRedo* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 258)
    END CanRedo;

    PROCEDURE (this: IPage) CanUndo* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 259)
    END CanUndo;

    PROCEDURE (this: IPage) PUTCycle* (p1: fmCycle), NEW;
    BEGIN
        CtlC.PutInt(this, 260, p1)
    END PUTCycle;

    PROCEDURE (this: IPage) Cycle* (): fmCycle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 260)
    END Cycle;

    PROCEDURE (this: IPage) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -518, p1)
    END PUTCaption;

    PROCEDURE (this: IPage) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -518)
    END Caption;

    PROCEDURE (this: IPage) PUTControlTipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418043, p1)
    END PUTControlTipText;

    PROCEDURE (this: IPage) ControlTipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418043)
    END ControlTipText;

    PROCEDURE (this: IPage) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IPage) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IPage) PUTIndex* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -2147356416, p1)
    END PUTIndex;

    PROCEDURE (this: IPage) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -2147356416)
    END Index;

    PROCEDURE (this: IPage) _GetInsideHeight* (OUT InsideHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(InsideHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743824, arg, NIL);
    END _GetInsideHeight;

    PROCEDURE (this: IPage) InsideHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 262)
    END InsideHeight;

    PROCEDURE (this: IPage) _GetInsideWidth* (OUT InsideWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(InsideWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743826, arg, NIL);
    END _GetInsideWidth;

    PROCEDURE (this: IPage) InsideWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 263)
    END InsideWidth;

    PROCEDURE (this: IPage) PUTKeepScrollBarsVisible* (p1: fmScrollBars), NEW;
    BEGIN
        CtlC.PutInt(this, 264, p1)
    END PUTKeepScrollBarsVisible;

    PROCEDURE (this: IPage) KeepScrollBarsVisible* (): fmScrollBars, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 264)
    END KeepScrollBarsVisible;

    PROCEDURE (this: IPage) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418112, p1)
    END PUTName;

    PROCEDURE (this: IPage) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418112)
    END Name;

    PROCEDURE (this: IPage) PUTPictureAlignment* (p1: fmPictureAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 26, p1)
    END PUTPictureAlignment;

    PROCEDURE (this: IPage) PictureAlignment* (): fmPictureAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 26)
    END PictureAlignment;

    PROCEDURE (this: IPage) PUTPicture* (p1: CtlStdType.Picture), NEW;
    BEGIN
        CtlC.PutObj(this, -523, p1)
    END PUTPicture;

    PROCEDURE (this: IPage) PUTREFPicture* (p1: CtlStdType.Picture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -523, arg, NIL);
    END PUTREFPicture;

    PROCEDURE (this: IPage) Picture* (): CtlStdType.Picture, NEW;
    BEGIN
        RETURN CtlStdType.ThisPicture(CtlC.GetAny(this, -523))
    END Picture;

    PROCEDURE (this: IPage) PUTPictureSizeMode* (p1: fmPictureSizeMode), NEW;
    BEGIN
        CtlC.PutInt(this, 27, p1)
    END PUTPictureSizeMode;

    PROCEDURE (this: IPage) PictureSizeMode* (): fmPictureSizeMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 27)
    END PictureSizeMode;

    PROCEDURE (this: IPage) PUTPictureTiling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 28, p1)
    END PUTPictureTiling;

    PROCEDURE (this: IPage) PictureTiling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 28)
    END PictureTiling;

    PROCEDURE (this: IPage) PUTScrollBars* (p1: fmScrollBars), NEW;
    BEGIN
        CtlC.PutInt(this, 265, p1)
    END PUTScrollBars;

    PROCEDURE (this: IPage) ScrollBars* (): fmScrollBars, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 265)
    END ScrollBars;

    PROCEDURE (this: IPage) _SetScrollHeight* (ScrollHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743843, arg, NIL);
    END _SetScrollHeight;

    PROCEDURE (this: IPage) _GetScrollHeight* (OUT ScrollHeight: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollHeight, arg[0]);
        CtlC.CallParMethod(this, 1610743844, arg, NIL);
    END _GetScrollHeight;

    PROCEDURE (this: IPage) PUTScrollHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 266, p1)
    END PUTScrollHeight;

    PROCEDURE (this: IPage) ScrollHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 266)
    END ScrollHeight;

    PROCEDURE (this: IPage) _SetScrollLeft* (ScrollLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743847, arg, NIL);
    END _SetScrollLeft;

    PROCEDURE (this: IPage) _GetScrollLeft* (OUT ScrollLeft: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollLeft, arg[0]);
        CtlC.CallParMethod(this, 1610743848, arg, NIL);
    END _GetScrollLeft;

    PROCEDURE (this: IPage) PUTScrollLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 267, p1)
    END PUTScrollLeft;

    PROCEDURE (this: IPage) ScrollLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 267)
    END ScrollLeft;

    PROCEDURE (this: IPage) _SetScrollTop* (ScrollTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollTop, arg[0]);
        CtlC.CallParMethod(this, 1610743851, arg, NIL);
    END _SetScrollTop;

    PROCEDURE (this: IPage) _GetScrollTop* (OUT ScrollTop: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollTop, arg[0]);
        CtlC.CallParMethod(this, 1610743852, arg, NIL);
    END _GetScrollTop;

    PROCEDURE (this: IPage) PUTScrollTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 268, p1)
    END PUTScrollTop;

    PROCEDURE (this: IPage) ScrollTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 268)
    END ScrollTop;

    PROCEDURE (this: IPage) _SetScrollWidth* (ScrollWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ScrollWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743855, arg, NIL);
    END _SetScrollWidth;

    PROCEDURE (this: IPage) _GetScrollWidth* (OUT ScrollWidth: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(ScrollWidth, arg[0]);
        CtlC.CallParMethod(this, 1610743856, arg, NIL);
    END _GetScrollWidth;

    PROCEDURE (this: IPage) PUTScrollWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 269, p1)
    END PUTScrollWidth;

    PROCEDURE (this: IPage) ScrollWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 269)
    END ScrollWidth;

    PROCEDURE (this: IPage) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418101, p1)
    END PUTTag;

    PROCEDURE (this: IPage) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418101)
    END Tag;

    PROCEDURE (this: IPage) PUTTransitionEffect* (p1: fmTransitionEffect), NEW;
    BEGIN
        CtlC.PutInt(this, -2147356415, p1)
    END PUTTransitionEffect;

    PROCEDURE (this: IPage) TransitionEffect* (): fmTransitionEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -2147356415)
    END TransitionEffect;

    PROCEDURE (this: IPage) PUTTransitionPeriod* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, -2147356414, p1)
    END PUTTransitionPeriod;

    PROCEDURE (this: IPage) TransitionPeriod* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -2147356414)
    END TransitionPeriod;

    PROCEDURE (this: IPage) PUTVerticalScrollBarSide* (p1: fmVerticalScrollBarSide), NEW;
    BEGIN
        CtlC.PutInt(this, 271, p1)
    END PUTVerticalScrollBarSide;

    PROCEDURE (this: IPage) VerticalScrollBarSide* (): fmVerticalScrollBarSide, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 271)
    END VerticalScrollBarSide;

    PROCEDURE (this: IPage) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147418105, p1)
    END PUTVisible;

    PROCEDURE (this: IPage) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147418105)
    END Visible;

    PROCEDURE (this: IPage) PUTZoom* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 272, p1)
    END PUTZoom;

    PROCEDURE (this: IPage) Zoom* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 272)
    END Zoom;

    PROCEDURE (this: IPage) PUTDesignMode* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 384, p1)
    END PUTDesignMode;

    PROCEDURE (this: IPage) DesignMode* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 384)
    END DesignMode;

    PROCEDURE (this: IPage) PUTShowToolbox* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 385, p1)
    END PUTShowToolbox;

    PROCEDURE (this: IPage) ShowToolbox* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 385)
    END ShowToolbox;

    PROCEDURE (this: IPage) PUTShowGridDots* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 386, p1)
    END PUTShowGridDots;

    PROCEDURE (this: IPage) ShowGridDots* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 386)
    END ShowGridDots;

    PROCEDURE (this: IPage) PUTSnapToGrid* (p1: fmMode), NEW;
    BEGIN
        CtlC.PutInt(this, 387, p1)
    END PUTSnapToGrid;

    PROCEDURE (this: IPage) SnapToGrid* (): fmMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 387)
    END SnapToGrid;

    PROCEDURE (this: IPage) PUTGridX* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 388, p1)
    END PUTGridX;

    PROCEDURE (this: IPage) GridX* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 388)
    END GridX;

    PROCEDURE (this: IPage) _SetGridX* (GridX: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(GridX, arg[0]);
        CtlC.CallParMethod(this, 1610743881, arg, NIL);
    END _SetGridX;

    PROCEDURE (this: IPage) _GetGridX* (OUT GridX: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(GridX, arg[0]);
        CtlC.CallParMethod(this, 1610743882, arg, NIL);
    END _GetGridX;

    PROCEDURE (this: IPage) PUTGridY* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 389, p1)
    END PUTGridY;

    PROCEDURE (this: IPage) GridY* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 389)
    END GridY;

    PROCEDURE (this: IPage) _SetGridY* (GridY: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(GridY, arg[0]);
        CtlC.CallParMethod(this, 1610743885, arg, NIL);
    END _SetGridY;

    PROCEDURE (this: IPage) _GetGridY* (OUT GridY: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(GridY, arg[0]);
        CtlC.CallParMethod(this, 1610743886, arg, NIL);
    END _GetGridY;

    PROCEDURE (this: IPage) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 512, NIL);
    END Copy;

    PROCEDURE (this: IPage) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 513, NIL);
    END Cut;

    PROCEDURE (this: IPage) Paste* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 514, NIL);
    END Paste;

    PROCEDURE (this: IPage) RedoAction* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 515, NIL);
    END RedoAction;

    PROCEDURE (this: IPage) Repaint* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 516, NIL);
    END Repaint;

    PROCEDURE (this: IPage) Scroll* ((* optional *) xAction: CtlT.Any; yAction: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(xAction, arg[1]);
        CtlC.AnyVar(yAction, arg[0]);
        CtlC.CallParMethod(this, 517, arg, NIL);
    END Scroll;

    PROCEDURE (this: IPage) SetDefaultTabOrder* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 518, NIL);
    END SetDefaultTabOrder;

    PROCEDURE (this: IPage) UndoAction* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 519, NIL);
    END UndoAction;

    PROCEDURE (this: IPage) PUTAccelerator* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -543, p1)
    END PUTAccelerator;

    PROCEDURE (this: IPage) Accelerator* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -543)
    END Accelerator;

    PROCEDURE (this: IPage) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -2147418104)
    END Parent;


    (* ---------- Pages, dual ---------- *)

    PROCEDURE (this: Pages) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 60)
    END Count;

    PROCEDURE (this: Pages) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Pages) Item* (varg: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varg, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: Pages) Enum* (): CtlT.IUnknown, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610743811, ret);
        RETURN CtlC.VarIntfce(ret)
    END Enum;

    PROCEDURE (this: Pages) Add* ((* optional *) bstrName: CtlT.Any; bstrCaption: CtlT.Any; lIndex: CtlT.Any): Page, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(bstrName, arg[2]);
        CtlC.AnyVar(bstrCaption, arg[1]);
        CtlC.AnyVar(lIndex, arg[0]);
        CtlC.CallParMethod(this, 66, arg, ret);
        RETURN ThisIPage(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Pages) _AddCtrl* (VAR clsid: INTEGER; bstrName: ARRAY OF CHAR; bstrCaption: ARRAY OF CHAR): Page, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(clsid, arg[2]);
        CtlC.StrVar(bstrName, arg[1]);
        CtlC.StrVar(bstrCaption, arg[0]);
        CtlC.CallParMethod(this, 1610743813, arg, ret);
        RETURN ThisIPage(CtlC.VarAny(ret))
    END _AddCtrl;

    PROCEDURE (this: Pages) _InsertCtrl* (VAR clsid: INTEGER; bstrName: ARRAY OF CHAR; bstrCaption: ARRAY OF CHAR; lIndex: INTEGER): Page, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(clsid, arg[3]);
        CtlC.StrVar(bstrName, arg[2]);
        CtlC.StrVar(bstrCaption, arg[1]);
        CtlC.IntVar(lIndex, arg[0]);
        CtlC.CallParMethod(this, 1610743814, arg, ret);
        RETURN ThisIPage(CtlC.VarAny(ret))
    END _InsertCtrl;

    PROCEDURE (this: Pages) _GetItemByIndex* (lIndex: INTEGER): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(lIndex, arg[0]);
        CtlC.CallParMethod(this, 1610743815, arg, ret);
        RETURN ThisIControl(CtlC.VarAny(ret))
    END _GetItemByIndex;

    PROCEDURE (this: Pages) _GetItemByName* (pstrName: ARRAY OF CHAR): Control, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(pstrName, arg[0]);
        CtlC.CallParMethod(this, 1610743816, arg, ret);
        RETURN ThisIControl(CtlC.VarAny(ret))
    END _GetItemByName;

    PROCEDURE (this: Pages) Remove* (varg: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varg, arg[0]);
        CtlC.CallParMethod(this, 67, arg, NIL);
    END Remove;

    PROCEDURE (this: Pages) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 62, NIL);
    END Clear;


    (* ---------- IMultiPage, hidden, dual ---------- *)

    PROCEDURE (this: IMultiPage) PUTBackColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -501, p1)
    END PUTBackColor;

    PROCEDURE (this: IMultiPage) BackColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -501)
    END BackColor;

    PROCEDURE (this: IMultiPage) PUTForeColor* (p1: OLE_COLOR), NEW;
    BEGIN
        CtlC.PutInt(this, -513, p1)
    END PUTForeColor;

    PROCEDURE (this: IMultiPage) ForeColor* (): OLE_COLOR, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -513)
    END ForeColor;

    PROCEDURE (this: IMultiPage) PUT_Font_Reserved* (p1: Font), NEW;
    BEGIN
        CtlC.PutObj(this, 2147483135, p1)
    END PUT_Font_Reserved;

    PROCEDURE (this: IMultiPage) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, -512, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: IMultiPage) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, -512))
    END Font;

    PROCEDURE (this: IMultiPage) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1, p1)
    END PUTFontName;

    PROCEDURE (this: IMultiPage) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1)
    END FontName;

    PROCEDURE (this: IMultiPage) PUTFontBold* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTFontBold;

    PROCEDURE (this: IMultiPage) FontBold* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END FontBold;

    PROCEDURE (this: IMultiPage) PUTFontItalic* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 4, p1)
    END PUTFontItalic;

    PROCEDURE (this: IMultiPage) FontItalic* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END FontItalic;

    PROCEDURE (this: IMultiPage) PUTFontUnderline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 5, p1)
    END PUTFontUnderline;

    PROCEDURE (this: IMultiPage) FontUnderline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 5)
    END FontUnderline;

    PROCEDURE (this: IMultiPage) PUTFontStrikethru* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTFontStrikethru;

    PROCEDURE (this: IMultiPage) FontStrikethru* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END FontStrikethru;

    PROCEDURE (this: IMultiPage) PUTFontSize* (p1: CtlT.OleCy), NEW;
    BEGIN
        CtlC.PutCy(this, 2, p1)
    END PUTFontSize;

    PROCEDURE (this: IMultiPage) FontSize* (): CtlT.OleCy, NEW;
    BEGIN
        RETURN CtlC.GetCy(this, 2)
    END FontSize;

    PROCEDURE (this: IMultiPage) PUTMultiRow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 514, p1)
    END PUTMultiRow;

    PROCEDURE (this: IMultiPage) MultiRow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 514)
    END MultiRow;

    PROCEDURE (this: IMultiPage) PUTStyle* (p1: fmTabStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 513, p1)
    END PUTStyle;

    PROCEDURE (this: IMultiPage) Style* (): fmTabStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 513)
    END Style;

    PROCEDURE (this: IMultiPage) PUTTabOrientation* (p1: fmTabOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 512, p1)
    END PUTTabOrientation;

    PROCEDURE (this: IMultiPage) TabOrientation* (): fmTabOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 512)
    END TabOrientation;

    PROCEDURE (this: IMultiPage) _SetTabFixedWidth* (Width: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Width, arg[0]);
        CtlC.CallParMethod(this, 1610743833, arg, NIL);
    END _SetTabFixedWidth;

    PROCEDURE (this: IMultiPage) _GetTabFixedWidth* (OUT Width: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(Width, arg[0]);
        CtlC.CallParMethod(this, 1610743834, arg, NIL);
    END _GetTabFixedWidth;

    PROCEDURE (this: IMultiPage) _SetTabFixedHeight* (Height: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Height, arg[0]);
        CtlC.CallParMethod(this, 1610743835, arg, NIL);
    END _SetTabFixedHeight;

    PROCEDURE (this: IMultiPage) _GetTabFixedHeight* (OUT Height: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(Height, arg[0]);
        CtlC.CallParMethod(this, 1610743836, arg, NIL);
    END _GetTabFixedHeight;

    PROCEDURE (this: IMultiPage) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -514, p1)
    END PUTEnabled;

    PROCEDURE (this: IMultiPage) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -514)
    END Enabled;

    PROCEDURE (this: IMultiPage) SelectedItem* (): Page, NEW;
    BEGIN
        RETURN ThisIPage(CtlC.GetAny(this, 545))
    END SelectedItem;

    PROCEDURE (this: IMultiPage) Pages* (): Pages, NEW;
    BEGIN
        RETURN ThisPages(CtlC.GetAny(this, 0))
    END Pages;

    PROCEDURE (this: IMultiPage) PUTValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 528, p1)
    END PUTValue;

    PROCEDURE (this: IMultiPage) Value* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 528)
    END Value;

    PROCEDURE (this: IMultiPage) PUTTabFixedWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 515, p1)
    END PUTTabFixedWidth;

    PROCEDURE (this: IMultiPage) TabFixedWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 515)
    END TabFixedWidth;

    PROCEDURE (this: IMultiPage) PUTTabFixedHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 516, p1)
    END PUTTabFixedHeight;

    PROCEDURE (this: IMultiPage) TabFixedHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 516)
    END TabFixedHeight;

    PROCEDURE (this: IMultiPage) PUTFontWeight* (p1: SHORTINT), NEW;
    BEGIN
        CtlC.PutSInt(this, 7, p1)
    END PUTFontWeight;

    PROCEDURE (this: IMultiPage) FontWeight* (): SHORTINT, NEW;
    BEGIN
        RETURN CtlC.GetSInt(this, 7)
    END FontWeight;


    (* ---------- MultiPageEvents, hidden ---------- *)

    PROCEDURE (this: MultiPageEvents) AddControl* (Index: INTEGER; control: Control), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) BeforeDragOver* (Index: INTEGER; Cancel: ReturnBoolean; control: Control; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; State: fmDragState; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) BeforeDropOrPaste* (Index: INTEGER; Cancel: ReturnBoolean; control: Control; Action: fmAction; Data: DataObject; X: SHORTREAL; Y: SHORTREAL; Effect: ReturnEffect; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) Change* (), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) Click* (Index: INTEGER), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) DblClick* (Index: INTEGER; Cancel: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) Error* (Index: INTEGER; Number: SHORTINT; Description: ReturnString; SCode: INTEGER; Source: ARRAY OF CHAR; HelpFile: ARRAY OF CHAR; HelpContext: INTEGER; CancelDisplay: ReturnBoolean), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) KeyDown* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) KeyPress* (KeyAscii: ReturnInteger), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) KeyUp* (KeyCode: ReturnInteger; Shift: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) Layout* (Index: INTEGER), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) MouseDown* (Index: INTEGER; Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) MouseMove* (Index: INTEGER; Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) MouseUp* (Index: INTEGER; Button: SHORTINT; Shift: SHORTINT; X: SHORTREAL; Y: SHORTREAL), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) RemoveControl* (Index: INTEGER; control: Control), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) Scroll* (Index: INTEGER; ActionX: fmScrollAction; ActionY: fmScrollAction; RequestDx: SHORTREAL; RequestDy: SHORTREAL; ActualDx: ReturnSingle; ActualDy: ReturnSingle), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) Zoom* (Index: INTEGER; VAR Percent: SHORTINT), NEW, ABSTRACT;

    PROCEDURE (this: MultiPageEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 768: ASSERT(n = 2, 11); this.AddControl(CtlC.VarInt(par[1]), ThisIControl(CtlC.VarAny(par[0])))
        | 3: ASSERT(n = 9, 11); this.BeforeDragOver(CtlC.VarInt(par[8]), ThisIReturnBoolean(CtlC.VarAny(par[7])), ThisIControl(CtlC.VarAny(par[6])), ThisIDataAutoWrapper(CtlC.VarAny(par[5])), CtlC.VarSReal(par[4]), CtlC.VarSReal(par[3]), CtlC.VarInt(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 4: ASSERT(n = 9, 11); this.BeforeDropOrPaste(CtlC.VarInt(par[8]), ThisIReturnBoolean(CtlC.VarAny(par[7])), ThisIControl(CtlC.VarAny(par[6])), CtlC.VarInt(par[5]), ThisIDataAutoWrapper(CtlC.VarAny(par[4])), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnEffect(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 2: ASSERT(n = 0, 11); this.Change()
        | -600: ASSERT(n = 1, 11); this.Click(CtlC.VarInt(par[0]))
        | -601: ASSERT(n = 2, 11); this.DblClick(CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -608: ASSERT(n = 8, 11); this.Error(CtlC.VarInt(par[7]), CtlC.VarSInt(par[6]), ThisIReturnString(CtlC.VarAny(par[5])), CtlC.VarInt(par[4]), CtlC.VarStr(par[3]), CtlC.VarStr(par[2]), CtlC.VarInt(par[1]), ThisIReturnBoolean(CtlC.VarAny(par[0])))
        | -602: ASSERT(n = 2, 11); this.KeyDown(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | -603: ASSERT(n = 1, 11); this.KeyPress(ThisIReturnInteger(CtlC.VarAny(par[0])))
        | -604: ASSERT(n = 2, 11); this.KeyUp(ThisIReturnInteger(CtlC.VarAny(par[1])), CtlC.VarSInt(par[0]))
        | 770: ASSERT(n = 1, 11); this.Layout(CtlC.VarInt(par[0]))
        | -605: ASSERT(n = 5, 11); this.MouseDown(CtlC.VarInt(par[4]), CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -606: ASSERT(n = 5, 11); this.MouseMove(CtlC.VarInt(par[4]), CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | -607: ASSERT(n = 5, 11); this.MouseUp(CtlC.VarInt(par[4]), CtlC.VarSInt(par[3]), CtlC.VarSInt(par[2]), CtlC.VarSReal(par[1]), CtlC.VarSReal(par[0]))
        | 771: ASSERT(n = 2, 11); this.RemoveControl(CtlC.VarInt(par[1]), ThisIControl(CtlC.VarAny(par[0])))
        | 772: ASSERT(n = 7, 11); this.Scroll(CtlC.VarInt(par[6]), CtlC.VarInt(par[5]), CtlC.VarInt(par[4]), CtlC.VarSReal(par[3]), CtlC.VarSReal(par[2]), ThisIReturnSingle(CtlC.VarAny(par[1])), ThisIReturnSingle(CtlC.VarAny(par[0])))
        | 773: ASSERT(n = 2, 11); this.Zoom(CtlC.VarInt(par[1]), CtlC.VarRefSInt(par[0])[0])
        END
    END Invoke;

    PROCEDURE (this: MultiPageEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{7B020EC8-AF6C-11CE-9F46-00AA00574A4F}"
    END GetIID;


    PROCEDURE NewReturnInteger* (): IReturnInteger;
    BEGIN
        RETURN ThisIReturnInteger(CtlC.NewObj("{82B02373-B5BC-11CF-810F-00A0C9030074}"))
    END NewReturnInteger;

    PROCEDURE NewReturnBoolean* (): IReturnBoolean;
    BEGIN
        RETURN ThisIReturnBoolean(CtlC.NewObj("{82B02374-B5BC-11CF-810F-00A0C9030074}"))
    END NewReturnBoolean;

    PROCEDURE NewReturnString* (): IReturnString;
    BEGIN
        RETURN ThisIReturnString(CtlC.NewObj("{82B02375-B5BC-11CF-810F-00A0C9030074}"))
    END NewReturnString;

    PROCEDURE NewReturnSingle* (): IReturnSingle;
    BEGIN
        RETURN ThisIReturnSingle(CtlC.NewObj("{8A683C92-BA84-11CF-8110-00A0C9030074}"))
    END NewReturnSingle;

    PROCEDURE NewReturnEffect* (): IReturnEffect;
    BEGIN
        RETURN ThisIReturnEffect(CtlC.NewObj("{8A683C93-BA84-11CF-8110-00A0C9030074}"))
    END NewReturnEffect;

    PROCEDURE NewDataObject* (): IDataAutoWrapper;
    BEGIN
        RETURN ThisIDataAutoWrapper(CtlC.NewObj("{1C3B4210-F441-11CE-B9EA-00AA006B1A69}"))
    END NewDataObject;

    PROCEDURE NewControl* (): IControl;
    BEGIN
        RETURN ThisIControl(CtlC.NewObj("{909E0AE0-16DC-11CE-9E98-00AA00574A4F}"))
    END NewControl;

    PROCEDURE NewUserForm* (): _UserForm;
    BEGIN
        RETURN This_UserForm(CtlC.NewObj("{C62A69F0-16DC-11CE-9E98-00AA00574A4F}"))
    END NewUserForm;

    PROCEDURE NewFrame* (): IOptionFrame;
    BEGIN
        RETURN ThisIOptionFrame(CtlC.NewObj("{6E182020-F460-11CE-9BCD-00AA00608E01}"))
    END NewFrame;

    PROCEDURE NewLabel* (): ILabelControl;
    BEGIN
        RETURN ThisILabelControl(CtlC.NewObj("{978C9E23-D4B0-11CE-BF2D-00AA003F40D0}"))
    END NewLabel;

    PROCEDURE NewCommandButton* (): ICommandButton;
    BEGIN
        RETURN ThisICommandButton(CtlC.NewObj("{D7053240-CE69-11CD-A777-00DD01143C57}"))
    END NewCommandButton;

    PROCEDURE NewTextBox* (): IMdcText;
    BEGIN
        RETURN ThisIMdcText(CtlC.NewObj("{8BD21D10-EC42-11CE-9E0D-00AA006002F3}"))
    END NewTextBox;

    PROCEDURE NewListBox* (): IMdcList;
    BEGIN
        RETURN ThisIMdcList(CtlC.NewObj("{8BD21D20-EC42-11CE-9E0D-00AA006002F3}"))
    END NewListBox;

    PROCEDURE NewComboBox* (): IMdcCombo;
    BEGIN
        RETURN ThisIMdcCombo(CtlC.NewObj("{8BD21D30-EC42-11CE-9E0D-00AA006002F3}"))
    END NewComboBox;

    PROCEDURE NewCheckBox* (): IMdcCheckBox;
    BEGIN
        RETURN ThisIMdcCheckBox(CtlC.NewObj("{8BD21D40-EC42-11CE-9E0D-00AA006002F3}"))
    END NewCheckBox;

    PROCEDURE NewOptionButton* (): IMdcOptionButton;
    BEGIN
        RETURN ThisIMdcOptionButton(CtlC.NewObj("{8BD21D50-EC42-11CE-9E0D-00AA006002F3}"))
    END NewOptionButton;

    PROCEDURE NewToggleButton* (): IMdcToggleButton;
    BEGIN
        RETURN ThisIMdcToggleButton(CtlC.NewObj("{8BD21D60-EC42-11CE-9E0D-00AA006002F3}"))
    END NewToggleButton;

    PROCEDURE NewNewFont* (): Font;
    BEGIN
        RETURN ThisFont(CtlC.NewObj("{AFC20920-DA4E-11CE-B943-00AA006887B4}"))
    END NewNewFont;

    PROCEDURE NewScrollBar* (): IScrollbar;
    BEGIN
        RETURN ThisIScrollbar(CtlC.NewObj("{DFD181E0-5E2F-11CE-A449-00AA004A803D}"))
    END NewScrollBar;

    PROCEDURE NewTabStrip* (): ITabStrip;
    BEGIN
        RETURN ThisITabStrip(CtlC.NewObj("{EAE50EB0-4A62-11CE-BED6-00AA00611080}"))
    END NewTabStrip;

    PROCEDURE NewSpinButton* (): ISpinbutton;
    BEGIN
        RETURN ThisISpinbutton(CtlC.NewObj("{79176FB0-B7F2-11CE-97EF-00AA006D2776}"))
    END NewSpinButton;

    PROCEDURE NewImage* (): IImage;
    BEGIN
        RETURN ThisIImage(CtlC.NewObj("{4C599241-6926-101B-9992-00000B65C6F9}"))
    END NewImage;

    PROCEDURE NewHTMLSubmit* (): IWHTMLSubmitButton;
    BEGIN
        RETURN ThisIWHTMLSubmitButton(CtlC.NewObj("{5512D110-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLSubmit;

    PROCEDURE NewHTMLImage* (): IWHTMLImage;
    BEGIN
        RETURN ThisIWHTMLImage(CtlC.NewObj("{5512D112-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLImage;

    PROCEDURE NewHTMLReset* (): IWHTMLReset;
    BEGIN
        RETURN ThisIWHTMLReset(CtlC.NewObj("{5512D114-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLReset;

    PROCEDURE NewHTMLCheckbox* (): IWHTMLCheckbox;
    BEGIN
        RETURN ThisIWHTMLCheckbox(CtlC.NewObj("{5512D116-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLCheckbox;

    PROCEDURE NewHTMLOption* (): IWHTMLOption;
    BEGIN
        RETURN ThisIWHTMLOption(CtlC.NewObj("{5512D118-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLOption;

    PROCEDURE NewHTMLText* (): IWHTMLText;
    BEGIN
        RETURN ThisIWHTMLText(CtlC.NewObj("{5512D11A-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLText;

    PROCEDURE NewHTMLHidden* (): IWHTMLHidden;
    BEGIN
        RETURN ThisIWHTMLHidden(CtlC.NewObj("{5512D11C-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLHidden;

    PROCEDURE NewHTMLPassword* (): IWHTMLPassword;
    BEGIN
        RETURN ThisIWHTMLPassword(CtlC.NewObj("{5512D11E-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLPassword;

    PROCEDURE NewHTMLSelect* (): IWHTMLSelect;
    BEGIN
        RETURN ThisIWHTMLSelect(CtlC.NewObj("{5512D122-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLSelect;

    PROCEDURE NewHTMLTextArea* (): IWHTMLTextArea;
    BEGIN
        RETURN ThisIWHTMLTextArea(CtlC.NewObj("{5512D124-5CC6-11CF-8D67-00AA00BDCE1D}"))
    END NewHTMLTextArea;

    PROCEDURE NewMultiPage* (): IMultiPage;
    BEGIN
        RETURN ThisIMultiPage(CtlC.NewObj("{46E31370-3F7A-11CE-BED6-00AA00611080}"))
    END NewMultiPage;

    PROCEDURE NewPage* (): IPage;
    BEGIN
        RETURN ThisIPage(CtlC.NewObj("{5CEF5610-713D-11CE-80C9-00AA00611080}"))
    END NewPage;

END CtlMSForms.
