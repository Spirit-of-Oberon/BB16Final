MODULE CtlPowerPoint9;
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

    (* Microsoft PowerPoint 9.0 Object Library, help: C:\Program Files\Microsoft Office\Office\VBAPPT9.CHM, id: 500000 *)
    (* guid: {91493440-5A91-11CF-8700-00AA0060263B}, lcid: 0, syskind: win32, version: 2.6 *)

    IMPORT CtlT, CtlC, CtlOffice, CtlVBIDE;

    CONST
        (* PpWindowState *)
            ppWindowNormal* = 1;
            ppWindowMinimized* = 2;
            ppWindowMaximized* = 3;
        (* PpArrangeStyle *)
            ppArrangeTiled* = 1;
            ppArrangeCascade* = 2;
        (* PpViewType *)
            ppViewSlide* = 1;
            ppViewSlideMaster* = 2;
            ppViewNotesPage* = 3;
            ppViewHandoutMaster* = 4;
            ppViewNotesMaster* = 5;
            ppViewOutline* = 6;
            ppViewSlideSorter* = 7;
            ppViewTitleMaster* = 8;
            ppViewNormal* = 9;
        (* PpColorSchemeIndex *)
            ppSchemeColorMixed* = -2;
            ppNotSchemeColor* = 0;
            ppBackground* = 1;
            ppForeground* = 2;
            ppShadow* = 3;
            ppTitle* = 4;
            ppFill* = 5;
            ppAccent1* = 6;
            ppAccent2* = 7;
            ppAccent3* = 8;
        (* PpSlideSizeType *)
            ppSlideSizeOnScreen* = 1;
            ppSlideSizeLetterPaper* = 2;
            ppSlideSizeA4Paper* = 3;
            ppSlideSize35MM* = 4;
            ppSlideSizeOverhead* = 5;
            ppSlideSizeBanner* = 6;
            ppSlideSizeCustom* = 7;
        (* PpSaveAsFileType *)
            ppSaveAsPresentation* = 1;
            ppSaveAsPowerPoint7* = 2;
            ppSaveAsPowerPoint4* = 3;
            ppSaveAsPowerPoint3* = 4;
            ppSaveAsTemplate* = 5;
            ppSaveAsRTF* = 6;
            ppSaveAsShow* = 7;
            ppSaveAsAddIn* = 8;
            ppSaveAsPowerPoint4FarEast* = 10;
            ppSaveAsDefault* = 11;
            ppSaveAsHTML* = 12;
            ppSaveAsHTMLv3* = 13;
            ppSaveAsHTMLDual* = 14;
            ppSaveAsMetaFile* = 15;
            ppSaveAsGIF* = 16;
            ppSaveAsJPG* = 17;
            ppSaveAsPNG* = 18;
            ppSaveAsBMP* = 19;
        (* PpTextStyleType *)
            ppDefaultStyle* = 1;
            ppTitleStyle* = 2;
            ppBodyStyle* = 3;
        (* PpSlideLayout *)
            ppLayoutMixed* = -2;
            ppLayoutTitle* = 1;
            ppLayoutText* = 2;
            ppLayoutTwoColumnText* = 3;
            ppLayoutTable* = 4;
            ppLayoutTextAndChart* = 5;
            ppLayoutChartAndText* = 6;
            ppLayoutOrgchart* = 7;
            ppLayoutChart* = 8;
            ppLayoutTextAndClipart* = 9;
            ppLayoutClipartAndText* = 10;
            ppLayoutTitleOnly* = 11;
            ppLayoutBlank* = 12;
            ppLayoutTextAndObject* = 13;
            ppLayoutObjectAndText* = 14;
            ppLayoutLargeObject* = 15;
            ppLayoutObject* = 16;
            ppLayoutTextAndMediaClip* = 17;
            ppLayoutMediaClipAndText* = 18;
            ppLayoutObjectOverText* = 19;
            ppLayoutTextOverObject* = 20;
            ppLayoutTextAndTwoObjects* = 21;
            ppLayoutTwoObjectsAndText* = 22;
            ppLayoutTwoObjectsOverText* = 23;
            ppLayoutFourObjects* = 24;
            ppLayoutVerticalText* = 25;
            ppLayoutClipArtAndVerticalText* = 26;
            ppLayoutVerticalTitleAndText* = 27;
            ppLayoutVerticalTitleAndTextOverChart* = 28;
        (* PpEntryEffect *)
            ppEffectMixed* = -2;
            ppEffectNone* = 0;
            ppEffectCut* = 257;
            ppEffectCutThroughBlack* = 258;
            ppEffectRandom* = 513;
            ppEffectBlindsHorizontal* = 769;
            ppEffectBlindsVertical* = 770;
            ppEffectCheckerboardAcross* = 1025;
            ppEffectCheckerboardDown* = 1026;
            ppEffectCoverLeft* = 1281;
            ppEffectCoverUp* = 1282;
            ppEffectCoverRight* = 1283;
            ppEffectCoverDown* = 1284;
            ppEffectCoverLeftUp* = 1285;
            ppEffectCoverRightUp* = 1286;
            ppEffectCoverLeftDown* = 1287;
            ppEffectCoverRightDown* = 1288;
            ppEffectDissolve* = 1537;
            ppEffectFade* = 1793;
            ppEffectUncoverLeft* = 2049;
            ppEffectUncoverUp* = 2050;
            ppEffectUncoverRight* = 2051;
            ppEffectUncoverDown* = 2052;
            ppEffectUncoverLeftUp* = 2053;
            ppEffectUncoverRightUp* = 2054;
            ppEffectUncoverLeftDown* = 2055;
            ppEffectUncoverRightDown* = 2056;
            ppEffectRandomBarsHorizontal* = 2305;
            ppEffectRandomBarsVertical* = 2306;
            ppEffectStripsUpLeft* = 2561;
            ppEffectStripsUpRight* = 2562;
            ppEffectStripsDownLeft* = 2563;
            ppEffectStripsDownRight* = 2564;
            ppEffectStripsLeftUp* = 2565;
            ppEffectStripsRightUp* = 2566;
            ppEffectStripsLeftDown* = 2567;
            ppEffectStripsRightDown* = 2568;
            ppEffectWipeLeft* = 2817;
            ppEffectWipeUp* = 2818;
            ppEffectWipeRight* = 2819;
            ppEffectWipeDown* = 2820;
            ppEffectBoxOut* = 3073;
            ppEffectBoxIn* = 3074;
            ppEffectFlyFromLeft* = 3329;
            ppEffectFlyFromTop* = 3330;
            ppEffectFlyFromRight* = 3331;
            ppEffectFlyFromBottom* = 3332;
            ppEffectFlyFromTopLeft* = 3333;
            ppEffectFlyFromTopRight* = 3334;
            ppEffectFlyFromBottomLeft* = 3335;
            ppEffectFlyFromBottomRight* = 3336;
            ppEffectPeekFromLeft* = 3337;
            ppEffectPeekFromDown* = 3338;
            ppEffectPeekFromRight* = 3339;
            ppEffectPeekFromUp* = 3340;
            ppEffectCrawlFromLeft* = 3341;
            ppEffectCrawlFromUp* = 3342;
            ppEffectCrawlFromRight* = 3343;
            ppEffectCrawlFromDown* = 3344;
            ppEffectZoomIn* = 3345;
            ppEffectZoomInSlightly* = 3346;
            ppEffectZoomOut* = 3347;
            ppEffectZoomOutSlightly* = 3348;
            ppEffectZoomCenter* = 3349;
            ppEffectZoomBottom* = 3350;
            ppEffectStretchAcross* = 3351;
            ppEffectStretchLeft* = 3352;
            ppEffectStretchUp* = 3353;
            ppEffectStretchRight* = 3354;
            ppEffectStretchDown* = 3355;
            ppEffectSwivel* = 3356;
            ppEffectSpiral* = 3357;
            ppEffectSplitHorizontalOut* = 3585;
            ppEffectSplitHorizontalIn* = 3586;
            ppEffectSplitVerticalOut* = 3587;
            ppEffectSplitVerticalIn* = 3588;
            ppEffectFlashOnceFast* = 3841;
            ppEffectFlashOnceMedium* = 3842;
            ppEffectFlashOnceSlow* = 3843;
            ppEffectAppear* = 3844;
        (* PpTextLevelEffect *)
            ppAnimateLevelMixed* = -2;
            ppAnimateLevelNone* = 0;
            ppAnimateByFirstLevel* = 1;
            ppAnimateBySecondLevel* = 2;
            ppAnimateByThirdLevel* = 3;
            ppAnimateByFourthLevel* = 4;
            ppAnimateByFifthLevel* = 5;
            ppAnimateByAllLevels* = 16;
        (* PpTextUnitEffect *)
            ppAnimateUnitMixed* = -2;
            ppAnimateByParagraph* = 0;
            ppAnimateByWord* = 1;
            ppAnimateByCharacter* = 2;
        (* PpChartUnitEffect *)
            ppAnimateChartMixed* = -2;
            ppAnimateBySeries* = 1;
            ppAnimateByCategory* = 2;
            ppAnimateBySeriesElements* = 3;
            ppAnimateByCategoryElements* = 4;
        (* PpAfterEffect *)
            ppAfterEffectMixed* = -2;
            ppAfterEffectNothing* = 0;
            ppAfterEffectHide* = 1;
            ppAfterEffectDim* = 2;
            ppAfterEffectHideOnClick* = 3;
        (* PpAdvanceMode *)
            ppAdvanceModeMixed* = -2;
            ppAdvanceOnClick* = 1;
            ppAdvanceOnTime* = 2;
        (* PpSoundEffectType *)
            ppSoundEffectsMixed* = -2;
            ppSoundNone* = 0;
            ppSoundStopPrevious* = 1;
            ppSoundFile* = 2;
        (* PpFollowColors *)
            ppFollowColorsMixed* = -2;
            ppFollowColorsNone* = 0;
            ppFollowColorsScheme* = 1;
            ppFollowColorsTextAndBackground* = 2;
        (* PpUpdateOption *)
            ppUpdateOptionMixed* = -2;
            ppUpdateOptionManual* = 1;
            ppUpdateOptionAutomatic* = 2;
        (* PpParagraphAlignment *)
            ppAlignmentMixed* = -2;
            ppAlignLeft* = 1;
            ppAlignCenter* = 2;
            ppAlignRight* = 3;
            ppAlignJustify* = 4;
            ppAlignDistribute* = 5;
        (* PpBaselineAlignment *)
            ppBaselineAlignMixed* = -2;
            ppBaselineAlignBaseline* = 1;
            ppBaselineAlignTop* = 2;
            ppBaselineAlignCenter* = 3;
            ppBaselineAlignFarEast50* = 4;
        (* PpTabStopType *)
            ppTabStopMixed* = -2;
            ppTabStopLeft* = 1;
            ppTabStopCenter* = 2;
            ppTabStopRight* = 3;
            ppTabStopDecimal* = 4;
        (* PpIndentControl *)
            ppIndentControlMixed* = -2;
            ppIndentReplaceAttr* = 1;
            ppIndentKeepAttr* = 2;
        (* PpChangeCase *)
            ppCaseSentence* = 1;
            ppCaseLower* = 2;
            ppCaseUpper* = 3;
            ppCaseTitle* = 4;
            ppCaseToggle* = 5;
        (* PpDialogMode, hidden *)
            ppDialogModeMixed* = -2;
            ppDialogModeless* = 0;
            ppDialogModal* = 1;
        (* PpDialogStyle, hidden *)
            ppDialogStyleMixed* = -2;
            ppDialogStandard* = 1;
            ppDialogTabbed* = 2;
        (* PpDialogPositioning, hidden *)
            ppDialogPositionNormal* = 1;
            ppDialogPositionCenterParent* = 2;
            ppDialogPositionCenterScreen* = 3;
            ppDialogPositionRememberLast* = 4;
        (* PpDialogFontStyle, hidden *)
            ppDialogFontStyleMixed* = -2;
            ppDialogSmall* = -1;
            ppDialogItalic* = 0;
        (* PpScrollBarStyle, hidden *)
            ppScrollBarVertical* = 0;
            ppScrollBarHorizontal* = 1;
        (* PpListBoxSelectionStyle, hidden *)
            ppListBoxSingle* = 0;
            ppListBoxMulti* = 1;
        (* PpListBoxAbbreviationStyle, hidden *)
            ppListBoxAbbreviationNone* = 0;
            ppListBoxAbbreviationTruncation* = 1;
            ppListBoxAbbreviationTruncationWithEllipsis* = 2;
            ppListBoxAbbreviationFileNames* = 3;
        (* PpAlertType, hidden *)
            ppAlertTypeOK* = 0;
            ppAlertTypeOKCANCEL* = 1;
            ppAlertTypeYESNO* = 2;
            ppAlertTypeYESNOCANCEL* = 3;
            ppAlertTypeBACKNEXTCLOSE* = 4;
            ppAlertTypeRETRYCANCEL* = 5;
            ppAlertTypeABORTRETRYIGNORE* = 6;
        (* PpAlertButton, hidden *)
            ppAlertButtonCLOSE* = 0;
            ppAlertButtonSNOOZE* = 1;
            ppAlertButtonSEARCH* = 2;
            ppAlertButtonIGNORE* = 3;
            ppAlertButtonABORT* = 4;
            ppAlertButtonRETRY* = 5;
            ppAlertButtonNEXT* = 6;
            ppAlertButtonBACK* = 7;
            ppAlertButtonNO* = 8;
            ppAlertButtonYES* = 9;
            ppAlertButtonCANCEL* = 10;
            ppAlertButtonOK* = 11;
            ppAlertButtonNULL* = 12;
        (* PpAlertIcon, hidden *)
            ppAlertIconQuestionMark* = 0;
            ppAlertIconNote* = 1;
            ppAlertIconCaution* = 2;
            ppAlertIconStop* = 3;
        (* PpSlideShowPointerType *)
            ppSlideShowPointerNone* = 0;
            ppSlideShowPointerArrow* = 1;
            ppSlideShowPointerPen* = 2;
            ppSlideShowPointerAlwaysHidden* = 3;
            ppSlideShowPointerAutoArrow* = 4;
        (* PpSlideShowState *)
            ppSlideShowRunning* = 1;
            ppSlideShowPaused* = 2;
            ppSlideShowBlackScreen* = 3;
            ppSlideShowWhiteScreen* = 4;
            ppSlideShowDone* = 5;
        (* PpSlideShowAdvanceMode *)
            ppSlideShowManualAdvance* = 1;
            ppSlideShowUseSlideTimings* = 2;
            ppSlideShowRehearseNewTimings* = 3;
        (* PpFileDialogType, hidden *)
            ppFileDialogOpen* = 1;
            ppFileDialogSave* = 2;
        (* PpFileDialogView, hidden *)
            ppFileDialogViewDetails* = 1;
            ppFileDialogViewPreview* = 2;
            ppFileDialogViewProperties* = 3;
            ppFileDialogViewList* = 4;
        (* PpPrintOutputType *)
            ppPrintOutputSlides* = 1;
            ppPrintOutputTwoSlideHandouts* = 2;
            ppPrintOutputThreeSlideHandouts* = 3;
            ppPrintOutputSixSlideHandouts* = 4;
            ppPrintOutputNotesPages* = 5;
            ppPrintOutputOutline* = 6;
            ppPrintOutputBuildSlides* = 7;
            ppPrintOutputFourSlideHandouts* = 8;
            ppPrintOutputNineSlideHandouts* = 9;
        (* PpPrintHandoutOrder *)
            ppPrintHandoutVerticalFirst* = 1;
            ppPrintHandoutHorizontalFirst* = 2;
        (* PpPrintColorType *)
            ppPrintColor* = 1;
            ppPrintBlackAndWhite* = 2;
            ppPrintPureBlackAndWhite* = 3;
        (* PpSelectionType *)
            ppSelectionNone* = 0;
            ppSelectionSlides* = 1;
            ppSelectionShapes* = 2;
            ppSelectionText* = 3;
        (* PpDirection *)
            ppDirectionMixed* = -2;
            ppDirectionLeftToRight* = 1;
            ppDirectionRightToLeft* = 2;
        (* PpDateTimeFormat *)
            ppDateTimeFormatMixed* = -2;
            ppDateTimeMdyy* = 1;
            ppDateTimeddddMMMMddyyyy* = 2;
            ppDateTimedMMMMyyyy* = 3;
            ppDateTimeMMMMdyyyy* = 4;
            ppDateTimedMMMyy* = 5;
            ppDateTimeMMMMyy* = 6;
            ppDateTimeMMyy* = 7;
            ppDateTimeMMddyyHmm* = 8;
            ppDateTimeMMddyyhmmAMPM* = 9;
            ppDateTimeHmm* = 10;
            ppDateTimeHmmss* = 11;
            ppDateTimehmmAMPM* = 12;
            ppDateTimehmmssAMPM* = 13;
        (* PpTransitionSpeed *)
            ppTransitionSpeedMixed* = -2;
            ppTransitionSpeedSlow* = 1;
            ppTransitionSpeedMedium* = 2;
            ppTransitionSpeedFast* = 3;
        (* PpMouseActivation *)
            ppMouseClick* = 1;
            ppMouseOver* = 2;
        (* PpActionType *)
            ppActionMixed* = -2;
            ppActionNone* = 0;
            ppActionNextSlide* = 1;
            ppActionPreviousSlide* = 2;
            ppActionFirstSlide* = 3;
            ppActionLastSlide* = 4;
            ppActionLastSlideViewed* = 5;
            ppActionEndShow* = 6;
            ppActionHyperlink* = 7;
            ppActionRunMacro* = 8;
            ppActionRunProgram* = 9;
            ppActionNamedSlideShow* = 10;
            ppActionOLEVerb* = 11;
            ppActionPlay* = 12;
        (* PpPlaceholderType *)
            ppPlaceholderMixed* = -2;
            ppPlaceholderTitle* = 1;
            ppPlaceholderBody* = 2;
            ppPlaceholderCenterTitle* = 3;
            ppPlaceholderSubtitle* = 4;
            ppPlaceholderVerticalTitle* = 5;
            ppPlaceholderVerticalBody* = 6;
            ppPlaceholderObject* = 7;
            ppPlaceholderChart* = 8;
            ppPlaceholderBitmap* = 9;
            ppPlaceholderMediaClip* = 10;
            ppPlaceholderOrgChart* = 11;
            ppPlaceholderTable* = 12;
            ppPlaceholderSlideNumber* = 13;
            ppPlaceholderHeader* = 14;
            ppPlaceholderFooter* = 15;
            ppPlaceholderDate* = 16;
        (* PpSlideShowType *)
            ppShowTypeSpeaker* = 1;
            ppShowTypeWindow* = 2;
            ppShowTypeKiosk* = 3;
        (* PpPrintRangeType *)
            ppPrintAll* = 1;
            ppPrintSelection* = 2;
            ppPrintCurrent* = 3;
            ppPrintSlideRange* = 4;
            ppPrintNamedSlideShow* = 5;
        (* PpAutoSize *)
            ppAutoSizeMixed* = -2;
            ppAutoSizeNone* = 0;
            ppAutoSizeShapeToFitText* = 1;
        (* PpMediaType *)
            ppMediaTypeMixed* = -2;
            ppMediaTypeOther* = 1;
            ppMediaTypeSound* = 2;
            ppMediaTypeMovie* = 3;
        (* PpSoundFormatType *)
            ppSoundFormatMixed* = -2;
            ppSoundFormatNone* = 0;
            ppSoundFormatWAV* = 1;
            ppSoundFormatMIDI* = 2;
            ppSoundFormatCDAudio* = 3;
        (* PpFarEastLineBreakLevel *)
            ppFarEastLineBreakLevelNormal* = 1;
            ppFarEastLineBreakLevelStrict* = 2;
            ppFarEastLineBreakLevelCustom* = 3;
        (* PpSlideShowRangeType *)
            ppShowAll* = 1;
            ppShowSlideRange* = 2;
            ppShowNamedSlideShow* = 3;
        (* PpFrameColors *)
            ppFrameColorsBrowserColors* = 1;
            ppFrameColorsPresentationSchemeTextColor* = 2;
            ppFrameColorsPresentationSchemeAccentColor* = 3;
            ppFrameColorsWhiteTextOnBlack* = 4;
            ppFrameColorsBlackTextOnWhite* = 5;
        (* PpBorderType *)
            ppBorderTop* = 1;
            ppBorderLeft* = 2;
            ppBorderBottom* = 3;
            ppBorderRight* = 4;
            ppBorderDiagonalDown* = 5;
            ppBorderDiagonalUp* = 6;
        (* PpHTMLVersion *)
            ppHTMLv3* = 1;
            ppHTMLv4* = 2;
            ppHTMLDual* = 3;
        (* PpPublishSourceType *)
            ppPublishAll* = 1;
            ppPublishSlideRange* = 2;
            ppPublishNamedSlideShow* = 3;
        (* PpBulletType *)
            ppBulletMixed* = -2;
            ppBulletNone* = 0;
            ppBulletUnnumbered* = 1;
            ppBulletNumbered* = 2;
            ppBulletPicture* = 3;
        (* PpNumberedBulletStyle *)
            ppBulletStyleMixed* = -2;
            ppBulletAlphaLCPeriod* = 0;
            ppBulletAlphaUCPeriod* = 1;
            ppBulletArabicParenRight* = 2;
            ppBulletArabicPeriod* = 3;
            ppBulletRomanLCParenBoth* = 4;
            ppBulletRomanLCParenRight* = 5;
            ppBulletRomanLCPeriod* = 6;
            ppBulletRomanUCPeriod* = 7;
            ppBulletAlphaLCParenBoth* = 8;
            ppBulletAlphaLCParenRight* = 9;
            ppBulletAlphaUCParenBoth* = 10;
            ppBulletAlphaUCParenRight* = 11;
            ppBulletArabicParenBoth* = 12;
            ppBulletArabicPlain* = 13;
            ppBulletRomanUCParenBoth* = 14;
            ppBulletRomanUCParenRight* = 15;
            ppBulletSimpChinPlain* = 16;
            ppBulletSimpChinPeriod* = 17;
            ppBulletCircleNumDBPlain* = 18;
            ppBulletCircleNumWDWhitePlain* = 19;
            ppBulletCircleNumWDBlackPlain* = 20;
            ppBulletTradChinPlain* = 21;
            ppBulletTradChinPeriod* = 22;
            ppBulletArabicAlphaDash* = 23;
            ppBulletArabicAbjadDash* = 24;
            ppBulletHebrewAlphaDash* = 25;
            ppBulletKanjiKoreanPlain* = 26;
            ppBulletKanjiKoreanPeriod* = 27;
            ppBulletArabicDBPlain* = 28;
            ppBulletArabicDBPeriod* = 29;
        (* PpMarkerType, hidden *)
            ppBoot* = 0;
            ppFileNew* = 1;
            ppFileOpen* = 2;
            ppFileSave* = 3;
            ppPrintForeground* = 4;
            ppPrintBackground* = 5;
            ppOLEInsert* = 6;
            ppSlideShowStart* = 7;
            ppSlideShowDraw* = 8;
            ppSlideViewScroll* = 9;
            ppDialogStart* = 10;
        (* PpShapeFormat, hidden *)
            ppShapeFormatGIF* = 0;
            ppShapeFormatJPG* = 1;
            ppShapeFormatPNG* = 2;
            ppShapeFormatBMP* = 3;
            ppShapeFormatWMF* = 4;
        (* PpExportMode, hidden *)
            ppRelativeToSlide* = 1;
            ppClipRelativeToSlide* = 2;
            ppScaleToFit* = 3;
            ppScaleXY* = 4;


    TYPE
        PpWindowState* = INTEGER;
        PpArrangeStyle* = INTEGER;
        PpViewType* = INTEGER;
        PpColorSchemeIndex* = INTEGER;
        PpSlideSizeType* = INTEGER;
        PpSaveAsFileType* = INTEGER;
        PpTextStyleType* = INTEGER;
        PpSlideLayout* = INTEGER;
        PpEntryEffect* = INTEGER;
        PpTextLevelEffect* = INTEGER;
        PpTextUnitEffect* = INTEGER;
        PpChartUnitEffect* = INTEGER;
        PpAfterEffect* = INTEGER;
        PpAdvanceMode* = INTEGER;
        PpSoundEffectType* = INTEGER;
        PpFollowColors* = INTEGER;
        PpUpdateOption* = INTEGER;
        PpParagraphAlignment* = INTEGER;
        PpBaselineAlignment* = INTEGER;
        PpTabStopType* = INTEGER;
        PpIndentControl* = INTEGER;
        PpChangeCase* = INTEGER;
        PpDialogMode* = INTEGER;
        PpDialogStyle* = INTEGER;
        PpDialogPositioning* = INTEGER;
        PpDialogFontStyle* = INTEGER;
        PpScrollBarStyle* = INTEGER;
        PpListBoxSelectionStyle* = INTEGER;
        PpListBoxAbbreviationStyle* = INTEGER;
        PpAlertType* = INTEGER;
        PpAlertButton* = INTEGER;
        PpAlertIcon* = INTEGER;
        PpSlideShowPointerType* = INTEGER;
        PpSlideShowState* = INTEGER;
        PpSlideShowAdvanceMode* = INTEGER;
        PpFileDialogType* = INTEGER;
        PpFileDialogView* = INTEGER;
        PpPrintOutputType* = INTEGER;
        PpPrintHandoutOrder* = INTEGER;
        PpPrintColorType* = INTEGER;
        PpSelectionType* = INTEGER;
        PpDirection* = INTEGER;
        PpDateTimeFormat* = INTEGER;
        PpTransitionSpeed* = INTEGER;
        PpMouseActivation* = INTEGER;
        PpActionType* = INTEGER;
        PpPlaceholderType* = INTEGER;
        PpSlideShowType* = INTEGER;
        PpPrintRangeType* = INTEGER;
        PpAutoSize* = INTEGER;
        PpMediaType* = INTEGER;
        PpSoundFormatType* = INTEGER;
        PpFarEastLineBreakLevel* = INTEGER;
        PpSlideShowRangeType* = INTEGER;
        PpFrameColors* = INTEGER;
        Collection* = POINTER TO RECORD (CtlT.Object) END;
        _Application* = POINTER TO RECORD (CtlT.Object) END;
        _Global* = POINTER TO RECORD (CtlT.Object) END;
        Application* = _Application;
        Global* = _Global;
        ColorFormat* = POINTER TO RECORD (CtlT.Object) END;
        SlideShowWindow* = POINTER TO RECORD (CtlT.Object) END;
        Selection* = POINTER TO RECORD (CtlT.Object) END;
        DocumentWindows* = POINTER TO RECORD (CtlT.Object) END;
        SlideShowWindows* = POINTER TO RECORD (CtlT.Object) END;
        DocumentWindow* = POINTER TO RECORD (CtlT.Object) END;
        View* = POINTER TO RECORD (CtlT.Object) END;
        SlideShowView* = POINTER TO RECORD (CtlT.Object) END;
        SlideShowSettings* = POINTER TO RECORD (CtlT.Object) END;
        NamedSlideShows* = POINTER TO RECORD (CtlT.Object) END;
        NamedSlideShow* = POINTER TO RECORD (CtlT.Object) END;
        PrintOptions* = POINTER TO RECORD (CtlT.Object) END;
        PrintRanges* = POINTER TO RECORD (CtlT.Object) END;
        PrintRange* = POINTER TO RECORD (CtlT.Object) END;
        AddIns* = POINTER TO RECORD (CtlT.Object) END;
        AddIn* = POINTER TO RECORD (CtlT.Object) END;
        Presentations* = POINTER TO RECORD (CtlT.Object) END;
        Presentation* = _Presentation;
        Hyperlinks* = POINTER TO RECORD (CtlT.Object) END;
        Hyperlink* = POINTER TO RECORD (CtlT.Object) END;
        PageSetup* = POINTER TO RECORD (CtlT.Object) END;
        Fonts* = POINTER TO RECORD (CtlT.Object) END;
        ExtraColors* = POINTER TO RECORD (CtlT.Object) END;
        Slides* = POINTER TO RECORD (CtlT.Object) END;
        _Slide* = POINTER TO RECORD (CtlT.Object) END;
        SlideRange* = POINTER TO RECORD (CtlT.Object) END;
        _Master* = POINTER TO RECORD (CtlT.Object) END;
        Slide* = _Slide;
        ColorSchemes* = POINTER TO RECORD (CtlT.Object) END;
        ColorScheme* = POINTER TO RECORD (CtlT.Object) END;
        RGBColor* = POINTER TO RECORD (CtlT.Object) END;
        SlideShowTransition* = POINTER TO RECORD (CtlT.Object) END;
        SoundEffect* = POINTER TO RECORD (CtlT.Object) END;
        SoundFormat* = POINTER TO RECORD (CtlT.Object) END;
        HeadersFooters* = POINTER TO RECORD (CtlT.Object) END;
        Shapes* = POINTER TO RECORD (CtlT.Object) END;
        Placeholders* = POINTER TO RECORD (CtlT.Object) END;
        PlaceholderFormat* = POINTER TO RECORD (CtlT.Object) END;
        FreeformBuilder* = POINTER TO RECORD (CtlT.Object) END;
        Shape* = POINTER TO RECORD (CtlT.Object) END;
        ShapeRange* = POINTER TO RECORD (CtlT.Object) END;
        GroupShapes* = POINTER TO RECORD (CtlT.Object) END;
        Adjustments* = POINTER TO RECORD (CtlT.Object) END;
        PictureFormat* = POINTER TO RECORD (CtlT.Object) END;
        FillFormat* = POINTER TO RECORD (CtlT.Object) END;
        LineFormat* = POINTER TO RECORD (CtlT.Object) END;
        ShadowFormat* = POINTER TO RECORD (CtlT.Object) END;
        ConnectorFormat* = POINTER TO RECORD (CtlT.Object) END;
        TextEffectFormat* = POINTER TO RECORD (CtlT.Object) END;
        ThreeDFormat* = POINTER TO RECORD (CtlT.Object) END;
        TextFrame* = POINTER TO RECORD (CtlT.Object) END;
        CalloutFormat* = POINTER TO RECORD (CtlT.Object) END;
        ShapeNodes* = POINTER TO RECORD (CtlT.Object) END;
        ShapeNode* = POINTER TO RECORD (CtlT.Object) END;
        OLEFormat* = POINTER TO RECORD (CtlT.Object) END;
        LinkFormat* = POINTER TO RECORD (CtlT.Object) END;
        ObjectVerbs* = POINTER TO RECORD (CtlT.Object) END;
        AnimationSettings* = POINTER TO RECORD (CtlT.Object) END;
        ActionSettings* = POINTER TO RECORD (CtlT.Object) END;
        ActionSetting* = POINTER TO RECORD (CtlT.Object) END;
        PlaySettings* = POINTER TO RECORD (CtlT.Object) END;
        TextRange* = POINTER TO RECORD (CtlT.Object) END;
        Ruler* = POINTER TO RECORD (CtlT.Object) END;
        RulerLevels* = POINTER TO RECORD (CtlT.Object) END;
        RulerLevel* = POINTER TO RECORD (CtlT.Object) END;
        TabStops* = POINTER TO RECORD (CtlT.Object) END;
        TabStop* = POINTER TO RECORD (CtlT.Object) END;
        Font* = POINTER TO RECORD (CtlT.Object) END;
        ParagraphFormat* = POINTER TO RECORD (CtlT.Object) END;
        BulletFormat* = POINTER TO RECORD (CtlT.Object) END;
        TextStyles* = POINTER TO RECORD (CtlT.Object) END;
        TextStyle* = POINTER TO RECORD (CtlT.Object) END;
        TextStyleLevels* = POINTER TO RECORD (CtlT.Object) END;
        TextStyleLevel* = POINTER TO RECORD (CtlT.Object) END;
        HeaderFooter* = POINTER TO RECORD (CtlT.Object) END;
        _Presentation* = POINTER TO RECORD (CtlT.Object) END;
        PPDialogs* = POINTER TO RECORD (CtlT.Object) END;
        PPAlert* = POINTER TO RECORD (CtlT.Object) END;
        PPDialog* = POINTER TO RECORD (CtlT.Object) END;
        PPTabSheet* = POINTER TO RECORD (CtlT.Object) END;
        PPControls* = POINTER TO RECORD (CtlT.Object) END;
        PPTabSheets* = POINTER TO RECORD (CtlT.Object) END;
        PPControl* = POINTER TO RECORD (CtlT.Object) END;
        PPPushButton* = POINTER TO RECORD (CtlT.Object) END;
        PPToggleButton* = POINTER TO RECORD (CtlT.Object) END;
        PPBitmapButton* = POINTER TO RECORD (CtlT.Object) END;
        PPListBox* = POINTER TO RECORD (CtlT.Object) END;
        PPStrings* = POINTER TO RECORD (CtlT.Object) END;
        PPCheckBox* = POINTER TO RECORD (CtlT.Object) END;
        PPRadioCluster* = POINTER TO RECORD (CtlT.Object) END;
        PPStaticText* = POINTER TO RECORD (CtlT.Object) END;
        PPEditText* = POINTER TO RECORD (CtlT.Object) END;
        PPIcon* = POINTER TO RECORD (CtlT.Object) END;
        PPBitmap* = POINTER TO RECORD (CtlT.Object) END;
        PPSpinner* = POINTER TO RECORD (CtlT.Object) END;
        PPScrollBar* = POINTER TO RECORD (CtlT.Object) END;
        PPGroupBox* = POINTER TO RECORD (CtlT.Object) END;
        PPFrame* = POINTER TO RECORD (CtlT.Object) END;
        PPTabControl* = POINTER TO RECORD (CtlT.Object) END;
        PPDropDown* = POINTER TO RECORD (CtlT.Object) END;
        PPDropDownEdit* = POINTER TO RECORD (CtlT.Object) END;
        PPSlideMiniature* = POINTER TO RECORD (CtlT.Object) END;
        PPRadioButton* = POINTER TO RECORD (CtlT.Object) END;
        Tags* = POINTER TO RECORD (CtlT.Object) END;
        FileDialogFileList* = POINTER TO RECORD (CtlT.Object) END;
        FileDialogExtension* = POINTER TO RECORD (CtlT.Object) END;
        FileDialogExtensionList* = POINTER TO RECORD (CtlT.Object) END;
        FileDialog* = POINTER TO RECORD (CtlT.Object) END;
        OCXExtender* = POINTER TO RECORD (CtlT.Object) END;
        OLEControl* = OCXExtender;
        PpBorderType* = INTEGER;
        PpHTMLVersion* = INTEGER;
        PpPublishSourceType* = INTEGER;
        PpBulletType* = INTEGER;
        PpNumberedBulletStyle* = INTEGER;
        PpMarkerType* = INTEGER;
        PpShapeFormat* = INTEGER;
        PpExportMode* = INTEGER;
        Table* = POINTER TO RECORD (CtlT.Object) END;
        Columns* = POINTER TO RECORD (CtlT.Object) END;
        Column* = POINTER TO RECORD (CtlT.Object) END;
        Rows* = POINTER TO RECORD (CtlT.Object) END;
        Row* = POINTER TO RECORD (CtlT.Object) END;
        CellRange* = POINTER TO RECORD (CtlT.Object) END;
        Cell* = POINTER TO RECORD (CtlT.Object) END;
        Borders* = POINTER TO RECORD (CtlT.Object) END;
        Panes* = POINTER TO RECORD (CtlT.Object) END;
        Pane* = POINTER TO RECORD (CtlT.Object) END;
        DefaultWebOptions* = POINTER TO RECORD (CtlT.Object) END;
        WebOptions* = POINTER TO RECORD (CtlT.Object) END;
        PublishObjects* = POINTER TO RECORD (CtlT.Object) END;
        PublishObject* = POINTER TO RECORD (CtlT.Object) END;
        Marker* = POINTER TO RECORD (CtlT.Object) END;
        Master* = _Master;


    PROCEDURE ThisCollection* (v: CtlT.Any): Collection;
        VAR new: Collection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493450-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCollection;

    PROCEDURE IsCollection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493450-5A91-11CF-8700-00AA0060263B}")
    END IsCollection;

    PROCEDURE This_Application* (v: CtlT.Any): _Application;
        VAR new: _Application;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493442-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Application;

    PROCEDURE Is_Application* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493442-5A91-11CF-8700-00AA0060263B}")
    END Is_Application;

    PROCEDURE This_Global* (v: CtlT.Any): _Global;
        VAR new: _Global;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493451-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Global;

    PROCEDURE Is_Global* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493451-5A91-11CF-8700-00AA0060263B}")
    END Is_Global;

    PROCEDURE ThisColorFormat* (v: CtlT.Any): ColorFormat;
        VAR new: ColorFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493452-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisColorFormat;

    PROCEDURE IsColorFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493452-5A91-11CF-8700-00AA0060263B}")
    END IsColorFormat;

    PROCEDURE ThisSlideShowWindow* (v: CtlT.Any): SlideShowWindow;
        VAR new: SlideShowWindow;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493453-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSlideShowWindow;

    PROCEDURE IsSlideShowWindow* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493453-5A91-11CF-8700-00AA0060263B}")
    END IsSlideShowWindow;

    PROCEDURE ThisSelection* (v: CtlT.Any): Selection;
        VAR new: Selection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493454-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSelection;

    PROCEDURE IsSelection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493454-5A91-11CF-8700-00AA0060263B}")
    END IsSelection;

    PROCEDURE ThisDocumentWindows* (v: CtlT.Any): DocumentWindows;
        VAR new: DocumentWindows;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493455-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDocumentWindows;

    PROCEDURE IsDocumentWindows* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493455-5A91-11CF-8700-00AA0060263B}")
    END IsDocumentWindows;

    PROCEDURE ThisSlideShowWindows* (v: CtlT.Any): SlideShowWindows;
        VAR new: SlideShowWindows;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493456-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSlideShowWindows;

    PROCEDURE IsSlideShowWindows* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493456-5A91-11CF-8700-00AA0060263B}")
    END IsSlideShowWindows;

    PROCEDURE ThisDocumentWindow* (v: CtlT.Any): DocumentWindow;
        VAR new: DocumentWindow;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493457-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDocumentWindow;

    PROCEDURE IsDocumentWindow* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493457-5A91-11CF-8700-00AA0060263B}")
    END IsDocumentWindow;

    PROCEDURE ThisView* (v: CtlT.Any): View;
        VAR new: View;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493458-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisView;

    PROCEDURE IsView* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493458-5A91-11CF-8700-00AA0060263B}")
    END IsView;

    PROCEDURE ThisSlideShowView* (v: CtlT.Any): SlideShowView;
        VAR new: SlideShowView;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493459-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSlideShowView;

    PROCEDURE IsSlideShowView* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493459-5A91-11CF-8700-00AA0060263B}")
    END IsSlideShowView;

    PROCEDURE ThisSlideShowSettings* (v: CtlT.Any): SlideShowSettings;
        VAR new: SlideShowSettings;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149345A-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSlideShowSettings;

    PROCEDURE IsSlideShowSettings* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149345A-5A91-11CF-8700-00AA0060263B}")
    END IsSlideShowSettings;

    PROCEDURE ThisNamedSlideShows* (v: CtlT.Any): NamedSlideShows;
        VAR new: NamedSlideShows;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149345B-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisNamedSlideShows;

    PROCEDURE IsNamedSlideShows* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149345B-5A91-11CF-8700-00AA0060263B}")
    END IsNamedSlideShows;

    PROCEDURE ThisNamedSlideShow* (v: CtlT.Any): NamedSlideShow;
        VAR new: NamedSlideShow;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149345C-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisNamedSlideShow;

    PROCEDURE IsNamedSlideShow* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149345C-5A91-11CF-8700-00AA0060263B}")
    END IsNamedSlideShow;

    PROCEDURE ThisPrintOptions* (v: CtlT.Any): PrintOptions;
        VAR new: PrintOptions;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149345D-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPrintOptions;

    PROCEDURE IsPrintOptions* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149345D-5A91-11CF-8700-00AA0060263B}")
    END IsPrintOptions;

    PROCEDURE ThisPrintRanges* (v: CtlT.Any): PrintRanges;
        VAR new: PrintRanges;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149345E-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPrintRanges;

    PROCEDURE IsPrintRanges* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149345E-5A91-11CF-8700-00AA0060263B}")
    END IsPrintRanges;

    PROCEDURE ThisPrintRange* (v: CtlT.Any): PrintRange;
        VAR new: PrintRange;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149345F-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPrintRange;

    PROCEDURE IsPrintRange* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149345F-5A91-11CF-8700-00AA0060263B}")
    END IsPrintRange;

    PROCEDURE ThisAddIns* (v: CtlT.Any): AddIns;
        VAR new: AddIns;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493460-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAddIns;

    PROCEDURE IsAddIns* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493460-5A91-11CF-8700-00AA0060263B}")
    END IsAddIns;

    PROCEDURE ThisAddIn* (v: CtlT.Any): AddIn;
        VAR new: AddIn;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493461-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAddIn;

    PROCEDURE IsAddIn* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493461-5A91-11CF-8700-00AA0060263B}")
    END IsAddIn;

    PROCEDURE ThisPresentations* (v: CtlT.Any): Presentations;
        VAR new: Presentations;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493462-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPresentations;

    PROCEDURE IsPresentations* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493462-5A91-11CF-8700-00AA0060263B}")
    END IsPresentations;

    PROCEDURE ThisHyperlinks* (v: CtlT.Any): Hyperlinks;
        VAR new: Hyperlinks;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493464-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHyperlinks;

    PROCEDURE IsHyperlinks* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493464-5A91-11CF-8700-00AA0060263B}")
    END IsHyperlinks;

    PROCEDURE ThisHyperlink* (v: CtlT.Any): Hyperlink;
        VAR new: Hyperlink;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493465-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHyperlink;

    PROCEDURE IsHyperlink* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493465-5A91-11CF-8700-00AA0060263B}")
    END IsHyperlink;

    PROCEDURE ThisPageSetup* (v: CtlT.Any): PageSetup;
        VAR new: PageSetup;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493466-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPageSetup;

    PROCEDURE IsPageSetup* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493466-5A91-11CF-8700-00AA0060263B}")
    END IsPageSetup;

    PROCEDURE ThisFonts* (v: CtlT.Any): Fonts;
        VAR new: Fonts;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493467-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFonts;

    PROCEDURE IsFonts* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493467-5A91-11CF-8700-00AA0060263B}")
    END IsFonts;

    PROCEDURE ThisExtraColors* (v: CtlT.Any): ExtraColors;
        VAR new: ExtraColors;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493468-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisExtraColors;

    PROCEDURE IsExtraColors* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493468-5A91-11CF-8700-00AA0060263B}")
    END IsExtraColors;

    PROCEDURE ThisSlides* (v: CtlT.Any): Slides;
        VAR new: Slides;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493469-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSlides;

    PROCEDURE IsSlides* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493469-5A91-11CF-8700-00AA0060263B}")
    END IsSlides;

    PROCEDURE This_Slide* (v: CtlT.Any): _Slide;
        VAR new: _Slide;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149346A-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Slide;

    PROCEDURE Is_Slide* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149346A-5A91-11CF-8700-00AA0060263B}")
    END Is_Slide;

    PROCEDURE ThisSlideRange* (v: CtlT.Any): SlideRange;
        VAR new: SlideRange;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149346B-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSlideRange;

    PROCEDURE IsSlideRange* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149346B-5A91-11CF-8700-00AA0060263B}")
    END IsSlideRange;

    PROCEDURE This_Master* (v: CtlT.Any): _Master;
        VAR new: _Master;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149346C-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Master;

    PROCEDURE Is_Master* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149346C-5A91-11CF-8700-00AA0060263B}")
    END Is_Master;

    PROCEDURE ThisColorSchemes* (v: CtlT.Any): ColorSchemes;
        VAR new: ColorSchemes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149346E-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisColorSchemes;

    PROCEDURE IsColorSchemes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149346E-5A91-11CF-8700-00AA0060263B}")
    END IsColorSchemes;

    PROCEDURE ThisColorScheme* (v: CtlT.Any): ColorScheme;
        VAR new: ColorScheme;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149346F-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisColorScheme;

    PROCEDURE IsColorScheme* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149346F-5A91-11CF-8700-00AA0060263B}")
    END IsColorScheme;

    PROCEDURE ThisRGBColor* (v: CtlT.Any): RGBColor;
        VAR new: RGBColor;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493470-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRGBColor;

    PROCEDURE IsRGBColor* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493470-5A91-11CF-8700-00AA0060263B}")
    END IsRGBColor;

    PROCEDURE ThisSlideShowTransition* (v: CtlT.Any): SlideShowTransition;
        VAR new: SlideShowTransition;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493471-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSlideShowTransition;

    PROCEDURE IsSlideShowTransition* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493471-5A91-11CF-8700-00AA0060263B}")
    END IsSlideShowTransition;

    PROCEDURE ThisSoundEffect* (v: CtlT.Any): SoundEffect;
        VAR new: SoundEffect;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493472-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSoundEffect;

    PROCEDURE IsSoundEffect* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493472-5A91-11CF-8700-00AA0060263B}")
    END IsSoundEffect;

    PROCEDURE ThisSoundFormat* (v: CtlT.Any): SoundFormat;
        VAR new: SoundFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493473-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSoundFormat;

    PROCEDURE IsSoundFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493473-5A91-11CF-8700-00AA0060263B}")
    END IsSoundFormat;

    PROCEDURE ThisHeadersFooters* (v: CtlT.Any): HeadersFooters;
        VAR new: HeadersFooters;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493474-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHeadersFooters;

    PROCEDURE IsHeadersFooters* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493474-5A91-11CF-8700-00AA0060263B}")
    END IsHeadersFooters;

    PROCEDURE ThisShapes* (v: CtlT.Any): Shapes;
        VAR new: Shapes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493475-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapes;

    PROCEDURE IsShapes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493475-5A91-11CF-8700-00AA0060263B}")
    END IsShapes;

    PROCEDURE ThisPlaceholders* (v: CtlT.Any): Placeholders;
        VAR new: Placeholders;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493476-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPlaceholders;

    PROCEDURE IsPlaceholders* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493476-5A91-11CF-8700-00AA0060263B}")
    END IsPlaceholders;

    PROCEDURE ThisPlaceholderFormat* (v: CtlT.Any): PlaceholderFormat;
        VAR new: PlaceholderFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493477-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPlaceholderFormat;

    PROCEDURE IsPlaceholderFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493477-5A91-11CF-8700-00AA0060263B}")
    END IsPlaceholderFormat;

    PROCEDURE ThisFreeformBuilder* (v: CtlT.Any): FreeformBuilder;
        VAR new: FreeformBuilder;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493478-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFreeformBuilder;

    PROCEDURE IsFreeformBuilder* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493478-5A91-11CF-8700-00AA0060263B}")
    END IsFreeformBuilder;

    PROCEDURE ThisShape* (v: CtlT.Any): Shape;
        VAR new: Shape;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493479-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShape;

    PROCEDURE IsShape* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493479-5A91-11CF-8700-00AA0060263B}")
    END IsShape;

    PROCEDURE ThisShapeRange* (v: CtlT.Any): ShapeRange;
        VAR new: ShapeRange;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149347A-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapeRange;

    PROCEDURE IsShapeRange* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149347A-5A91-11CF-8700-00AA0060263B}")
    END IsShapeRange;

    PROCEDURE ThisGroupShapes* (v: CtlT.Any): GroupShapes;
        VAR new: GroupShapes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149347B-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisGroupShapes;

    PROCEDURE IsGroupShapes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149347B-5A91-11CF-8700-00AA0060263B}")
    END IsGroupShapes;

    PROCEDURE ThisAdjustments* (v: CtlT.Any): Adjustments;
        VAR new: Adjustments;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149347C-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAdjustments;

    PROCEDURE IsAdjustments* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149347C-5A91-11CF-8700-00AA0060263B}")
    END IsAdjustments;

    PROCEDURE ThisPictureFormat* (v: CtlT.Any): PictureFormat;
        VAR new: PictureFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149347D-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPictureFormat;

    PROCEDURE IsPictureFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149347D-5A91-11CF-8700-00AA0060263B}")
    END IsPictureFormat;

    PROCEDURE ThisFillFormat* (v: CtlT.Any): FillFormat;
        VAR new: FillFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149347E-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFillFormat;

    PROCEDURE IsFillFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149347E-5A91-11CF-8700-00AA0060263B}")
    END IsFillFormat;

    PROCEDURE ThisLineFormat* (v: CtlT.Any): LineFormat;
        VAR new: LineFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149347F-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLineFormat;

    PROCEDURE IsLineFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149347F-5A91-11CF-8700-00AA0060263B}")
    END IsLineFormat;

    PROCEDURE ThisShadowFormat* (v: CtlT.Any): ShadowFormat;
        VAR new: ShadowFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493480-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShadowFormat;

    PROCEDURE IsShadowFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493480-5A91-11CF-8700-00AA0060263B}")
    END IsShadowFormat;

    PROCEDURE ThisConnectorFormat* (v: CtlT.Any): ConnectorFormat;
        VAR new: ConnectorFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493481-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisConnectorFormat;

    PROCEDURE IsConnectorFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493481-5A91-11CF-8700-00AA0060263B}")
    END IsConnectorFormat;

    PROCEDURE ThisTextEffectFormat* (v: CtlT.Any): TextEffectFormat;
        VAR new: TextEffectFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493482-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextEffectFormat;

    PROCEDURE IsTextEffectFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493482-5A91-11CF-8700-00AA0060263B}")
    END IsTextEffectFormat;

    PROCEDURE ThisThreeDFormat* (v: CtlT.Any): ThreeDFormat;
        VAR new: ThreeDFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493483-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisThreeDFormat;

    PROCEDURE IsThreeDFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493483-5A91-11CF-8700-00AA0060263B}")
    END IsThreeDFormat;

    PROCEDURE ThisTextFrame* (v: CtlT.Any): TextFrame;
        VAR new: TextFrame;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493484-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextFrame;

    PROCEDURE IsTextFrame* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493484-5A91-11CF-8700-00AA0060263B}")
    END IsTextFrame;

    PROCEDURE ThisCalloutFormat* (v: CtlT.Any): CalloutFormat;
        VAR new: CalloutFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493485-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCalloutFormat;

    PROCEDURE IsCalloutFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493485-5A91-11CF-8700-00AA0060263B}")
    END IsCalloutFormat;

    PROCEDURE ThisShapeNodes* (v: CtlT.Any): ShapeNodes;
        VAR new: ShapeNodes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493486-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapeNodes;

    PROCEDURE IsShapeNodes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493486-5A91-11CF-8700-00AA0060263B}")
    END IsShapeNodes;

    PROCEDURE ThisShapeNode* (v: CtlT.Any): ShapeNode;
        VAR new: ShapeNode;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493487-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapeNode;

    PROCEDURE IsShapeNode* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493487-5A91-11CF-8700-00AA0060263B}")
    END IsShapeNode;

    PROCEDURE ThisOLEFormat* (v: CtlT.Any): OLEFormat;
        VAR new: OLEFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493488-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisOLEFormat;

    PROCEDURE IsOLEFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493488-5A91-11CF-8700-00AA0060263B}")
    END IsOLEFormat;

    PROCEDURE ThisLinkFormat* (v: CtlT.Any): LinkFormat;
        VAR new: LinkFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493489-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLinkFormat;

    PROCEDURE IsLinkFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493489-5A91-11CF-8700-00AA0060263B}")
    END IsLinkFormat;

    PROCEDURE ThisObjectVerbs* (v: CtlT.Any): ObjectVerbs;
        VAR new: ObjectVerbs;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149348A-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisObjectVerbs;

    PROCEDURE IsObjectVerbs* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149348A-5A91-11CF-8700-00AA0060263B}")
    END IsObjectVerbs;

    PROCEDURE ThisAnimationSettings* (v: CtlT.Any): AnimationSettings;
        VAR new: AnimationSettings;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149348B-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAnimationSettings;

    PROCEDURE IsAnimationSettings* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149348B-5A91-11CF-8700-00AA0060263B}")
    END IsAnimationSettings;

    PROCEDURE ThisActionSettings* (v: CtlT.Any): ActionSettings;
        VAR new: ActionSettings;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149348C-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisActionSettings;

    PROCEDURE IsActionSettings* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149348C-5A91-11CF-8700-00AA0060263B}")
    END IsActionSettings;

    PROCEDURE ThisActionSetting* (v: CtlT.Any): ActionSetting;
        VAR new: ActionSetting;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149348D-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisActionSetting;

    PROCEDURE IsActionSetting* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149348D-5A91-11CF-8700-00AA0060263B}")
    END IsActionSetting;

    PROCEDURE ThisPlaySettings* (v: CtlT.Any): PlaySettings;
        VAR new: PlaySettings;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149348E-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPlaySettings;

    PROCEDURE IsPlaySettings* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149348E-5A91-11CF-8700-00AA0060263B}")
    END IsPlaySettings;

    PROCEDURE ThisTextRange* (v: CtlT.Any): TextRange;
        VAR new: TextRange;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149348F-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextRange;

    PROCEDURE IsTextRange* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149348F-5A91-11CF-8700-00AA0060263B}")
    END IsTextRange;

    PROCEDURE ThisRuler* (v: CtlT.Any): Ruler;
        VAR new: Ruler;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493490-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRuler;

    PROCEDURE IsRuler* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493490-5A91-11CF-8700-00AA0060263B}")
    END IsRuler;

    PROCEDURE ThisRulerLevels* (v: CtlT.Any): RulerLevels;
        VAR new: RulerLevels;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493491-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRulerLevels;

    PROCEDURE IsRulerLevels* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493491-5A91-11CF-8700-00AA0060263B}")
    END IsRulerLevels;

    PROCEDURE ThisRulerLevel* (v: CtlT.Any): RulerLevel;
        VAR new: RulerLevel;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493492-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRulerLevel;

    PROCEDURE IsRulerLevel* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493492-5A91-11CF-8700-00AA0060263B}")
    END IsRulerLevel;

    PROCEDURE ThisTabStops* (v: CtlT.Any): TabStops;
        VAR new: TabStops;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493493-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTabStops;

    PROCEDURE IsTabStops* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493493-5A91-11CF-8700-00AA0060263B}")
    END IsTabStops;

    PROCEDURE ThisTabStop* (v: CtlT.Any): TabStop;
        VAR new: TabStop;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493494-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTabStop;

    PROCEDURE IsTabStop* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493494-5A91-11CF-8700-00AA0060263B}")
    END IsTabStop;

    PROCEDURE ThisFont* (v: CtlT.Any): Font;
        VAR new: Font;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493495-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFont;

    PROCEDURE IsFont* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493495-5A91-11CF-8700-00AA0060263B}")
    END IsFont;

    PROCEDURE ThisParagraphFormat* (v: CtlT.Any): ParagraphFormat;
        VAR new: ParagraphFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493496-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisParagraphFormat;

    PROCEDURE IsParagraphFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493496-5A91-11CF-8700-00AA0060263B}")
    END IsParagraphFormat;

    PROCEDURE ThisBulletFormat* (v: CtlT.Any): BulletFormat;
        VAR new: BulletFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493497-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBulletFormat;

    PROCEDURE IsBulletFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493497-5A91-11CF-8700-00AA0060263B}")
    END IsBulletFormat;

    PROCEDURE ThisTextStyles* (v: CtlT.Any): TextStyles;
        VAR new: TextStyles;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493498-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextStyles;

    PROCEDURE IsTextStyles* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493498-5A91-11CF-8700-00AA0060263B}")
    END IsTextStyles;

    PROCEDURE ThisTextStyle* (v: CtlT.Any): TextStyle;
        VAR new: TextStyle;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{91493499-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextStyle;

    PROCEDURE IsTextStyle* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{91493499-5A91-11CF-8700-00AA0060263B}")
    END IsTextStyle;

    PROCEDURE ThisTextStyleLevels* (v: CtlT.Any): TextStyleLevels;
        VAR new: TextStyleLevels;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149349A-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextStyleLevels;

    PROCEDURE IsTextStyleLevels* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149349A-5A91-11CF-8700-00AA0060263B}")
    END IsTextStyleLevels;

    PROCEDURE ThisTextStyleLevel* (v: CtlT.Any): TextStyleLevel;
        VAR new: TextStyleLevel;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149349B-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextStyleLevel;

    PROCEDURE IsTextStyleLevel* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149349B-5A91-11CF-8700-00AA0060263B}")
    END IsTextStyleLevel;

    PROCEDURE ThisHeaderFooter* (v: CtlT.Any): HeaderFooter;
        VAR new: HeaderFooter;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149349C-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHeaderFooter;

    PROCEDURE IsHeaderFooter* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149349C-5A91-11CF-8700-00AA0060263B}")
    END IsHeaderFooter;

    PROCEDURE This_Presentation* (v: CtlT.Any): _Presentation;
        VAR new: _Presentation;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149349D-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Presentation;

    PROCEDURE Is_Presentation* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149349D-5A91-11CF-8700-00AA0060263B}")
    END Is_Presentation;

    PROCEDURE ThisPPDialogs* (v: CtlT.Any): PPDialogs;
        VAR new: PPDialogs;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149349E-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPDialogs;

    PROCEDURE IsPPDialogs* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149349E-5A91-11CF-8700-00AA0060263B}")
    END IsPPDialogs;

    PROCEDURE ThisPPAlert* (v: CtlT.Any): PPAlert;
        VAR new: PPAlert;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{9149349F-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPAlert;

    PROCEDURE IsPPAlert* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{9149349F-5A91-11CF-8700-00AA0060263B}")
    END IsPPAlert;

    PROCEDURE ThisPPDialog* (v: CtlT.Any): PPDialog;
        VAR new: PPDialog;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A0-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPDialog;

    PROCEDURE IsPPDialog* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A0-5A91-11CF-8700-00AA0060263B}")
    END IsPPDialog;

    PROCEDURE ThisPPTabSheet* (v: CtlT.Any): PPTabSheet;
        VAR new: PPTabSheet;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A1-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPTabSheet;

    PROCEDURE IsPPTabSheet* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A1-5A91-11CF-8700-00AA0060263B}")
    END IsPPTabSheet;

    PROCEDURE ThisPPControls* (v: CtlT.Any): PPControls;
        VAR new: PPControls;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A2-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPControls;

    PROCEDURE IsPPControls* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A2-5A91-11CF-8700-00AA0060263B}")
    END IsPPControls;

    PROCEDURE ThisPPTabSheets* (v: CtlT.Any): PPTabSheets;
        VAR new: PPTabSheets;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A3-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPTabSheets;

    PROCEDURE IsPPTabSheets* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A3-5A91-11CF-8700-00AA0060263B}")
    END IsPPTabSheets;

    PROCEDURE ThisPPControl* (v: CtlT.Any): PPControl;
        VAR new: PPControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A4-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPControl;

    PROCEDURE IsPPControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A4-5A91-11CF-8700-00AA0060263B}")
    END IsPPControl;

    PROCEDURE ThisPPPushButton* (v: CtlT.Any): PPPushButton;
        VAR new: PPPushButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A5-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPPushButton;

    PROCEDURE IsPPPushButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A5-5A91-11CF-8700-00AA0060263B}")
    END IsPPPushButton;

    PROCEDURE ThisPPToggleButton* (v: CtlT.Any): PPToggleButton;
        VAR new: PPToggleButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A6-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPToggleButton;

    PROCEDURE IsPPToggleButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A6-5A91-11CF-8700-00AA0060263B}")
    END IsPPToggleButton;

    PROCEDURE ThisPPBitmapButton* (v: CtlT.Any): PPBitmapButton;
        VAR new: PPBitmapButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A7-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPBitmapButton;

    PROCEDURE IsPPBitmapButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A7-5A91-11CF-8700-00AA0060263B}")
    END IsPPBitmapButton;

    PROCEDURE ThisPPListBox* (v: CtlT.Any): PPListBox;
        VAR new: PPListBox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A8-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPListBox;

    PROCEDURE IsPPListBox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A8-5A91-11CF-8700-00AA0060263B}")
    END IsPPListBox;

    PROCEDURE ThisPPStrings* (v: CtlT.Any): PPStrings;
        VAR new: PPStrings;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934A9-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPStrings;

    PROCEDURE IsPPStrings* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934A9-5A91-11CF-8700-00AA0060263B}")
    END IsPPStrings;

    PROCEDURE ThisPPCheckBox* (v: CtlT.Any): PPCheckBox;
        VAR new: PPCheckBox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934AA-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPCheckBox;

    PROCEDURE IsPPCheckBox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934AA-5A91-11CF-8700-00AA0060263B}")
    END IsPPCheckBox;

    PROCEDURE ThisPPRadioCluster* (v: CtlT.Any): PPRadioCluster;
        VAR new: PPRadioCluster;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934AB-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPRadioCluster;

    PROCEDURE IsPPRadioCluster* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934AB-5A91-11CF-8700-00AA0060263B}")
    END IsPPRadioCluster;

    PROCEDURE ThisPPStaticText* (v: CtlT.Any): PPStaticText;
        VAR new: PPStaticText;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934AC-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPStaticText;

    PROCEDURE IsPPStaticText* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934AC-5A91-11CF-8700-00AA0060263B}")
    END IsPPStaticText;

    PROCEDURE ThisPPEditText* (v: CtlT.Any): PPEditText;
        VAR new: PPEditText;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934AD-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPEditText;

    PROCEDURE IsPPEditText* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934AD-5A91-11CF-8700-00AA0060263B}")
    END IsPPEditText;

    PROCEDURE ThisPPIcon* (v: CtlT.Any): PPIcon;
        VAR new: PPIcon;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934AE-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPIcon;

    PROCEDURE IsPPIcon* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934AE-5A91-11CF-8700-00AA0060263B}")
    END IsPPIcon;

    PROCEDURE ThisPPBitmap* (v: CtlT.Any): PPBitmap;
        VAR new: PPBitmap;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934AF-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPBitmap;

    PROCEDURE IsPPBitmap* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934AF-5A91-11CF-8700-00AA0060263B}")
    END IsPPBitmap;

    PROCEDURE ThisPPSpinner* (v: CtlT.Any): PPSpinner;
        VAR new: PPSpinner;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B0-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPSpinner;

    PROCEDURE IsPPSpinner* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B0-5A91-11CF-8700-00AA0060263B}")
    END IsPPSpinner;

    PROCEDURE ThisPPScrollBar* (v: CtlT.Any): PPScrollBar;
        VAR new: PPScrollBar;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B1-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPScrollBar;

    PROCEDURE IsPPScrollBar* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B1-5A91-11CF-8700-00AA0060263B}")
    END IsPPScrollBar;

    PROCEDURE ThisPPGroupBox* (v: CtlT.Any): PPGroupBox;
        VAR new: PPGroupBox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B2-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPGroupBox;

    PROCEDURE IsPPGroupBox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B2-5A91-11CF-8700-00AA0060263B}")
    END IsPPGroupBox;

    PROCEDURE ThisPPFrame* (v: CtlT.Any): PPFrame;
        VAR new: PPFrame;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B3-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPFrame;

    PROCEDURE IsPPFrame* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B3-5A91-11CF-8700-00AA0060263B}")
    END IsPPFrame;

    PROCEDURE ThisPPTabControl* (v: CtlT.Any): PPTabControl;
        VAR new: PPTabControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B4-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPTabControl;

    PROCEDURE IsPPTabControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B4-5A91-11CF-8700-00AA0060263B}")
    END IsPPTabControl;

    PROCEDURE ThisPPDropDown* (v: CtlT.Any): PPDropDown;
        VAR new: PPDropDown;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B5-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPDropDown;

    PROCEDURE IsPPDropDown* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B5-5A91-11CF-8700-00AA0060263B}")
    END IsPPDropDown;

    PROCEDURE ThisPPDropDownEdit* (v: CtlT.Any): PPDropDownEdit;
        VAR new: PPDropDownEdit;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B6-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPDropDownEdit;

    PROCEDURE IsPPDropDownEdit* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B6-5A91-11CF-8700-00AA0060263B}")
    END IsPPDropDownEdit;

    PROCEDURE ThisPPSlideMiniature* (v: CtlT.Any): PPSlideMiniature;
        VAR new: PPSlideMiniature;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B7-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPSlideMiniature;

    PROCEDURE IsPPSlideMiniature* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B7-5A91-11CF-8700-00AA0060263B}")
    END IsPPSlideMiniature;

    PROCEDURE ThisPPRadioButton* (v: CtlT.Any): PPRadioButton;
        VAR new: PPRadioButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B8-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPPRadioButton;

    PROCEDURE IsPPRadioButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B8-5A91-11CF-8700-00AA0060263B}")
    END IsPPRadioButton;

    PROCEDURE ThisTags* (v: CtlT.Any): Tags;
        VAR new: Tags;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934B9-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTags;

    PROCEDURE IsTags* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934B9-5A91-11CF-8700-00AA0060263B}")
    END IsTags;

    PROCEDURE ThisFileDialogFileList* (v: CtlT.Any): FileDialogFileList;
        VAR new: FileDialogFileList;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934BA-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFileDialogFileList;

    PROCEDURE IsFileDialogFileList* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934BA-5A91-11CF-8700-00AA0060263B}")
    END IsFileDialogFileList;

    PROCEDURE ThisFileDialogExtension* (v: CtlT.Any): FileDialogExtension;
        VAR new: FileDialogExtension;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934BB-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFileDialogExtension;

    PROCEDURE IsFileDialogExtension* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934BB-5A91-11CF-8700-00AA0060263B}")
    END IsFileDialogExtension;

    PROCEDURE ThisFileDialogExtensionList* (v: CtlT.Any): FileDialogExtensionList;
        VAR new: FileDialogExtensionList;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934BC-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFileDialogExtensionList;

    PROCEDURE IsFileDialogExtensionList* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934BC-5A91-11CF-8700-00AA0060263B}")
    END IsFileDialogExtensionList;

    PROCEDURE ThisFileDialog* (v: CtlT.Any): FileDialog;
        VAR new: FileDialog;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934BD-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFileDialog;

    PROCEDURE IsFileDialog* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934BD-5A91-11CF-8700-00AA0060263B}")
    END IsFileDialog;

    PROCEDURE ThisOCXExtender* (v: CtlT.Any): OCXExtender;
        VAR new: OCXExtender;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C0-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisOCXExtender;

    PROCEDURE IsOCXExtender* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C0-5A91-11CF-8700-00AA0060263B}")
    END IsOCXExtender;

    PROCEDURE ThisTable* (v: CtlT.Any): Table;
        VAR new: Table;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C3-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTable;

    PROCEDURE IsTable* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C3-5A91-11CF-8700-00AA0060263B}")
    END IsTable;

    PROCEDURE ThisColumns* (v: CtlT.Any): Columns;
        VAR new: Columns;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C4-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisColumns;

    PROCEDURE IsColumns* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C4-5A91-11CF-8700-00AA0060263B}")
    END IsColumns;

    PROCEDURE ThisColumn* (v: CtlT.Any): Column;
        VAR new: Column;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C5-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisColumn;

    PROCEDURE IsColumn* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C5-5A91-11CF-8700-00AA0060263B}")
    END IsColumn;

    PROCEDURE ThisRows* (v: CtlT.Any): Rows;
        VAR new: Rows;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C6-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRows;

    PROCEDURE IsRows* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C6-5A91-11CF-8700-00AA0060263B}")
    END IsRows;

    PROCEDURE ThisRow* (v: CtlT.Any): Row;
        VAR new: Row;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C7-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRow;

    PROCEDURE IsRow* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C7-5A91-11CF-8700-00AA0060263B}")
    END IsRow;

    PROCEDURE ThisCellRange* (v: CtlT.Any): CellRange;
        VAR new: CellRange;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C8-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCellRange;

    PROCEDURE IsCellRange* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C8-5A91-11CF-8700-00AA0060263B}")
    END IsCellRange;

    PROCEDURE ThisCell* (v: CtlT.Any): Cell;
        VAR new: Cell;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934C9-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCell;

    PROCEDURE IsCell* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934C9-5A91-11CF-8700-00AA0060263B}")
    END IsCell;

    PROCEDURE ThisBorders* (v: CtlT.Any): Borders;
        VAR new: Borders;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934CA-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBorders;

    PROCEDURE IsBorders* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934CA-5A91-11CF-8700-00AA0060263B}")
    END IsBorders;

    PROCEDURE ThisPanes* (v: CtlT.Any): Panes;
        VAR new: Panes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934CB-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPanes;

    PROCEDURE IsPanes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934CB-5A91-11CF-8700-00AA0060263B}")
    END IsPanes;

    PROCEDURE ThisPane* (v: CtlT.Any): Pane;
        VAR new: Pane;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934CC-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPane;

    PROCEDURE IsPane* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934CC-5A91-11CF-8700-00AA0060263B}")
    END IsPane;

    PROCEDURE ThisDefaultWebOptions* (v: CtlT.Any): DefaultWebOptions;
        VAR new: DefaultWebOptions;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934CD-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDefaultWebOptions;

    PROCEDURE IsDefaultWebOptions* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934CD-5A91-11CF-8700-00AA0060263B}")
    END IsDefaultWebOptions;

    PROCEDURE ThisWebOptions* (v: CtlT.Any): WebOptions;
        VAR new: WebOptions;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934CE-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisWebOptions;

    PROCEDURE IsWebOptions* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934CE-5A91-11CF-8700-00AA0060263B}")
    END IsWebOptions;

    PROCEDURE ThisPublishObjects* (v: CtlT.Any): PublishObjects;
        VAR new: PublishObjects;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934CF-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPublishObjects;

    PROCEDURE IsPublishObjects* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934CF-5A91-11CF-8700-00AA0060263B}")
    END IsPublishObjects;

    PROCEDURE ThisPublishObject* (v: CtlT.Any): PublishObject;
        VAR new: PublishObject;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934D0-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPublishObject;

    PROCEDURE IsPublishObject* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934D0-5A91-11CF-8700-00AA0060263B}")
    END IsPublishObject;

    PROCEDURE ThisMarker* (v: CtlT.Any): Marker;
        VAR new: Marker;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{914934D1-5A91-11CF-8700-00AA0060263B}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisMarker;

    PROCEDURE IsMarker* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{914934D1-5A91-11CF-8700-00AA0060263B}")
    END IsMarker;



    (* ---------- Collection, hidden, dual ---------- *)

    PROCEDURE (this: Collection) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Collection) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;


    (* ---------- _Application, dual, nonextensible ---------- *)

    PROCEDURE (this: _Application) Presentations* (): Presentations, NEW;
    BEGIN
        RETURN ThisPresentations(CtlC.GetAny(this, 2001))
    END Presentations;

    PROCEDURE (this: _Application) Windows* (): DocumentWindows, NEW;
    BEGIN
        RETURN ThisDocumentWindows(CtlC.GetAny(this, 2002))
    END Windows;

    PROCEDURE (this: _Application) Dialogs* (): PPDialogs, NEW;
    BEGIN
        RETURN ThisPPDialogs(CtlC.GetAny(this, 2003))
    END Dialogs;

    PROCEDURE (this: _Application) ActiveWindow* (): DocumentWindow, NEW;
    BEGIN
        RETURN ThisDocumentWindow(CtlC.GetAny(this, 2004))
    END ActiveWindow;

    PROCEDURE (this: _Application) ActivePresentation* (): Presentation, NEW;
    BEGIN
        RETURN This_Presentation(CtlC.GetAny(this, 2005))
    END ActivePresentation;

    PROCEDURE (this: _Application) SlideShowWindows* (): SlideShowWindows, NEW;
    BEGIN
        RETURN ThisSlideShowWindows(CtlC.GetAny(this, 2006))
    END SlideShowWindows;

    PROCEDURE (this: _Application) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.This_CommandBars(CtlC.GetAny(this, 2007))
    END CommandBars;

    PROCEDURE (this: _Application) Path* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2008)
    END Path;

    PROCEDURE (this: _Application) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: _Application) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2009)
    END Caption;

    PROCEDURE (this: _Application) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2009, p1)
    END PUTCaption;

    PROCEDURE (this: _Application) Assistant* (): CtlOffice.Assistant, NEW;
    BEGIN
        RETURN CtlOffice.ThisAssistant(CtlC.GetAny(this, 2010))
    END Assistant;

    PROCEDURE (this: _Application) FileSearch* (): CtlOffice.FileSearch, NEW;
    BEGIN
        RETURN CtlOffice.ThisFileSearch(CtlC.GetAny(this, 2011))
    END FileSearch;

    PROCEDURE (this: _Application) FileFind* (): CtlOffice.IFind, NEW;
    BEGIN
        RETURN CtlOffice.ThisIFind(CtlC.GetAny(this, 2012))
    END FileFind;

    PROCEDURE (this: _Application) Build* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2013)
    END Build;

    PROCEDURE (this: _Application) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2014)
    END Version;

    PROCEDURE (this: _Application) OperatingSystem* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2015)
    END OperatingSystem;

    PROCEDURE (this: _Application) ActivePrinter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2016)
    END ActivePrinter;

    PROCEDURE (this: _Application) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2017)
    END Creator;

    PROCEDURE (this: _Application) AddIns* (): AddIns, NEW;
    BEGIN
        RETURN ThisAddIns(CtlC.GetAny(this, 2018))
    END AddIns;

    PROCEDURE (this: _Application) VBE* (): CtlVBIDE.VBE, NEW;
    BEGIN
        RETURN CtlVBIDE.ThisVBE(CtlC.GetAny(this, 2019))
    END VBE;

    PROCEDURE (this: _Application) Help* (HelpFile: ARRAY OF CHAR; ContextID: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(HelpFile, arg[1]);
        CtlC.IntVar(ContextID, arg[0]);
        CtlC.CallParMethod(this, 2020, arg, NIL);
    END Help;

    PROCEDURE (this: _Application) Quit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2021, NIL);
    END Quit;

    PROCEDURE (this: _Application) Run* (MacroName: ARRAY OF CHAR; (* optional *) safeArrayOfParams: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(MacroName, arg[1]);
        CtlC.AnyVar(safeArrayOfParams, arg[0]);
        CtlC.CallParMethod(this, 2022, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Run;

    PROCEDURE (this: _Application) FileDialog* (Type: PpFileDialogType): FileDialog, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[0]);
        CtlC.CallParMethod(this, 2023, arg, ret);
        RETURN ThisFileDialog(CtlC.VarAny(ret))
    END FileDialog;

    PROCEDURE (this: _Application) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2025)
    END Left;

    PROCEDURE (this: _Application) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2025, p1)
    END PUTLeft;

    PROCEDURE (this: _Application) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2026)
    END Top;

    PROCEDURE (this: _Application) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2026, p1)
    END PUTTop;

    PROCEDURE (this: _Application) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2027)
    END Width;

    PROCEDURE (this: _Application) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2027, p1)
    END PUTWidth;

    PROCEDURE (this: _Application) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2028)
    END Height;

    PROCEDURE (this: _Application) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2028, p1)
    END PUTHeight;

    PROCEDURE (this: _Application) WindowState* (): PpWindowState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2029)
    END WindowState;

    PROCEDURE (this: _Application) PUTWindowState* (p1: PpWindowState), NEW;
    BEGIN
        CtlC.PutInt(this, 2029, p1)
    END PUTWindowState;

    PROCEDURE (this: _Application) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2030)
    END Visible;

    PROCEDURE (this: _Application) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2030, p1)
    END PUTVisible;

    PROCEDURE (this: _Application) Active* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2032)
    END Active;

    PROCEDURE (this: _Application) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2033, NIL);
    END Activate;

    PROCEDURE (this: _Application) AnswerWizard* (): CtlOffice.AnswerWizard, NEW;
    BEGIN
        RETURN CtlOffice.ThisAnswerWizard(CtlC.GetAny(this, 2034))
    END AnswerWizard;

    PROCEDURE (this: _Application) COMAddIns* (): CtlOffice.COMAddIns, NEW;
    BEGIN
        RETURN CtlOffice.ThisCOMAddIns(CtlC.GetAny(this, 2035))
    END COMAddIns;

    PROCEDURE (this: _Application) ProductCode* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2036)
    END ProductCode;

    PROCEDURE (this: _Application) DefaultWebOptions* (): DefaultWebOptions, NEW;
    BEGIN
        RETURN ThisDefaultWebOptions(CtlC.GetAny(this, 2037))
    END DefaultWebOptions;

    PROCEDURE (this: _Application) LanguageSettings* (): CtlOffice.LanguageSettings, NEW;
    BEGIN
        RETURN CtlOffice.ThisLanguageSettings(CtlC.GetAny(this, 2038))
    END LanguageSettings;

    PROCEDURE (this: _Application) MsoDebugOptions* (): CtlOffice.MsoDebugOptions, NEW;
    BEGIN
        RETURN CtlOffice.ThisMsoDebugOptions(CtlC.GetAny(this, 2039))
    END MsoDebugOptions;

    PROCEDURE (this: _Application) ShowWindowsInTaskbar* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2040)
    END ShowWindowsInTaskbar;

    PROCEDURE (this: _Application) PUTShowWindowsInTaskbar* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2040, p1)
    END PUTShowWindowsInTaskbar;

    PROCEDURE (this: _Application) Marker* (): Marker, NEW;
    BEGIN
        RETURN ThisMarker(CtlC.GetAny(this, 2041))
    END Marker;

    PROCEDURE (this: _Application) FeatureInstall* (): CtlOffice.MsoFeatureInstall, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2042)
    END FeatureInstall;

    PROCEDURE (this: _Application) PUTFeatureInstall* (p1: CtlOffice.MsoFeatureInstall), NEW;
    BEGIN
        CtlC.PutInt(this, 2042, p1)
    END PUTFeatureInstall;

    PROCEDURE (this: _Application) GetOptionFlag* (Option: INTEGER; Persist: BOOLEAN): BOOLEAN, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Option, arg[1]);
        CtlC.BoolVar(Persist, arg[0]);
        CtlC.CallParMethod(this, 2043, arg, ret);
        RETURN CtlC.VarBool(ret)
    END GetOptionFlag;

    PROCEDURE (this: _Application) SetOptionFlag* (Option: INTEGER; State: BOOLEAN; Persist: BOOLEAN), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Option, arg[2]);
        CtlC.BoolVar(State, arg[1]);
        CtlC.BoolVar(Persist, arg[0]);
        CtlC.CallParMethod(this, 2044, arg, NIL);
    END SetOptionFlag;


    (* ---------- _Global, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Global) ActivePresentation* (): Presentation, NEW;
    BEGIN
        RETURN This_Presentation(CtlC.GetAny(this, 2001))
    END ActivePresentation;

    PROCEDURE (this: _Global) ActiveWindow* (): DocumentWindow, NEW;
    BEGIN
        RETURN ThisDocumentWindow(CtlC.GetAny(this, 2002))
    END ActiveWindow;

    PROCEDURE (this: _Global) AddIns* (): AddIns, NEW;
    BEGIN
        RETURN ThisAddIns(CtlC.GetAny(this, 2003))
    END AddIns;

    PROCEDURE (this: _Global) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2004))
    END Application;

    PROCEDURE (this: _Global) Assistant* (): CtlOffice.Assistant, NEW;
    BEGIN
        RETURN CtlOffice.ThisAssistant(CtlC.GetAny(this, 2005))
    END Assistant;

    PROCEDURE (this: _Global) Dialogs* (): PPDialogs, NEW;
    BEGIN
        RETURN ThisPPDialogs(CtlC.GetAny(this, 2006))
    END Dialogs;

    PROCEDURE (this: _Global) Presentations* (): Presentations, NEW;
    BEGIN
        RETURN ThisPresentations(CtlC.GetAny(this, 2007))
    END Presentations;

    PROCEDURE (this: _Global) SlideShowWindows* (): SlideShowWindows, NEW;
    BEGIN
        RETURN ThisSlideShowWindows(CtlC.GetAny(this, 2008))
    END SlideShowWindows;

    PROCEDURE (this: _Global) Windows* (): DocumentWindows, NEW;
    BEGIN
        RETURN ThisDocumentWindows(CtlC.GetAny(this, 2009))
    END Windows;

    PROCEDURE (this: _Global) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.This_CommandBars(CtlC.GetAny(this, 2010))
    END CommandBars;

    PROCEDURE (this: _Global) AnswerWizard* (): CtlOffice.AnswerWizard, NEW;
    BEGIN
        RETURN CtlOffice.ThisAnswerWizard(CtlC.GetAny(this, 2011))
    END AnswerWizard;


    (* ---------- ColorFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: ColorFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: ColorFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: ColorFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ColorFormat) RGB* (): CtlOffice.MsoRGBType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END RGB;

    PROCEDURE (this: ColorFormat) PUTRGB* (p1: CtlOffice.MsoRGBType), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTRGB;

    PROCEDURE (this: ColorFormat) Type* (): CtlOffice.MsoColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Type;

    PROCEDURE (this: ColorFormat) SchemeColor* (): PpColorSchemeIndex, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END SchemeColor;

    PROCEDURE (this: ColorFormat) PUTSchemeColor* (p1: PpColorSchemeIndex), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTSchemeColor;


    (* ---------- SlideShowWindow, dual, nonextensible ---------- *)

    PROCEDURE (this: SlideShowWindow) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: SlideShowWindow) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: SlideShowWindow) View* (): SlideShowView, NEW;
    BEGIN
        RETURN ThisSlideShowView(CtlC.GetAny(this, 2003))
    END View;

    PROCEDURE (this: SlideShowWindow) Presentation* (): Presentation, NEW;
    BEGIN
        RETURN This_Presentation(CtlC.GetAny(this, 2004))
    END Presentation;

    PROCEDURE (this: SlideShowWindow) IsFullScreen* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END IsFullScreen;

    PROCEDURE (this: SlideShowWindow) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2006)
    END Left;

    PROCEDURE (this: SlideShowWindow) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2006, p1)
    END PUTLeft;

    PROCEDURE (this: SlideShowWindow) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2007)
    END Top;

    PROCEDURE (this: SlideShowWindow) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2007, p1)
    END PUTTop;

    PROCEDURE (this: SlideShowWindow) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2008)
    END Width;

    PROCEDURE (this: SlideShowWindow) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2008, p1)
    END PUTWidth;

    PROCEDURE (this: SlideShowWindow) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2009)
    END Height;

    PROCEDURE (this: SlideShowWindow) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2009, p1)
    END PUTHeight;

    PROCEDURE (this: SlideShowWindow) Active* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END Active;

    PROCEDURE (this: SlideShowWindow) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2012, NIL);
    END Activate;


    (* ---------- Selection, dual, nonextensible ---------- *)

    PROCEDURE (this: Selection) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Selection) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Selection) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2003, NIL);
    END Cut;

    PROCEDURE (this: Selection) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2004, NIL);
    END Copy;

    PROCEDURE (this: Selection) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2005, NIL);
    END Delete;

    PROCEDURE (this: Selection) Unselect* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2006, NIL);
    END Unselect;

    PROCEDURE (this: Selection) Type* (): PpSelectionType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END Type;

    PROCEDURE (this: Selection) SlideRange* (): SlideRange, NEW;
    BEGIN
        RETURN ThisSlideRange(CtlC.GetAny(this, 2008))
    END SlideRange;

    PROCEDURE (this: Selection) ShapeRange* (): ShapeRange, NEW;
    BEGIN
        RETURN ThisShapeRange(CtlC.GetAny(this, 2009))
    END ShapeRange;

    PROCEDURE (this: Selection) TextRange* (): TextRange, NEW;
    BEGIN
        RETURN ThisTextRange(CtlC.GetAny(this, 2010))
    END TextRange;


    (* ---------- DocumentWindows, dual, nonextensible ---------- *)

    PROCEDURE (this: DocumentWindows) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: DocumentWindows) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: DocumentWindows) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: DocumentWindows) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: DocumentWindows) Item* (index: INTEGER): DocumentWindow, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisDocumentWindow(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: DocumentWindows) Arrange* (arrangeStyle: PpArrangeStyle), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(arrangeStyle, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, NIL);
    END Arrange;


    (* ---------- SlideShowWindows, dual, nonextensible ---------- *)

    PROCEDURE (this: SlideShowWindows) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: SlideShowWindows) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: SlideShowWindows) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: SlideShowWindows) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: SlideShowWindows) Item* (index: INTEGER): SlideShowWindow, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisSlideShowWindow(CtlC.VarAny(ret))
    END Item;


    (* ---------- DocumentWindow, dual, nonextensible ---------- *)

    PROCEDURE (this: DocumentWindow) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: DocumentWindow) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: DocumentWindow) Selection* (): Selection, NEW;
    BEGIN
        RETURN ThisSelection(CtlC.GetAny(this, 2003))
    END Selection;

    PROCEDURE (this: DocumentWindow) View* (): View, NEW;
    BEGIN
        RETURN ThisView(CtlC.GetAny(this, 2004))
    END View;

    PROCEDURE (this: DocumentWindow) Presentation* (): Presentation, NEW;
    BEGIN
        RETURN This_Presentation(CtlC.GetAny(this, 2005))
    END Presentation;

    PROCEDURE (this: DocumentWindow) ViewType* (): PpViewType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END ViewType;

    PROCEDURE (this: DocumentWindow) PUTViewType* (p1: PpViewType), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTViewType;

    PROCEDURE (this: DocumentWindow) BlackAndWhite* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END BlackAndWhite;

    PROCEDURE (this: DocumentWindow) PUTBlackAndWhite* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTBlackAndWhite;

    PROCEDURE (this: DocumentWindow) Active* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END Active;

    PROCEDURE (this: DocumentWindow) WindowState* (): PpWindowState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END WindowState;

    PROCEDURE (this: DocumentWindow) PUTWindowState* (p1: PpWindowState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTWindowState;

    PROCEDURE (this: DocumentWindow) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Caption;

    PROCEDURE (this: DocumentWindow) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2010)
    END Left;

    PROCEDURE (this: DocumentWindow) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2010, p1)
    END PUTLeft;

    PROCEDURE (this: DocumentWindow) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2011)
    END Top;

    PROCEDURE (this: DocumentWindow) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2011, p1)
    END PUTTop;

    PROCEDURE (this: DocumentWindow) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2012)
    END Width;

    PROCEDURE (this: DocumentWindow) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2012, p1)
    END PUTWidth;

    PROCEDURE (this: DocumentWindow) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2013)
    END Height;

    PROCEDURE (this: DocumentWindow) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2013, p1)
    END PUTHeight;

    PROCEDURE (this: DocumentWindow) FitToPage* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2014, NIL);
    END FitToPage;

    PROCEDURE (this: DocumentWindow) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2015, NIL);
    END Activate;

    PROCEDURE (this: DocumentWindow) LargeScroll* (Down: INTEGER; Up: INTEGER; ToRight: INTEGER; ToLeft: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Down, arg[3]);
        CtlC.IntVar(Up, arg[2]);
        CtlC.IntVar(ToRight, arg[1]);
        CtlC.IntVar(ToLeft, arg[0]);
        CtlC.CallParMethod(this, 2016, arg, NIL);
    END LargeScroll;

    PROCEDURE (this: DocumentWindow) SmallScroll* (Down: INTEGER; Up: INTEGER; ToRight: INTEGER; ToLeft: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Down, arg[3]);
        CtlC.IntVar(Up, arg[2]);
        CtlC.IntVar(ToRight, arg[1]);
        CtlC.IntVar(ToLeft, arg[0]);
        CtlC.CallParMethod(this, 2017, arg, NIL);
    END SmallScroll;

    PROCEDURE (this: DocumentWindow) NewWindow* (): DocumentWindow, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2018, ret);
        RETURN ThisDocumentWindow(CtlC.VarAny(ret))
    END NewWindow;

    PROCEDURE (this: DocumentWindow) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2019, NIL);
    END Close;

    PROCEDURE (this: DocumentWindow) ActivePane* (): Pane, NEW;
    BEGIN
        RETURN ThisPane(CtlC.GetAny(this, 2021))
    END ActivePane;

    PROCEDURE (this: DocumentWindow) Panes* (): Panes, NEW;
    BEGIN
        RETURN ThisPanes(CtlC.GetAny(this, 2022))
    END Panes;

    PROCEDURE (this: DocumentWindow) SplitVertical* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2023)
    END SplitVertical;

    PROCEDURE (this: DocumentWindow) PUTSplitVertical* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2023, p1)
    END PUTSplitVertical;

    PROCEDURE (this: DocumentWindow) SplitHorizontal* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2024)
    END SplitHorizontal;

    PROCEDURE (this: DocumentWindow) PUTSplitHorizontal* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2024, p1)
    END PUTSplitHorizontal;

    PROCEDURE (this: DocumentWindow) RangeFromPoint* (X: INTEGER; Y: INTEGER): CtlT.Object, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(X, arg[1]);
        CtlC.IntVar(Y, arg[0]);
        CtlC.CallParMethod(this, 2025, arg, ret);
        RETURN CtlC.VarObj(ret)
    END RangeFromPoint;

    PROCEDURE (this: DocumentWindow) PointsToScreenPixelsX* (Points: SHORTREAL): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Points, arg[0]);
        CtlC.CallParMethod(this, 2026, arg, ret);
        RETURN CtlC.VarInt(ret)
    END PointsToScreenPixelsX;

    PROCEDURE (this: DocumentWindow) PointsToScreenPixelsY* (Points: SHORTREAL): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Points, arg[0]);
        CtlC.CallParMethod(this, 2027, arg, ret);
        RETURN CtlC.VarInt(ret)
    END PointsToScreenPixelsY;

    PROCEDURE (this: DocumentWindow) ScrollIntoView* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL; Start: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[4]);
        CtlC.SRealVar(Top, arg[3]);
        CtlC.SRealVar(Width, arg[2]);
        CtlC.SRealVar(Height, arg[1]);
        CtlC.IntVar(Start, arg[0]);
        CtlC.CallParMethod(this, 2028, arg, NIL);
    END ScrollIntoView;


    (* ---------- View, dual, nonextensible ---------- *)

    PROCEDURE (this: View) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: View) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: View) Type* (): PpViewType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Type;

    PROCEDURE (this: View) Zoom* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END Zoom;

    PROCEDURE (this: View) PUTZoom* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTZoom;

    PROCEDURE (this: View) Paste* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2005, NIL);
    END Paste;

    PROCEDURE (this: View) Slide* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2006)
    END Slide;

    PROCEDURE (this: View) PUTSlide* (p1: CtlT.Object), NEW;
    BEGIN
        CtlC.PutObj(this, 2006, p1)
    END PUTSlide;

    PROCEDURE (this: View) GotoSlide* (index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 2007, arg, NIL);
    END GotoSlide;

    PROCEDURE (this: View) DisplaySlideMiniature* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END DisplaySlideMiniature;

    PROCEDURE (this: View) PUTDisplaySlideMiniature* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTDisplaySlideMiniature;

    PROCEDURE (this: View) ZoomToFit* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END ZoomToFit;

    PROCEDURE (this: View) PUTZoomToFit* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTZoomToFit;


    (* ---------- SlideShowView, dual, nonextensible ---------- *)

    PROCEDURE (this: SlideShowView) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: SlideShowView) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: SlideShowView) Zoom* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Zoom;

    PROCEDURE (this: SlideShowView) Slide* (): Slide, NEW;
    BEGIN
        RETURN This_Slide(CtlC.GetAny(this, 2004))
    END Slide;

    PROCEDURE (this: SlideShowView) PointerType* (): PpSlideShowPointerType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END PointerType;

    PROCEDURE (this: SlideShowView) PUTPointerType* (p1: PpSlideShowPointerType), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTPointerType;

    PROCEDURE (this: SlideShowView) State* (): PpSlideShowState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END State;

    PROCEDURE (this: SlideShowView) PUTState* (p1: PpSlideShowState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTState;

    PROCEDURE (this: SlideShowView) AcceleratorsEnabled* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END AcceleratorsEnabled;

    PROCEDURE (this: SlideShowView) PUTAcceleratorsEnabled* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTAcceleratorsEnabled;

    PROCEDURE (this: SlideShowView) PresentationElapsedTime* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2008)
    END PresentationElapsedTime;

    PROCEDURE (this: SlideShowView) SlideElapsedTime* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2009)
    END SlideElapsedTime;

    PROCEDURE (this: SlideShowView) PUTSlideElapsedTime* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2009, p1)
    END PUTSlideElapsedTime;

    PROCEDURE (this: SlideShowView) LastSlideViewed* (): Slide, NEW;
    BEGIN
        RETURN This_Slide(CtlC.GetAny(this, 2010))
    END LastSlideViewed;

    PROCEDURE (this: SlideShowView) AdvanceMode* (): PpSlideShowAdvanceMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END AdvanceMode;

    PROCEDURE (this: SlideShowView) PointerColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 2012))
    END PointerColor;

    PROCEDURE (this: SlideShowView) IsNamedShow* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END IsNamedShow;

    PROCEDURE (this: SlideShowView) SlideShowName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2014)
    END SlideShowName;

    PROCEDURE (this: SlideShowView) DrawLine* (BeginX: SHORTREAL; BeginY: SHORTREAL; EndX: SHORTREAL; EndY: SHORTREAL), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(BeginX, arg[3]);
        CtlC.SRealVar(BeginY, arg[2]);
        CtlC.SRealVar(EndX, arg[1]);
        CtlC.SRealVar(EndY, arg[0]);
        CtlC.CallParMethod(this, 2015, arg, NIL);
    END DrawLine;

    PROCEDURE (this: SlideShowView) EraseDrawing* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2016, NIL);
    END EraseDrawing;

    PROCEDURE (this: SlideShowView) First* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2017, NIL);
    END First;

    PROCEDURE (this: SlideShowView) Last* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2018, NIL);
    END Last;

    PROCEDURE (this: SlideShowView) Next* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2019, NIL);
    END Next;

    PROCEDURE (this: SlideShowView) Previous* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2020, NIL);
    END Previous;

    PROCEDURE (this: SlideShowView) GotoSlide* (index: INTEGER; ResetSlide: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[1]);
        CtlC.IntVar(ResetSlide, arg[0]);
        CtlC.CallParMethod(this, 2021, arg, NIL);
    END GotoSlide;

    PROCEDURE (this: SlideShowView) GotoNamedShow* (SlideShowName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(SlideShowName, arg[0]);
        CtlC.CallParMethod(this, 2022, arg, NIL);
    END GotoNamedShow;

    PROCEDURE (this: SlideShowView) EndNamedShow* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2023, NIL);
    END EndNamedShow;

    PROCEDURE (this: SlideShowView) ResetSlideTime* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2024, NIL);
    END ResetSlideTime;

    PROCEDURE (this: SlideShowView) Exit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2025, NIL);
    END Exit;

    PROCEDURE (this: SlideShowView) InstallTracker* (pTracker: CtlT.IUnknown; Presenter: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntfceVar(pTracker, arg[1]);
        CtlC.IntVar(Presenter, arg[0]);
        CtlC.CallParMethod(this, 2026, arg, NIL);
    END InstallTracker;

    PROCEDURE (this: SlideShowView) CurrentShowPosition* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2027)
    END CurrentShowPosition;


    (* ---------- SlideShowSettings, dual, nonextensible ---------- *)

    PROCEDURE (this: SlideShowSettings) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: SlideShowSettings) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: SlideShowSettings) PointerColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 2003))
    END PointerColor;

    PROCEDURE (this: SlideShowSettings) NamedSlideShows* (): NamedSlideShows, NEW;
    BEGIN
        RETURN ThisNamedSlideShows(CtlC.GetAny(this, 2004))
    END NamedSlideShows;

    PROCEDURE (this: SlideShowSettings) StartingSlide* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END StartingSlide;

    PROCEDURE (this: SlideShowSettings) PUTStartingSlide* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTStartingSlide;

    PROCEDURE (this: SlideShowSettings) EndingSlide* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END EndingSlide;

    PROCEDURE (this: SlideShowSettings) PUTEndingSlide* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTEndingSlide;

    PROCEDURE (this: SlideShowSettings) AdvanceMode* (): PpSlideShowAdvanceMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END AdvanceMode;

    PROCEDURE (this: SlideShowSettings) PUTAdvanceMode* (p1: PpSlideShowAdvanceMode), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTAdvanceMode;

    PROCEDURE (this: SlideShowSettings) Run* (): SlideShowWindow, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2008, ret);
        RETURN ThisSlideShowWindow(CtlC.VarAny(ret))
    END Run;

    PROCEDURE (this: SlideShowSettings) LoopUntilStopped* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END LoopUntilStopped;

    PROCEDURE (this: SlideShowSettings) PUTLoopUntilStopped* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTLoopUntilStopped;

    PROCEDURE (this: SlideShowSettings) ShowType* (): PpSlideShowType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END ShowType;

    PROCEDURE (this: SlideShowSettings) PUTShowType* (p1: PpSlideShowType), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTShowType;

    PROCEDURE (this: SlideShowSettings) ShowWithNarration* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END ShowWithNarration;

    PROCEDURE (this: SlideShowSettings) PUTShowWithNarration* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2011, p1)
    END PUTShowWithNarration;

    PROCEDURE (this: SlideShowSettings) ShowWithAnimation* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2012)
    END ShowWithAnimation;

    PROCEDURE (this: SlideShowSettings) PUTShowWithAnimation* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2012, p1)
    END PUTShowWithAnimation;

    PROCEDURE (this: SlideShowSettings) SlideShowName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2013)
    END SlideShowName;

    PROCEDURE (this: SlideShowSettings) PUTSlideShowName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2013, p1)
    END PUTSlideShowName;

    PROCEDURE (this: SlideShowSettings) RangeType* (): PpSlideShowRangeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2014)
    END RangeType;

    PROCEDURE (this: SlideShowSettings) PUTRangeType* (p1: PpSlideShowRangeType), NEW;
    BEGIN
        CtlC.PutInt(this, 2014, p1)
    END PUTRangeType;


    (* ---------- NamedSlideShows, dual, nonextensible ---------- *)

    PROCEDURE (this: NamedSlideShows) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: NamedSlideShows) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: NamedSlideShows) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: NamedSlideShows) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: NamedSlideShows) Item* (index: CtlT.Any): NamedSlideShow, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisNamedSlideShow(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: NamedSlideShows) Add* (Name: ARRAY OF CHAR; safeArrayOfSlideIDs: CtlT.Any): NamedSlideShow, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(safeArrayOfSlideIDs, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisNamedSlideShow(CtlC.VarAny(ret))
    END Add;


    (* ---------- NamedSlideShow, dual, nonextensible ---------- *)

    PROCEDURE (this: NamedSlideShow) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: NamedSlideShow) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: NamedSlideShow) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END Name;

    PROCEDURE (this: NamedSlideShow) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2004, NIL);
    END Delete;

    PROCEDURE (this: NamedSlideShow) SlideIDs* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 2005)
    END SlideIDs;

    PROCEDURE (this: NamedSlideShow) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END Count;


    (* ---------- PrintOptions, dual, nonextensible ---------- *)

    PROCEDURE (this: PrintOptions) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PrintOptions) PrintColorType* (): PpPrintColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END PrintColorType;

    PROCEDURE (this: PrintOptions) PUTPrintColorType* (p1: PpPrintColorType), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTPrintColorType;

    PROCEDURE (this: PrintOptions) Collate* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Collate;

    PROCEDURE (this: PrintOptions) PUTCollate* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTCollate;

    PROCEDURE (this: PrintOptions) FitToPage* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END FitToPage;

    PROCEDURE (this: PrintOptions) PUTFitToPage* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTFitToPage;

    PROCEDURE (this: PrintOptions) FrameSlides* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END FrameSlides;

    PROCEDURE (this: PrintOptions) PUTFrameSlides* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTFrameSlides;

    PROCEDURE (this: PrintOptions) NumberOfCopies* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END NumberOfCopies;

    PROCEDURE (this: PrintOptions) PUTNumberOfCopies* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTNumberOfCopies;

    PROCEDURE (this: PrintOptions) OutputType* (): PpPrintOutputType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END OutputType;

    PROCEDURE (this: PrintOptions) PUTOutputType* (p1: PpPrintOutputType), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTOutputType;

    PROCEDURE (this: PrintOptions) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2008)
    END Parent;

    PROCEDURE (this: PrintOptions) PrintHiddenSlides* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END PrintHiddenSlides;

    PROCEDURE (this: PrintOptions) PUTPrintHiddenSlides* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTPrintHiddenSlides;

    PROCEDURE (this: PrintOptions) PrintInBackground* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END PrintInBackground;

    PROCEDURE (this: PrintOptions) PUTPrintInBackground* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTPrintInBackground;

    PROCEDURE (this: PrintOptions) RangeType* (): PpPrintRangeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END RangeType;

    PROCEDURE (this: PrintOptions) PUTRangeType* (p1: PpPrintRangeType), NEW;
    BEGIN
        CtlC.PutInt(this, 2011, p1)
    END PUTRangeType;

    PROCEDURE (this: PrintOptions) Ranges* (): PrintRanges, NEW;
    BEGIN
        RETURN ThisPrintRanges(CtlC.GetAny(this, 2012))
    END Ranges;

    PROCEDURE (this: PrintOptions) PrintFontsAsGraphics* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END PrintFontsAsGraphics;

    PROCEDURE (this: PrintOptions) PUTPrintFontsAsGraphics* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2013, p1)
    END PUTPrintFontsAsGraphics;

    PROCEDURE (this: PrintOptions) SlideShowName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2014)
    END SlideShowName;

    PROCEDURE (this: PrintOptions) PUTSlideShowName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2014, p1)
    END PUTSlideShowName;

    PROCEDURE (this: PrintOptions) ActivePrinter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2015)
    END ActivePrinter;

    PROCEDURE (this: PrintOptions) PUTActivePrinter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2015, p1)
    END PUTActivePrinter;

    PROCEDURE (this: PrintOptions) HandoutOrder* (): PpPrintHandoutOrder, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2016)
    END HandoutOrder;

    PROCEDURE (this: PrintOptions) PUTHandoutOrder* (p1: PpPrintHandoutOrder), NEW;
    BEGIN
        CtlC.PutInt(this, 2016, p1)
    END PUTHandoutOrder;


    (* ---------- PrintRanges, dual, nonextensible ---------- *)

    PROCEDURE (this: PrintRanges) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: PrintRanges) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: PrintRanges) Add* (Start: INTEGER; End: INTEGER): PrintRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Start, arg[1]);
        CtlC.IntVar(End, arg[0]);
        CtlC.CallParMethod(this, 2001, arg, ret);
        RETURN ThisPrintRange(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: PrintRanges) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2002))
    END Application;

    PROCEDURE (this: PrintRanges) ClearAll* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2003, NIL);
    END ClearAll;

    PROCEDURE (this: PrintRanges) Item* (index: INTEGER): PrintRange, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisPrintRange(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: PrintRanges) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2004)
    END Parent;


    (* ---------- PrintRange, dual, nonextensible ---------- *)

    PROCEDURE (this: PrintRange) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PrintRange) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PrintRange) Start* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Start;

    PROCEDURE (this: PrintRange) End* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END End;

    PROCEDURE (this: PrintRange) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2005, NIL);
    END Delete;


    (* ---------- AddIns, dual, nonextensible ---------- *)

    PROCEDURE (this: AddIns) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: AddIns) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: AddIns) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: AddIns) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: AddIns) Item* (index: CtlT.Any): AddIn, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisAddIn(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: AddIns) Add* (FileName: ARRAY OF CHAR): AddIn, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisAddIn(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: AddIns) Remove* (index: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 2004, arg, NIL);
    END Remove;


    (* ---------- AddIn, dual, nonextensible ---------- *)

    PROCEDURE (this: AddIn) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: AddIn) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: AddIn) FullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END FullName;

    PROCEDURE (this: AddIn) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END Name;

    PROCEDURE (this: AddIn) Path* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2005)
    END Path;

    PROCEDURE (this: AddIn) Registered* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END Registered;

    PROCEDURE (this: AddIn) PUTRegistered* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTRegistered;

    PROCEDURE (this: AddIn) AutoLoad* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END AutoLoad;

    PROCEDURE (this: AddIn) PUTAutoLoad* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTAutoLoad;

    PROCEDURE (this: AddIn) Loaded* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END Loaded;

    PROCEDURE (this: AddIn) PUTLoaded* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTLoaded;

    PROCEDURE (this: AddIn) DisplayAlerts* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END DisplayAlerts;

    PROCEDURE (this: AddIn) PUTDisplayAlerts* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTDisplayAlerts;

    PROCEDURE (this: AddIn) RegisteredInHKLM* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END RegisteredInHKLM;


    (* ---------- Presentations, dual, nonextensible ---------- *)

    PROCEDURE (this: Presentations) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Presentations) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Presentations) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Presentations) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Presentations) Item* (index: CtlT.Any): Presentation, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_Presentation(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Presentations) Add* (WithWindow: CtlOffice.MsoTriState): Presentation, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(WithWindow, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN This_Presentation(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Presentations) Open* (FileName: ARRAY OF CHAR; ReadOnly: CtlOffice.MsoTriState; Untitled: CtlOffice.MsoTriState; WithWindow: CtlOffice.MsoTriState): Presentation, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[3]);
        CtlC.IntVar(ReadOnly, arg[2]);
        CtlC.IntVar(Untitled, arg[1]);
        CtlC.IntVar(WithWindow, arg[0]);
        CtlC.CallParMethod(this, 2004, arg, ret);
        RETURN This_Presentation(CtlC.VarAny(ret))
    END Open;


    (* ---------- Hyperlinks, dual, nonextensible ---------- *)

    PROCEDURE (this: Hyperlinks) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Hyperlinks) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Hyperlinks) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Hyperlinks) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Hyperlinks) Item* (index: INTEGER): Hyperlink, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisHyperlink(CtlC.VarAny(ret))
    END Item;


    (* ---------- Hyperlink, dual, nonextensible ---------- *)

    PROCEDURE (this: Hyperlink) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Hyperlink) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Hyperlink) Type* (): CtlOffice.MsoHyperlinkType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Type;

    PROCEDURE (this: Hyperlink) Address* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END Address;

    PROCEDURE (this: Hyperlink) PUTAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTAddress;

    PROCEDURE (this: Hyperlink) SubAddress* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2005)
    END SubAddress;

    PROCEDURE (this: Hyperlink) PUTSubAddress* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2005, p1)
    END PUTSubAddress;

    PROCEDURE (this: Hyperlink) AddToFavorites* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2006, NIL);
    END AddToFavorites;

    PROCEDURE (this: Hyperlink) EmailSubject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END EmailSubject;

    PROCEDURE (this: Hyperlink) PUTEmailSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTEmailSubject;

    PROCEDURE (this: Hyperlink) ScreenTip* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2008)
    END ScreenTip;

    PROCEDURE (this: Hyperlink) PUTScreenTip* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2008, p1)
    END PUTScreenTip;

    PROCEDURE (this: Hyperlink) TextToDisplay* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2009)
    END TextToDisplay;

    PROCEDURE (this: Hyperlink) PUTTextToDisplay* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2009, p1)
    END PUTTextToDisplay;

    PROCEDURE (this: Hyperlink) ShowandReturn* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END ShowandReturn;

    PROCEDURE (this: Hyperlink) PUTShowandReturn* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTShowandReturn;

    PROCEDURE (this: Hyperlink) Follow* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2011, NIL);
    END Follow;

    PROCEDURE (this: Hyperlink) CreateNewDocument* (FileName: ARRAY OF CHAR; EditNow: CtlOffice.MsoTriState; Overwrite: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[2]);
        CtlC.IntVar(EditNow, arg[1]);
        CtlC.IntVar(Overwrite, arg[0]);
        CtlC.CallParMethod(this, 2012, arg, NIL);
    END CreateNewDocument;

    PROCEDURE (this: Hyperlink) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2013, NIL);
    END Delete;


    (* ---------- PageSetup, dual, nonextensible ---------- *)

    PROCEDURE (this: PageSetup) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PageSetup) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PageSetup) FirstSlideNumber* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END FirstSlideNumber;

    PROCEDURE (this: PageSetup) PUTFirstSlideNumber* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTFirstSlideNumber;

    PROCEDURE (this: PageSetup) SlideHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2004)
    END SlideHeight;

    PROCEDURE (this: PageSetup) PUTSlideHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2004, p1)
    END PUTSlideHeight;

    PROCEDURE (this: PageSetup) SlideWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2005)
    END SlideWidth;

    PROCEDURE (this: PageSetup) PUTSlideWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2005, p1)
    END PUTSlideWidth;

    PROCEDURE (this: PageSetup) SlideSize* (): PpSlideSizeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END SlideSize;

    PROCEDURE (this: PageSetup) PUTSlideSize* (p1: PpSlideSizeType), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTSlideSize;

    PROCEDURE (this: PageSetup) NotesOrientation* (): CtlOffice.MsoOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END NotesOrientation;

    PROCEDURE (this: PageSetup) PUTNotesOrientation* (p1: CtlOffice.MsoOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTNotesOrientation;

    PROCEDURE (this: PageSetup) SlideOrientation* (): CtlOffice.MsoOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END SlideOrientation;

    PROCEDURE (this: PageSetup) PUTSlideOrientation* (p1: CtlOffice.MsoOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTSlideOrientation;


    (* ---------- Fonts, dual, nonextensible ---------- *)

    PROCEDURE (this: Fonts) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Fonts) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Fonts) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Fonts) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Fonts) Item* (index: CtlT.Any): Font, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisFont(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Fonts) Replace* (Original: ARRAY OF CHAR; Replacement: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Original, arg[1]);
        CtlC.StrVar(Replacement, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, NIL);
    END Replace;


    (* ---------- ExtraColors, dual, nonextensible ---------- *)

    PROCEDURE (this: ExtraColors) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ExtraColors) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: ExtraColors) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: ExtraColors) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: ExtraColors) Item* (index: INTEGER): CtlOffice.MsoRGBType, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarInt(ret)
    END Item;

    PROCEDURE (this: ExtraColors) Add* (Type: CtlOffice.MsoRGBType), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, NIL);
    END Add;


    (* ---------- Slides, dual, nonextensible ---------- *)

    PROCEDURE (this: Slides) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Slides) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Slides) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Slides) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Slides) Item* (index: CtlT.Any): Slide, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_Slide(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Slides) FindBySlideID* (SlideID: INTEGER): Slide, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(SlideID, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN This_Slide(CtlC.VarAny(ret))
    END FindBySlideID;

    PROCEDURE (this: Slides) Add* (index: INTEGER; Layout: PpSlideLayout): Slide, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[1]);
        CtlC.IntVar(Layout, arg[0]);
        CtlC.CallParMethod(this, 2004, arg, ret);
        RETURN This_Slide(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Slides) InsertFromFile* (FileName: ARRAY OF CHAR; index: INTEGER; SlideStart: INTEGER; SlideEnd: INTEGER): INTEGER, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[3]);
        CtlC.IntVar(index, arg[2]);
        CtlC.IntVar(SlideStart, arg[1]);
        CtlC.IntVar(SlideEnd, arg[0]);
        CtlC.CallParMethod(this, 2005, arg, ret);
        RETURN CtlC.VarInt(ret)
    END InsertFromFile;

    PROCEDURE (this: Slides) Range* ((* optional *) index: CtlT.Any): SlideRange, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 2006, arg, ret);
        RETURN ThisSlideRange(CtlC.VarAny(ret))
    END Range;

    PROCEDURE (this: Slides) Paste* (index: INTEGER): SlideRange, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 2007, arg, ret);
        RETURN ThisSlideRange(CtlC.VarAny(ret))
    END Paste;


    (* ---------- _Slide, dual, nonextensible ---------- *)

    PROCEDURE (this: _Slide) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: _Slide) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: _Slide) Shapes* (): Shapes, NEW;
    BEGIN
        RETURN ThisShapes(CtlC.GetAny(this, 2003))
    END Shapes;

    PROCEDURE (this: _Slide) HeadersFooters* (): HeadersFooters, NEW;
    BEGIN
        RETURN ThisHeadersFooters(CtlC.GetAny(this, 2004))
    END HeadersFooters;

    PROCEDURE (this: _Slide) SlideShowTransition* (): SlideShowTransition, NEW;
    BEGIN
        RETURN ThisSlideShowTransition(CtlC.GetAny(this, 2005))
    END SlideShowTransition;

    PROCEDURE (this: _Slide) ColorScheme* (): ColorScheme, NEW;
    BEGIN
        RETURN ThisColorScheme(CtlC.GetAny(this, 2006))
    END ColorScheme;

    PROCEDURE (this: _Slide) PUTColorScheme* (p1: ColorScheme), NEW;
    BEGIN
        CtlC.PutObj(this, 2006, p1)
    END PUTColorScheme;

    PROCEDURE (this: _Slide) Background* (): ShapeRange, NEW;
    BEGIN
        RETURN ThisShapeRange(CtlC.GetAny(this, 2007))
    END Background;

    PROCEDURE (this: _Slide) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2008)
    END Name;

    PROCEDURE (this: _Slide) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2008, p1)
    END PUTName;

    PROCEDURE (this: _Slide) SlideID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END SlideID;

    PROCEDURE (this: _Slide) PrintSteps* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END PrintSteps;

    PROCEDURE (this: _Slide) Select* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2011, NIL);
    END Select;

    PROCEDURE (this: _Slide) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2012, NIL);
    END Cut;

    PROCEDURE (this: _Slide) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2013, NIL);
    END Copy;

    PROCEDURE (this: _Slide) Layout* (): PpSlideLayout, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2014)
    END Layout;

    PROCEDURE (this: _Slide) PUTLayout* (p1: PpSlideLayout), NEW;
    BEGIN
        CtlC.PutInt(this, 2014, p1)
    END PUTLayout;

    PROCEDURE (this: _Slide) Duplicate* (): SlideRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2015, ret);
        RETURN ThisSlideRange(CtlC.VarAny(ret))
    END Duplicate;

    PROCEDURE (this: _Slide) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2016, NIL);
    END Delete;

    PROCEDURE (this: _Slide) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2017))
    END Tags;

    PROCEDURE (this: _Slide) SlideIndex* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2018)
    END SlideIndex;

    PROCEDURE (this: _Slide) SlideNumber* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2019)
    END SlideNumber;

    PROCEDURE (this: _Slide) DisplayMasterShapes* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2020)
    END DisplayMasterShapes;

    PROCEDURE (this: _Slide) PUTDisplayMasterShapes* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2020, p1)
    END PUTDisplayMasterShapes;

    PROCEDURE (this: _Slide) FollowMasterBackground* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2021)
    END FollowMasterBackground;

    PROCEDURE (this: _Slide) PUTFollowMasterBackground* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2021, p1)
    END PUTFollowMasterBackground;

    PROCEDURE (this: _Slide) NotesPage* (): SlideRange, NEW;
    BEGIN
        RETURN ThisSlideRange(CtlC.GetAny(this, 2022))
    END NotesPage;

    PROCEDURE (this: _Slide) Master* (): _Master, NEW;
    BEGIN
        RETURN This_Master(CtlC.GetAny(this, 2023))
    END Master;

    PROCEDURE (this: _Slide) Hyperlinks* (): Hyperlinks, NEW;
    BEGIN
        RETURN ThisHyperlinks(CtlC.GetAny(this, 2024))
    END Hyperlinks;

    PROCEDURE (this: _Slide) Export* (FileName: ARRAY OF CHAR; FilterName: ARRAY OF CHAR; ScaleWidth: INTEGER; ScaleHeight: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[3]);
        CtlC.StrVar(FilterName, arg[2]);
        CtlC.IntVar(ScaleWidth, arg[1]);
        CtlC.IntVar(ScaleHeight, arg[0]);
        CtlC.CallParMethod(this, 2025, arg, NIL);
    END Export;

    PROCEDURE (this: _Slide) Scripts* (): CtlOffice.Scripts, NEW;
    BEGIN
        RETURN CtlOffice.ThisScripts(CtlC.GetAny(this, 2026))
    END Scripts;


    (* ---------- SlideRange, dual, nonextensible ---------- *)

    PROCEDURE (this: SlideRange) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: SlideRange) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: SlideRange) Shapes* (): Shapes, NEW;
    BEGIN
        RETURN ThisShapes(CtlC.GetAny(this, 2003))
    END Shapes;

    PROCEDURE (this: SlideRange) HeadersFooters* (): HeadersFooters, NEW;
    BEGIN
        RETURN ThisHeadersFooters(CtlC.GetAny(this, 2004))
    END HeadersFooters;

    PROCEDURE (this: SlideRange) SlideShowTransition* (): SlideShowTransition, NEW;
    BEGIN
        RETURN ThisSlideShowTransition(CtlC.GetAny(this, 2005))
    END SlideShowTransition;

    PROCEDURE (this: SlideRange) ColorScheme* (): ColorScheme, NEW;
    BEGIN
        RETURN ThisColorScheme(CtlC.GetAny(this, 2006))
    END ColorScheme;

    PROCEDURE (this: SlideRange) PUTColorScheme* (p1: ColorScheme), NEW;
    BEGIN
        CtlC.PutObj(this, 2006, p1)
    END PUTColorScheme;

    PROCEDURE (this: SlideRange) Background* (): ShapeRange, NEW;
    BEGIN
        RETURN ThisShapeRange(CtlC.GetAny(this, 2007))
    END Background;

    PROCEDURE (this: SlideRange) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2008)
    END Name;

    PROCEDURE (this: SlideRange) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2008, p1)
    END PUTName;

    PROCEDURE (this: SlideRange) SlideID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END SlideID;

    PROCEDURE (this: SlideRange) PrintSteps* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END PrintSteps;

    PROCEDURE (this: SlideRange) Select* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2011, NIL);
    END Select;

    PROCEDURE (this: SlideRange) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2012, NIL);
    END Cut;

    PROCEDURE (this: SlideRange) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2013, NIL);
    END Copy;

    PROCEDURE (this: SlideRange) Layout* (): PpSlideLayout, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2014)
    END Layout;

    PROCEDURE (this: SlideRange) PUTLayout* (p1: PpSlideLayout), NEW;
    BEGIN
        CtlC.PutInt(this, 2014, p1)
    END PUTLayout;

    PROCEDURE (this: SlideRange) Duplicate* (): SlideRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2015, ret);
        RETURN ThisSlideRange(CtlC.VarAny(ret))
    END Duplicate;

    PROCEDURE (this: SlideRange) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2016, NIL);
    END Delete;

    PROCEDURE (this: SlideRange) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2017))
    END Tags;

    PROCEDURE (this: SlideRange) SlideIndex* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2018)
    END SlideIndex;

    PROCEDURE (this: SlideRange) SlideNumber* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2019)
    END SlideNumber;

    PROCEDURE (this: SlideRange) DisplayMasterShapes* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2020)
    END DisplayMasterShapes;

    PROCEDURE (this: SlideRange) PUTDisplayMasterShapes* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2020, p1)
    END PUTDisplayMasterShapes;

    PROCEDURE (this: SlideRange) FollowMasterBackground* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2021)
    END FollowMasterBackground;

    PROCEDURE (this: SlideRange) PUTFollowMasterBackground* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2021, p1)
    END PUTFollowMasterBackground;

    PROCEDURE (this: SlideRange) NotesPage* (): SlideRange, NEW;
    BEGIN
        RETURN ThisSlideRange(CtlC.GetAny(this, 2022))
    END NotesPage;

    PROCEDURE (this: SlideRange) Master* (): _Master, NEW;
    BEGIN
        RETURN This_Master(CtlC.GetAny(this, 2023))
    END Master;

    PROCEDURE (this: SlideRange) Hyperlinks* (): Hyperlinks, NEW;
    BEGIN
        RETURN ThisHyperlinks(CtlC.GetAny(this, 2024))
    END Hyperlinks;

    PROCEDURE (this: SlideRange) Export* (FileName: ARRAY OF CHAR; FilterName: ARRAY OF CHAR; ScaleWidth: INTEGER; ScaleHeight: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[3]);
        CtlC.StrVar(FilterName, arg[2]);
        CtlC.IntVar(ScaleWidth, arg[1]);
        CtlC.IntVar(ScaleHeight, arg[0]);
        CtlC.CallParMethod(this, 2025, arg, NIL);
    END Export;

    PROCEDURE (this: SlideRange) Item* (index: CtlT.Any): Slide, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN This_Slide(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: SlideRange) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: SlideRange) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: SlideRange) Scripts* (): CtlOffice.Scripts, NEW;
    BEGIN
        RETURN CtlOffice.ThisScripts(CtlC.GetAny(this, 2026))
    END Scripts;


    (* ---------- _Master, dual, nonextensible ---------- *)

    PROCEDURE (this: _Master) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: _Master) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: _Master) Shapes* (): Shapes, NEW;
    BEGIN
        RETURN ThisShapes(CtlC.GetAny(this, 2003))
    END Shapes;

    PROCEDURE (this: _Master) HeadersFooters* (): HeadersFooters, NEW;
    BEGIN
        RETURN ThisHeadersFooters(CtlC.GetAny(this, 2004))
    END HeadersFooters;

    PROCEDURE (this: _Master) ColorScheme* (): ColorScheme, NEW;
    BEGIN
        RETURN ThisColorScheme(CtlC.GetAny(this, 2005))
    END ColorScheme;

    PROCEDURE (this: _Master) PUTColorScheme* (p1: ColorScheme), NEW;
    BEGIN
        CtlC.PutObj(this, 2005, p1)
    END PUTColorScheme;

    PROCEDURE (this: _Master) Background* (): ShapeRange, NEW;
    BEGIN
        RETURN ThisShapeRange(CtlC.GetAny(this, 2006))
    END Background;

    PROCEDURE (this: _Master) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END Name;

    PROCEDURE (this: _Master) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTName;

    PROCEDURE (this: _Master) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2008, NIL);
    END Delete;

    PROCEDURE (this: _Master) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2009)
    END Height;

    PROCEDURE (this: _Master) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2010)
    END Width;

    PROCEDURE (this: _Master) TextStyles* (): TextStyles, NEW;
    BEGIN
        RETURN ThisTextStyles(CtlC.GetAny(this, 2011))
    END TextStyles;

    PROCEDURE (this: _Master) Hyperlinks* (): Hyperlinks, NEW;
    BEGIN
        RETURN ThisHyperlinks(CtlC.GetAny(this, 2012))
    END Hyperlinks;

    PROCEDURE (this: _Master) Scripts* (): CtlOffice.Scripts, NEW;
    BEGIN
        RETURN CtlOffice.ThisScripts(CtlC.GetAny(this, 2013))
    END Scripts;


    (* ---------- ColorSchemes, dual, nonextensible ---------- *)

    PROCEDURE (this: ColorSchemes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ColorSchemes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: ColorSchemes) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: ColorSchemes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: ColorSchemes) Item* (index: INTEGER): ColorScheme, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisColorScheme(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: ColorSchemes) Add* (Scheme: ColorScheme): ColorScheme, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Scheme, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisColorScheme(CtlC.VarAny(ret))
    END Add;


    (* ---------- ColorScheme, dual, nonextensible ---------- *)

    PROCEDURE (this: ColorScheme) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ColorScheme) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: ColorScheme) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: ColorScheme) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: ColorScheme) Colors* (SchemeColor: PpColorSchemeIndex): RGBColor, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(SchemeColor, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisRGBColor(CtlC.VarAny(ret))
    END Colors;

    PROCEDURE (this: ColorScheme) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2003, NIL);
    END Delete;


    (* ---------- RGBColor, dual, nonextensible ---------- *)

    PROCEDURE (this: RGBColor) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: RGBColor) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: RGBColor) RGB* (): CtlOffice.MsoRGBType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END RGB;

    PROCEDURE (this: RGBColor) PUTRGB* (p1: CtlOffice.MsoRGBType), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTRGB;


    (* ---------- SlideShowTransition, dual, nonextensible ---------- *)

    PROCEDURE (this: SlideShowTransition) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: SlideShowTransition) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: SlideShowTransition) AdvanceOnClick* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END AdvanceOnClick;

    PROCEDURE (this: SlideShowTransition) PUTAdvanceOnClick* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTAdvanceOnClick;

    PROCEDURE (this: SlideShowTransition) AdvanceOnTime* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END AdvanceOnTime;

    PROCEDURE (this: SlideShowTransition) PUTAdvanceOnTime* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTAdvanceOnTime;

    PROCEDURE (this: SlideShowTransition) AdvanceTime* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2005)
    END AdvanceTime;

    PROCEDURE (this: SlideShowTransition) PUTAdvanceTime* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2005, p1)
    END PUTAdvanceTime;

    PROCEDURE (this: SlideShowTransition) EntryEffect* (): PpEntryEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END EntryEffect;

    PROCEDURE (this: SlideShowTransition) PUTEntryEffect* (p1: PpEntryEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTEntryEffect;

    PROCEDURE (this: SlideShowTransition) Hidden* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END Hidden;

    PROCEDURE (this: SlideShowTransition) PUTHidden* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTHidden;

    PROCEDURE (this: SlideShowTransition) LoopSoundUntilNext* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END LoopSoundUntilNext;

    PROCEDURE (this: SlideShowTransition) PUTLoopSoundUntilNext* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTLoopSoundUntilNext;

    PROCEDURE (this: SlideShowTransition) SoundEffect* (): SoundEffect, NEW;
    BEGIN
        RETURN ThisSoundEffect(CtlC.GetAny(this, 2009))
    END SoundEffect;

    PROCEDURE (this: SlideShowTransition) Speed* (): PpTransitionSpeed, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END Speed;

    PROCEDURE (this: SlideShowTransition) PUTSpeed* (p1: PpTransitionSpeed), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTSpeed;


    (* ---------- SoundEffect, dual, nonextensible ---------- *)

    PROCEDURE (this: SoundEffect) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: SoundEffect) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: SoundEffect) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END Name;

    PROCEDURE (this: SoundEffect) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTName;

    PROCEDURE (this: SoundEffect) Type* (): PpSoundEffectType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END Type;

    PROCEDURE (this: SoundEffect) PUTType* (p1: PpSoundEffectType), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTType;

    PROCEDURE (this: SoundEffect) ImportFromFile* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2005, arg, NIL);
    END ImportFromFile;

    PROCEDURE (this: SoundEffect) Play* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2006, NIL);
    END Play;


    (* ---------- SoundFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: SoundFormat) Play* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2000, NIL);
    END Play;

    PROCEDURE (this: SoundFormat) Import* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2001, arg, NIL);
    END Import;

    PROCEDURE (this: SoundFormat) Export* (FileName: ARRAY OF CHAR): PpSoundFormatType, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2002, arg, ret);
        RETURN CtlC.VarInt(ret)
    END Export;

    PROCEDURE (this: SoundFormat) Type* (): PpSoundFormatType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Type;

    PROCEDURE (this: SoundFormat) SourceFullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END SourceFullName;


    (* ---------- HeadersFooters, dual, nonextensible ---------- *)

    PROCEDURE (this: HeadersFooters) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: HeadersFooters) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: HeadersFooters) DateAndTime* (): HeaderFooter, NEW;
    BEGIN
        RETURN ThisHeaderFooter(CtlC.GetAny(this, 2003))
    END DateAndTime;

    PROCEDURE (this: HeadersFooters) SlideNumber* (): HeaderFooter, NEW;
    BEGIN
        RETURN ThisHeaderFooter(CtlC.GetAny(this, 2004))
    END SlideNumber;

    PROCEDURE (this: HeadersFooters) Header* (): HeaderFooter, NEW;
    BEGIN
        RETURN ThisHeaderFooter(CtlC.GetAny(this, 2005))
    END Header;

    PROCEDURE (this: HeadersFooters) Footer* (): HeaderFooter, NEW;
    BEGIN
        RETURN ThisHeaderFooter(CtlC.GetAny(this, 2006))
    END Footer;

    PROCEDURE (this: HeadersFooters) DisplayOnTitleSlide* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END DisplayOnTitleSlide;

    PROCEDURE (this: HeadersFooters) PUTDisplayOnTitleSlide* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTDisplayOnTitleSlide;

    PROCEDURE (this: HeadersFooters) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2008, NIL);
    END Clear;


    (* ---------- Shapes, dual, nonextensible ---------- *)

    PROCEDURE (this: Shapes) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: Shapes) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: Shapes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: Shapes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: Shapes) Item* (index: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Shapes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Shapes) AddCallout* (Type: CtlOffice.MsoCalloutType; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 10, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddCallout;

    PROCEDURE (this: Shapes) AddConnector* (Type: CtlOffice.MsoConnectorType; BeginX: SHORTREAL; BeginY: SHORTREAL; EndX: SHORTREAL; EndY: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[4]);
        CtlC.SRealVar(BeginX, arg[3]);
        CtlC.SRealVar(BeginY, arg[2]);
        CtlC.SRealVar(EndX, arg[1]);
        CtlC.SRealVar(EndY, arg[0]);
        CtlC.CallParMethod(this, 11, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddConnector;

    PROCEDURE (this: Shapes) AddCurve* (SafeArrayOfPoints: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(SafeArrayOfPoints, arg[0]);
        CtlC.CallParMethod(this, 12, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddCurve;

    PROCEDURE (this: Shapes) AddLabel* (Orientation: CtlOffice.MsoTextOrientation; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Orientation, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 13, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddLabel;

    PROCEDURE (this: Shapes) AddLine* (BeginX: SHORTREAL; BeginY: SHORTREAL; EndX: SHORTREAL; EndY: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(BeginX, arg[3]);
        CtlC.SRealVar(BeginY, arg[2]);
        CtlC.SRealVar(EndX, arg[1]);
        CtlC.SRealVar(EndY, arg[0]);
        CtlC.CallParMethod(this, 14, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddLine;

    PROCEDURE (this: Shapes) AddPicture* (FileName: ARRAY OF CHAR; LinkToFile: CtlOffice.MsoTriState; SaveWithDocument: CtlOffice.MsoTriState; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 7 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[6]);
        CtlC.IntVar(LinkToFile, arg[5]);
        CtlC.IntVar(SaveWithDocument, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 15, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddPicture;

    PROCEDURE (this: Shapes) AddPolyline* (SafeArrayOfPoints: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(SafeArrayOfPoints, arg[0]);
        CtlC.CallParMethod(this, 16, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddPolyline;

    PROCEDURE (this: Shapes) AddShape* (Type: CtlOffice.MsoAutoShapeType; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 17, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddShape;

    PROCEDURE (this: Shapes) AddTextEffect* (PresetTextEffect: CtlOffice.MsoPresetTextEffect; Text: ARRAY OF CHAR; FontName: ARRAY OF CHAR; FontSize: SHORTREAL; FontBold: CtlOffice.MsoTriState; FontItalic: CtlOffice.MsoTriState; Left: SHORTREAL; Top: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(PresetTextEffect, arg[7]);
        CtlC.StrVar(Text, arg[6]);
        CtlC.StrVar(FontName, arg[5]);
        CtlC.SRealVar(FontSize, arg[4]);
        CtlC.IntVar(FontBold, arg[3]);
        CtlC.IntVar(FontItalic, arg[2]);
        CtlC.SRealVar(Left, arg[1]);
        CtlC.SRealVar(Top, arg[0]);
        CtlC.CallParMethod(this, 18, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddTextEffect;

    PROCEDURE (this: Shapes) AddTextbox* (Orientation: CtlOffice.MsoTextOrientation; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Orientation, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 19, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddTextbox;

    PROCEDURE (this: Shapes) BuildFreeform* (EditingType: CtlOffice.MsoEditingType; X1: SHORTREAL; Y1: SHORTREAL): FreeformBuilder, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(EditingType, arg[2]);
        CtlC.SRealVar(X1, arg[1]);
        CtlC.SRealVar(Y1, arg[0]);
        CtlC.CallParMethod(this, 20, arg, ret);
        RETURN ThisFreeformBuilder(CtlC.VarAny(ret))
    END BuildFreeform;

    PROCEDURE (this: Shapes) SelectAll* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 22, NIL);
    END SelectAll;

    PROCEDURE (this: Shapes) Range* ((* optional *) index: CtlT.Any): ShapeRange, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Range;

    PROCEDURE (this: Shapes) HasTitle* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END HasTitle;

    PROCEDURE (this: Shapes) AddTitle* (): Shape, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2005, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddTitle;

    PROCEDURE (this: Shapes) Title* (): Shape, NEW;
    BEGIN
        RETURN ThisShape(CtlC.GetAny(this, 2006))
    END Title;

    PROCEDURE (this: Shapes) Placeholders* (): Placeholders, NEW;
    BEGIN
        RETURN ThisPlaceholders(CtlC.GetAny(this, 2007))
    END Placeholders;

    PROCEDURE (this: Shapes) AddOLEObject* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL; ClassName: ARRAY OF CHAR; FileName: ARRAY OF CHAR; DisplayAsIcon: CtlOffice.MsoTriState; IconFileName: ARRAY OF CHAR; IconIndex: INTEGER; IconLabel: ARRAY OF CHAR; Link: CtlOffice.MsoTriState): Shape, NEW;
        VAR arg: ARRAY 11 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[10]);
        CtlC.SRealVar(Top, arg[9]);
        CtlC.SRealVar(Width, arg[8]);
        CtlC.SRealVar(Height, arg[7]);
        CtlC.StrVar(ClassName, arg[6]);
        CtlC.StrVar(FileName, arg[5]);
        CtlC.IntVar(DisplayAsIcon, arg[4]);
        CtlC.StrVar(IconFileName, arg[3]);
        CtlC.IntVar(IconIndex, arg[2]);
        CtlC.StrVar(IconLabel, arg[1]);
        CtlC.IntVar(Link, arg[0]);
        CtlC.CallParMethod(this, 2008, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddOLEObject;

    PROCEDURE (this: Shapes) AddComment* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2009, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddComment;

    PROCEDURE (this: Shapes) AddPlaceholder* (Type: PpPlaceholderType; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2010, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddPlaceholder;

    PROCEDURE (this: Shapes) AddMediaObject* (FileName: ARRAY OF CHAR; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2011, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddMediaObject;

    PROCEDURE (this: Shapes) Paste* (): ShapeRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2012, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Paste;

    PROCEDURE (this: Shapes) AddTable* (NumRows: INTEGER; NumColumns: INTEGER; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
        VAR arg: ARRAY 6 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(NumRows, arg[5]);
        CtlC.IntVar(NumColumns, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2013, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END AddTable;


    (* ---------- Placeholders, dual, nonextensible ---------- *)

    PROCEDURE (this: Placeholders) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Placeholders) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Placeholders) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Placeholders) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Placeholders) Item* (index: INTEGER): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Item;


    (* ---------- PlaceholderFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: PlaceholderFormat) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PlaceholderFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PlaceholderFormat) Type* (): PpPlaceholderType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Type;


    (* ---------- FreeformBuilder, dual, nonextensible ---------- *)

    PROCEDURE (this: FreeformBuilder) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: FreeformBuilder) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: FreeformBuilder) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: FreeformBuilder) AddNodes* (SegmentType: CtlOffice.MsoSegmentType; EditingType: CtlOffice.MsoEditingType; X1: SHORTREAL; Y1: SHORTREAL; X2: SHORTREAL; Y2: SHORTREAL; X3: SHORTREAL; Y3: SHORTREAL), NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(SegmentType, arg[7]);
        CtlC.IntVar(EditingType, arg[6]);
        CtlC.SRealVar(X1, arg[5]);
        CtlC.SRealVar(Y1, arg[4]);
        CtlC.SRealVar(X2, arg[3]);
        CtlC.SRealVar(Y2, arg[2]);
        CtlC.SRealVar(X3, arg[1]);
        CtlC.SRealVar(Y3, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END AddNodes;

    PROCEDURE (this: FreeformBuilder) ConvertToShape* (): Shape, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 11, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END ConvertToShape;


    (* ---------- Shape, dual, nonextensible ---------- *)

    PROCEDURE (this: Shape) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: Shape) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: Shape) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: Shape) Apply* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END Apply;

    PROCEDURE (this: Shape) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 11, NIL);
    END Delete;

    PROCEDURE (this: Shape) Flip* (FlipCmd: CtlOffice.MsoFlipCmd), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(FlipCmd, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END Flip;

    PROCEDURE (this: Shape) IncrementLeft* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 14, arg, NIL);
    END IncrementLeft;

    PROCEDURE (this: Shape) IncrementRotation* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 15, arg, NIL);
    END IncrementRotation;

    PROCEDURE (this: Shape) IncrementTop* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 16, arg, NIL);
    END IncrementTop;

    PROCEDURE (this: Shape) PickUp* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 17, NIL);
    END PickUp;

    PROCEDURE (this: Shape) RerouteConnections* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 18, NIL);
    END RerouteConnections;

    PROCEDURE (this: Shape) ScaleHeight* (Factor: SHORTREAL; RelativeToOriginalSize: CtlOffice.MsoTriState; fScale: CtlOffice.MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 19, arg, NIL);
    END ScaleHeight;

    PROCEDURE (this: Shape) ScaleWidth* (Factor: SHORTREAL; RelativeToOriginalSize: CtlOffice.MsoTriState; fScale: CtlOffice.MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 20, arg, NIL);
    END ScaleWidth;

    PROCEDURE (this: Shape) SetShapesDefaultProperties* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 22, NIL);
    END SetShapesDefaultProperties;

    PROCEDURE (this: Shape) Ungroup* (): ShapeRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 23, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Ungroup;

    PROCEDURE (this: Shape) ZOrder* (ZOrderCmd: CtlOffice.MsoZOrderCmd), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ZOrderCmd, arg[0]);
        CtlC.CallParMethod(this, 24, arg, NIL);
    END ZOrder;

    PROCEDURE (this: Shape) Adjustments* (): Adjustments, NEW;
    BEGIN
        RETURN ThisAdjustments(CtlC.GetAny(this, 100))
    END Adjustments;

    PROCEDURE (this: Shape) AutoShapeType* (): CtlOffice.MsoAutoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END AutoShapeType;

    PROCEDURE (this: Shape) PUTAutoShapeType* (p1: CtlOffice.MsoAutoShapeType), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTAutoShapeType;

    PROCEDURE (this: Shape) BlackWhiteMode* (): CtlOffice.MsoBlackWhiteMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END BlackWhiteMode;

    PROCEDURE (this: Shape) PUTBlackWhiteMode* (p1: CtlOffice.MsoBlackWhiteMode), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTBlackWhiteMode;

    PROCEDURE (this: Shape) Callout* (): CalloutFormat, NEW;
    BEGIN
        RETURN ThisCalloutFormat(CtlC.GetAny(this, 103))
    END Callout;

    PROCEDURE (this: Shape) ConnectionSiteCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END ConnectionSiteCount;

    PROCEDURE (this: Shape) Connector* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END Connector;

    PROCEDURE (this: Shape) ConnectorFormat* (): ConnectorFormat, NEW;
    BEGIN
        RETURN ThisConnectorFormat(CtlC.GetAny(this, 106))
    END ConnectorFormat;

    PROCEDURE (this: Shape) Fill* (): FillFormat, NEW;
    BEGIN
        RETURN ThisFillFormat(CtlC.GetAny(this, 107))
    END Fill;

    PROCEDURE (this: Shape) GroupItems* (): GroupShapes, NEW;
    BEGIN
        RETURN ThisGroupShapes(CtlC.GetAny(this, 108))
    END GroupItems;

    PROCEDURE (this: Shape) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 109)
    END Height;

    PROCEDURE (this: Shape) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 109, p1)
    END PUTHeight;

    PROCEDURE (this: Shape) HorizontalFlip* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 110)
    END HorizontalFlip;

    PROCEDURE (this: Shape) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 111)
    END Left;

    PROCEDURE (this: Shape) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 111, p1)
    END PUTLeft;

    PROCEDURE (this: Shape) Line* (): LineFormat, NEW;
    BEGIN
        RETURN ThisLineFormat(CtlC.GetAny(this, 112))
    END Line;

    PROCEDURE (this: Shape) LockAspectRatio* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 113)
    END LockAspectRatio;

    PROCEDURE (this: Shape) PUTLockAspectRatio* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 113, p1)
    END PUTLockAspectRatio;

    PROCEDURE (this: Shape) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 115)
    END Name;

    PROCEDURE (this: Shape) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 115, p1)
    END PUTName;

    PROCEDURE (this: Shape) Nodes* (): ShapeNodes, NEW;
    BEGIN
        RETURN ThisShapeNodes(CtlC.GetAny(this, 116))
    END Nodes;

    PROCEDURE (this: Shape) Rotation* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 117)
    END Rotation;

    PROCEDURE (this: Shape) PUTRotation* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 117, p1)
    END PUTRotation;

    PROCEDURE (this: Shape) PictureFormat* (): PictureFormat, NEW;
    BEGIN
        RETURN ThisPictureFormat(CtlC.GetAny(this, 118))
    END PictureFormat;

    PROCEDURE (this: Shape) Shadow* (): ShadowFormat, NEW;
    BEGIN
        RETURN ThisShadowFormat(CtlC.GetAny(this, 119))
    END Shadow;

    PROCEDURE (this: Shape) TextEffect* (): TextEffectFormat, NEW;
    BEGIN
        RETURN ThisTextEffectFormat(CtlC.GetAny(this, 120))
    END TextEffect;

    PROCEDURE (this: Shape) TextFrame* (): TextFrame, NEW;
    BEGIN
        RETURN ThisTextFrame(CtlC.GetAny(this, 121))
    END TextFrame;

    PROCEDURE (this: Shape) ThreeD* (): ThreeDFormat, NEW;
    BEGIN
        RETURN ThisThreeDFormat(CtlC.GetAny(this, 122))
    END ThreeD;

    PROCEDURE (this: Shape) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 123)
    END Top;

    PROCEDURE (this: Shape) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 123, p1)
    END PUTTop;

    PROCEDURE (this: Shape) Type* (): CtlOffice.MsoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END Type;

    PROCEDURE (this: Shape) VerticalFlip* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 125)
    END VerticalFlip;

    PROCEDURE (this: Shape) Vertices* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 126)
    END Vertices;

    PROCEDURE (this: Shape) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END Visible;

    PROCEDURE (this: Shape) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 127, p1)
    END PUTVisible;

    PROCEDURE (this: Shape) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 128)
    END Width;

    PROCEDURE (this: Shape) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 128, p1)
    END PUTWidth;

    PROCEDURE (this: Shape) ZOrderPosition* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 129)
    END ZOrderPosition;

    PROCEDURE (this: Shape) OLEFormat* (): OLEFormat, NEW;
    BEGIN
        RETURN ThisOLEFormat(CtlC.GetAny(this, 2003))
    END OLEFormat;

    PROCEDURE (this: Shape) LinkFormat* (): LinkFormat, NEW;
    BEGIN
        RETURN ThisLinkFormat(CtlC.GetAny(this, 2004))
    END LinkFormat;

    PROCEDURE (this: Shape) PlaceholderFormat* (): PlaceholderFormat, NEW;
    BEGIN
        RETURN ThisPlaceholderFormat(CtlC.GetAny(this, 2005))
    END PlaceholderFormat;

    PROCEDURE (this: Shape) AnimationSettings* (): AnimationSettings, NEW;
    BEGIN
        RETURN ThisAnimationSettings(CtlC.GetAny(this, 2006))
    END AnimationSettings;

    PROCEDURE (this: Shape) ActionSettings* (): ActionSettings, NEW;
    BEGIN
        RETURN ThisActionSettings(CtlC.GetAny(this, 2007))
    END ActionSettings;

    PROCEDURE (this: Shape) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2008))
    END Tags;

    PROCEDURE (this: Shape) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2009, NIL);
    END Cut;

    PROCEDURE (this: Shape) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2010, NIL);
    END Copy;

    PROCEDURE (this: Shape) Select* (Replace: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Replace, arg[0]);
        CtlC.CallParMethod(this, 2011, arg, NIL);
    END Select;

    PROCEDURE (this: Shape) Duplicate* (): ShapeRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2012, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Duplicate;

    PROCEDURE (this: Shape) MediaType* (): PpMediaType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END MediaType;

    PROCEDURE (this: Shape) HasTextFrame* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2014)
    END HasTextFrame;

    PROCEDURE (this: Shape) SoundFormat* (): SoundFormat, NEW;
    BEGIN
        RETURN ThisSoundFormat(CtlC.GetAny(this, 2015))
    END SoundFormat;

    PROCEDURE (this: Shape) Script* (): CtlOffice.Script, NEW;
    BEGIN
        RETURN CtlOffice.ThisScript(CtlC.GetAny(this, 130))
    END Script;

    PROCEDURE (this: Shape) AlternativeText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 131)
    END AlternativeText;

    PROCEDURE (this: Shape) PUTAlternativeText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 131, p1)
    END PUTAlternativeText;

    PROCEDURE (this: Shape) HasTable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2016)
    END HasTable;

    PROCEDURE (this: Shape) Table* (): Table, NEW;
    BEGIN
        RETURN ThisTable(CtlC.GetAny(this, 2017))
    END Table;

    PROCEDURE (this: Shape) Export* (PathName: ARRAY OF CHAR; Filter: PpShapeFormat; ScaleWidth: INTEGER; ScaleHeight: INTEGER; ExportMode: PpExportMode), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PathName, arg[4]);
        CtlC.IntVar(Filter, arg[3]);
        CtlC.IntVar(ScaleWidth, arg[2]);
        CtlC.IntVar(ScaleHeight, arg[1]);
        CtlC.IntVar(ExportMode, arg[0]);
        CtlC.CallParMethod(this, 2018, arg, NIL);
    END Export;


    (* ---------- ShapeRange, dual, nonextensible ---------- *)

    PROCEDURE (this: ShapeRange) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: ShapeRange) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: ShapeRange) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ShapeRange) Apply* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END Apply;

    PROCEDURE (this: ShapeRange) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 11, NIL);
    END Delete;

    PROCEDURE (this: ShapeRange) Flip* (FlipCmd: CtlOffice.MsoFlipCmd), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(FlipCmd, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END Flip;

    PROCEDURE (this: ShapeRange) IncrementLeft* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 14, arg, NIL);
    END IncrementLeft;

    PROCEDURE (this: ShapeRange) IncrementRotation* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 15, arg, NIL);
    END IncrementRotation;

    PROCEDURE (this: ShapeRange) IncrementTop* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 16, arg, NIL);
    END IncrementTop;

    PROCEDURE (this: ShapeRange) PickUp* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 17, NIL);
    END PickUp;

    PROCEDURE (this: ShapeRange) RerouteConnections* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 18, NIL);
    END RerouteConnections;

    PROCEDURE (this: ShapeRange) ScaleHeight* (Factor: SHORTREAL; RelativeToOriginalSize: CtlOffice.MsoTriState; fScale: CtlOffice.MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 19, arg, NIL);
    END ScaleHeight;

    PROCEDURE (this: ShapeRange) ScaleWidth* (Factor: SHORTREAL; RelativeToOriginalSize: CtlOffice.MsoTriState; fScale: CtlOffice.MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 20, arg, NIL);
    END ScaleWidth;

    PROCEDURE (this: ShapeRange) SetShapesDefaultProperties* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 22, NIL);
    END SetShapesDefaultProperties;

    PROCEDURE (this: ShapeRange) Ungroup* (): ShapeRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 23, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Ungroup;

    PROCEDURE (this: ShapeRange) ZOrder* (ZOrderCmd: CtlOffice.MsoZOrderCmd), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ZOrderCmd, arg[0]);
        CtlC.CallParMethod(this, 24, arg, NIL);
    END ZOrder;

    PROCEDURE (this: ShapeRange) Adjustments* (): Adjustments, NEW;
    BEGIN
        RETURN ThisAdjustments(CtlC.GetAny(this, 100))
    END Adjustments;

    PROCEDURE (this: ShapeRange) AutoShapeType* (): CtlOffice.MsoAutoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END AutoShapeType;

    PROCEDURE (this: ShapeRange) PUTAutoShapeType* (p1: CtlOffice.MsoAutoShapeType), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTAutoShapeType;

    PROCEDURE (this: ShapeRange) BlackWhiteMode* (): CtlOffice.MsoBlackWhiteMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END BlackWhiteMode;

    PROCEDURE (this: ShapeRange) PUTBlackWhiteMode* (p1: CtlOffice.MsoBlackWhiteMode), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTBlackWhiteMode;

    PROCEDURE (this: ShapeRange) Callout* (): CalloutFormat, NEW;
    BEGIN
        RETURN ThisCalloutFormat(CtlC.GetAny(this, 103))
    END Callout;

    PROCEDURE (this: ShapeRange) ConnectionSiteCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END ConnectionSiteCount;

    PROCEDURE (this: ShapeRange) Connector* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END Connector;

    PROCEDURE (this: ShapeRange) ConnectorFormat* (): ConnectorFormat, NEW;
    BEGIN
        RETURN ThisConnectorFormat(CtlC.GetAny(this, 106))
    END ConnectorFormat;

    PROCEDURE (this: ShapeRange) Fill* (): FillFormat, NEW;
    BEGIN
        RETURN ThisFillFormat(CtlC.GetAny(this, 107))
    END Fill;

    PROCEDURE (this: ShapeRange) GroupItems* (): GroupShapes, NEW;
    BEGIN
        RETURN ThisGroupShapes(CtlC.GetAny(this, 108))
    END GroupItems;

    PROCEDURE (this: ShapeRange) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 109)
    END Height;

    PROCEDURE (this: ShapeRange) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 109, p1)
    END PUTHeight;

    PROCEDURE (this: ShapeRange) HorizontalFlip* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 110)
    END HorizontalFlip;

    PROCEDURE (this: ShapeRange) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 111)
    END Left;

    PROCEDURE (this: ShapeRange) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 111, p1)
    END PUTLeft;

    PROCEDURE (this: ShapeRange) Line* (): LineFormat, NEW;
    BEGIN
        RETURN ThisLineFormat(CtlC.GetAny(this, 112))
    END Line;

    PROCEDURE (this: ShapeRange) LockAspectRatio* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 113)
    END LockAspectRatio;

    PROCEDURE (this: ShapeRange) PUTLockAspectRatio* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 113, p1)
    END PUTLockAspectRatio;

    PROCEDURE (this: ShapeRange) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 115)
    END Name;

    PROCEDURE (this: ShapeRange) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 115, p1)
    END PUTName;

    PROCEDURE (this: ShapeRange) Nodes* (): ShapeNodes, NEW;
    BEGIN
        RETURN ThisShapeNodes(CtlC.GetAny(this, 116))
    END Nodes;

    PROCEDURE (this: ShapeRange) Rotation* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 117)
    END Rotation;

    PROCEDURE (this: ShapeRange) PUTRotation* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 117, p1)
    END PUTRotation;

    PROCEDURE (this: ShapeRange) PictureFormat* (): PictureFormat, NEW;
    BEGIN
        RETURN ThisPictureFormat(CtlC.GetAny(this, 118))
    END PictureFormat;

    PROCEDURE (this: ShapeRange) Shadow* (): ShadowFormat, NEW;
    BEGIN
        RETURN ThisShadowFormat(CtlC.GetAny(this, 119))
    END Shadow;

    PROCEDURE (this: ShapeRange) TextEffect* (): TextEffectFormat, NEW;
    BEGIN
        RETURN ThisTextEffectFormat(CtlC.GetAny(this, 120))
    END TextEffect;

    PROCEDURE (this: ShapeRange) TextFrame* (): TextFrame, NEW;
    BEGIN
        RETURN ThisTextFrame(CtlC.GetAny(this, 121))
    END TextFrame;

    PROCEDURE (this: ShapeRange) ThreeD* (): ThreeDFormat, NEW;
    BEGIN
        RETURN ThisThreeDFormat(CtlC.GetAny(this, 122))
    END ThreeD;

    PROCEDURE (this: ShapeRange) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 123)
    END Top;

    PROCEDURE (this: ShapeRange) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 123, p1)
    END PUTTop;

    PROCEDURE (this: ShapeRange) Type* (): CtlOffice.MsoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END Type;

    PROCEDURE (this: ShapeRange) VerticalFlip* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 125)
    END VerticalFlip;

    PROCEDURE (this: ShapeRange) Vertices* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 126)
    END Vertices;

    PROCEDURE (this: ShapeRange) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END Visible;

    PROCEDURE (this: ShapeRange) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 127, p1)
    END PUTVisible;

    PROCEDURE (this: ShapeRange) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 128)
    END Width;

    PROCEDURE (this: ShapeRange) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 128, p1)
    END PUTWidth;

    PROCEDURE (this: ShapeRange) ZOrderPosition* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 129)
    END ZOrderPosition;

    PROCEDURE (this: ShapeRange) OLEFormat* (): OLEFormat, NEW;
    BEGIN
        RETURN ThisOLEFormat(CtlC.GetAny(this, 2003))
    END OLEFormat;

    PROCEDURE (this: ShapeRange) LinkFormat* (): LinkFormat, NEW;
    BEGIN
        RETURN ThisLinkFormat(CtlC.GetAny(this, 2004))
    END LinkFormat;

    PROCEDURE (this: ShapeRange) PlaceholderFormat* (): PlaceholderFormat, NEW;
    BEGIN
        RETURN ThisPlaceholderFormat(CtlC.GetAny(this, 2005))
    END PlaceholderFormat;

    PROCEDURE (this: ShapeRange) AnimationSettings* (): AnimationSettings, NEW;
    BEGIN
        RETURN ThisAnimationSettings(CtlC.GetAny(this, 2006))
    END AnimationSettings;

    PROCEDURE (this: ShapeRange) ActionSettings* (): ActionSettings, NEW;
    BEGIN
        RETURN ThisActionSettings(CtlC.GetAny(this, 2007))
    END ActionSettings;

    PROCEDURE (this: ShapeRange) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2008))
    END Tags;

    PROCEDURE (this: ShapeRange) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2009, NIL);
    END Cut;

    PROCEDURE (this: ShapeRange) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2010, NIL);
    END Copy;

    PROCEDURE (this: ShapeRange) Select* (Replace: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Replace, arg[0]);
        CtlC.CallParMethod(this, 2011, arg, NIL);
    END Select;

    PROCEDURE (this: ShapeRange) Duplicate* (): ShapeRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2012, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Duplicate;

    PROCEDURE (this: ShapeRange) MediaType* (): PpMediaType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END MediaType;

    PROCEDURE (this: ShapeRange) HasTextFrame* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2014)
    END HasTextFrame;

    PROCEDURE (this: ShapeRange) SoundFormat* (): SoundFormat, NEW;
    BEGIN
        RETURN ThisSoundFormat(CtlC.GetAny(this, 2015))
    END SoundFormat;

    PROCEDURE (this: ShapeRange) Item* (index: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: ShapeRange) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ShapeRange) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 9)
    END Count;

    PROCEDURE (this: ShapeRange) Group* (): Shape, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2016, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Group;

    PROCEDURE (this: ShapeRange) Regroup* (): Shape, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2017, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Regroup;

    PROCEDURE (this: ShapeRange) Align* (AlignCmd: CtlOffice.MsoAlignCmd; RelativeTo: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AlignCmd, arg[1]);
        CtlC.IntVar(RelativeTo, arg[0]);
        CtlC.CallParMethod(this, 2018, arg, NIL);
    END Align;

    PROCEDURE (this: ShapeRange) Distribute* (DistributeCmd: CtlOffice.MsoDistributeCmd; RelativeTo: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(DistributeCmd, arg[1]);
        CtlC.IntVar(RelativeTo, arg[0]);
        CtlC.CallParMethod(this, 2019, arg, NIL);
    END Distribute;

    PROCEDURE (this: ShapeRange) Script* (): CtlOffice.Script, NEW;
    BEGIN
        RETURN CtlOffice.ThisScript(CtlC.GetAny(this, 130))
    END Script;

    PROCEDURE (this: ShapeRange) AlternativeText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 131)
    END AlternativeText;

    PROCEDURE (this: ShapeRange) PUTAlternativeText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 131, p1)
    END PUTAlternativeText;

    PROCEDURE (this: ShapeRange) HasTable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2021)
    END HasTable;

    PROCEDURE (this: ShapeRange) Table* (): Table, NEW;
    BEGIN
        RETURN ThisTable(CtlC.GetAny(this, 2022))
    END Table;

    PROCEDURE (this: ShapeRange) Export* (PathName: ARRAY OF CHAR; Filter: PpShapeFormat; ScaleWidth: INTEGER; ScaleHeight: INTEGER; ExportMode: PpExportMode), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PathName, arg[4]);
        CtlC.IntVar(Filter, arg[3]);
        CtlC.IntVar(ScaleWidth, arg[2]);
        CtlC.IntVar(ScaleHeight, arg[1]);
        CtlC.IntVar(ExportMode, arg[0]);
        CtlC.CallParMethod(this, 2023, arg, NIL);
    END Export;


    (* ---------- GroupShapes, dual, nonextensible ---------- *)

    PROCEDURE (this: GroupShapes) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: GroupShapes) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: GroupShapes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: GroupShapes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: GroupShapes) Item* (index: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: GroupShapes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- Adjustments, dual, nonextensible ---------- *)

    PROCEDURE (this: Adjustments) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: Adjustments) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: Adjustments) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: Adjustments) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: Adjustments) Item* (index: INTEGER): SHORTREAL, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarSReal(ret)
    END Item;

    PROCEDURE (this: Adjustments) PUTItem* (index: INTEGER; p2: SHORTREAL), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[1]);
        CtlC.SRealVar(p2, arg[0]);
        CtlC.CallPutMethod(this, 0, arg, NIL);
    END PUTItem;


    (* ---------- PictureFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: PictureFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: PictureFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: PictureFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: PictureFormat) IncrementBrightness* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END IncrementBrightness;

    PROCEDURE (this: PictureFormat) IncrementContrast* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END IncrementContrast;

    PROCEDURE (this: PictureFormat) Brightness* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 100)
    END Brightness;

    PROCEDURE (this: PictureFormat) PUTBrightness* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 100, p1)
    END PUTBrightness;

    PROCEDURE (this: PictureFormat) ColorType* (): CtlOffice.MsoPictureColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END ColorType;

    PROCEDURE (this: PictureFormat) PUTColorType* (p1: CtlOffice.MsoPictureColorType), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTColorType;

    PROCEDURE (this: PictureFormat) Contrast* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 102)
    END Contrast;

    PROCEDURE (this: PictureFormat) PUTContrast* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 102, p1)
    END PUTContrast;

    PROCEDURE (this: PictureFormat) CropBottom* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 103)
    END CropBottom;

    PROCEDURE (this: PictureFormat) PUTCropBottom* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 103, p1)
    END PUTCropBottom;

    PROCEDURE (this: PictureFormat) CropLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 104)
    END CropLeft;

    PROCEDURE (this: PictureFormat) PUTCropLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 104, p1)
    END PUTCropLeft;

    PROCEDURE (this: PictureFormat) CropRight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 105)
    END CropRight;

    PROCEDURE (this: PictureFormat) PUTCropRight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 105, p1)
    END PUTCropRight;

    PROCEDURE (this: PictureFormat) CropTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 106)
    END CropTop;

    PROCEDURE (this: PictureFormat) PUTCropTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 106, p1)
    END PUTCropTop;

    PROCEDURE (this: PictureFormat) TransparencyColor* (): CtlOffice.MsoRGBType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END TransparencyColor;

    PROCEDURE (this: PictureFormat) PUTTransparencyColor* (p1: CtlOffice.MsoRGBType), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTTransparencyColor;

    PROCEDURE (this: PictureFormat) TransparentBackground* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END TransparentBackground;

    PROCEDURE (this: PictureFormat) PUTTransparentBackground* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTTransparentBackground;


    (* ---------- FillFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: FillFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: FillFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: FillFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: FillFormat) Background* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END Background;

    PROCEDURE (this: FillFormat) OneColorGradient* (Style: CtlOffice.MsoGradientStyle; Variant: INTEGER; Degree: SHORTREAL), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[2]);
        CtlC.IntVar(Variant, arg[1]);
        CtlC.SRealVar(Degree, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END OneColorGradient;

    PROCEDURE (this: FillFormat) Patterned* (Pattern: CtlOffice.MsoPatternType), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Pattern, arg[0]);
        CtlC.CallParMethod(this, 12, arg, NIL);
    END Patterned;

    PROCEDURE (this: FillFormat) PresetGradient* (Style: CtlOffice.MsoGradientStyle; Variant: INTEGER; PresetGradientType: CtlOffice.MsoPresetGradientType), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[2]);
        CtlC.IntVar(Variant, arg[1]);
        CtlC.IntVar(PresetGradientType, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END PresetGradient;

    PROCEDURE (this: FillFormat) PresetTextured* (PresetTexture: CtlOffice.MsoPresetTexture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PresetTexture, arg[0]);
        CtlC.CallParMethod(this, 14, arg, NIL);
    END PresetTextured;

    PROCEDURE (this: FillFormat) Solid* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 15, NIL);
    END Solid;

    PROCEDURE (this: FillFormat) TwoColorGradient* (Style: CtlOffice.MsoGradientStyle; Variant: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[1]);
        CtlC.IntVar(Variant, arg[0]);
        CtlC.CallParMethod(this, 16, arg, NIL);
    END TwoColorGradient;

    PROCEDURE (this: FillFormat) UserPicture* (PictureFile: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(PictureFile, arg[0]);
        CtlC.CallParMethod(this, 17, arg, NIL);
    END UserPicture;

    PROCEDURE (this: FillFormat) UserTextured* (TextureFile: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(TextureFile, arg[0]);
        CtlC.CallParMethod(this, 18, arg, NIL);
    END UserTextured;

    PROCEDURE (this: FillFormat) BackColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 100))
    END BackColor;

    PROCEDURE (this: FillFormat) PUTBackColor* (p1: ColorFormat), NEW;
    BEGIN
        CtlC.PutObj(this, 100, p1)
    END PUTBackColor;

    PROCEDURE (this: FillFormat) ForeColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 101))
    END ForeColor;

    PROCEDURE (this: FillFormat) PUTForeColor* (p1: ColorFormat), NEW;
    BEGIN
        CtlC.PutObj(this, 101, p1)
    END PUTForeColor;

    PROCEDURE (this: FillFormat) GradientColorType* (): CtlOffice.MsoGradientColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END GradientColorType;

    PROCEDURE (this: FillFormat) GradientDegree* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 103)
    END GradientDegree;

    PROCEDURE (this: FillFormat) GradientStyle* (): CtlOffice.MsoGradientStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END GradientStyle;

    PROCEDURE (this: FillFormat) GradientVariant* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END GradientVariant;

    PROCEDURE (this: FillFormat) Pattern* (): CtlOffice.MsoPatternType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Pattern;

    PROCEDURE (this: FillFormat) PresetGradientType* (): CtlOffice.MsoPresetGradientType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END PresetGradientType;

    PROCEDURE (this: FillFormat) PresetTexture* (): CtlOffice.MsoPresetTexture, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END PresetTexture;

    PROCEDURE (this: FillFormat) TextureName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 109)
    END TextureName;

    PROCEDURE (this: FillFormat) TextureType* (): CtlOffice.MsoTextureType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 110)
    END TextureType;

    PROCEDURE (this: FillFormat) Transparency* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 111)
    END Transparency;

    PROCEDURE (this: FillFormat) PUTTransparency* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 111, p1)
    END PUTTransparency;

    PROCEDURE (this: FillFormat) Type* (): CtlOffice.MsoFillType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 112)
    END Type;

    PROCEDURE (this: FillFormat) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 113)
    END Visible;

    PROCEDURE (this: FillFormat) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 113, p1)
    END PUTVisible;


    (* ---------- LineFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: LineFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: LineFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: LineFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: LineFormat) BackColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 100))
    END BackColor;

    PROCEDURE (this: LineFormat) PUTBackColor* (p1: ColorFormat), NEW;
    BEGIN
        CtlC.PutObj(this, 100, p1)
    END PUTBackColor;

    PROCEDURE (this: LineFormat) BeginArrowheadLength* (): CtlOffice.MsoArrowheadLength, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END BeginArrowheadLength;

    PROCEDURE (this: LineFormat) PUTBeginArrowheadLength* (p1: CtlOffice.MsoArrowheadLength), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTBeginArrowheadLength;

    PROCEDURE (this: LineFormat) BeginArrowheadStyle* (): CtlOffice.MsoArrowheadStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END BeginArrowheadStyle;

    PROCEDURE (this: LineFormat) PUTBeginArrowheadStyle* (p1: CtlOffice.MsoArrowheadStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTBeginArrowheadStyle;

    PROCEDURE (this: LineFormat) BeginArrowheadWidth* (): CtlOffice.MsoArrowheadWidth, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END BeginArrowheadWidth;

    PROCEDURE (this: LineFormat) PUTBeginArrowheadWidth* (p1: CtlOffice.MsoArrowheadWidth), NEW;
    BEGIN
        CtlC.PutInt(this, 103, p1)
    END PUTBeginArrowheadWidth;

    PROCEDURE (this: LineFormat) DashStyle* (): CtlOffice.MsoLineDashStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END DashStyle;

    PROCEDURE (this: LineFormat) PUTDashStyle* (p1: CtlOffice.MsoLineDashStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 104, p1)
    END PUTDashStyle;

    PROCEDURE (this: LineFormat) EndArrowheadLength* (): CtlOffice.MsoArrowheadLength, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END EndArrowheadLength;

    PROCEDURE (this: LineFormat) PUTEndArrowheadLength* (p1: CtlOffice.MsoArrowheadLength), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTEndArrowheadLength;

    PROCEDURE (this: LineFormat) EndArrowheadStyle* (): CtlOffice.MsoArrowheadStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END EndArrowheadStyle;

    PROCEDURE (this: LineFormat) PUTEndArrowheadStyle* (p1: CtlOffice.MsoArrowheadStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTEndArrowheadStyle;

    PROCEDURE (this: LineFormat) EndArrowheadWidth* (): CtlOffice.MsoArrowheadWidth, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END EndArrowheadWidth;

    PROCEDURE (this: LineFormat) PUTEndArrowheadWidth* (p1: CtlOffice.MsoArrowheadWidth), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTEndArrowheadWidth;

    PROCEDURE (this: LineFormat) ForeColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 108))
    END ForeColor;

    PROCEDURE (this: LineFormat) PUTForeColor* (p1: ColorFormat), NEW;
    BEGIN
        CtlC.PutObj(this, 108, p1)
    END PUTForeColor;

    PROCEDURE (this: LineFormat) Pattern* (): CtlOffice.MsoPatternType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END Pattern;

    PROCEDURE (this: LineFormat) PUTPattern* (p1: CtlOffice.MsoPatternType), NEW;
    BEGIN
        CtlC.PutInt(this, 109, p1)
    END PUTPattern;

    PROCEDURE (this: LineFormat) Style* (): CtlOffice.MsoLineStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 110)
    END Style;

    PROCEDURE (this: LineFormat) PUTStyle* (p1: CtlOffice.MsoLineStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 110, p1)
    END PUTStyle;

    PROCEDURE (this: LineFormat) Transparency* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 111)
    END Transparency;

    PROCEDURE (this: LineFormat) PUTTransparency* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 111, p1)
    END PUTTransparency;

    PROCEDURE (this: LineFormat) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 112)
    END Visible;

    PROCEDURE (this: LineFormat) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 112, p1)
    END PUTVisible;

    PROCEDURE (this: LineFormat) Weight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 113)
    END Weight;

    PROCEDURE (this: LineFormat) PUTWeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 113, p1)
    END PUTWeight;


    (* ---------- ShadowFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: ShadowFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: ShadowFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: ShadowFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ShadowFormat) IncrementOffsetX* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END IncrementOffsetX;

    PROCEDURE (this: ShadowFormat) IncrementOffsetY* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END IncrementOffsetY;

    PROCEDURE (this: ShadowFormat) ForeColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 100))
    END ForeColor;

    PROCEDURE (this: ShadowFormat) PUTForeColor* (p1: ColorFormat), NEW;
    BEGIN
        CtlC.PutObj(this, 100, p1)
    END PUTForeColor;

    PROCEDURE (this: ShadowFormat) Obscured* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Obscured;

    PROCEDURE (this: ShadowFormat) PUTObscured* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTObscured;

    PROCEDURE (this: ShadowFormat) OffsetX* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 102)
    END OffsetX;

    PROCEDURE (this: ShadowFormat) PUTOffsetX* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 102, p1)
    END PUTOffsetX;

    PROCEDURE (this: ShadowFormat) OffsetY* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 103)
    END OffsetY;

    PROCEDURE (this: ShadowFormat) PUTOffsetY* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 103, p1)
    END PUTOffsetY;

    PROCEDURE (this: ShadowFormat) Transparency* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 104)
    END Transparency;

    PROCEDURE (this: ShadowFormat) PUTTransparency* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 104, p1)
    END PUTTransparency;

    PROCEDURE (this: ShadowFormat) Type* (): CtlOffice.MsoShadowType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END Type;

    PROCEDURE (this: ShadowFormat) PUTType* (p1: CtlOffice.MsoShadowType), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTType;

    PROCEDURE (this: ShadowFormat) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Visible;

    PROCEDURE (this: ShadowFormat) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTVisible;


    (* ---------- ConnectorFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: ConnectorFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: ConnectorFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: ConnectorFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ConnectorFormat) BeginConnect* (ConnectedShape: Shape; ConnectionSite: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(ConnectedShape, arg[1]);
        CtlC.IntVar(ConnectionSite, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END BeginConnect;

    PROCEDURE (this: ConnectorFormat) BeginDisconnect* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 11, NIL);
    END BeginDisconnect;

    PROCEDURE (this: ConnectorFormat) EndConnect* (ConnectedShape: Shape; ConnectionSite: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(ConnectedShape, arg[1]);
        CtlC.IntVar(ConnectionSite, arg[0]);
        CtlC.CallParMethod(this, 12, arg, NIL);
    END EndConnect;

    PROCEDURE (this: ConnectorFormat) EndDisconnect* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 13, NIL);
    END EndDisconnect;

    PROCEDURE (this: ConnectorFormat) BeginConnected* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END BeginConnected;

    PROCEDURE (this: ConnectorFormat) BeginConnectedShape* (): Shape, NEW;
    BEGIN
        RETURN ThisShape(CtlC.GetAny(this, 101))
    END BeginConnectedShape;

    PROCEDURE (this: ConnectorFormat) BeginConnectionSite* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END BeginConnectionSite;

    PROCEDURE (this: ConnectorFormat) EndConnected* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END EndConnected;

    PROCEDURE (this: ConnectorFormat) EndConnectedShape* (): Shape, NEW;
    BEGIN
        RETURN ThisShape(CtlC.GetAny(this, 104))
    END EndConnectedShape;

    PROCEDURE (this: ConnectorFormat) EndConnectionSite* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END EndConnectionSite;

    PROCEDURE (this: ConnectorFormat) Type* (): CtlOffice.MsoConnectorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Type;

    PROCEDURE (this: ConnectorFormat) PUTType* (p1: CtlOffice.MsoConnectorType), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTType;


    (* ---------- TextEffectFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: TextEffectFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: TextEffectFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: TextEffectFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: TextEffectFormat) ToggleVerticalText* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END ToggleVerticalText;

    PROCEDURE (this: TextEffectFormat) Alignment* (): CtlOffice.MsoTextEffectAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END Alignment;

    PROCEDURE (this: TextEffectFormat) PUTAlignment* (p1: CtlOffice.MsoTextEffectAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTAlignment;

    PROCEDURE (this: TextEffectFormat) FontBold* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END FontBold;

    PROCEDURE (this: TextEffectFormat) PUTFontBold* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTFontBold;

    PROCEDURE (this: TextEffectFormat) FontItalic* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END FontItalic;

    PROCEDURE (this: TextEffectFormat) PUTFontItalic* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTFontItalic;

    PROCEDURE (this: TextEffectFormat) FontName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 103)
    END FontName;

    PROCEDURE (this: TextEffectFormat) PUTFontName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 103, p1)
    END PUTFontName;

    PROCEDURE (this: TextEffectFormat) FontSize* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 104)
    END FontSize;

    PROCEDURE (this: TextEffectFormat) PUTFontSize* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 104, p1)
    END PUTFontSize;

    PROCEDURE (this: TextEffectFormat) KernedPairs* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END KernedPairs;

    PROCEDURE (this: TextEffectFormat) PUTKernedPairs* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTKernedPairs;

    PROCEDURE (this: TextEffectFormat) NormalizedHeight* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END NormalizedHeight;

    PROCEDURE (this: TextEffectFormat) PUTNormalizedHeight* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTNormalizedHeight;

    PROCEDURE (this: TextEffectFormat) PresetShape* (): CtlOffice.MsoPresetTextEffectShape, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END PresetShape;

    PROCEDURE (this: TextEffectFormat) PUTPresetShape* (p1: CtlOffice.MsoPresetTextEffectShape), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTPresetShape;

    PROCEDURE (this: TextEffectFormat) PresetTextEffect* (): CtlOffice.MsoPresetTextEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END PresetTextEffect;

    PROCEDURE (this: TextEffectFormat) PUTPresetTextEffect* (p1: CtlOffice.MsoPresetTextEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTPresetTextEffect;

    PROCEDURE (this: TextEffectFormat) RotatedChars* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END RotatedChars;

    PROCEDURE (this: TextEffectFormat) PUTRotatedChars* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 109, p1)
    END PUTRotatedChars;

    PROCEDURE (this: TextEffectFormat) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Text;

    PROCEDURE (this: TextEffectFormat) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 110, p1)
    END PUTText;

    PROCEDURE (this: TextEffectFormat) Tracking* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 111)
    END Tracking;

    PROCEDURE (this: TextEffectFormat) PUTTracking* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 111, p1)
    END PUTTracking;


    (* ---------- ThreeDFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: ThreeDFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: ThreeDFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: ThreeDFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ThreeDFormat) IncrementRotationX* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END IncrementRotationX;

    PROCEDURE (this: ThreeDFormat) IncrementRotationY* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END IncrementRotationY;

    PROCEDURE (this: ThreeDFormat) ResetRotation* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 12, NIL);
    END ResetRotation;

    PROCEDURE (this: ThreeDFormat) SetThreeDFormat* (PresetThreeDFormat: CtlOffice.MsoPresetThreeDFormat), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PresetThreeDFormat, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END SetThreeDFormat;

    PROCEDURE (this: ThreeDFormat) SetExtrusionDirection* (PresetExtrusionDirection: CtlOffice.MsoPresetExtrusionDirection), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PresetExtrusionDirection, arg[0]);
        CtlC.CallParMethod(this, 14, arg, NIL);
    END SetExtrusionDirection;

    PROCEDURE (this: ThreeDFormat) Depth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 100)
    END Depth;

    PROCEDURE (this: ThreeDFormat) PUTDepth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 100, p1)
    END PUTDepth;

    PROCEDURE (this: ThreeDFormat) ExtrusionColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 101))
    END ExtrusionColor;

    PROCEDURE (this: ThreeDFormat) ExtrusionColorType* (): CtlOffice.MsoExtrusionColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END ExtrusionColorType;

    PROCEDURE (this: ThreeDFormat) PUTExtrusionColorType* (p1: CtlOffice.MsoExtrusionColorType), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTExtrusionColorType;

    PROCEDURE (this: ThreeDFormat) Perspective* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END Perspective;

    PROCEDURE (this: ThreeDFormat) PUTPerspective* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 103, p1)
    END PUTPerspective;

    PROCEDURE (this: ThreeDFormat) PresetExtrusionDirection* (): CtlOffice.MsoPresetExtrusionDirection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END PresetExtrusionDirection;

    PROCEDURE (this: ThreeDFormat) PresetLightingDirection* (): CtlOffice.MsoPresetLightingDirection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END PresetLightingDirection;

    PROCEDURE (this: ThreeDFormat) PUTPresetLightingDirection* (p1: CtlOffice.MsoPresetLightingDirection), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTPresetLightingDirection;

    PROCEDURE (this: ThreeDFormat) PresetLightingSoftness* (): CtlOffice.MsoPresetLightingSoftness, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END PresetLightingSoftness;

    PROCEDURE (this: ThreeDFormat) PUTPresetLightingSoftness* (p1: CtlOffice.MsoPresetLightingSoftness), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTPresetLightingSoftness;

    PROCEDURE (this: ThreeDFormat) PresetMaterial* (): CtlOffice.MsoPresetMaterial, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END PresetMaterial;

    PROCEDURE (this: ThreeDFormat) PUTPresetMaterial* (p1: CtlOffice.MsoPresetMaterial), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTPresetMaterial;

    PROCEDURE (this: ThreeDFormat) PresetThreeDFormat* (): CtlOffice.MsoPresetThreeDFormat, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END PresetThreeDFormat;

    PROCEDURE (this: ThreeDFormat) RotationX* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 109)
    END RotationX;

    PROCEDURE (this: ThreeDFormat) PUTRotationX* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 109, p1)
    END PUTRotationX;

    PROCEDURE (this: ThreeDFormat) RotationY* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 110)
    END RotationY;

    PROCEDURE (this: ThreeDFormat) PUTRotationY* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 110, p1)
    END PUTRotationY;

    PROCEDURE (this: ThreeDFormat) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 111)
    END Visible;

    PROCEDURE (this: ThreeDFormat) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 111, p1)
    END PUTVisible;


    (* ---------- TextFrame, dual, nonextensible ---------- *)

    PROCEDURE (this: TextFrame) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: TextFrame) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: TextFrame) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: TextFrame) MarginBottom* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 100)
    END MarginBottom;

    PROCEDURE (this: TextFrame) PUTMarginBottom* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 100, p1)
    END PUTMarginBottom;

    PROCEDURE (this: TextFrame) MarginLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 101)
    END MarginLeft;

    PROCEDURE (this: TextFrame) PUTMarginLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 101, p1)
    END PUTMarginLeft;

    PROCEDURE (this: TextFrame) MarginRight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 102)
    END MarginRight;

    PROCEDURE (this: TextFrame) PUTMarginRight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 102, p1)
    END PUTMarginRight;

    PROCEDURE (this: TextFrame) MarginTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 103)
    END MarginTop;

    PROCEDURE (this: TextFrame) PUTMarginTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 103, p1)
    END PUTMarginTop;

    PROCEDURE (this: TextFrame) Orientation* (): CtlOffice.MsoTextOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END Orientation;

    PROCEDURE (this: TextFrame) PUTOrientation* (p1: CtlOffice.MsoTextOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 104, p1)
    END PUTOrientation;

    PROCEDURE (this: TextFrame) HasText* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END HasText;

    PROCEDURE (this: TextFrame) TextRange* (): TextRange, NEW;
    BEGIN
        RETURN ThisTextRange(CtlC.GetAny(this, 2004))
    END TextRange;

    PROCEDURE (this: TextFrame) Ruler* (): Ruler, NEW;
    BEGIN
        RETURN ThisRuler(CtlC.GetAny(this, 2005))
    END Ruler;

    PROCEDURE (this: TextFrame) HorizontalAnchor* (): CtlOffice.MsoHorizontalAnchor, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END HorizontalAnchor;

    PROCEDURE (this: TextFrame) PUTHorizontalAnchor* (p1: CtlOffice.MsoHorizontalAnchor), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTHorizontalAnchor;

    PROCEDURE (this: TextFrame) VerticalAnchor* (): CtlOffice.MsoVerticalAnchor, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END VerticalAnchor;

    PROCEDURE (this: TextFrame) PUTVerticalAnchor* (p1: CtlOffice.MsoVerticalAnchor), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTVerticalAnchor;

    PROCEDURE (this: TextFrame) AutoSize* (): PpAutoSize, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END AutoSize;

    PROCEDURE (this: TextFrame) PUTAutoSize* (p1: PpAutoSize), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTAutoSize;

    PROCEDURE (this: TextFrame) WordWrap* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END WordWrap;

    PROCEDURE (this: TextFrame) PUTWordWrap* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTWordWrap;

    PROCEDURE (this: TextFrame) DeleteText* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2010, NIL);
    END DeleteText;


    (* ---------- CalloutFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: CalloutFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: CalloutFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: CalloutFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: CalloutFormat) AutomaticLength* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END AutomaticLength;

    PROCEDURE (this: CalloutFormat) CustomDrop* (Drop: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Drop, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END CustomDrop;

    PROCEDURE (this: CalloutFormat) CustomLength* (Length: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Length, arg[0]);
        CtlC.CallParMethod(this, 12, arg, NIL);
    END CustomLength;

    PROCEDURE (this: CalloutFormat) PresetDrop* (DropType: CtlOffice.MsoCalloutDropType), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(DropType, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END PresetDrop;

    PROCEDURE (this: CalloutFormat) Accent* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END Accent;

    PROCEDURE (this: CalloutFormat) PUTAccent* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTAccent;

    PROCEDURE (this: CalloutFormat) Angle* (): CtlOffice.MsoCalloutAngleType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Angle;

    PROCEDURE (this: CalloutFormat) PUTAngle* (p1: CtlOffice.MsoCalloutAngleType), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTAngle;

    PROCEDURE (this: CalloutFormat) AutoAttach* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END AutoAttach;

    PROCEDURE (this: CalloutFormat) PUTAutoAttach* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTAutoAttach;

    PROCEDURE (this: CalloutFormat) AutoLength* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END AutoLength;

    PROCEDURE (this: CalloutFormat) Border* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END Border;

    PROCEDURE (this: CalloutFormat) PUTBorder* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 104, p1)
    END PUTBorder;

    PROCEDURE (this: CalloutFormat) Drop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 105)
    END Drop;

    PROCEDURE (this: CalloutFormat) DropType* (): CtlOffice.MsoCalloutDropType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END DropType;

    PROCEDURE (this: CalloutFormat) Gap* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 107)
    END Gap;

    PROCEDURE (this: CalloutFormat) PUTGap* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 107, p1)
    END PUTGap;

    PROCEDURE (this: CalloutFormat) Length* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 108)
    END Length;

    PROCEDURE (this: CalloutFormat) Type* (): CtlOffice.MsoCalloutType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END Type;

    PROCEDURE (this: CalloutFormat) PUTType* (p1: CtlOffice.MsoCalloutType), NEW;
    BEGIN
        CtlC.PutInt(this, 109, p1)
    END PUTType;


    (* ---------- ShapeNodes, dual, nonextensible ---------- *)

    PROCEDURE (this: ShapeNodes) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: ShapeNodes) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: ShapeNodes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ShapeNodes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: ShapeNodes) Item* (index: CtlT.Any): ShapeNode, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShapeNode(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: ShapeNodes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ShapeNodes) Delete* (index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END Delete;

    PROCEDURE (this: ShapeNodes) Insert* (index: INTEGER; SegmentType: CtlOffice.MsoSegmentType; EditingType: CtlOffice.MsoEditingType; X1: SHORTREAL; Y1: SHORTREAL; X2: SHORTREAL; Y2: SHORTREAL; X3: SHORTREAL; Y3: SHORTREAL), NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[8]);
        CtlC.IntVar(SegmentType, arg[7]);
        CtlC.IntVar(EditingType, arg[6]);
        CtlC.SRealVar(X1, arg[5]);
        CtlC.SRealVar(Y1, arg[4]);
        CtlC.SRealVar(X2, arg[3]);
        CtlC.SRealVar(Y2, arg[2]);
        CtlC.SRealVar(X3, arg[1]);
        CtlC.SRealVar(Y3, arg[0]);
        CtlC.CallParMethod(this, 12, arg, NIL);
    END Insert;

    PROCEDURE (this: ShapeNodes) SetEditingType* (index: INTEGER; EditingType: CtlOffice.MsoEditingType), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[1]);
        CtlC.IntVar(EditingType, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END SetEditingType;

    PROCEDURE (this: ShapeNodes) SetPosition* (index: INTEGER; X1: SHORTREAL; Y1: SHORTREAL), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[2]);
        CtlC.SRealVar(X1, arg[1]);
        CtlC.SRealVar(Y1, arg[0]);
        CtlC.CallParMethod(this, 14, arg, NIL);
    END SetPosition;

    PROCEDURE (this: ShapeNodes) SetSegmentType* (index: INTEGER; SegmentType: CtlOffice.MsoSegmentType), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[1]);
        CtlC.IntVar(SegmentType, arg[0]);
        CtlC.CallParMethod(this, 15, arg, NIL);
    END SetSegmentType;


    (* ---------- ShapeNode, dual, nonextensible ---------- *)

    PROCEDURE (this: ShapeNode) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2001)
    END Application;

    PROCEDURE (this: ShapeNode) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Creator;

    PROCEDURE (this: ShapeNode) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ShapeNode) EditingType* (): CtlOffice.MsoEditingType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END EditingType;

    PROCEDURE (this: ShapeNode) Points* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 101)
    END Points;

    PROCEDURE (this: ShapeNode) SegmentType* (): CtlOffice.MsoSegmentType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END SegmentType;


    (* ---------- OLEFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: OLEFormat) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: OLEFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: OLEFormat) ObjectVerbs* (): ObjectVerbs, NEW;
    BEGIN
        RETURN ThisObjectVerbs(CtlC.GetAny(this, 2003))
    END ObjectVerbs;

    PROCEDURE (this: OLEFormat) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2004)
    END Object;

    PROCEDURE (this: OLEFormat) ProgID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2005)
    END ProgID;

    PROCEDURE (this: OLEFormat) FollowColors* (): PpFollowColors, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END FollowColors;

    PROCEDURE (this: OLEFormat) PUTFollowColors* (p1: PpFollowColors), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTFollowColors;

    PROCEDURE (this: OLEFormat) DoVerb* (index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 2007, arg, NIL);
    END DoVerb;

    PROCEDURE (this: OLEFormat) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2008, NIL);
    END Activate;


    (* ---------- LinkFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: LinkFormat) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: LinkFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: LinkFormat) SourceFullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END SourceFullName;

    PROCEDURE (this: LinkFormat) PUTSourceFullName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTSourceFullName;

    PROCEDURE (this: LinkFormat) AutoUpdate* (): PpUpdateOption, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END AutoUpdate;

    PROCEDURE (this: LinkFormat) PUTAutoUpdate* (p1: PpUpdateOption), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTAutoUpdate;

    PROCEDURE (this: LinkFormat) Update* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2005, NIL);
    END Update;


    (* ---------- ObjectVerbs, dual, nonextensible ---------- *)

    PROCEDURE (this: ObjectVerbs) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ObjectVerbs) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: ObjectVerbs) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: ObjectVerbs) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: ObjectVerbs) Item* (index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Item;


    (* ---------- AnimationSettings, dual, nonextensible ---------- *)

    PROCEDURE (this: AnimationSettings) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: AnimationSettings) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: AnimationSettings) DimColor* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 2003))
    END DimColor;

    PROCEDURE (this: AnimationSettings) SoundEffect* (): SoundEffect, NEW;
    BEGIN
        RETURN ThisSoundEffect(CtlC.GetAny(this, 2004))
    END SoundEffect;

    PROCEDURE (this: AnimationSettings) EntryEffect* (): PpEntryEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END EntryEffect;

    PROCEDURE (this: AnimationSettings) PUTEntryEffect* (p1: PpEntryEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTEntryEffect;

    PROCEDURE (this: AnimationSettings) AfterEffect* (): PpAfterEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END AfterEffect;

    PROCEDURE (this: AnimationSettings) PUTAfterEffect* (p1: PpAfterEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTAfterEffect;

    PROCEDURE (this: AnimationSettings) AnimationOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END AnimationOrder;

    PROCEDURE (this: AnimationSettings) PUTAnimationOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTAnimationOrder;

    PROCEDURE (this: AnimationSettings) AdvanceMode* (): PpAdvanceMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END AdvanceMode;

    PROCEDURE (this: AnimationSettings) PUTAdvanceMode* (p1: PpAdvanceMode), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTAdvanceMode;

    PROCEDURE (this: AnimationSettings) AdvanceTime* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2009)
    END AdvanceTime;

    PROCEDURE (this: AnimationSettings) PUTAdvanceTime* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2009, p1)
    END PUTAdvanceTime;

    PROCEDURE (this: AnimationSettings) PlaySettings* (): PlaySettings, NEW;
    BEGIN
        RETURN ThisPlaySettings(CtlC.GetAny(this, 2010))
    END PlaySettings;

    PROCEDURE (this: AnimationSettings) TextLevelEffect* (): PpTextLevelEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END TextLevelEffect;

    PROCEDURE (this: AnimationSettings) PUTTextLevelEffect* (p1: PpTextLevelEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 2011, p1)
    END PUTTextLevelEffect;

    PROCEDURE (this: AnimationSettings) TextUnitEffect* (): PpTextUnitEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2012)
    END TextUnitEffect;

    PROCEDURE (this: AnimationSettings) PUTTextUnitEffect* (p1: PpTextUnitEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 2012, p1)
    END PUTTextUnitEffect;

    PROCEDURE (this: AnimationSettings) Animate* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END Animate;

    PROCEDURE (this: AnimationSettings) PUTAnimate* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2013, p1)
    END PUTAnimate;

    PROCEDURE (this: AnimationSettings) AnimateBackground* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2014)
    END AnimateBackground;

    PROCEDURE (this: AnimationSettings) PUTAnimateBackground* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2014, p1)
    END PUTAnimateBackground;

    PROCEDURE (this: AnimationSettings) AnimateTextInReverse* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2015)
    END AnimateTextInReverse;

    PROCEDURE (this: AnimationSettings) PUTAnimateTextInReverse* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2015, p1)
    END PUTAnimateTextInReverse;

    PROCEDURE (this: AnimationSettings) ChartUnitEffect* (): PpChartUnitEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2016)
    END ChartUnitEffect;

    PROCEDURE (this: AnimationSettings) PUTChartUnitEffect* (p1: PpChartUnitEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 2016, p1)
    END PUTChartUnitEffect;


    (* ---------- ActionSettings, dual, nonextensible ---------- *)

    PROCEDURE (this: ActionSettings) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ActionSettings) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: ActionSettings) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: ActionSettings) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: ActionSettings) Item* (index: PpMouseActivation): ActionSetting, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisActionSetting(CtlC.VarAny(ret))
    END Item;


    (* ---------- ActionSetting, dual, nonextensible ---------- *)

    PROCEDURE (this: ActionSetting) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: ActionSetting) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: ActionSetting) Action* (): PpActionType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Action;

    PROCEDURE (this: ActionSetting) PUTAction* (p1: PpActionType), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTAction;

    PROCEDURE (this: ActionSetting) ActionVerb* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END ActionVerb;

    PROCEDURE (this: ActionSetting) PUTActionVerb* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTActionVerb;

    PROCEDURE (this: ActionSetting) AnimateAction* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END AnimateAction;

    PROCEDURE (this: ActionSetting) PUTAnimateAction* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTAnimateAction;

    PROCEDURE (this: ActionSetting) Run* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2006)
    END Run;

    PROCEDURE (this: ActionSetting) PUTRun* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2006, p1)
    END PUTRun;

    PROCEDURE (this: ActionSetting) SlideShowName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END SlideShowName;

    PROCEDURE (this: ActionSetting) PUTSlideShowName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTSlideShowName;

    PROCEDURE (this: ActionSetting) Hyperlink* (): Hyperlink, NEW;
    BEGIN
        RETURN ThisHyperlink(CtlC.GetAny(this, 2008))
    END Hyperlink;

    PROCEDURE (this: ActionSetting) SoundEffect* (): SoundEffect, NEW;
    BEGIN
        RETURN ThisSoundEffect(CtlC.GetAny(this, 2009))
    END SoundEffect;

    PROCEDURE (this: ActionSetting) ShowandReturn* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END ShowandReturn;

    PROCEDURE (this: ActionSetting) PUTShowandReturn* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTShowandReturn;


    (* ---------- PlaySettings, dual, nonextensible ---------- *)

    PROCEDURE (this: PlaySettings) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PlaySettings) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PlaySettings) ActionVerb* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END ActionVerb;

    PROCEDURE (this: PlaySettings) PUTActionVerb* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTActionVerb;

    PROCEDURE (this: PlaySettings) HideWhileNotPlaying* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END HideWhileNotPlaying;

    PROCEDURE (this: PlaySettings) PUTHideWhileNotPlaying* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTHideWhileNotPlaying;

    PROCEDURE (this: PlaySettings) LoopUntilStopped* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END LoopUntilStopped;

    PROCEDURE (this: PlaySettings) PUTLoopUntilStopped* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTLoopUntilStopped;

    PROCEDURE (this: PlaySettings) PlayOnEntry* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END PlayOnEntry;

    PROCEDURE (this: PlaySettings) PUTPlayOnEntry* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTPlayOnEntry;

    PROCEDURE (this: PlaySettings) RewindMovie* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END RewindMovie;

    PROCEDURE (this: PlaySettings) PUTRewindMovie* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTRewindMovie;

    PROCEDURE (this: PlaySettings) PauseAnimation* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END PauseAnimation;

    PROCEDURE (this: PlaySettings) PUTPauseAnimation* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTPauseAnimation;

    PROCEDURE (this: PlaySettings) StopAfterSlides* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END StopAfterSlides;

    PROCEDURE (this: PlaySettings) PUTStopAfterSlides* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTStopAfterSlides;


    (* ---------- TextRange, dual, nonextensible ---------- *)

    PROCEDURE (this: TextRange) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: TextRange) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: TextRange) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: TextRange) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: TextRange) ActionSettings* (): ActionSettings, NEW;
    BEGIN
        RETURN ThisActionSettings(CtlC.GetAny(this, 2003))
    END ActionSettings;

    PROCEDURE (this: TextRange) Start* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END Start;

    PROCEDURE (this: TextRange) Length* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END Length;

    PROCEDURE (this: TextRange) BoundLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2006)
    END BoundLeft;

    PROCEDURE (this: TextRange) BoundTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2007)
    END BoundTop;

    PROCEDURE (this: TextRange) BoundWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2008)
    END BoundWidth;

    PROCEDURE (this: TextRange) BoundHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2009)
    END BoundHeight;

    PROCEDURE (this: TextRange) Paragraphs* (Start: INTEGER; Length: INTEGER): TextRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Start, arg[1]);
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 2010, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Paragraphs;

    PROCEDURE (this: TextRange) Sentences* (Start: INTEGER; Length: INTEGER): TextRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Start, arg[1]);
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 2011, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Sentences;

    PROCEDURE (this: TextRange) Words* (Start: INTEGER; Length: INTEGER): TextRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Start, arg[1]);
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 2012, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Words;

    PROCEDURE (this: TextRange) Characters* (Start: INTEGER; Length: INTEGER): TextRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Start, arg[1]);
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 2013, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Characters;

    PROCEDURE (this: TextRange) Lines* (Start: INTEGER; Length: INTEGER): TextRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Start, arg[1]);
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 2014, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Lines;

    PROCEDURE (this: TextRange) Runs* (Start: INTEGER; Length: INTEGER): TextRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Start, arg[1]);
        CtlC.IntVar(Length, arg[0]);
        CtlC.CallParMethod(this, 2015, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Runs;

    PROCEDURE (this: TextRange) TrimText* (): TextRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2016, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END TrimText;

    PROCEDURE (this: TextRange) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Text;

    PROCEDURE (this: TextRange) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTText;

    PROCEDURE (this: TextRange) InsertAfter* (NewText: ARRAY OF CHAR): TextRange, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(NewText, arg[0]);
        CtlC.CallParMethod(this, 2017, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END InsertAfter;

    PROCEDURE (this: TextRange) InsertBefore* (NewText: ARRAY OF CHAR): TextRange, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(NewText, arg[0]);
        CtlC.CallParMethod(this, 2018, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END InsertBefore;

    PROCEDURE (this: TextRange) InsertDateTime* (DateTimeFormat: PpDateTimeFormat; InsertAsField: CtlOffice.MsoTriState): TextRange, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(DateTimeFormat, arg[1]);
        CtlC.IntVar(InsertAsField, arg[0]);
        CtlC.CallParMethod(this, 2019, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END InsertDateTime;

    PROCEDURE (this: TextRange) InsertSlideNumber* (): TextRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2020, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END InsertSlideNumber;

    PROCEDURE (this: TextRange) InsertSymbol* (FontName: ARRAY OF CHAR; CharNumber: INTEGER; Unicode: CtlOffice.MsoTriState): TextRange, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FontName, arg[2]);
        CtlC.IntVar(CharNumber, arg[1]);
        CtlC.IntVar(Unicode, arg[0]);
        CtlC.CallParMethod(this, 2021, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END InsertSymbol;

    PROCEDURE (this: TextRange) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 2022))
    END Font;

    PROCEDURE (this: TextRange) ParagraphFormat* (): ParagraphFormat, NEW;
    BEGIN
        RETURN ThisParagraphFormat(CtlC.GetAny(this, 2023))
    END ParagraphFormat;

    PROCEDURE (this: TextRange) IndentLevel* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2024)
    END IndentLevel;

    PROCEDURE (this: TextRange) PUTIndentLevel* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2024, p1)
    END PUTIndentLevel;

    PROCEDURE (this: TextRange) Select* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2025, NIL);
    END Select;

    PROCEDURE (this: TextRange) Cut* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2026, NIL);
    END Cut;

    PROCEDURE (this: TextRange) Copy* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2027, NIL);
    END Copy;

    PROCEDURE (this: TextRange) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2028, NIL);
    END Delete;

    PROCEDURE (this: TextRange) Paste* (): TextRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2029, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Paste;

    PROCEDURE (this: TextRange) ChangeCase* (Type: PpChangeCase), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[0]);
        CtlC.CallParMethod(this, 2030, arg, NIL);
    END ChangeCase;

    PROCEDURE (this: TextRange) AddPeriods* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2031, NIL);
    END AddPeriods;

    PROCEDURE (this: TextRange) RemovePeriods* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2032, NIL);
    END RemovePeriods;

    PROCEDURE (this: TextRange) Find* (FindWhat: ARRAY OF CHAR; After: INTEGER; MatchCase: CtlOffice.MsoTriState; WholeWords: CtlOffice.MsoTriState): TextRange, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FindWhat, arg[3]);
        CtlC.IntVar(After, arg[2]);
        CtlC.IntVar(MatchCase, arg[1]);
        CtlC.IntVar(WholeWords, arg[0]);
        CtlC.CallParMethod(this, 2033, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Find;

    PROCEDURE (this: TextRange) Replace* (FindWhat: ARRAY OF CHAR; ReplaceWhat: ARRAY OF CHAR; After: INTEGER; MatchCase: CtlOffice.MsoTriState; WholeWords: CtlOffice.MsoTriState): TextRange, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FindWhat, arg[4]);
        CtlC.StrVar(ReplaceWhat, arg[3]);
        CtlC.IntVar(After, arg[2]);
        CtlC.IntVar(MatchCase, arg[1]);
        CtlC.IntVar(WholeWords, arg[0]);
        CtlC.CallParMethod(this, 2034, arg, ret);
        RETURN ThisTextRange(CtlC.VarAny(ret))
    END Replace;

    PROCEDURE (this: TextRange) RotatedBounds* (OUT X1: SHORTREAL; OUT Y1: SHORTREAL; OUT X2: SHORTREAL; OUT Y2: SHORTREAL; OUT X3: SHORTREAL; OUT Y3: SHORTREAL; OUT x4: SHORTREAL; OUT y4: SHORTREAL), NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant;
    BEGIN
        CtlC.RefSRealVar(X1, arg[7]);
        CtlC.RefSRealVar(Y1, arg[6]);
        CtlC.RefSRealVar(X2, arg[5]);
        CtlC.RefSRealVar(Y2, arg[4]);
        CtlC.RefSRealVar(X3, arg[3]);
        CtlC.RefSRealVar(Y3, arg[2]);
        CtlC.RefSRealVar(x4, arg[1]);
        CtlC.RefSRealVar(y4, arg[0]);
        CtlC.CallParMethod(this, 2035, arg, NIL);
    END RotatedBounds;

    PROCEDURE (this: TextRange) LanguageID* (): CtlOffice.MsoLanguageID, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2036)
    END LanguageID;

    PROCEDURE (this: TextRange) PUTLanguageID* (p1: CtlOffice.MsoLanguageID), NEW;
    BEGIN
        CtlC.PutInt(this, 2036, p1)
    END PUTLanguageID;

    PROCEDURE (this: TextRange) RtlRun* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2037, NIL);
    END RtlRun;

    PROCEDURE (this: TextRange) LtrRun* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2038, NIL);
    END LtrRun;


    (* ---------- Ruler, dual, nonextensible ---------- *)

    PROCEDURE (this: Ruler) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Ruler) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Ruler) TabStops* (): TabStops, NEW;
    BEGIN
        RETURN ThisTabStops(CtlC.GetAny(this, 2003))
    END TabStops;

    PROCEDURE (this: Ruler) Levels* (): RulerLevels, NEW;
    BEGIN
        RETURN ThisRulerLevels(CtlC.GetAny(this, 2004))
    END Levels;


    (* ---------- RulerLevels, dual, nonextensible ---------- *)

    PROCEDURE (this: RulerLevels) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: RulerLevels) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: RulerLevels) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: RulerLevels) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: RulerLevels) Item* (index: INTEGER): RulerLevel, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisRulerLevel(CtlC.VarAny(ret))
    END Item;


    (* ---------- RulerLevel, dual, nonextensible ---------- *)

    PROCEDURE (this: RulerLevel) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: RulerLevel) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: RulerLevel) FirstMargin* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2003)
    END FirstMargin;

    PROCEDURE (this: RulerLevel) PUTFirstMargin* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2003, p1)
    END PUTFirstMargin;

    PROCEDURE (this: RulerLevel) LeftMargin* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2004)
    END LeftMargin;

    PROCEDURE (this: RulerLevel) PUTLeftMargin* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2004, p1)
    END PUTLeftMargin;


    (* ---------- TabStops, dual, nonextensible ---------- *)

    PROCEDURE (this: TabStops) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: TabStops) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: TabStops) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: TabStops) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: TabStops) Item* (index: INTEGER): TabStop, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisTabStop(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: TabStops) DefaultSpacing* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2003)
    END DefaultSpacing;

    PROCEDURE (this: TabStops) PUTDefaultSpacing* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2003, p1)
    END PUTDefaultSpacing;

    PROCEDURE (this: TabStops) Add* (Type: PpTabStopType; Position: SHORTREAL): TabStop, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[1]);
        CtlC.SRealVar(Position, arg[0]);
        CtlC.CallParMethod(this, 2004, arg, ret);
        RETURN ThisTabStop(CtlC.VarAny(ret))
    END Add;


    (* ---------- TabStop, dual, nonextensible ---------- *)

    PROCEDURE (this: TabStop) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: TabStop) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: TabStop) Type* (): PpTabStopType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Type;

    PROCEDURE (this: TabStop) PUTType* (p1: PpTabStopType), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTType;

    PROCEDURE (this: TabStop) Position* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2004)
    END Position;

    PROCEDURE (this: TabStop) PUTPosition* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2004, p1)
    END PUTPosition;

    PROCEDURE (this: TabStop) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2005, NIL);
    END Clear;


    (* ---------- Font, dual, nonextensible ---------- *)

    PROCEDURE (this: Font) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Font) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Font) Color* (): ColorFormat, NEW;
    BEGIN
        RETURN ThisColorFormat(CtlC.GetAny(this, 2003))
    END Color;

    PROCEDURE (this: Font) Bold* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END Bold;

    PROCEDURE (this: Font) PUTBold* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTBold;

    PROCEDURE (this: Font) Italic* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END Italic;

    PROCEDURE (this: Font) PUTItalic* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTItalic;

    PROCEDURE (this: Font) Shadow* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END Shadow;

    PROCEDURE (this: Font) PUTShadow* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTShadow;

    PROCEDURE (this: Font) Emboss* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END Emboss;

    PROCEDURE (this: Font) PUTEmboss* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTEmboss;

    PROCEDURE (this: Font) Underline* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END Underline;

    PROCEDURE (this: Font) PUTUnderline* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTUnderline;

    PROCEDURE (this: Font) Subscript* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END Subscript;

    PROCEDURE (this: Font) PUTSubscript* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTSubscript;

    PROCEDURE (this: Font) Superscript* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END Superscript;

    PROCEDURE (this: Font) PUTSuperscript* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTSuperscript;

    PROCEDURE (this: Font) BaselineOffset* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2011)
    END BaselineOffset;

    PROCEDURE (this: Font) PUTBaselineOffset* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2011, p1)
    END PUTBaselineOffset;

    PROCEDURE (this: Font) Embedded* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2012)
    END Embedded;

    PROCEDURE (this: Font) Embeddable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END Embeddable;

    PROCEDURE (this: Font) Size* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2014)
    END Size;

    PROCEDURE (this: Font) PUTSize* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2014, p1)
    END PUTSize;

    PROCEDURE (this: Font) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2015)
    END Name;

    PROCEDURE (this: Font) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2015, p1)
    END PUTName;

    PROCEDURE (this: Font) NameFarEast* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2016)
    END NameFarEast;

    PROCEDURE (this: Font) PUTNameFarEast* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2016, p1)
    END PUTNameFarEast;

    PROCEDURE (this: Font) NameAscii* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2017)
    END NameAscii;

    PROCEDURE (this: Font) PUTNameAscii* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2017, p1)
    END PUTNameAscii;

    PROCEDURE (this: Font) AutoRotateNumbers* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2018)
    END AutoRotateNumbers;

    PROCEDURE (this: Font) PUTAutoRotateNumbers* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2018, p1)
    END PUTAutoRotateNumbers;

    PROCEDURE (this: Font) NameOther* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2019)
    END NameOther;

    PROCEDURE (this: Font) PUTNameOther* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2019, p1)
    END PUTNameOther;

    PROCEDURE (this: Font) NameComplexScript* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2020)
    END NameComplexScript;

    PROCEDURE (this: Font) PUTNameComplexScript* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2020, p1)
    END PUTNameComplexScript;


    (* ---------- ParagraphFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: ParagraphFormat) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: ParagraphFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: ParagraphFormat) Alignment* (): PpParagraphAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Alignment;

    PROCEDURE (this: ParagraphFormat) PUTAlignment* (p1: PpParagraphAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTAlignment;

    PROCEDURE (this: ParagraphFormat) Bullet* (): BulletFormat, NEW;
    BEGIN
        RETURN ThisBulletFormat(CtlC.GetAny(this, 2004))
    END Bullet;

    PROCEDURE (this: ParagraphFormat) LineRuleBefore* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END LineRuleBefore;

    PROCEDURE (this: ParagraphFormat) PUTLineRuleBefore* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTLineRuleBefore;

    PROCEDURE (this: ParagraphFormat) LineRuleAfter* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END LineRuleAfter;

    PROCEDURE (this: ParagraphFormat) PUTLineRuleAfter* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTLineRuleAfter;

    PROCEDURE (this: ParagraphFormat) LineRuleWithin* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END LineRuleWithin;

    PROCEDURE (this: ParagraphFormat) PUTLineRuleWithin* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTLineRuleWithin;

    PROCEDURE (this: ParagraphFormat) SpaceBefore* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2008)
    END SpaceBefore;

    PROCEDURE (this: ParagraphFormat) PUTSpaceBefore* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2008, p1)
    END PUTSpaceBefore;

    PROCEDURE (this: ParagraphFormat) SpaceAfter* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2009)
    END SpaceAfter;

    PROCEDURE (this: ParagraphFormat) PUTSpaceAfter* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2009, p1)
    END PUTSpaceAfter;

    PROCEDURE (this: ParagraphFormat) SpaceWithin* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2010)
    END SpaceWithin;

    PROCEDURE (this: ParagraphFormat) PUTSpaceWithin* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2010, p1)
    END PUTSpaceWithin;

    PROCEDURE (this: ParagraphFormat) BaseLineAlignment* (): PpBaselineAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END BaseLineAlignment;

    PROCEDURE (this: ParagraphFormat) PUTBaseLineAlignment* (p1: PpBaselineAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 2011, p1)
    END PUTBaseLineAlignment;

    PROCEDURE (this: ParagraphFormat) FarEastLineBreakControl* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2012)
    END FarEastLineBreakControl;

    PROCEDURE (this: ParagraphFormat) PUTFarEastLineBreakControl* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2012, p1)
    END PUTFarEastLineBreakControl;

    PROCEDURE (this: ParagraphFormat) WordWrap* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END WordWrap;

    PROCEDURE (this: ParagraphFormat) PUTWordWrap* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2013, p1)
    END PUTWordWrap;

    PROCEDURE (this: ParagraphFormat) HangingPunctuation* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2014)
    END HangingPunctuation;

    PROCEDURE (this: ParagraphFormat) PUTHangingPunctuation* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2014, p1)
    END PUTHangingPunctuation;

    PROCEDURE (this: ParagraphFormat) TextDirection* (): PpDirection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2015)
    END TextDirection;

    PROCEDURE (this: ParagraphFormat) PUTTextDirection* (p1: PpDirection), NEW;
    BEGIN
        CtlC.PutInt(this, 2015, p1)
    END PUTTextDirection;


    (* ---------- BulletFormat, dual, nonextensible ---------- *)

    PROCEDURE (this: BulletFormat) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: BulletFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: BulletFormat) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END Visible;

    PROCEDURE (this: BulletFormat) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTVisible;

    PROCEDURE (this: BulletFormat) Character* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Character;

    PROCEDURE (this: BulletFormat) PUTCharacter* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTCharacter;

    PROCEDURE (this: BulletFormat) RelativeSize* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2004)
    END RelativeSize;

    PROCEDURE (this: BulletFormat) PUTRelativeSize* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2004, p1)
    END PUTRelativeSize;

    PROCEDURE (this: BulletFormat) UseTextColor* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END UseTextColor;

    PROCEDURE (this: BulletFormat) PUTUseTextColor* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTUseTextColor;

    PROCEDURE (this: BulletFormat) UseTextFont* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END UseTextFont;

    PROCEDURE (this: BulletFormat) PUTUseTextFont* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTUseTextFont;

    PROCEDURE (this: BulletFormat) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 2007))
    END Font;

    PROCEDURE (this: BulletFormat) Type* (): PpBulletType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END Type;

    PROCEDURE (this: BulletFormat) PUTType* (p1: PpBulletType), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTType;

    PROCEDURE (this: BulletFormat) Style* (): PpNumberedBulletStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END Style;

    PROCEDURE (this: BulletFormat) PUTStyle* (p1: PpNumberedBulletStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTStyle;

    PROCEDURE (this: BulletFormat) StartValue* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END StartValue;

    PROCEDURE (this: BulletFormat) PUTStartValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTStartValue;

    PROCEDURE (this: BulletFormat) Picture* (Picture: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Picture, arg[0]);
        CtlC.CallParMethod(this, 2011, arg, NIL);
    END Picture;

    PROCEDURE (this: BulletFormat) Number* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2012)
    END Number;


    (* ---------- TextStyles, dual, nonextensible ---------- *)

    PROCEDURE (this: TextStyles) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: TextStyles) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: TextStyles) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: TextStyles) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: TextStyles) Item* (Type: PpTextStyleType): TextStyle, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisTextStyle(CtlC.VarAny(ret))
    END Item;


    (* ---------- TextStyle, dual, nonextensible ---------- *)

    PROCEDURE (this: TextStyle) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: TextStyle) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: TextStyle) Ruler* (): Ruler, NEW;
    BEGIN
        RETURN ThisRuler(CtlC.GetAny(this, 2003))
    END Ruler;

    PROCEDURE (this: TextStyle) TextFrame* (): TextFrame, NEW;
    BEGIN
        RETURN ThisTextFrame(CtlC.GetAny(this, 2004))
    END TextFrame;

    PROCEDURE (this: TextStyle) Levels* (): TextStyleLevels, NEW;
    BEGIN
        RETURN ThisTextStyleLevels(CtlC.GetAny(this, 2005))
    END Levels;


    (* ---------- TextStyleLevels, dual, nonextensible ---------- *)

    PROCEDURE (this: TextStyleLevels) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: TextStyleLevels) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: TextStyleLevels) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: TextStyleLevels) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: TextStyleLevels) Item* (Level: INTEGER): TextStyleLevel, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Level, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisTextStyleLevel(CtlC.VarAny(ret))
    END Item;


    (* ---------- TextStyleLevel, dual, nonextensible ---------- *)

    PROCEDURE (this: TextStyleLevel) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: TextStyleLevel) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: TextStyleLevel) ParagraphFormat* (): ParagraphFormat, NEW;
    BEGIN
        RETURN ThisParagraphFormat(CtlC.GetAny(this, 2003))
    END ParagraphFormat;

    PROCEDURE (this: TextStyleLevel) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 2004))
    END Font;


    (* ---------- HeaderFooter, dual, nonextensible ---------- *)

    PROCEDURE (this: HeaderFooter) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: HeaderFooter) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: HeaderFooter) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Visible;

    PROCEDURE (this: HeaderFooter) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTVisible;

    PROCEDURE (this: HeaderFooter) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END Text;

    PROCEDURE (this: HeaderFooter) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTText;

    PROCEDURE (this: HeaderFooter) UseFormat* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END UseFormat;

    PROCEDURE (this: HeaderFooter) PUTUseFormat* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTUseFormat;

    PROCEDURE (this: HeaderFooter) Format* (): PpDateTimeFormat, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END Format;

    PROCEDURE (this: HeaderFooter) PUTFormat* (p1: PpDateTimeFormat), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTFormat;


    (* ---------- _Presentation, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _Presentation) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: _Presentation) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: _Presentation) SlideMaster* (): _Master, NEW;
    BEGIN
        RETURN This_Master(CtlC.GetAny(this, 2003))
    END SlideMaster;

    PROCEDURE (this: _Presentation) TitleMaster* (): _Master, NEW;
    BEGIN
        RETURN This_Master(CtlC.GetAny(this, 2004))
    END TitleMaster;

    PROCEDURE (this: _Presentation) HasTitleMaster* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END HasTitleMaster;

    PROCEDURE (this: _Presentation) AddTitleMaster* (): _Master, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2006, ret);
        RETURN This_Master(CtlC.VarAny(ret))
    END AddTitleMaster;

    PROCEDURE (this: _Presentation) ApplyTemplate* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2007, arg, NIL);
    END ApplyTemplate;

    PROCEDURE (this: _Presentation) TemplateName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2008)
    END TemplateName;

    PROCEDURE (this: _Presentation) NotesMaster* (): _Master, NEW;
    BEGIN
        RETURN This_Master(CtlC.GetAny(this, 2009))
    END NotesMaster;

    PROCEDURE (this: _Presentation) HandoutMaster* (): _Master, NEW;
    BEGIN
        RETURN This_Master(CtlC.GetAny(this, 2010))
    END HandoutMaster;

    PROCEDURE (this: _Presentation) Slides* (): Slides, NEW;
    BEGIN
        RETURN ThisSlides(CtlC.GetAny(this, 2011))
    END Slides;

    PROCEDURE (this: _Presentation) PageSetup* (): PageSetup, NEW;
    BEGIN
        RETURN ThisPageSetup(CtlC.GetAny(this, 2012))
    END PageSetup;

    PROCEDURE (this: _Presentation) ColorSchemes* (): ColorSchemes, NEW;
    BEGIN
        RETURN ThisColorSchemes(CtlC.GetAny(this, 2013))
    END ColorSchemes;

    PROCEDURE (this: _Presentation) ExtraColors* (): ExtraColors, NEW;
    BEGIN
        RETURN ThisExtraColors(CtlC.GetAny(this, 2014))
    END ExtraColors;

    PROCEDURE (this: _Presentation) SlideShowSettings* (): SlideShowSettings, NEW;
    BEGIN
        RETURN ThisSlideShowSettings(CtlC.GetAny(this, 2015))
    END SlideShowSettings;

    PROCEDURE (this: _Presentation) Fonts* (): Fonts, NEW;
    BEGIN
        RETURN ThisFonts(CtlC.GetAny(this, 2016))
    END Fonts;

    PROCEDURE (this: _Presentation) Windows* (): DocumentWindows, NEW;
    BEGIN
        RETURN ThisDocumentWindows(CtlC.GetAny(this, 2017))
    END Windows;

    PROCEDURE (this: _Presentation) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2018))
    END Tags;

    PROCEDURE (this: _Presentation) DefaultShape* (): Shape, NEW;
    BEGIN
        RETURN ThisShape(CtlC.GetAny(this, 2019))
    END DefaultShape;

    PROCEDURE (this: _Presentation) BuiltInDocumentProperties* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2020)
    END BuiltInDocumentProperties;

    PROCEDURE (this: _Presentation) CustomDocumentProperties* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2021)
    END CustomDocumentProperties;

    PROCEDURE (this: _Presentation) VBProject* (): CtlVBIDE.VBProject, NEW;
    BEGIN
        RETURN CtlVBIDE.This_VBProject(CtlC.GetAny(this, 2022))
    END VBProject;

    PROCEDURE (this: _Presentation) ReadOnly* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2023)
    END ReadOnly;

    PROCEDURE (this: _Presentation) FullName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2024)
    END FullName;

    PROCEDURE (this: _Presentation) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2025)
    END Name;

    PROCEDURE (this: _Presentation) Path* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2026)
    END Path;

    PROCEDURE (this: _Presentation) Saved* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2027)
    END Saved;

    PROCEDURE (this: _Presentation) PUTSaved* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2027, p1)
    END PUTSaved;

    PROCEDURE (this: _Presentation) LayoutDirection* (): PpDirection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2028)
    END LayoutDirection;

    PROCEDURE (this: _Presentation) PUTLayoutDirection* (p1: PpDirection), NEW;
    BEGIN
        CtlC.PutInt(this, 2028, p1)
    END PUTLayoutDirection;

    PROCEDURE (this: _Presentation) NewWindow* (): DocumentWindow, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2029, ret);
        RETURN ThisDocumentWindow(CtlC.VarAny(ret))
    END NewWindow;

    PROCEDURE (this: _Presentation) FollowHyperlink* (Address: ARRAY OF CHAR; SubAddress: ARRAY OF CHAR; NewWindow: BOOLEAN; AddHistory: BOOLEAN; ExtraInfo: ARRAY OF CHAR; Method: CtlOffice.MsoExtraInfoMethod; HeaderInfo: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 7 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Address, arg[6]);
        CtlC.StrVar(SubAddress, arg[5]);
        CtlC.BoolVar(NewWindow, arg[4]);
        CtlC.BoolVar(AddHistory, arg[3]);
        CtlC.StrVar(ExtraInfo, arg[2]);
        CtlC.IntVar(Method, arg[1]);
        CtlC.StrVar(HeaderInfo, arg[0]);
        CtlC.CallParMethod(this, 2030, arg, NIL);
    END FollowHyperlink;

    PROCEDURE (this: _Presentation) AddToFavorites* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2031, NIL);
    END AddToFavorites;

    PROCEDURE (this: _Presentation) PrintOptions* (): PrintOptions, NEW;
    BEGIN
        RETURN ThisPrintOptions(CtlC.GetAny(this, 2033))
    END PrintOptions;

    PROCEDURE (this: _Presentation) PrintOut* (From: INTEGER; To: INTEGER; PrintToFile: ARRAY OF CHAR; Copies: INTEGER; Collate: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(From, arg[4]);
        CtlC.IntVar(To, arg[3]);
        CtlC.StrVar(PrintToFile, arg[2]);
        CtlC.IntVar(Copies, arg[1]);
        CtlC.IntVar(Collate, arg[0]);
        CtlC.CallParMethod(this, 2034, arg, NIL);
    END PrintOut;

    PROCEDURE (this: _Presentation) Save* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2035, NIL);
    END Save;

    PROCEDURE (this: _Presentation) SaveAs* (FileName: ARRAY OF CHAR; FileFormat: PpSaveAsFileType; EmbedTrueTypeFonts: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[2]);
        CtlC.IntVar(FileFormat, arg[1]);
        CtlC.IntVar(EmbedTrueTypeFonts, arg[0]);
        CtlC.CallParMethod(this, 2036, arg, NIL);
    END SaveAs;

    PROCEDURE (this: _Presentation) SaveCopyAs* (FileName: ARRAY OF CHAR; FileFormat: PpSaveAsFileType; EmbedTrueTypeFonts: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[2]);
        CtlC.IntVar(FileFormat, arg[1]);
        CtlC.IntVar(EmbedTrueTypeFonts, arg[0]);
        CtlC.CallParMethod(this, 2037, arg, NIL);
    END SaveCopyAs;

    PROCEDURE (this: _Presentation) Export* (Path: ARRAY OF CHAR; FilterName: ARRAY OF CHAR; ScaleWidth: INTEGER; ScaleHeight: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Path, arg[3]);
        CtlC.StrVar(FilterName, arg[2]);
        CtlC.IntVar(ScaleWidth, arg[1]);
        CtlC.IntVar(ScaleHeight, arg[0]);
        CtlC.CallParMethod(this, 2038, arg, NIL);
    END Export;

    PROCEDURE (this: _Presentation) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2039, NIL);
    END Close;

    PROCEDURE (this: _Presentation) SetUndoText* (Text: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Text, arg[0]);
        CtlC.CallParMethod(this, 2040, arg, NIL);
    END SetUndoText;

    PROCEDURE (this: _Presentation) Container* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2041)
    END Container;

    PROCEDURE (this: _Presentation) DisplayComments* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2042)
    END DisplayComments;

    PROCEDURE (this: _Presentation) PUTDisplayComments* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2042, p1)
    END PUTDisplayComments;

    PROCEDURE (this: _Presentation) FarEastLineBreakLevel* (): PpFarEastLineBreakLevel, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2043)
    END FarEastLineBreakLevel;

    PROCEDURE (this: _Presentation) PUTFarEastLineBreakLevel* (p1: PpFarEastLineBreakLevel), NEW;
    BEGIN
        CtlC.PutInt(this, 2043, p1)
    END PUTFarEastLineBreakLevel;

    PROCEDURE (this: _Presentation) NoLineBreakBefore* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2044)
    END NoLineBreakBefore;

    PROCEDURE (this: _Presentation) PUTNoLineBreakBefore* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2044, p1)
    END PUTNoLineBreakBefore;

    PROCEDURE (this: _Presentation) NoLineBreakAfter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2045)
    END NoLineBreakAfter;

    PROCEDURE (this: _Presentation) PUTNoLineBreakAfter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2045, p1)
    END PUTNoLineBreakAfter;

    PROCEDURE (this: _Presentation) UpdateLinks* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2046, NIL);
    END UpdateLinks;

    PROCEDURE (this: _Presentation) SlideShowWindow* (): SlideShowWindow, NEW;
    BEGIN
        RETURN ThisSlideShowWindow(CtlC.GetAny(this, 2047))
    END SlideShowWindow;

    PROCEDURE (this: _Presentation) FarEastLineBreakLanguage* (): CtlOffice.MsoFarEastLineBreakLanguageID, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2048)
    END FarEastLineBreakLanguage;

    PROCEDURE (this: _Presentation) PUTFarEastLineBreakLanguage* (p1: CtlOffice.MsoFarEastLineBreakLanguageID), NEW;
    BEGIN
        CtlC.PutInt(this, 2048, p1)
    END PUTFarEastLineBreakLanguage;

    PROCEDURE (this: _Presentation) WebPagePreview* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2049, NIL);
    END WebPagePreview;

    PROCEDURE (this: _Presentation) DefaultLanguageID* (): CtlOffice.MsoLanguageID, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2050)
    END DefaultLanguageID;

    PROCEDURE (this: _Presentation) PUTDefaultLanguageID* (p1: CtlOffice.MsoLanguageID), NEW;
    BEGIN
        CtlC.PutInt(this, 2050, p1)
    END PUTDefaultLanguageID;

    PROCEDURE (this: _Presentation) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.This_CommandBars(CtlC.GetAny(this, 2051))
    END CommandBars;

    PROCEDURE (this: _Presentation) PublishObjects* (): PublishObjects, NEW;
    BEGIN
        RETURN ThisPublishObjects(CtlC.GetAny(this, 2052))
    END PublishObjects;

    PROCEDURE (this: _Presentation) WebOptions* (): WebOptions, NEW;
    BEGIN
        RETURN ThisWebOptions(CtlC.GetAny(this, 2053))
    END WebOptions;

    PROCEDURE (this: _Presentation) HTMLProject* (): CtlOffice.HTMLProject, NEW;
    BEGIN
        RETURN CtlOffice.ThisHTMLProject(CtlC.GetAny(this, 2054))
    END HTMLProject;

    PROCEDURE (this: _Presentation) ReloadAs* (cp: CtlOffice.MsoEncoding), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(cp, arg[0]);
        CtlC.CallParMethod(this, 2055, arg, NIL);
    END ReloadAs;

    PROCEDURE (this: _Presentation) MakeIntoTemplate* (IsDesignTemplate: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(IsDesignTemplate, arg[0]);
        CtlC.CallParMethod(this, 2056, arg, NIL);
    END MakeIntoTemplate;

    PROCEDURE (this: _Presentation) EnvelopeVisible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2057)
    END EnvelopeVisible;

    PROCEDURE (this: _Presentation) PUTEnvelopeVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2057, p1)
    END PUTEnvelopeVisible;

    PROCEDURE (this: _Presentation) sblt* (s: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(s, arg[0]);
        CtlC.CallParMethod(this, 2058, arg, NIL);
    END sblt;

    PROCEDURE (this: _Presentation) VBASigned* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2059)
    END VBASigned;


    (* ---------- PPDialogs, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPDialogs) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: PPDialogs) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: PPDialogs) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PPDialogs) Item* (index: CtlT.Any): PPDialog, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisPPDialog(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: PPDialogs) AddDialog* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL; Modal: CtlOffice.MsoTriState; ParentWindow: CtlT.IUnknown; Position: PpDialogPositioning; DisplayHelp: CtlOffice.MsoTriState): PPDialog, NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[7]);
        CtlC.SRealVar(Top, arg[6]);
        CtlC.SRealVar(Width, arg[5]);
        CtlC.SRealVar(Height, arg[4]);
        CtlC.IntVar(Modal, arg[3]);
        CtlC.IntfceVar(ParentWindow, arg[2]);
        CtlC.IntVar(Position, arg[1]);
        CtlC.IntVar(DisplayHelp, arg[0]);
        CtlC.CallParMethod(this, 2002, arg, ret);
        RETURN ThisPPDialog(CtlC.VarAny(ret))
    END AddDialog;

    PROCEDURE (this: PPDialogs) AddTabDialog* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL; Modal: CtlOffice.MsoTriState; ParentWindow: CtlT.IUnknown; Position: PpDialogPositioning; DisplayHelp: CtlOffice.MsoTriState): PPDialog, NEW;
        VAR arg: ARRAY 8 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[7]);
        CtlC.SRealVar(Top, arg[6]);
        CtlC.SRealVar(Width, arg[5]);
        CtlC.SRealVar(Height, arg[4]);
        CtlC.IntVar(Modal, arg[3]);
        CtlC.IntfceVar(ParentWindow, arg[2]);
        CtlC.IntVar(Position, arg[1]);
        CtlC.IntVar(DisplayHelp, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisPPDialog(CtlC.VarAny(ret))
    END AddTabDialog;

    PROCEDURE (this: PPDialogs) LoadDialog* (resourceDLL: ARRAY OF CHAR; nResID: INTEGER; bModal: CtlOffice.MsoTriState; ParentWindow: CtlT.IUnknown; Position: PpDialogPositioning): PPDialog, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(resourceDLL, arg[4]);
        CtlC.IntVar(nResID, arg[3]);
        CtlC.IntVar(bModal, arg[2]);
        CtlC.IntfceVar(ParentWindow, arg[1]);
        CtlC.IntVar(Position, arg[0]);
        CtlC.CallParMethod(this, 2004, arg, ret);
        RETURN ThisPPDialog(CtlC.VarAny(ret))
    END LoadDialog;

    PROCEDURE (this: PPDialogs) AddAlert* (): PPAlert, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 2005, ret);
        RETURN ThisPPAlert(CtlC.VarAny(ret))
    END AddAlert;

    PROCEDURE (this: PPDialogs) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2006))
    END Tags;

    PROCEDURE (this: PPDialogs) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END Name;

    PROCEDURE (this: PPDialogs) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTName;

    PROCEDURE (this: PPDialogs) RunCharacterAlert* (Text: ARRAY OF CHAR; Type: PpAlertType; icon: PpAlertIcon; ParentWindow: CtlT.IUnknown): PpAlertButton, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Text, arg[3]);
        CtlC.IntVar(Type, arg[2]);
        CtlC.IntVar(icon, arg[1]);
        CtlC.IntfceVar(ParentWindow, arg[0]);
        CtlC.CallParMethod(this, 2008, arg, ret);
        RETURN CtlC.VarInt(ret)
    END RunCharacterAlert;


    (* ---------- PPAlert, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPAlert) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PPAlert) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PPAlert) Run* (Title: ARRAY OF CHAR; Type: INTEGER; Text: ARRAY OF CHAR; leftBtn: ARRAY OF CHAR; middleBtn: ARRAY OF CHAR; rightBtn: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 6 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Title, arg[5]);
        CtlC.IntVar(Type, arg[4]);
        CtlC.StrVar(Text, arg[3]);
        CtlC.StrVar(leftBtn, arg[2]);
        CtlC.StrVar(middleBtn, arg[1]);
        CtlC.StrVar(rightBtn, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, NIL);
    END Run;

    PROCEDURE (this: PPAlert) PressedButton* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END PressedButton;

    PROCEDURE (this: PPAlert) OnButton* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2005)
    END OnButton;

    PROCEDURE (this: PPAlert) PUTOnButton* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2005, p1)
    END PUTOnButton;


    (* ---------- PPDialog, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPDialog) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PPDialog) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PPDialog) Style* (): PpDialogStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Style;

    PROCEDURE (this: PPDialog) Mode* (): PpDialogMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END Mode;

    PROCEDURE (this: PPDialog) PUTMode* (p1: PpDialogMode), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTMode;

    PROCEDURE (this: PPDialog) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END HelpId;

    PROCEDURE (this: PPDialog) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTHelpId;

    PROCEDURE (this: PPDialog) HideOnIdle* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END HideOnIdle;

    PROCEDURE (this: PPDialog) PUTHideOnIdle* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTHideOnIdle;

    PROCEDURE (this: PPDialog) resourceDLL* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END resourceDLL;

    PROCEDURE (this: PPDialog) PUTresourceDLL* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTresourceDLL;

    PROCEDURE (this: PPDialog) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2008)
    END Caption;

    PROCEDURE (this: PPDialog) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2008, p1)
    END PUTCaption;

    PROCEDURE (this: PPDialog) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2009)
    END Left;

    PROCEDURE (this: PPDialog) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2009, p1)
    END PUTLeft;

    PROCEDURE (this: PPDialog) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2010)
    END Top;

    PROCEDURE (this: PPDialog) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2010, p1)
    END PUTTop;

    PROCEDURE (this: PPDialog) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2011)
    END Width;

    PROCEDURE (this: PPDialog) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2011, p1)
    END PUTWidth;

    PROCEDURE (this: PPDialog) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2012)
    END Height;

    PROCEDURE (this: PPDialog) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2012, p1)
    END PUTHeight;

    PROCEDURE (this: PPDialog) ClientLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2013)
    END ClientLeft;

    PROCEDURE (this: PPDialog) ClientTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2014)
    END ClientTop;

    PROCEDURE (this: PPDialog) ClientWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2015)
    END ClientWidth;

    PROCEDURE (this: PPDialog) ClientHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2016)
    END ClientHeight;

    PROCEDURE (this: PPDialog) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2017)
    END Visible;

    PROCEDURE (this: PPDialog) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2017, p1)
    END PUTVisible;

    PROCEDURE (this: PPDialog) Controls* (): PPControls, NEW;
    BEGIN
        RETURN ThisPPControls(CtlC.GetAny(this, 2018))
    END Controls;

    PROCEDURE (this: PPDialog) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2019))
    END Tags;

    PROCEDURE (this: PPDialog) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2020)
    END Name;

    PROCEDURE (this: PPDialog) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2020, p1)
    END PUTName;

    PROCEDURE (this: PPDialog) Sheets* (): PPTabSheets, NEW;
    BEGIN
        RETURN ThisPPTabSheets(CtlC.GetAny(this, 2021))
    END Sheets;

    PROCEDURE (this: PPDialog) TabControl* (): PPTabControl, NEW;
    BEGIN
        RETURN ThisPPTabControl(CtlC.GetAny(this, 2022))
    END TabControl;

    PROCEDURE (this: PPDialog) DelayTime* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2023)
    END DelayTime;

    PROCEDURE (this: PPDialog) PUTDelayTime* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2023, p1)
    END PUTDelayTime;

    PROCEDURE (this: PPDialog) SaveDialog* (FileName: ARRAY OF CHAR): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 2024, arg, ret);
        RETURN CtlC.VarInt(ret)
    END SaveDialog;

    PROCEDURE (this: PPDialog) Terminate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2025, NIL);
    END Terminate;

    PROCEDURE (this: PPDialog) OnTerminate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2027)
    END OnTerminate;

    PROCEDURE (this: PPDialog) PUTOnTerminate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2027, p1)
    END PUTOnTerminate;

    PROCEDURE (this: PPDialog) OnIdle* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2028)
    END OnIdle;

    PROCEDURE (this: PPDialog) PUTOnIdle* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2028, p1)
    END PUTOnIdle;

    PROCEDURE (this: PPDialog) OnMouseDown* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2029)
    END OnMouseDown;

    PROCEDURE (this: PPDialog) PUTOnMouseDown* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2029, p1)
    END PUTOnMouseDown;

    PROCEDURE (this: PPDialog) OnMouseUp* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2030)
    END OnMouseUp;

    PROCEDURE (this: PPDialog) PUTOnMouseUp* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2030, p1)
    END PUTOnMouseUp;

    PROCEDURE (this: PPDialog) OnKeyPressed* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2031)
    END OnKeyPressed;

    PROCEDURE (this: PPDialog) PUTOnKeyPressed* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2031, p1)
    END PUTOnKeyPressed;

    PROCEDURE (this: PPDialog) OnTimer* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2032)
    END OnTimer;

    PROCEDURE (this: PPDialog) PUTOnTimer* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2032, p1)
    END PUTOnTimer;

    PROCEDURE (this: PPDialog) OnActivate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2033)
    END OnActivate;

    PROCEDURE (this: PPDialog) PUTOnActivate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2033, p1)
    END PUTOnActivate;


    (* ---------- PPTabSheet, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPTabSheet) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PPTabSheet) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PPTabSheet) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END Name;

    PROCEDURE (this: PPTabSheet) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTName;

    PROCEDURE (this: PPTabSheet) Select* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2004, NIL);
    END Select;

    PROCEDURE (this: PPTabSheet) ClientLeft* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2005)
    END ClientLeft;

    PROCEDURE (this: PPTabSheet) ClientTop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2006)
    END ClientTop;

    PROCEDURE (this: PPTabSheet) ClientWidth* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2007)
    END ClientWidth;

    PROCEDURE (this: PPTabSheet) ClientHeight* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2008)
    END ClientHeight;

    PROCEDURE (this: PPTabSheet) Controls* (): PPControls, NEW;
    BEGIN
        RETURN ThisPPControls(CtlC.GetAny(this, 2009))
    END Controls;

    PROCEDURE (this: PPTabSheet) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 2010))
    END Tags;

    PROCEDURE (this: PPTabSheet) OnActivate* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2011)
    END OnActivate;

    PROCEDURE (this: PPTabSheet) PUTOnActivate* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2011, p1)
    END PUTOnActivate;


    (* ---------- PPControls, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPControls) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: PPControls) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: PPControls) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PPControls) Item* (index: CtlT.Any): PPControl, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisPPControl(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: PPControls) AddPushButton* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPPushButton, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2002, arg, ret);
        RETURN ThisPPPushButton(CtlC.VarAny(ret))
    END AddPushButton;

    PROCEDURE (this: PPControls) AddToggleButton* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPToggleButton, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisPPToggleButton(CtlC.VarAny(ret))
    END AddToggleButton;

    PROCEDURE (this: PPControls) AddBitmapButton* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPBitmapButton, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2004, arg, ret);
        RETURN ThisPPBitmapButton(CtlC.VarAny(ret))
    END AddBitmapButton;

    PROCEDURE (this: PPControls) AddListBox* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPListBox, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2005, arg, ret);
        RETURN ThisPPListBox(CtlC.VarAny(ret))
    END AddListBox;

    PROCEDURE (this: PPControls) AddCheckBox* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPCheckBox, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2006, arg, ret);
        RETURN ThisPPCheckBox(CtlC.VarAny(ret))
    END AddCheckBox;

    PROCEDURE (this: PPControls) AddRadioCluster* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPRadioCluster, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2007, arg, ret);
        RETURN ThisPPRadioCluster(CtlC.VarAny(ret))
    END AddRadioCluster;

    PROCEDURE (this: PPControls) AddStaticText* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPStaticText, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2008, arg, ret);
        RETURN ThisPPStaticText(CtlC.VarAny(ret))
    END AddStaticText;

    PROCEDURE (this: PPControls) AddEditText* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL; (* optional *) VerticalScrollBar: CtlT.Any): PPEditText, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[4]);
        CtlC.SRealVar(Top, arg[3]);
        CtlC.SRealVar(Width, arg[2]);
        CtlC.SRealVar(Height, arg[1]);
        CtlC.AnyVar(VerticalScrollBar, arg[0]);
        CtlC.CallParMethod(this, 2009, arg, ret);
        RETURN ThisPPEditText(CtlC.VarAny(ret))
    END AddEditText;

    PROCEDURE (this: PPControls) AddIcon* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPIcon, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2010, arg, ret);
        RETURN ThisPPIcon(CtlC.VarAny(ret))
    END AddIcon;

    PROCEDURE (this: PPControls) AddBitmap* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPBitmap, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2011, arg, ret);
        RETURN ThisPPBitmap(CtlC.VarAny(ret))
    END AddBitmap;

    PROCEDURE (this: PPControls) AddSpinner* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPSpinner, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2012, arg, ret);
        RETURN ThisPPSpinner(CtlC.VarAny(ret))
    END AddSpinner;

    PROCEDURE (this: PPControls) AddScrollBar* (Style: PpScrollBarStyle; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPScrollBar, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[4]);
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2013, arg, ret);
        RETURN ThisPPScrollBar(CtlC.VarAny(ret))
    END AddScrollBar;

    PROCEDURE (this: PPControls) AddGroupBox* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPGroupBox, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2014, arg, ret);
        RETURN ThisPPGroupBox(CtlC.VarAny(ret))
    END AddGroupBox;

    PROCEDURE (this: PPControls) AddDropDown* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPDropDown, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2015, arg, ret);
        RETURN ThisPPDropDown(CtlC.VarAny(ret))
    END AddDropDown;

    PROCEDURE (this: PPControls) AddDropDownEdit* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPDropDownEdit, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2016, arg, ret);
        RETURN ThisPPDropDownEdit(CtlC.VarAny(ret))
    END AddDropDownEdit;

    PROCEDURE (this: PPControls) AddMiniature* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPSlideMiniature, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2017, arg, ret);
        RETURN ThisPPSlideMiniature(CtlC.VarAny(ret))
    END AddMiniature;

    PROCEDURE (this: PPControls) AddFrame* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPFrame, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2018, arg, ret);
        RETURN ThisPPFrame(CtlC.VarAny(ret))
    END AddFrame;

    PROCEDURE (this: PPControls) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2019)
    END Visible;

    PROCEDURE (this: PPControls) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2019, p1)
    END PUTVisible;


    (* ---------- PPTabSheets, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPTabSheets) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: PPTabSheets) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: PPTabSheets) Item* (index: CtlT.Any): PPTabSheet, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisPPTabSheet(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: PPTabSheets) Add* (Name: ARRAY OF CHAR): PPTabSheet, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 2001, arg, ret);
        RETURN ThisPPTabSheet(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: PPTabSheets) ActiveSheet* (): PPTabSheet, NEW;
    BEGIN
        RETURN ThisPPTabSheet(CtlC.GetAny(this, 2002))
    END ActiveSheet;

    PROCEDURE (this: PPTabSheets) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END Name;

    PROCEDURE (this: PPTabSheets) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTName;


    (* ---------- PPControl, hidden, dual ---------- *)

    PROCEDURE (this: PPControl) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPControl) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPControl) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPControl) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPControl) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPControl) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPControl) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPControl) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPControl) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPControl) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPControl) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPControl) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPControl) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPControl) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPControl) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPControl) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPControl) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPControl) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPControl) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPControl) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPControl) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPControl) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPControl) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPControl) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPControl) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPControl) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPControl) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;


    (* ---------- PPPushButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPPushButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPPushButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPPushButton) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPPushButton) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPPushButton) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPPushButton) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPPushButton) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPPushButton) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPPushButton) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPPushButton) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPPushButton) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPPushButton) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPPushButton) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPPushButton) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPPushButton) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPPushButton) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPPushButton) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPPushButton) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPPushButton) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPPushButton) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPPushButton) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPPushButton) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPPushButton) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPPushButton) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPPushButton) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPPushButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPPushButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPPushButton) Click* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2001, NIL);
    END Click;

    PROCEDURE (this: PPPushButton) IsDefault* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END IsDefault;

    PROCEDURE (this: PPPushButton) PUTIsDefault* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTIsDefault;

    PROCEDURE (this: PPPushButton) IsEscape* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END IsEscape;

    PROCEDURE (this: PPPushButton) PUTIsEscape* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTIsEscape;

    PROCEDURE (this: PPPushButton) OnPressed* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END OnPressed;

    PROCEDURE (this: PPPushButton) PUTOnPressed* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTOnPressed;


    (* ---------- PPToggleButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPToggleButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPToggleButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPToggleButton) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPToggleButton) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPToggleButton) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPToggleButton) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPToggleButton) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPToggleButton) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPToggleButton) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPToggleButton) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPToggleButton) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPToggleButton) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPToggleButton) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPToggleButton) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPToggleButton) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPToggleButton) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPToggleButton) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPToggleButton) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPToggleButton) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPToggleButton) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPToggleButton) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPToggleButton) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPToggleButton) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPToggleButton) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPToggleButton) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPToggleButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPToggleButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPToggleButton) State* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END State;

    PROCEDURE (this: PPToggleButton) PUTState* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTState;

    PROCEDURE (this: PPToggleButton) ResourceID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END ResourceID;

    PROCEDURE (this: PPToggleButton) PUTResourceID* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTResourceID;

    PROCEDURE (this: PPToggleButton) Click* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2003, NIL);
    END Click;

    PROCEDURE (this: PPToggleButton) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END OnClick;

    PROCEDURE (this: PPToggleButton) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTOnClick;


    (* ---------- PPBitmapButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPBitmapButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPBitmapButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPBitmapButton) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPBitmapButton) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPBitmapButton) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPBitmapButton) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPBitmapButton) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPBitmapButton) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPBitmapButton) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPBitmapButton) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPBitmapButton) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPBitmapButton) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPBitmapButton) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPBitmapButton) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPBitmapButton) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPBitmapButton) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPBitmapButton) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPBitmapButton) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPBitmapButton) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPBitmapButton) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPBitmapButton) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPBitmapButton) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPBitmapButton) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPBitmapButton) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPBitmapButton) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPBitmapButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPBitmapButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPBitmapButton) Click* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2001, NIL);
    END Click;

    PROCEDURE (this: PPBitmapButton) ResourceID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END ResourceID;

    PROCEDURE (this: PPBitmapButton) PUTResourceID* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTResourceID;

    PROCEDURE (this: PPBitmapButton) OnPressed* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END OnPressed;

    PROCEDURE (this: PPBitmapButton) PUTOnPressed* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTOnPressed;

    PROCEDURE (this: PPBitmapButton) IsDefault* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END IsDefault;

    PROCEDURE (this: PPBitmapButton) PUTIsDefault* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTIsDefault;

    PROCEDURE (this: PPBitmapButton) IsEscape* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END IsEscape;

    PROCEDURE (this: PPBitmapButton) PUTIsEscape* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTIsEscape;


    (* ---------- PPListBox, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPListBox) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPListBox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPListBox) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPListBox) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPListBox) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPListBox) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPListBox) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPListBox) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPListBox) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPListBox) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPListBox) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPListBox) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPListBox) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPListBox) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPListBox) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPListBox) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPListBox) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPListBox) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPListBox) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPListBox) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPListBox) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPListBox) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPListBox) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPListBox) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPListBox) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPListBox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPListBox) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPListBox) Strings* (): PPStrings, NEW;
    BEGIN
        RETURN ThisPPStrings(CtlC.GetAny(this, 2001))
    END Strings;

    PROCEDURE (this: PPListBox) SelectionStyle* (): PpListBoxSelectionStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END SelectionStyle;

    PROCEDURE (this: PPListBox) PUTSelectionStyle* (p1: PpListBoxSelectionStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTSelectionStyle;

    PROCEDURE (this: PPListBox) SetTabStops* (safeArrayTabStops: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(safeArrayTabStops, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, NIL);
    END SetTabStops;

    PROCEDURE (this: PPListBox) FocusItem* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END FocusItem;

    PROCEDURE (this: PPListBox) PUTFocusItem* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTFocusItem;

    PROCEDURE (this: PPListBox) TopItem* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END TopItem;

    PROCEDURE (this: PPListBox) OnSelectionChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2006)
    END OnSelectionChange;

    PROCEDURE (this: PPListBox) PUTOnSelectionChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2006, p1)
    END PUTOnSelectionChange;

    PROCEDURE (this: PPListBox) OnDoubleClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END OnDoubleClick;

    PROCEDURE (this: PPListBox) PUTOnDoubleClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTOnDoubleClick;

    PROCEDURE (this: PPListBox) IsSelected* (index: INTEGER): CtlOffice.MsoTriState, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallGetMethod(this, 999, arg, ret);
        RETURN CtlC.VarInt(ret)
    END IsSelected;

    PROCEDURE (this: PPListBox) PUTIsSelected* (index: INTEGER; p2: CtlOffice.MsoTriState), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[1]);
        CtlC.IntVar(p2, arg[0]);
        CtlC.CallPutMethod(this, 999, arg, NIL);
    END PUTIsSelected;

    PROCEDURE (this: PPListBox) Abbreviate* (Style: PpListBoxAbbreviationStyle), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[0]);
        CtlC.CallParMethod(this, 2008, arg, NIL);
    END Abbreviate;

    PROCEDURE (this: PPListBox) IsAbbreviated* (): PpListBoxAbbreviationStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END IsAbbreviated;


    (* ---------- PPStrings, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPStrings) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: PPStrings) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: PPStrings) Item* (index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Item;

    PROCEDURE (this: PPStrings) Add* (String: ARRAY OF CHAR): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(String, arg[0]);
        CtlC.CallParMethod(this, 2001, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Add;

    PROCEDURE (this: PPStrings) Insert* (String: ARRAY OF CHAR; Position: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(String, arg[1]);
        CtlC.IntVar(Position, arg[0]);
        CtlC.CallParMethod(this, 2002, arg, NIL);
    END Insert;

    PROCEDURE (this: PPStrings) Delete* (index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, NIL);
    END Delete;


    (* ---------- PPCheckBox, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPCheckBox) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPCheckBox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPCheckBox) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPCheckBox) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPCheckBox) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPCheckBox) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPCheckBox) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPCheckBox) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPCheckBox) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPCheckBox) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPCheckBox) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPCheckBox) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPCheckBox) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPCheckBox) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPCheckBox) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPCheckBox) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPCheckBox) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPCheckBox) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPCheckBox) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPCheckBox) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPCheckBox) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPCheckBox) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPCheckBox) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPCheckBox) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPCheckBox) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPCheckBox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPCheckBox) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPCheckBox) State* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END State;

    PROCEDURE (this: PPCheckBox) PUTState* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTState;

    PROCEDURE (this: PPCheckBox) Click* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2002, NIL);
    END Click;

    PROCEDURE (this: PPCheckBox) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END OnClick;

    PROCEDURE (this: PPCheckBox) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTOnClick;


    (* ---------- PPRadioCluster, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPRadioCluster) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPRadioCluster) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPRadioCluster) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPRadioCluster) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPRadioCluster) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPRadioCluster) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPRadioCluster) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPRadioCluster) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPRadioCluster) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPRadioCluster) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPRadioCluster) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPRadioCluster) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPRadioCluster) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPRadioCluster) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPRadioCluster) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPRadioCluster) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPRadioCluster) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPRadioCluster) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPRadioCluster) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPRadioCluster) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPRadioCluster) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPRadioCluster) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPRadioCluster) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPRadioCluster) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPRadioCluster) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPRadioCluster) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPRadioCluster) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPRadioCluster) Item* (index: CtlT.Any): PPRadioButton, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisPPRadioButton(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: PPRadioCluster) Add* (Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): PPRadioButton, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Left, arg[3]);
        CtlC.SRealVar(Top, arg[2]);
        CtlC.SRealVar(Width, arg[1]);
        CtlC.SRealVar(Height, arg[0]);
        CtlC.CallParMethod(this, 2001, arg, ret);
        RETURN ThisPPRadioButton(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: PPRadioCluster) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Count;

    PROCEDURE (this: PPRadioCluster) Selected* (): PPRadioButton, NEW;
    BEGIN
        RETURN ThisPPRadioButton(CtlC.GetAny(this, 2003))
    END Selected;

    PROCEDURE (this: PPRadioCluster) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END OnClick;

    PROCEDURE (this: PPRadioCluster) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTOnClick;


    (* ---------- PPStaticText, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPStaticText) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPStaticText) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPStaticText) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPStaticText) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPStaticText) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPStaticText) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPStaticText) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPStaticText) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPStaticText) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPStaticText) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPStaticText) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPStaticText) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPStaticText) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPStaticText) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPStaticText) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPStaticText) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPStaticText) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPStaticText) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPStaticText) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPStaticText) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPStaticText) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPStaticText) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPStaticText) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPStaticText) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPStaticText) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPStaticText) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPStaticText) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPStaticText) UseForegroundColor* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END UseForegroundColor;

    PROCEDURE (this: PPStaticText) PUTUseForegroundColor* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTUseForegroundColor;

    PROCEDURE (this: PPStaticText) UseBackgroundColor* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END UseBackgroundColor;

    PROCEDURE (this: PPStaticText) PUTUseBackgroundColor* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTUseBackgroundColor;

    PROCEDURE (this: PPStaticText) ForegroundColor* (): CtlOffice.MsoRGBType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END ForegroundColor;

    PROCEDURE (this: PPStaticText) PUTForegroundColor* (p1: CtlOffice.MsoRGBType), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTForegroundColor;

    PROCEDURE (this: PPStaticText) BackgroundColor* (): CtlOffice.MsoRGBType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END BackgroundColor;

    PROCEDURE (this: PPStaticText) PUTBackgroundColor* (p1: CtlOffice.MsoRGBType), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTBackgroundColor;


    (* ---------- PPEditText, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPEditText) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPEditText) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPEditText) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPEditText) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPEditText) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPEditText) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPEditText) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPEditText) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPEditText) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPEditText) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPEditText) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPEditText) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPEditText) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPEditText) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPEditText) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPEditText) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPEditText) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPEditText) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPEditText) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPEditText) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPEditText) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPEditText) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPEditText) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPEditText) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPEditText) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPEditText) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPEditText) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPEditText) MultiLine* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END MultiLine;

    PROCEDURE (this: PPEditText) PUTMultiLine* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTMultiLine;

    PROCEDURE (this: PPEditText) VerticalScrollBar* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END VerticalScrollBar;

    PROCEDURE (this: PPEditText) PUTVerticalScrollBar* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTVerticalScrollBar;

    PROCEDURE (this: PPEditText) WordWrap* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END WordWrap;

    PROCEDURE (this: PPEditText) PUTWordWrap* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTWordWrap;

    PROCEDURE (this: PPEditText) ReadOnly* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END ReadOnly;

    PROCEDURE (this: PPEditText) PUTReadOnly* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTReadOnly;

    PROCEDURE (this: PPEditText) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2005)
    END Text;

    PROCEDURE (this: PPEditText) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2005, p1)
    END PUTText;

    PROCEDURE (this: PPEditText) MaxLength* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END MaxLength;

    PROCEDURE (this: PPEditText) PUTMaxLength* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTMaxLength;

    PROCEDURE (this: PPEditText) OnAChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END OnAChange;

    PROCEDURE (this: PPEditText) PUTOnAChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTOnAChange;


    (* ---------- PPIcon, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPIcon) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPIcon) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPIcon) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPIcon) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPIcon) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPIcon) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPIcon) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPIcon) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPIcon) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPIcon) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPIcon) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPIcon) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPIcon) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPIcon) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPIcon) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPIcon) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPIcon) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPIcon) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPIcon) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPIcon) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPIcon) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPIcon) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPIcon) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPIcon) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPIcon) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPIcon) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPIcon) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPIcon) ResourceID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END ResourceID;

    PROCEDURE (this: PPIcon) PUTResourceID* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTResourceID;


    (* ---------- PPBitmap, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPBitmap) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPBitmap) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPBitmap) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPBitmap) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPBitmap) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPBitmap) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPBitmap) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPBitmap) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPBitmap) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPBitmap) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPBitmap) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPBitmap) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPBitmap) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPBitmap) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPBitmap) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPBitmap) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPBitmap) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPBitmap) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPBitmap) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPBitmap) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPBitmap) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPBitmap) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPBitmap) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPBitmap) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPBitmap) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPBitmap) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPBitmap) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPBitmap) ResourceID* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2000)
    END ResourceID;

    PROCEDURE (this: PPBitmap) PUTResourceID* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2000, p1)
    END PUTResourceID;

    PROCEDURE (this: PPBitmap) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2001)
    END OnClick;

    PROCEDURE (this: PPBitmap) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2001, p1)
    END PUTOnClick;


    (* ---------- PPSpinner, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPSpinner) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPSpinner) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPSpinner) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPSpinner) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPSpinner) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPSpinner) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPSpinner) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPSpinner) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPSpinner) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPSpinner) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPSpinner) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPSpinner) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPSpinner) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPSpinner) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPSpinner) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPSpinner) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPSpinner) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPSpinner) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPSpinner) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPSpinner) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPSpinner) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPSpinner) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPSpinner) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPSpinner) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPSpinner) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPSpinner) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPSpinner) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPSpinner) Minimum* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Minimum;

    PROCEDURE (this: PPSpinner) PUTMinimum* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTMinimum;

    PROCEDURE (this: PPSpinner) Maximum* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Maximum;

    PROCEDURE (this: PPSpinner) PUTMaximum* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTMaximum;

    PROCEDURE (this: PPSpinner) Increment* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Increment;

    PROCEDURE (this: PPSpinner) PUTIncrement* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTIncrement;

    PROCEDURE (this: PPSpinner) PageChange* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END PageChange;

    PROCEDURE (this: PPSpinner) PUTPageChange* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTPageChange;

    PROCEDURE (this: PPSpinner) CurrentValue* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END CurrentValue;

    PROCEDURE (this: PPSpinner) PUTCurrentValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTCurrentValue;

    PROCEDURE (this: PPSpinner) OnAChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2006)
    END OnAChange;

    PROCEDURE (this: PPSpinner) PUTOnAChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2006, p1)
    END PUTOnAChange;


    (* ---------- PPScrollBar, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPScrollBar) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPScrollBar) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPScrollBar) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPScrollBar) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPScrollBar) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPScrollBar) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPScrollBar) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPScrollBar) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPScrollBar) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPScrollBar) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPScrollBar) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPScrollBar) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPScrollBar) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPScrollBar) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPScrollBar) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPScrollBar) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPScrollBar) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPScrollBar) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPScrollBar) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPScrollBar) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPScrollBar) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPScrollBar) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPScrollBar) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPScrollBar) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPScrollBar) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPScrollBar) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPScrollBar) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPScrollBar) Minimum* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END Minimum;

    PROCEDURE (this: PPScrollBar) PUTMinimum* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTMinimum;

    PROCEDURE (this: PPScrollBar) Maximum* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Maximum;

    PROCEDURE (this: PPScrollBar) PUTMaximum* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTMaximum;

    PROCEDURE (this: PPScrollBar) Increment* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END Increment;

    PROCEDURE (this: PPScrollBar) PUTIncrement* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTIncrement;

    PROCEDURE (this: PPScrollBar) PageChange* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END PageChange;

    PROCEDURE (this: PPScrollBar) PUTPageChange* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTPageChange;

    PROCEDURE (this: PPScrollBar) CurrentValue* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END CurrentValue;

    PROCEDURE (this: PPScrollBar) PUTCurrentValue* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTCurrentValue;

    PROCEDURE (this: PPScrollBar) OnScroll* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2006)
    END OnScroll;

    PROCEDURE (this: PPScrollBar) PUTOnScroll* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2006, p1)
    END PUTOnScroll;


    (* ---------- PPGroupBox, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPGroupBox) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPGroupBox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPGroupBox) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPGroupBox) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPGroupBox) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPGroupBox) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPGroupBox) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPGroupBox) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPGroupBox) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPGroupBox) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPGroupBox) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPGroupBox) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPGroupBox) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPGroupBox) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPGroupBox) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPGroupBox) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPGroupBox) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPGroupBox) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPGroupBox) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPGroupBox) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPGroupBox) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPGroupBox) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPGroupBox) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPGroupBox) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPGroupBox) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPGroupBox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPGroupBox) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;


    (* ---------- PPFrame, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPFrame) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPFrame) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPFrame) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPFrame) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPFrame) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPFrame) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPFrame) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPFrame) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPFrame) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPFrame) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPFrame) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPFrame) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPFrame) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPFrame) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPFrame) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPFrame) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPFrame) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPFrame) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPFrame) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPFrame) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPFrame) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPFrame) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPFrame) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPFrame) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPFrame) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPFrame) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPFrame) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;


    (* ---------- PPTabControl, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPTabControl) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPTabControl) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPTabControl) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPTabControl) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPTabControl) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPTabControl) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPTabControl) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPTabControl) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPTabControl) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPTabControl) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPTabControl) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPTabControl) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPTabControl) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPTabControl) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPTabControl) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPTabControl) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPTabControl) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPTabControl) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPTabControl) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPTabControl) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPTabControl) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPTabControl) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPTabControl) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPTabControl) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPTabControl) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPTabControl) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPTabControl) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;


    (* ---------- PPDropDown, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPDropDown) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPDropDown) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPDropDown) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPDropDown) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPDropDown) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPDropDown) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPDropDown) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPDropDown) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPDropDown) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPDropDown) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPDropDown) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPDropDown) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPDropDown) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPDropDown) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPDropDown) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPDropDown) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPDropDown) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPDropDown) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPDropDown) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPDropDown) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPDropDown) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPDropDown) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPDropDown) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPDropDown) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPDropDown) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPDropDown) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPDropDown) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPDropDown) Strings* (): PPStrings, NEW;
    BEGIN
        RETURN ThisPPStrings(CtlC.GetAny(this, 2001))
    END Strings;

    PROCEDURE (this: PPDropDown) FocusItem* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END FocusItem;

    PROCEDURE (this: PPDropDown) PUTFocusItem* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTFocusItem;

    PROCEDURE (this: PPDropDown) OnSelectionChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END OnSelectionChange;

    PROCEDURE (this: PPDropDown) PUTOnSelectionChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTOnSelectionChange;


    (* ---------- PPDropDownEdit, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPDropDownEdit) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPDropDownEdit) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPDropDownEdit) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPDropDownEdit) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPDropDownEdit) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPDropDownEdit) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPDropDownEdit) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPDropDownEdit) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPDropDownEdit) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPDropDownEdit) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPDropDownEdit) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPDropDownEdit) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPDropDownEdit) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPDropDownEdit) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPDropDownEdit) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPDropDownEdit) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPDropDownEdit) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPDropDownEdit) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPDropDownEdit) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPDropDownEdit) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPDropDownEdit) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPDropDownEdit) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPDropDownEdit) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPDropDownEdit) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPDropDownEdit) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPDropDownEdit) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPDropDownEdit) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPDropDownEdit) Strings* (): PPStrings, NEW;
    BEGIN
        RETURN ThisPPStrings(CtlC.GetAny(this, 2001))
    END Strings;

    PROCEDURE (this: PPDropDownEdit) FocusItem* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END FocusItem;

    PROCEDURE (this: PPDropDownEdit) PUTFocusItem* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTFocusItem;

    PROCEDURE (this: PPDropDownEdit) OnSelectionChange* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END OnSelectionChange;

    PROCEDURE (this: PPDropDownEdit) PUTOnSelectionChange* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTOnSelectionChange;

    PROCEDURE (this: PPDropDownEdit) OnEdit* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END OnEdit;

    PROCEDURE (this: PPDropDownEdit) PUTOnEdit* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTOnEdit;


    (* ---------- PPSlideMiniature, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPSlideMiniature) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPSlideMiniature) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPSlideMiniature) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPSlideMiniature) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPSlideMiniature) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPSlideMiniature) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPSlideMiniature) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPSlideMiniature) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPSlideMiniature) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPSlideMiniature) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPSlideMiniature) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPSlideMiniature) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPSlideMiniature) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPSlideMiniature) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPSlideMiniature) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPSlideMiniature) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPSlideMiniature) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPSlideMiniature) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPSlideMiniature) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPSlideMiniature) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPSlideMiniature) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPSlideMiniature) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPSlideMiniature) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPSlideMiniature) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPSlideMiniature) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPSlideMiniature) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPSlideMiniature) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPSlideMiniature) SetImage* (slide: Slide), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(slide, arg[0]);
        CtlC.CallParMethod(this, 2001, arg, NIL);
    END SetImage;

    PROCEDURE (this: PPSlideMiniature) Selected* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Selected;

    PROCEDURE (this: PPSlideMiniature) PUTSelected* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTSelected;

    PROCEDURE (this: PPSlideMiniature) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END OnClick;

    PROCEDURE (this: PPSlideMiniature) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTOnClick;

    PROCEDURE (this: PPSlideMiniature) OnDoubleClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END OnDoubleClick;

    PROCEDURE (this: PPSlideMiniature) PUTOnDoubleClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTOnDoubleClick;


    (* ---------- PPRadioButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PPRadioButton) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 1001))
    END Application;

    PROCEDURE (this: PPRadioButton) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1002)
    END Parent;

    PROCEDURE (this: PPRadioButton) Enable* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1003)
    END Enable;

    PROCEDURE (this: PPRadioButton) PUTEnable* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1003, p1)
    END PUTEnable;

    PROCEDURE (this: PPRadioButton) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1004)
    END Visible;

    PROCEDURE (this: PPRadioButton) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1004, p1)
    END PUTVisible;

    PROCEDURE (this: PPRadioButton) Focus* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1005)
    END Focus;

    PROCEDURE (this: PPRadioButton) PUTFocus* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 1005, p1)
    END PUTFocus;

    PROCEDURE (this: PPRadioButton) Label* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1006)
    END Label;

    PROCEDURE (this: PPRadioButton) PUTLabel* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1006, p1)
    END PUTLabel;

    PROCEDURE (this: PPRadioButton) HelpId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1007)
    END HelpId;

    PROCEDURE (this: PPRadioButton) PUTHelpId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1007, p1)
    END PUTHelpId;

    PROCEDURE (this: PPRadioButton) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1008)
    END Left;

    PROCEDURE (this: PPRadioButton) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1008, p1)
    END PUTLeft;

    PROCEDURE (this: PPRadioButton) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1009)
    END Top;

    PROCEDURE (this: PPRadioButton) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1009, p1)
    END PUTTop;

    PROCEDURE (this: PPRadioButton) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1010)
    END Width;

    PROCEDURE (this: PPRadioButton) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1010, p1)
    END PUTWidth;

    PROCEDURE (this: PPRadioButton) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1011)
    END Height;

    PROCEDURE (this: PPRadioButton) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 1011, p1)
    END PUTHeight;

    PROCEDURE (this: PPRadioButton) OnSetFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1013)
    END OnSetFocus;

    PROCEDURE (this: PPRadioButton) PUTOnSetFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1013, p1)
    END PUTOnSetFocus;

    PROCEDURE (this: PPRadioButton) OnKillFocus* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1014)
    END OnKillFocus;

    PROCEDURE (this: PPRadioButton) PUTOnKillFocus* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1014, p1)
    END PUTOnKillFocus;

    PROCEDURE (this: PPRadioButton) Tags* (): Tags, NEW;
    BEGIN
        RETURN ThisTags(CtlC.GetAny(this, 1015))
    END Tags;

    PROCEDURE (this: PPRadioButton) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1016)
    END Name;

    PROCEDURE (this: PPRadioButton) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1016, p1)
    END PUTName;

    PROCEDURE (this: PPRadioButton) State* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END State;

    PROCEDURE (this: PPRadioButton) PUTState* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTState;

    PROCEDURE (this: PPRadioButton) Click* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2002, NIL);
    END Click;

    PROCEDURE (this: PPRadioButton) DoubleClick* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2003, NIL);
    END DoubleClick;

    PROCEDURE (this: PPRadioButton) OnClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END OnClick;

    PROCEDURE (this: PPRadioButton) PUTOnClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTOnClick;

    PROCEDURE (this: PPRadioButton) OnDoubleClick* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2005)
    END OnDoubleClick;

    PROCEDURE (this: PPRadioButton) PUTOnDoubleClick* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2005, p1)
    END PUTOnDoubleClick;


    (* ---------- Tags, dual, nonextensible ---------- *)

    PROCEDURE (this: Tags) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Tags) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Tags) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Tags) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Tags) Item* (Name: ARRAY OF CHAR): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Item;

    PROCEDURE (this: Tags) Add* (Name: ARRAY OF CHAR; Value: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.StrVar(Value, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, NIL);
    END Add;

    PROCEDURE (this: Tags) Delete* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 2004, arg, NIL);
    END Delete;

    PROCEDURE (this: Tags) AddBinary* (Name: ARRAY OF CHAR; FilePath: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.StrVar(FilePath, arg[0]);
        CtlC.CallParMethod(this, 2005, arg, NIL);
    END AddBinary;

    PROCEDURE (this: Tags) BinaryValue* (Name: ARRAY OF CHAR): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 2006, arg, ret);
        RETURN CtlC.VarInt(ret)
    END BinaryValue;

    PROCEDURE (this: Tags) Name* (index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 2007, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Name;

    PROCEDURE (this: Tags) Value* (index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 2008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Value;


    (* ---------- FileDialogFileList, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: FileDialogFileList) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: FileDialogFileList) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: FileDialogFileList) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: FileDialogFileList) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: FileDialogFileList) Item* (index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Item;

    PROCEDURE (this: FileDialogFileList) DisplayName* (index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END DisplayName;


    (* ---------- FileDialogExtension, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: FileDialogExtension) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: FileDialogExtension) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: FileDialogExtension) Extensions* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2003)
    END Extensions;

    PROCEDURE (this: FileDialogExtension) PUTExtensions* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2003, p1)
    END PUTExtensions;

    PROCEDURE (this: FileDialogExtension) Description* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END Description;

    PROCEDURE (this: FileDialogExtension) PUTDescription* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTDescription;


    (* ---------- FileDialogExtensionList, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: FileDialogExtensionList) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: FileDialogExtensionList) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: FileDialogExtensionList) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: FileDialogExtensionList) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: FileDialogExtensionList) Item* (index: INTEGER): FileDialogExtension, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisFileDialogExtension(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: FileDialogExtensionList) Add* (Extension: ARRAY OF CHAR; Description: ARRAY OF CHAR): FileDialogExtension, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Extension, arg[1]);
        CtlC.StrVar(Description, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisFileDialogExtension(CtlC.VarAny(ret))
    END Add;


    (* ---------- FileDialog, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: FileDialog) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: FileDialog) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: FileDialog) Extensions* (): FileDialogExtensionList, NEW;
    BEGIN
        RETURN ThisFileDialogExtensionList(CtlC.GetAny(this, 2003))
    END Extensions;

    PROCEDURE (this: FileDialog) DefaultDirectoryRegKey* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2004)
    END DefaultDirectoryRegKey;

    PROCEDURE (this: FileDialog) PUTDefaultDirectoryRegKey* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2004, p1)
    END PUTDefaultDirectoryRegKey;

    PROCEDURE (this: FileDialog) DialogTitle* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2005)
    END DialogTitle;

    PROCEDURE (this: FileDialog) PUTDialogTitle* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2005, p1)
    END PUTDialogTitle;

    PROCEDURE (this: FileDialog) ActionButtonName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2006)
    END ActionButtonName;

    PROCEDURE (this: FileDialog) PUTActionButtonName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2006, p1)
    END PUTActionButtonName;

    PROCEDURE (this: FileDialog) IsMultiSelect* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END IsMultiSelect;

    PROCEDURE (this: FileDialog) PUTIsMultiSelect* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTIsMultiSelect;

    PROCEDURE (this: FileDialog) IsPrintEnabled* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END IsPrintEnabled;

    PROCEDURE (this: FileDialog) PUTIsPrintEnabled* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTIsPrintEnabled;

    PROCEDURE (this: FileDialog) IsReadOnlyEnabled* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END IsReadOnlyEnabled;

    PROCEDURE (this: FileDialog) PUTIsReadOnlyEnabled* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTIsReadOnlyEnabled;

    PROCEDURE (this: FileDialog) DirectoriesOnly* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END DirectoriesOnly;

    PROCEDURE (this: FileDialog) PUTDirectoriesOnly* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTDirectoriesOnly;

    PROCEDURE (this: FileDialog) InitialView* (): PpFileDialogView, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END InitialView;

    PROCEDURE (this: FileDialog) PUTInitialView* (p1: PpFileDialogView), NEW;
    BEGIN
        CtlC.PutInt(this, 2011, p1)
    END PUTInitialView;

    PROCEDURE (this: FileDialog) Launch* (pUnk: CtlT.IUnknown), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntfceVar(pUnk, arg[0]);
        CtlC.CallParMethod(this, 2012, arg, NIL);
    END Launch;

    PROCEDURE (this: FileDialog) OnAction* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2013)
    END OnAction;

    PROCEDURE (this: FileDialog) PUTOnAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2013, p1)
    END PUTOnAction;

    PROCEDURE (this: FileDialog) Files* (): FileDialogFileList, NEW;
    BEGIN
        RETURN ThisFileDialogFileList(CtlC.GetAny(this, 2014))
    END Files;

    PROCEDURE (this: FileDialog) UseODMADlgs* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2015)
    END UseODMADlgs;

    PROCEDURE (this: FileDialog) PUTUseODMADlgs* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2015, p1)
    END PUTUseODMADlgs;


    (* ---------- OCXExtender, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: OCXExtender) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, -2147418105)
    END Visible;

    PROCEDURE (this: OCXExtender) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, -2147418105, p1)
    END PUTVisible;

    PROCEDURE (this: OCXExtender) Left* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418109)
    END Left;

    PROCEDURE (this: OCXExtender) PUTLeft* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418109, p1)
    END PUTLeft;

    PROCEDURE (this: OCXExtender) Top* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418108)
    END Top;

    PROCEDURE (this: OCXExtender) PUTTop* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418108, p1)
    END PUTTop;

    PROCEDURE (this: OCXExtender) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418107)
    END Height;

    PROCEDURE (this: OCXExtender) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418107, p1)
    END PUTHeight;

    PROCEDURE (this: OCXExtender) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, -2147418106)
    END Width;

    PROCEDURE (this: OCXExtender) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, -2147418106, p1)
    END PUTWidth;

    PROCEDURE (this: OCXExtender) ZOrderPosition* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -2147417882)
    END ZOrderPosition;

    PROCEDURE (this: OCXExtender) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147418112)
    END Name;

    PROCEDURE (this: OCXExtender) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147418112, p1)
    END PUTName;

    PROCEDURE (this: OCXExtender) AltHTML* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, -2147417881)
    END AltHTML;

    PROCEDURE (this: OCXExtender) PUTAltHTML* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, -2147417881, p1)
    END PUTAltHTML;


    (* ---------- Table, dual, nonextensible ---------- *)

    PROCEDURE (this: Table) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Table) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Table) Columns* (): Columns, NEW;
    BEGIN
        RETURN ThisColumns(CtlC.GetAny(this, 2003))
    END Columns;

    PROCEDURE (this: Table) Rows* (): Rows, NEW;
    BEGIN
        RETURN ThisRows(CtlC.GetAny(this, 2004))
    END Rows;

    PROCEDURE (this: Table) Cell* (Row: INTEGER; Column: INTEGER): Cell, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Row, arg[1]);
        CtlC.IntVar(Column, arg[0]);
        CtlC.CallParMethod(this, 2005, arg, ret);
        RETURN ThisCell(CtlC.VarAny(ret))
    END Cell;

    PROCEDURE (this: Table) TableDirection* (): PpDirection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END TableDirection;

    PROCEDURE (this: Table) PUTTableDirection* (p1: PpDirection), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTTableDirection;

    PROCEDURE (this: Table) MergeBorders* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2007, NIL);
    END MergeBorders;


    (* ---------- Columns, dual, nonextensible ---------- *)

    PROCEDURE (this: Columns) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Columns) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Columns) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Columns) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Columns) Item* (index: INTEGER): Column, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisColumn(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Columns) Add* (BeforeColumn: INTEGER): Column, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(BeforeColumn, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisColumn(CtlC.VarAny(ret))
    END Add;


    (* ---------- Column, dual, nonextensible ---------- *)

    PROCEDURE (this: Column) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Column) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Column) Cells* (): CellRange, NEW;
    BEGIN
        RETURN ThisCellRange(CtlC.GetAny(this, 2003))
    END Cells;

    PROCEDURE (this: Column) Select* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2004, NIL);
    END Select;

    PROCEDURE (this: Column) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2005, NIL);
    END Delete;

    PROCEDURE (this: Column) Width* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2006)
    END Width;

    PROCEDURE (this: Column) PUTWidth* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2006, p1)
    END PUTWidth;


    (* ---------- Rows, dual, nonextensible ---------- *)

    PROCEDURE (this: Rows) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Rows) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Rows) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Rows) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Rows) Item* (index: INTEGER): Row, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisRow(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Rows) Add* (BeforeRow: INTEGER): Row, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(BeforeRow, arg[0]);
        CtlC.CallParMethod(this, 2003, arg, ret);
        RETURN ThisRow(CtlC.VarAny(ret))
    END Add;


    (* ---------- Row, dual, nonextensible ---------- *)

    PROCEDURE (this: Row) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Row) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Row) Cells* (): CellRange, NEW;
    BEGIN
        RETURN ThisCellRange(CtlC.GetAny(this, 2003))
    END Cells;

    PROCEDURE (this: Row) Select* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2004, NIL);
    END Select;

    PROCEDURE (this: Row) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2005, NIL);
    END Delete;

    PROCEDURE (this: Row) Height* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 2006)
    END Height;

    PROCEDURE (this: Row) PUTHeight* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 2006, p1)
    END PUTHeight;


    (* ---------- CellRange, dual, nonextensible ---------- *)

    PROCEDURE (this: CellRange) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: CellRange) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: CellRange) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: CellRange) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: CellRange) Item* (index: INTEGER): Cell, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisCell(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: CellRange) Borders* (): Borders, NEW;
    BEGIN
        RETURN ThisBorders(CtlC.GetAny(this, 2003))
    END Borders;


    (* ---------- Cell, dual, nonextensible ---------- *)

    PROCEDURE (this: Cell) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Cell) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Cell) Shape* (): Shape, NEW;
    BEGIN
        RETURN ThisShape(CtlC.GetAny(this, 2003))
    END Shape;

    PROCEDURE (this: Cell) Borders* (): Borders, NEW;
    BEGIN
        RETURN ThisBorders(CtlC.GetAny(this, 2004))
    END Borders;

    PROCEDURE (this: Cell) Merge* (MergeTo: Cell), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(MergeTo, arg[0]);
        CtlC.CallParMethod(this, 2005, arg, NIL);
    END Merge;

    PROCEDURE (this: Cell) Split* (NumRows: INTEGER; NumColumns: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(NumRows, arg[1]);
        CtlC.IntVar(NumColumns, arg[0]);
        CtlC.CallParMethod(this, 2006, arg, NIL);
    END Split;

    PROCEDURE (this: Cell) Select* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2007, NIL);
    END Select;

    PROCEDURE (this: Cell) Selected* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 2008)
    END Selected;


    (* ---------- Borders, dual, nonextensible ---------- *)

    PROCEDURE (this: Borders) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Borders) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Borders) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Borders) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: Borders) Item* (BorderType: PpBorderType): LineFormat, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(BorderType, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisLineFormat(CtlC.VarAny(ret))
    END Item;


    (* ---------- Panes, dual, nonextensible ---------- *)

    PROCEDURE (this: Panes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Panes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: Panes) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: Panes) Item* (index: INTEGER): Pane, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisPane(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Panes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;


    (* ---------- Pane, dual, nonextensible ---------- *)

    PROCEDURE (this: Pane) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2000)
    END Parent;

    PROCEDURE (this: Pane) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2001, NIL);
    END Activate;

    PROCEDURE (this: Pane) Active* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Active;

    PROCEDURE (this: Pane) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2003))
    END Application;

    PROCEDURE (this: Pane) ViewType* (): PpViewType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END ViewType;


    (* ---------- DefaultWebOptions, dual, nonextensible ---------- *)

    PROCEDURE (this: DefaultWebOptions) IncludeNavigation* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END IncludeNavigation;

    PROCEDURE (this: DefaultWebOptions) PUTIncludeNavigation* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTIncludeNavigation;

    PROCEDURE (this: DefaultWebOptions) FrameColors* (): PpFrameColors, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END FrameColors;

    PROCEDURE (this: DefaultWebOptions) PUTFrameColors* (p1: PpFrameColors), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTFrameColors;

    PROCEDURE (this: DefaultWebOptions) ResizeGraphics* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END ResizeGraphics;

    PROCEDURE (this: DefaultWebOptions) PUTResizeGraphics* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTResizeGraphics;

    PROCEDURE (this: DefaultWebOptions) ShowSlideAnimation* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END ShowSlideAnimation;

    PROCEDURE (this: DefaultWebOptions) PUTShowSlideAnimation* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTShowSlideAnimation;

    PROCEDURE (this: DefaultWebOptions) OrganizeInFolder* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END OrganizeInFolder;

    PROCEDURE (this: DefaultWebOptions) PUTOrganizeInFolder* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTOrganizeInFolder;

    PROCEDURE (this: DefaultWebOptions) UseLongFileNames* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END UseLongFileNames;

    PROCEDURE (this: DefaultWebOptions) PUTUseLongFileNames* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTUseLongFileNames;

    PROCEDURE (this: DefaultWebOptions) RelyOnVML* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END RelyOnVML;

    PROCEDURE (this: DefaultWebOptions) PUTRelyOnVML* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTRelyOnVML;

    PROCEDURE (this: DefaultWebOptions) AllowPNG* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END AllowPNG;

    PROCEDURE (this: DefaultWebOptions) PUTAllowPNG* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTAllowPNG;

    PROCEDURE (this: DefaultWebOptions) ScreenSize* (): CtlOffice.MsoScreenSize, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END ScreenSize;

    PROCEDURE (this: DefaultWebOptions) PUTScreenSize* (p1: CtlOffice.MsoScreenSize), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTScreenSize;

    PROCEDURE (this: DefaultWebOptions) Encoding* (): CtlOffice.MsoEncoding, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END Encoding;

    PROCEDURE (this: DefaultWebOptions) PUTEncoding* (p1: CtlOffice.MsoEncoding), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTEncoding;

    PROCEDURE (this: DefaultWebOptions) UpdateLinksOnSave* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2011)
    END UpdateLinksOnSave;

    PROCEDURE (this: DefaultWebOptions) PUTUpdateLinksOnSave* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2011, p1)
    END PUTUpdateLinksOnSave;

    PROCEDURE (this: DefaultWebOptions) CheckIfOfficeIsHTMLEditor* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2012)
    END CheckIfOfficeIsHTMLEditor;

    PROCEDURE (this: DefaultWebOptions) PUTCheckIfOfficeIsHTMLEditor* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2012, p1)
    END PUTCheckIfOfficeIsHTMLEditor;

    PROCEDURE (this: DefaultWebOptions) AlwaysSaveInDefaultEncoding* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2013)
    END AlwaysSaveInDefaultEncoding;

    PROCEDURE (this: DefaultWebOptions) PUTAlwaysSaveInDefaultEncoding* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2013, p1)
    END PUTAlwaysSaveInDefaultEncoding;

    PROCEDURE (this: DefaultWebOptions) Fonts* (): CtlOffice.WebPageFonts, NEW;
    BEGIN
        RETURN CtlOffice.ThisWebPageFonts(CtlC.GetAny(this, 2014))
    END Fonts;

    PROCEDURE (this: DefaultWebOptions) FolderSuffix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2015)
    END FolderSuffix;


    (* ---------- WebOptions, dual, nonextensible ---------- *)

    PROCEDURE (this: WebOptions) IncludeNavigation* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END IncludeNavigation;

    PROCEDURE (this: WebOptions) PUTIncludeNavigation* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTIncludeNavigation;

    PROCEDURE (this: WebOptions) FrameColors* (): PpFrameColors, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END FrameColors;

    PROCEDURE (this: WebOptions) PUTFrameColors* (p1: PpFrameColors), NEW;
    BEGIN
        CtlC.PutInt(this, 2002, p1)
    END PUTFrameColors;

    PROCEDURE (this: WebOptions) ResizeGraphics* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END ResizeGraphics;

    PROCEDURE (this: WebOptions) PUTResizeGraphics* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTResizeGraphics;

    PROCEDURE (this: WebOptions) ShowSlideAnimation* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END ShowSlideAnimation;

    PROCEDURE (this: WebOptions) PUTShowSlideAnimation* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTShowSlideAnimation;

    PROCEDURE (this: WebOptions) OrganizeInFolder* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END OrganizeInFolder;

    PROCEDURE (this: WebOptions) PUTOrganizeInFolder* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTOrganizeInFolder;

    PROCEDURE (this: WebOptions) UseLongFileNames* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END UseLongFileNames;

    PROCEDURE (this: WebOptions) PUTUseLongFileNames* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTUseLongFileNames;

    PROCEDURE (this: WebOptions) RelyOnVML* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2007)
    END RelyOnVML;

    PROCEDURE (this: WebOptions) PUTRelyOnVML* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2007, p1)
    END PUTRelyOnVML;

    PROCEDURE (this: WebOptions) AllowPNG* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END AllowPNG;

    PROCEDURE (this: WebOptions) PUTAllowPNG* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTAllowPNG;

    PROCEDURE (this: WebOptions) ScreenSize* (): CtlOffice.MsoScreenSize, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2009)
    END ScreenSize;

    PROCEDURE (this: WebOptions) PUTScreenSize* (p1: CtlOffice.MsoScreenSize), NEW;
    BEGIN
        CtlC.PutInt(this, 2009, p1)
    END PUTScreenSize;

    PROCEDURE (this: WebOptions) Encoding* (): CtlOffice.MsoEncoding, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2010)
    END Encoding;

    PROCEDURE (this: WebOptions) PUTEncoding* (p1: CtlOffice.MsoEncoding), NEW;
    BEGIN
        CtlC.PutInt(this, 2010, p1)
    END PUTEncoding;

    PROCEDURE (this: WebOptions) FolderSuffix* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2011)
    END FolderSuffix;

    PROCEDURE (this: WebOptions) UseDefaultFolderSuffix* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2012, NIL);
    END UseDefaultFolderSuffix;


    (* ---------- PublishObjects, dual, nonextensible ---------- *)

    PROCEDURE (this: PublishObjects) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: PublishObjects) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 11)
    END Count;

    PROCEDURE (this: PublishObjects) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PublishObjects) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PublishObjects) Item* (index: INTEGER): PublishObject, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisPublishObject(CtlC.VarAny(ret))
    END Item;


    (* ---------- PublishObject, dual, nonextensible ---------- *)

    PROCEDURE (this: PublishObject) Application* (): Application, NEW;
    BEGIN
        RETURN This_Application(CtlC.GetAny(this, 2001))
    END Application;

    PROCEDURE (this: PublishObject) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2002)
    END Parent;

    PROCEDURE (this: PublishObject) HTMLVersion* (): PpHTMLVersion, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2003)
    END HTMLVersion;

    PROCEDURE (this: PublishObject) PUTHTMLVersion* (p1: PpHTMLVersion), NEW;
    BEGIN
        CtlC.PutInt(this, 2003, p1)
    END PUTHTMLVersion;

    PROCEDURE (this: PublishObject) SourceType* (): PpPublishSourceType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2004)
    END SourceType;

    PROCEDURE (this: PublishObject) PUTSourceType* (p1: PpPublishSourceType), NEW;
    BEGIN
        CtlC.PutInt(this, 2004, p1)
    END PUTSourceType;

    PROCEDURE (this: PublishObject) RangeStart* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2005)
    END RangeStart;

    PROCEDURE (this: PublishObject) PUTRangeStart* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2005, p1)
    END PUTRangeStart;

    PROCEDURE (this: PublishObject) RangeEnd* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2006)
    END RangeEnd;

    PROCEDURE (this: PublishObject) PUTRangeEnd* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 2006, p1)
    END PUTRangeEnd;

    PROCEDURE (this: PublishObject) SlideShowName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2007)
    END SlideShowName;

    PROCEDURE (this: PublishObject) PUTSlideShowName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2007, p1)
    END PUTSlideShowName;

    PROCEDURE (this: PublishObject) SpeakerNotes* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2008)
    END SpeakerNotes;

    PROCEDURE (this: PublishObject) PUTSpeakerNotes* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 2008, p1)
    END PUTSpeakerNotes;

    PROCEDURE (this: PublishObject) FileName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 2009)
    END FileName;

    PROCEDURE (this: PublishObject) PUTFileName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 2009, p1)
    END PUTFileName;

    PROCEDURE (this: PublishObject) Publish* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2010, NIL);
    END Publish;


    (* ---------- Marker, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: Marker) MarkerType* (): PpMarkerType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2001)
    END MarkerType;

    PROCEDURE (this: Marker) PUTMarkerType* (p1: PpMarkerType), NEW;
    BEGIN
        CtlC.PutInt(this, 2001, p1)
    END PUTMarkerType;

    PROCEDURE (this: Marker) Time* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2002)
    END Time;


    PROCEDURE NewApplication* (): _Application;
    BEGIN
        RETURN This_Application(CtlC.NewObj("{91493441-5A91-11CF-8700-00AA0060263B}"))
    END NewApplication;

    PROCEDURE NewGlobal* (): _Global;
    BEGIN
        RETURN This_Global(CtlC.NewObj("{91493443-5A91-11CF-8700-00AA0060263B}"))
    END NewGlobal;

    PROCEDURE NewPresentation* (): _Presentation;
    BEGIN
        RETURN This_Presentation(CtlC.NewObj("{91493444-5A91-11CF-8700-00AA0060263B}"))
    END NewPresentation;

    PROCEDURE NewSlide* (): _Slide;
    BEGIN
        RETURN This_Slide(CtlC.NewObj("{91493445-5A91-11CF-8700-00AA0060263B}"))
    END NewSlide;

    PROCEDURE NewOLEControl* (): OCXExtender;
    BEGIN
        RETURN ThisOCXExtender(CtlC.NewObj("{91493446-5A91-11CF-8700-00AA0060263B}"))
    END NewOLEControl;

    PROCEDURE NewMaster* (): _Master;
    BEGIN
        RETURN This_Master(CtlC.NewObj("{91493447-5A91-11CF-8700-00AA0060263B}"))
    END NewMaster;

END CtlPowerPoint9.
