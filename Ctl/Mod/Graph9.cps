MODULE CtlGraph9;
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

    (* Microsoft Graph 9.0 Object Library, help: C:\Program Files\Microsoft Office\Office\VBAGRP9.CHM, id: 65535 *)
    (* guid: {00020802-0000-0000-C000-000000000046}, lcid: 0, syskind: win32, version: 1.3 *)

    IMPORT CtlT, CtlC, CtlOffice;

    CONST
        (* Constants *)
            xlAll* = -4104;
            xlAutomatic* = -4105;
            xlBoth* = 1;
            xlCenter* = -4108;
            xlChecker* = 9;
            xlCircle* = 8;
            xlCorner* = 2;
            xlCrissCross* = 16;
            xlCross* = 4;
            xlDiamond* = 2;
            xlDistributed* = -4117;
            xlDoubleAccounting* = 5;
            xlFixedValue* = 1;
            xlFormats* = -4122;
            xlGray16* = 17;
            xlGray8* = 18;
            xlGrid* = 15;
            xlHigh* = -4127;
            xlInside* = 2;
            xlJustify* = -4130;
            xlLightDown* = 13;
            xlLightHorizontal* = 11;
            xlLightUp* = 14;
            xlLightVertical* = 12;
            xlLow* = -4134;
            xlManual* = -4135;
            xlMinusValues* = 3;
            xlModule* = -4141;
            xlNextToAxis* = 4;
            xlNone* = -4142;
            xlNotes* = -4144;
            xlOff* = -4146;
            xlOn* = 1;
            xlPercent* = 2;
            xlPlus* = 9;
            xlPlusValues* = 2;
            xlSemiGray75* = 10;
            xlShowLabel* = 4;
            xlShowLabelAndPercent* = 5;
            xlShowPercent* = 3;
            xlShowValue* = 2;
            xlSimple* = -4154;
            xlSingle* = 2;
            xlSingleAccounting* = 4;
            xlSolid* = 1;
            xlSquare* = 1;
            xlStar* = 5;
            xlStError* = 4;
            xlToolbarButton* = 2;
            xlTriangle* = 3;
            xlGray25* = -4124;
            xlGray50* = -4125;
            xlGray75* = -4126;
            xlBottom* = -4107;
            xlLeft* = -4131;
            xlRight* = -4152;
            xlTop* = -4160;
            xl3DBar* = -4099;
            xl3DSurface* = -4103;
            xlBar* = 2;
            xlColumn* = 3;
            xlCombination* = -4111;
            xlCustom* = -4114;
            xlDefaultAutoFormat* = -1;
            xlMaximum* = 2;
            xlMinimum* = 4;
            xlOpaque* = 3;
            xlTransparent* = 2;
            xlBidi* = -5000;
            xlLatin* = -5001;
            xlContext* = -5002;
            xlLTR* = -5003;
            xlRTL* = -5004;
            xlFullScript* = 1;
            xlPartialScript* = 2;
            xlMixedScript* = 3;
            xlMixedAuthorizedScript* = 4;
            xlDefault* = -4143;
            xlVisualCursor* = 2;
            xlLogicalCursor* = 1;
            xlSystem* = 1;
            xlPartial* = 3;
            xlHindiNumerals* = 3;
            xlBidiCalendar* = 3;
            xlGregorian* = 2;
            xlComplete* = 4;
            xlScale* = 3;
            xlWizardDisplayAlways* = 1;
            xlWizardDisplayDefault* = 0;
            xlWizardDisplayNever* = 2;
        (* XlCreator *)
            xlCreatorCode* = 1480803660;
        (* XlChartGallery *)
            xlBuiltIn* = 21;
            xlUserDefined* = 22;
            xlAnyGallery* = 23;
        (* XlColorIndex *)
            xlColorIndexAutomatic* = -4105;
            xlColorIndexNone* = -4142;
        (* XlEndStyleCap *)
            xlCap* = 1;
            xlNoCap* = 2;
        (* XlRowCol *)
            xlColumns* = 2;
            xlRows* = 1;
        (* XlScaleType *)
            xlScaleLinear* = -4132;
            xlScaleLogarithmic* = -4133;
        (* XlDataSeriesType *)
            xlAutoFill* = 4;
            xlChronological* = 3;
            xlGrowth* = 2;
            xlDataSeriesLinear* = -4132;
        (* XlAxisCrosses *)
            xlAxisCrossesAutomatic* = -4105;
            xlAxisCrossesCustom* = -4114;
            xlAxisCrossesMaximum* = 2;
            xlAxisCrossesMinimum* = 4;
        (* XlAxisGroup *)
            xlPrimary* = 1;
            xlSecondary* = 2;
        (* XlBackground *)
            xlBackgroundAutomatic* = -4105;
            xlBackgroundOpaque* = 3;
            xlBackgroundTransparent* = 2;
        (* XlWindowState *)
            xlMaximized* = -4137;
            xlMinimized* = -4140;
            xlNormal* = -4143;
        (* XlAxisType *)
            xlCategory* = 1;
            xlSeriesAxis* = 3;
            xlValue* = 2;
        (* XlArrowHeadLength *)
            xlArrowHeadLengthLong* = 3;
            xlArrowHeadLengthMedium* = -4138;
            xlArrowHeadLengthShort* = 1;
        (* XlVAlign *)
            xlVAlignBottom* = -4107;
            xlVAlignCenter* = -4108;
            xlVAlignDistributed* = -4117;
            xlVAlignJustify* = -4130;
            xlVAlignTop* = -4160;
        (* XlTickMark *)
            xlTickMarkCross* = 4;
            xlTickMarkInside* = 2;
            xlTickMarkNone* = -4142;
            xlTickMarkOutside* = 3;
        (* XlErrorBarDirection *)
            xlX* = -4168;
            xlY* = 1;
        (* XlErrorBarInclude *)
            xlErrorBarIncludeBoth* = 1;
            xlErrorBarIncludeMinusValues* = 3;
            xlErrorBarIncludeNone* = -4142;
            xlErrorBarIncludePlusValues* = 2;
        (* XlDisplayBlanksAs *)
            xlInterpolated* = 3;
            xlNotPlotted* = 1;
            xlZero* = 2;
        (* XlArrowHeadStyle *)
            xlArrowHeadStyleClosed* = 3;
            xlArrowHeadStyleDoubleClosed* = 5;
            xlArrowHeadStyleDoubleOpen* = 4;
            xlArrowHeadStyleNone* = -4142;
            xlArrowHeadStyleOpen* = 2;
        (* XlArrowHeadWidth *)
            xlArrowHeadWidthMedium* = -4138;
            xlArrowHeadWidthNarrow* = 1;
            xlArrowHeadWidthWide* = 3;
        (* XlHAlign *)
            xlHAlignCenter* = -4108;
            xlHAlignCenterAcrossSelection* = 7;
            xlHAlignDistributed* = -4117;
            xlHAlignFill* = 5;
            xlHAlignGeneral* = 1;
            xlHAlignJustify* = -4130;
            xlHAlignLeft* = -4131;
            xlHAlignRight* = -4152;
        (* XlTickLabelPosition *)
            xlTickLabelPositionHigh* = -4127;
            xlTickLabelPositionLow* = -4134;
            xlTickLabelPositionNextToAxis* = 4;
            xlTickLabelPositionNone* = -4142;
        (* XlLegendPosition *)
            xlLegendPositionBottom* = -4107;
            xlLegendPositionCorner* = 2;
            xlLegendPositionLeft* = -4131;
            xlLegendPositionRight* = -4152;
            xlLegendPositionTop* = -4160;
        (* XlChartPictureType *)
            xlStackScale* = 3;
            xlStack* = 2;
            xlStretch* = 1;
        (* XlChartPicturePlacement *)
            xlSides* = 1;
            xlEnd* = 2;
            xlEndSides* = 3;
            xlFront* = 4;
            xlFrontSides* = 5;
            xlFrontEnd* = 6;
            xlAllFaces* = 7;
        (* XlOrientation *)
            xlDownward* = -4170;
            xlHorizontal* = -4128;
            xlUpward* = -4171;
            xlVertical* = -4166;
        (* XlTickLabelOrientation *)
            xlTickLabelOrientationAutomatic* = -4105;
            xlTickLabelOrientationDownward* = -4170;
            xlTickLabelOrientationHorizontal* = -4128;
            xlTickLabelOrientationUpward* = -4171;
            xlTickLabelOrientationVertical* = -4166;
        (* XlBorderWeight *)
            xlHairline* = 1;
            xlMedium* = -4138;
            xlThick* = 4;
            xlThin* = 2;
        (* XlDataSeriesDate *)
            xlDay* = 1;
            xlMonth* = 3;
            xlWeekday* = 2;
            xlYear* = 4;
        (* XlUnderlineStyle *)
            xlUnderlineStyleDouble* = -4119;
            xlUnderlineStyleDoubleAccounting* = 5;
            xlUnderlineStyleNone* = -4142;
            xlUnderlineStyleSingle* = 2;
            xlUnderlineStyleSingleAccounting* = 4;
        (* XlErrorBarType *)
            xlErrorBarTypeCustom* = -4114;
            xlErrorBarTypeFixedValue* = 1;
            xlErrorBarTypePercent* = 2;
            xlErrorBarTypeStDev* = -4155;
            xlErrorBarTypeStError* = 4;
        (* XlTrendlineType *)
            xlExponential* = 5;
            xlLinear* = -4132;
            xlLogarithmic* = -4133;
            xlMovingAvg* = 6;
            xlPolynomial* = 3;
            xlPower* = 4;
        (* XlLineStyle *)
            xlContinuous* = 1;
            xlDash* = -4115;
            xlDashDot* = 4;
            xlDashDotDot* = 5;
            xlDot* = -4118;
            xlDouble* = -4119;
            xlSlantDashDot* = 13;
            xlLineStyleNone* = -4142;
        (* XlDataLabelsType *)
            xlDataLabelsShowNone* = -4142;
            xlDataLabelsShowValue* = 2;
            xlDataLabelsShowPercent* = 3;
            xlDataLabelsShowLabel* = 4;
            xlDataLabelsShowLabelAndPercent* = 5;
            xlDataLabelsShowBubbleSizes* = 6;
        (* XlMarkerStyle *)
            xlMarkerStyleAutomatic* = -4105;
            xlMarkerStyleCircle* = 8;
            xlMarkerStyleDash* = -4115;
            xlMarkerStyleDiamond* = 2;
            xlMarkerStyleDot* = -4118;
            xlMarkerStyleNone* = -4142;
            xlMarkerStylePicture* = -4147;
            xlMarkerStylePlus* = 9;
            xlMarkerStyleSquare* = 1;
            xlMarkerStyleStar* = 5;
            xlMarkerStyleTriangle* = 3;
            xlMarkerStyleX* = -4168;
        (* XlPictureConvertorType *)
            xlBMP* = 1;
            xlCGM* = 7;
            xlDRW* = 4;
            xlDXF* = 5;
            xlEPS* = 8;
            xlHGL* = 6;
            xlPCT* = 13;
            xlPCX* = 10;
            xlPIC* = 11;
            xlPLT* = 12;
            xlTIF* = 9;
            xlWMF* = 2;
            xlWPG* = 3;
        (* XlPattern *)
            xlPatternAutomatic* = -4105;
            xlPatternChecker* = 9;
            xlPatternCrissCross* = 16;
            xlPatternDown* = -4121;
            xlPatternGray16* = 17;
            xlPatternGray25* = -4124;
            xlPatternGray50* = -4125;
            xlPatternGray75* = -4126;
            xlPatternGray8* = 18;
            xlPatternGrid* = 15;
            xlPatternHorizontal* = -4128;
            xlPatternLightDown* = 13;
            xlPatternLightHorizontal* = 11;
            xlPatternLightUp* = 14;
            xlPatternLightVertical* = 12;
            xlPatternNone* = -4142;
            xlPatternSemiGray75* = 10;
            xlPatternSolid* = 1;
            xlPatternUp* = -4162;
            xlPatternVertical* = -4166;
        (* XlChartSplitType *)
            xlSplitByPosition* = 1;
            xlSplitByPercentValue* = 3;
            xlSplitByCustomSplit* = 4;
            xlSplitByValue* = 2;
        (* XlDisplayUnit *)
            xlHundreds* = -2;
            xlThousands* = -3;
            xlTenThousands* = -4;
            xlHundredThousands* = -5;
            xlMillions* = -6;
            xlTenMillions* = -7;
            xlHundredMillions* = -8;
            xlThousandMillions* = -9;
            xlMillionMillions* = -10;
        (* XlDataLabelPosition *)
            xlLabelPositionCenter* = -4108;
            xlLabelPositionAbove* = 0;
            xlLabelPositionBelow* = 1;
            xlLabelPositionLeft* = -4131;
            xlLabelPositionRight* = -4152;
            xlLabelPositionOutsideEnd* = 2;
            xlLabelPositionInsideEnd* = 3;
            xlLabelPositionInsideBase* = 4;
            xlLabelPositionBestFit* = 5;
            xlLabelPositionMixed* = 6;
            xlLabelPositionCustom* = 7;
        (* XlTimeUnit *)
            xlDays* = 0;
            xlMonths* = 1;
            xlYears* = 2;
        (* XlCategoryType *)
            xlCategoryScale* = 2;
            xlTimeScale* = 3;
            xlAutomaticScale* = -4105;
        (* XlBarShape *)
            xlBox* = 0;
            xlPyramidToPoint* = 1;
            xlPyramidToMax* = 2;
            xlCylinder* = 3;
            xlConeToPoint* = 4;
            xlConeToMax* = 5;
        (* XlChartType *)
            xlColumnClustered* = 51;
            xlColumnStacked* = 52;
            xlColumnStacked100* = 53;
            xl3DColumnClustered* = 54;
            xl3DColumnStacked* = 55;
            xl3DColumnStacked100* = 56;
            xlBarClustered* = 57;
            xlBarStacked* = 58;
            xlBarStacked100* = 59;
            xl3DBarClustered* = 60;
            xl3DBarStacked* = 61;
            xl3DBarStacked100* = 62;
            xlLineStacked* = 63;
            xlLineStacked100* = 64;
            xlLineMarkers* = 65;
            xlLineMarkersStacked* = 66;
            xlLineMarkersStacked100* = 67;
            xlPieOfPie* = 68;
            xlPieExploded* = 69;
            xl3DPieExploded* = 70;
            xlBarOfPie* = 71;
            xlXYScatterSmooth* = 72;
            xlXYScatterSmoothNoMarkers* = 73;
            xlXYScatterLines* = 74;
            xlXYScatterLinesNoMarkers* = 75;
            xlAreaStacked* = 76;
            xlAreaStacked100* = 77;
            xl3DAreaStacked* = 78;
            xl3DAreaStacked100* = 79;
            xlDoughnutExploded* = 80;
            xlRadarMarkers* = 81;
            xlRadarFilled* = 82;
            xlSurface* = 83;
            xlSurfaceWireframe* = 84;
            xlSurfaceTopView* = 85;
            xlSurfaceTopViewWireframe* = 86;
            xlBubble* = 15;
            xlBubble3DEffect* = 87;
            xlStockHLC* = 88;
            xlStockOHLC* = 89;
            xlStockVHLC* = 90;
            xlStockVOHLC* = 91;
            xlCylinderColClustered* = 92;
            xlCylinderColStacked* = 93;
            xlCylinderColStacked100* = 94;
            xlCylinderBarClustered* = 95;
            xlCylinderBarStacked* = 96;
            xlCylinderBarStacked100* = 97;
            xlCylinderCol* = 98;
            xlConeColClustered* = 99;
            xlConeColStacked* = 100;
            xlConeColStacked100* = 101;
            xlConeBarClustered* = 102;
            xlConeBarStacked* = 103;
            xlConeBarStacked100* = 104;
            xlConeCol* = 105;
            xlPyramidColClustered* = 106;
            xlPyramidColStacked* = 107;
            xlPyramidColStacked100* = 108;
            xlPyramidBarClustered* = 109;
            xlPyramidBarStacked* = 110;
            xlPyramidBarStacked100* = 111;
            xlPyramidCol* = 112;
            xl3DColumn* = -4100;
            xlLine* = 4;
            xl3DLine* = -4101;
            xl3DPie* = -4102;
            xlPie* = 5;
            xlXYScatter* = -4169;
            xl3DArea* = -4098;
            xlArea* = 1;
            xlDoughnut* = -4120;
            xlRadar* = -4151;
        (* XlChartItem *)
            xlDataLabel* = 0;
            xlChartArea* = 2;
            xlSeries* = 3;
            xlChartTitle* = 4;
            xlWalls* = 5;
            xlCorners* = 6;
            xlDataTable* = 7;
            xlTrendline* = 8;
            xlErrorBars* = 9;
            xlXErrorBars* = 10;
            xlYErrorBars* = 11;
            xlLegendEntry* = 12;
            xlLegendKey* = 13;
            xlShape* = 14;
            xlMajorGridlines* = 15;
            xlMinorGridlines* = 16;
            xlAxisTitle* = 17;
            xlUpBars* = 18;
            xlPlotArea* = 19;
            xlDownBars* = 20;
            xlAxis* = 21;
            xlSeriesLines* = 22;
            xlFloor* = 23;
            xlLegend* = 24;
            xlHiLoLines* = 25;
            xlDropLines* = 26;
            xlRadarAxisLabels* = 27;
            xlNothing* = 28;
            xlLeaderLines* = 29;
            xlDisplayUnitLabel* = 30;
            xlPivotChartFieldButton* = 31;
            xlPivotChartDropZone* = 32;
        (* XlSizeRepresents *)
            xlSizeIsWidth* = 2;
            xlSizeIsArea* = 1;
        (* XlInsertShiftDirection *)
            xlShiftDown* = -4121;
            xlShiftToRight* = -4161;
        (* XlDeleteShiftDirection *)
            xlShiftToLeft* = -4159;
            xlShiftUp* = -4162;
        (* XlDirection *)
            xlDown* = -4121;
            xlToLeft* = -4159;
            xlToRight* = -4161;
            xlUp* = -4162;
        (* XlConsolidationFunction *)
            xlAverage* = -4106;
            xlCount* = -4112;
            xlCountNums* = -4113;
            xlMax* = -4136;
            xlMin* = -4139;
            xlProduct* = -4149;
            xlStDev* = -4155;
            xlStDevP* = -4156;
            xlSum* = -4157;
            xlVar* = -4164;
            xlVarP* = -4165;
            xlUnknown* = 1000;
        (* XlSheetType *)
            xlChart* = -4109;
            xlDialogSheet* = -4116;
            xlExcel4IntlMacroSheet* = 4;
            xlExcel4MacroSheet* = 3;
            xlWorksheet* = -4167;
        (* XlLocationInTable *)
            xlColumnHeader* = -4110;
            xlColumnItem* = 5;
            xlDataHeader* = 3;
            xlDataItem* = 7;
            xlPageHeader* = 2;
            xlPageItem* = 6;
            xlRowHeader* = -4153;
            xlRowItem* = 4;
            xlTableBody* = 8;
        (* XlFindLookIn *)
            xlFormulas* = -4123;
            xlComments* = -4144;
            xlValues* = -4163;
        (* XlWindowType *)
            xlChartAsWindow* = 5;
            xlChartInPlace* = 4;
            xlClipboard* = 3;
            xlInfo* = -4129;
            xlWorkbook* = 1;
        (* XlPivotFieldDataType *)
            xlDate* = 2;
            xlNumber* = -4145;
            xlText* = -4158;
        (* XlCopyPictureFormat *)
            xlBitmap* = 2;
            xlPicture* = -4147;
        (* XlPivotTableSourceType *)
            xlConsolidation* = 3;
            xlDatabase* = 1;
            xlExternal* = 2;
            xlPivotTable* = -4148;
        (* XlReferenceStyle *)
            xlA1* = 1;
            xlR1C1* = -4150;
        (* xlPivotFormatType *)
            xlReport1* = 0;
            xlReport2* = 1;
            xlReport3* = 2;
            xlReport4* = 3;
            xlReport5* = 4;
            xlReport6* = 5;
            xlReport7* = 6;
            xlReport8* = 7;
            xlReport9* = 8;
            xlReport10* = 9;
            xlTable1* = 10;
            xlTable2* = 11;
            xlTable3* = 12;
            xlTable4* = 13;
            xlTable5* = 14;
            xlTable6* = 15;
            xlTable7* = 16;
            xlTable8* = 17;
            xlTable9* = 18;
            xlTable10* = 19;
            xlPTClassic* = 20;
            xlPTNone* = 21;
        (* XlCmdType *)
            xlCmdCube* = 1;
            xlCmdSql* = 2;
            xlCmdTable* = 3;
            xlCmdDefault* = 4;
        (* xlColumnDataType *)
            xlGeneralFormat* = 1;
            xlTextFormat* = 2;
            xlMDYFormat* = 3;
            xlDMYFormat* = 4;
            xlYMDFormat* = 5;
            xlMYDFormat* = 6;
            xlDYMFormat* = 7;
            xlYDMFormat* = 8;
            xlSkipColumn* = 9;
            xlEMDFormat* = 10;
        (* xlQueryType *)
            xlODBCQuery* = 1;
            xlDAORecordSet* = 2;
            xlWebQuery* = 4;
            xlOLEDBQuery* = 5;
            xlTextImport* = 6;
            xlADORecordset* = 7;
        (* xlWebSelectionType *)
            xlEntirePage* = 1;
            xlAllTables* = 2;
            xlSpecifiedTables* = 3;
        (* XlCubeFieldType *)
            xlHierarchy* = 1;
            xlMeasure* = 2;
        (* xlWebFormatting *)
            xlWebFormattingAll* = 1;
            xlWebFormattingRTF* = 2;
            xlWebFormattingNone* = 3;
        (* xlDisplayDrawingObjects *)
            xlDisplayShapes* = -4104;
            xlHide* = 3;
            xlPlaceholders* = 2;
        (* xLSubtototalLocationType *)
            xlAtTop* = 1;
            xlAtBottom* = 2;


    TYPE
        Constants* = INTEGER;
        XlCreator* = INTEGER;
        XlChartGallery* = INTEGER;
        XlColorIndex* = INTEGER;
        XlEndStyleCap* = INTEGER;
        XlRowCol* = INTEGER;
        XlScaleType* = INTEGER;
        XlDataSeriesType* = INTEGER;
        XlAxisCrosses* = INTEGER;
        XlAxisGroup* = INTEGER;
        XlBackground* = INTEGER;
        XlWindowState* = INTEGER;
        XlAxisType* = INTEGER;
        XlArrowHeadLength* = INTEGER;
        XlVAlign* = INTEGER;
        XlTickMark* = INTEGER;
        XlErrorBarDirection* = INTEGER;
        XlErrorBarInclude* = INTEGER;
        XlDisplayBlanksAs* = INTEGER;
        XlArrowHeadStyle* = INTEGER;
        XlArrowHeadWidth* = INTEGER;
        XlHAlign* = INTEGER;
        XlTickLabelPosition* = INTEGER;
        XlLegendPosition* = INTEGER;
        XlChartPictureType* = INTEGER;
        XlChartPicturePlacement* = INTEGER;
        XlOrientation* = INTEGER;
        XlTickLabelOrientation* = INTEGER;
        XlBorderWeight* = INTEGER;
        XlDataSeriesDate* = INTEGER;
        XlUnderlineStyle* = INTEGER;
        XlErrorBarType* = INTEGER;
        XlTrendlineType* = INTEGER;
        XlLineStyle* = INTEGER;
        XlDataLabelsType* = INTEGER;
        XlMarkerStyle* = INTEGER;
        XlPictureConvertorType* = INTEGER;
        XlPattern* = INTEGER;
        XlChartSplitType* = INTEGER;
        XlDisplayUnit* = INTEGER;
        XlDataLabelPosition* = INTEGER;
        XlTimeUnit* = INTEGER;
        XlCategoryType* = INTEGER;
        XlBarShape* = INTEGER;
        XlChartType* = INTEGER;
        XlChartItem* = INTEGER;
        XlSizeRepresents* = INTEGER;
        XlInsertShiftDirection* = INTEGER;
        XlDeleteShiftDirection* = INTEGER;
        XlDirection* = INTEGER;
        XlConsolidationFunction* = INTEGER;
        XlSheetType* = INTEGER;
        XlLocationInTable* = INTEGER;
        XlFindLookIn* = INTEGER;
        XlWindowType* = INTEGER;
        XlPivotFieldDataType* = INTEGER;
        XlCopyPictureFormat* = INTEGER;
        XlPivotTableSourceType* = INTEGER;
        XlReferenceStyle* = INTEGER;
        xlPivotFormatType* = INTEGER;
        XlCmdType* = INTEGER;
        xlColumnDataType* = INTEGER;
        xlQueryType* = INTEGER;
        xlWebSelectionType* = INTEGER;
        XlCubeFieldType* = INTEGER;
        xlWebFormatting* = INTEGER;
        xlDisplayDrawingObjects* = INTEGER;
        xLSubtototalLocationType* = INTEGER;
        Font* = POINTER TO RECORD (CtlT.Object) END;
        _Global* = POINTER TO RECORD (CtlT.Object) END;
        Chart* = POINTER TO RECORD (CtlT.Object) END;
        Application* = POINTER TO RECORD (CtlT.Object) END;
        DataSheet* = POINTER TO RECORD (CtlT.Object) END;
        Range* = POINTER TO RECORD (CtlT.Object) END;
        AutoCorrect* = POINTER TO RECORD (CtlT.Object) END;
        Border* = POINTER TO RECORD (CtlT.Object) END;
        Interior* = POINTER TO RECORD (CtlT.Object) END;
        ChartFillFormat* = POINTER TO RECORD (CtlT.Object) END;
        ChartColorFormat* = POINTER TO RECORD (CtlT.Object) END;
        Axis* = POINTER TO RECORD (CtlT.Object) END;
        ChartTitle* = POINTER TO RECORD (CtlT.Object) END;
        AxisTitle* = POINTER TO RECORD (CtlT.Object) END;
        ChartGroup* = POINTER TO RECORD (CtlT.Object) END;
        ChartGroups* = POINTER TO RECORD (CtlT.Object) END;
        Axes* = POINTER TO RECORD (CtlT.Object) END;
        Points* = POINTER TO RECORD (CtlT.Object) END;
        Point* = POINTER TO RECORD (CtlT.Object) END;
        Series* = POINTER TO RECORD (CtlT.Object) END;
        SeriesCollection* = POINTER TO RECORD (CtlT.Object) END;
        DataLabel* = POINTER TO RECORD (CtlT.Object) END;
        DataLabels* = POINTER TO RECORD (CtlT.Object) END;
        LegendEntry* = POINTER TO RECORD (CtlT.Object) END;
        LegendEntries* = POINTER TO RECORD (CtlT.Object) END;
        LegendKey* = POINTER TO RECORD (CtlT.Object) END;
        Trendlines* = POINTER TO RECORD (CtlT.Object) END;
        Trendline* = POINTER TO RECORD (CtlT.Object) END;
        Corners* = POINTER TO RECORD (CtlT.Object) END;
        SeriesLines* = POINTER TO RECORD (CtlT.Object) END;
        HiLoLines* = POINTER TO RECORD (CtlT.Object) END;
        Gridlines* = POINTER TO RECORD (CtlT.Object) END;
        DropLines* = POINTER TO RECORD (CtlT.Object) END;
        LeaderLines* = POINTER TO RECORD (CtlT.Object) END;
        UpBars* = POINTER TO RECORD (CtlT.Object) END;
        DownBars* = POINTER TO RECORD (CtlT.Object) END;
        Floor* = POINTER TO RECORD (CtlT.Object) END;
        Walls* = POINTER TO RECORD (CtlT.Object) END;
        TickLabels* = POINTER TO RECORD (CtlT.Object) END;
        PlotArea* = POINTER TO RECORD (CtlT.Object) END;
        ChartArea* = POINTER TO RECORD (CtlT.Object) END;
        Legend* = POINTER TO RECORD (CtlT.Object) END;
        ErrorBars* = POINTER TO RECORD (CtlT.Object) END;
        DataTable* = POINTER TO RECORD (CtlT.Object) END;
        DisplayUnitLabel* = POINTER TO RECORD (CtlT.Object) END;
        Global* = _Global;


    PROCEDURE ThisFont* (v: CtlT.Any): Font;
        VAR new: Font;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F3-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFont;

    PROCEDURE IsFont* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F3-0000-0000-C000-000000000046}")
    END IsFont;

    PROCEDURE This_Global* (v: CtlT.Any): _Global;
        VAR new: _Global;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208FC-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_Global;

    PROCEDURE Is_Global* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208FC-0000-0000-C000-000000000046}")
    END Is_Global;

    PROCEDURE ThisChart* (v: CtlT.Any): Chart;
        VAR new: Chart;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208FB-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChart;

    PROCEDURE IsChart* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208FB-0000-0000-C000-000000000046}")
    END IsChart;

    PROCEDURE ThisApplication* (v: CtlT.Any): Application;
        VAR new: Application;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208EC-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisApplication;

    PROCEDURE IsApplication* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208EC-0000-0000-C000-000000000046}")
    END IsApplication;

    PROCEDURE ThisDataSheet* (v: CtlT.Any): DataSheet;
        VAR new: DataSheet;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024726-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDataSheet;

    PROCEDURE IsDataSheet* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024726-0000-0000-C000-000000000046}")
    END IsDataSheet;

    PROCEDURE ThisRange* (v: CtlT.Any): Range;
        VAR new: Range;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024727-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisRange;

    PROCEDURE IsRange* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024727-0000-0000-C000-000000000046}")
    END IsRange;

    PROCEDURE ThisAutoCorrect* (v: CtlT.Any): AutoCorrect;
        VAR new: AutoCorrect;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208D4-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAutoCorrect;

    PROCEDURE IsAutoCorrect* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208D4-0000-0000-C000-000000000046}")
    END IsAutoCorrect;

    PROCEDURE ThisBorder* (v: CtlT.Any): Border;
        VAR new: Border;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208EE-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBorder;

    PROCEDURE IsBorder* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208EE-0000-0000-C000-000000000046}")
    END IsBorder;

    PROCEDURE ThisInterior* (v: CtlT.Any): Interior;
        VAR new: Interior;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208ED-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisInterior;

    PROCEDURE IsInterior* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208ED-0000-0000-C000-000000000046}")
    END IsInterior;

    PROCEDURE ThisChartFillFormat* (v: CtlT.Any): ChartFillFormat;
        VAR new: ChartFillFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002441C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChartFillFormat;

    PROCEDURE IsChartFillFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002441C-0000-0000-C000-000000000046}")
    END IsChartFillFormat;

    PROCEDURE ThisChartColorFormat* (v: CtlT.Any): ChartColorFormat;
        VAR new: ChartColorFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002441D-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChartColorFormat;

    PROCEDURE IsChartColorFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002441D-0000-0000-C000-000000000046}")
    END IsChartColorFormat;

    PROCEDURE ThisAxis* (v: CtlT.Any): Axis;
        VAR new: Axis;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F9-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAxis;

    PROCEDURE IsAxis* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F9-0000-0000-C000-000000000046}")
    END IsAxis;

    PROCEDURE ThisChartTitle* (v: CtlT.Any): ChartTitle;
        VAR new: ChartTitle;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F8-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChartTitle;

    PROCEDURE IsChartTitle* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F8-0000-0000-C000-000000000046}")
    END IsChartTitle;

    PROCEDURE ThisAxisTitle* (v: CtlT.Any): AxisTitle;
        VAR new: AxisTitle;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F7-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAxisTitle;

    PROCEDURE IsAxisTitle* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F7-0000-0000-C000-000000000046}")
    END IsAxisTitle;

    PROCEDURE ThisChartGroup* (v: CtlT.Any): ChartGroup;
        VAR new: ChartGroup;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F6-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChartGroup;

    PROCEDURE IsChartGroup* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F6-0000-0000-C000-000000000046}")
    END IsChartGroup;

    PROCEDURE ThisChartGroups* (v: CtlT.Any): ChartGroups;
        VAR new: ChartGroups;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F5-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChartGroups;

    PROCEDURE IsChartGroups* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F5-0000-0000-C000-000000000046}")
    END IsChartGroups;

    PROCEDURE ThisAxes* (v: CtlT.Any): Axes;
        VAR new: Axes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F4-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAxes;

    PROCEDURE IsAxes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F4-0000-0000-C000-000000000046}")
    END IsAxes;

    PROCEDURE ThisPoints* (v: CtlT.Any): Points;
        VAR new: Points;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F2-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPoints;

    PROCEDURE IsPoints* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F2-0000-0000-C000-000000000046}")
    END IsPoints;

    PROCEDURE ThisPoint* (v: CtlT.Any): Point;
        VAR new: Point;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F1-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPoint;

    PROCEDURE IsPoint* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F1-0000-0000-C000-000000000046}")
    END IsPoint;

    PROCEDURE ThisSeries* (v: CtlT.Any): Series;
        VAR new: Series;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208F0-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSeries;

    PROCEDURE IsSeries* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208F0-0000-0000-C000-000000000046}")
    END IsSeries;

    PROCEDURE ThisSeriesCollection* (v: CtlT.Any): SeriesCollection;
        VAR new: SeriesCollection;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208EF-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSeriesCollection;

    PROCEDURE IsSeriesCollection* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208EF-0000-0000-C000-000000000046}")
    END IsSeriesCollection;

    PROCEDURE ThisDataLabel* (v: CtlT.Any): DataLabel;
        VAR new: DataLabel;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E9-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDataLabel;

    PROCEDURE IsDataLabel* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E9-0000-0000-C000-000000000046}")
    END IsDataLabel;

    PROCEDURE ThisDataLabels* (v: CtlT.Any): DataLabels;
        VAR new: DataLabels;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E8-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDataLabels;

    PROCEDURE IsDataLabels* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E8-0000-0000-C000-000000000046}")
    END IsDataLabels;

    PROCEDURE ThisLegendEntry* (v: CtlT.Any): LegendEntry;
        VAR new: LegendEntry;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E7-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLegendEntry;

    PROCEDURE IsLegendEntry* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E7-0000-0000-C000-000000000046}")
    END IsLegendEntry;

    PROCEDURE ThisLegendEntries* (v: CtlT.Any): LegendEntries;
        VAR new: LegendEntries;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E6-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLegendEntries;

    PROCEDURE IsLegendEntries* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E6-0000-0000-C000-000000000046}")
    END IsLegendEntries;

    PROCEDURE ThisLegendKey* (v: CtlT.Any): LegendKey;
        VAR new: LegendKey;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E5-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLegendKey;

    PROCEDURE IsLegendKey* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E5-0000-0000-C000-000000000046}")
    END IsLegendKey;

    PROCEDURE ThisTrendlines* (v: CtlT.Any): Trendlines;
        VAR new: Trendlines;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E4-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTrendlines;

    PROCEDURE IsTrendlines* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E4-0000-0000-C000-000000000046}")
    END IsTrendlines;

    PROCEDURE ThisTrendline* (v: CtlT.Any): Trendline;
        VAR new: Trendline;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E3-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTrendline;

    PROCEDURE IsTrendline* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E3-0000-0000-C000-000000000046}")
    END IsTrendline;

    PROCEDURE ThisCorners* (v: CtlT.Any): Corners;
        VAR new: Corners;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E2-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCorners;

    PROCEDURE IsCorners* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E2-0000-0000-C000-000000000046}")
    END IsCorners;

    PROCEDURE ThisSeriesLines* (v: CtlT.Any): SeriesLines;
        VAR new: SeriesLines;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E1-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisSeriesLines;

    PROCEDURE IsSeriesLines* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E1-0000-0000-C000-000000000046}")
    END IsSeriesLines;

    PROCEDURE ThisHiLoLines* (v: CtlT.Any): HiLoLines;
        VAR new: HiLoLines;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208E0-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHiLoLines;

    PROCEDURE IsHiLoLines* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208E0-0000-0000-C000-000000000046}")
    END IsHiLoLines;

    PROCEDURE ThisGridlines* (v: CtlT.Any): Gridlines;
        VAR new: Gridlines;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024700-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisGridlines;

    PROCEDURE IsGridlines* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024700-0000-0000-C000-000000000046}")
    END IsGridlines;

    PROCEDURE ThisDropLines* (v: CtlT.Any): DropLines;
        VAR new: DropLines;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024701-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDropLines;

    PROCEDURE IsDropLines* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024701-0000-0000-C000-000000000046}")
    END IsDropLines;

    PROCEDURE ThisLeaderLines* (v: CtlT.Any): LeaderLines;
        VAR new: LeaderLines;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002441E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLeaderLines;

    PROCEDURE IsLeaderLines* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002441E-0000-0000-C000-000000000046}")
    END IsLeaderLines;

    PROCEDURE ThisUpBars* (v: CtlT.Any): UpBars;
        VAR new: UpBars;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024702-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisUpBars;

    PROCEDURE IsUpBars* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024702-0000-0000-C000-000000000046}")
    END IsUpBars;

    PROCEDURE ThisDownBars* (v: CtlT.Any): DownBars;
        VAR new: DownBars;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024703-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDownBars;

    PROCEDURE IsDownBars* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024703-0000-0000-C000-000000000046}")
    END IsDownBars;

    PROCEDURE ThisFloor* (v: CtlT.Any): Floor;
        VAR new: Floor;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024704-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFloor;

    PROCEDURE IsFloor* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024704-0000-0000-C000-000000000046}")
    END IsFloor;

    PROCEDURE ThisWalls* (v: CtlT.Any): Walls;
        VAR new: Walls;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024705-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisWalls;

    PROCEDURE IsWalls* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024705-0000-0000-C000-000000000046}")
    END IsWalls;

    PROCEDURE ThisTickLabels* (v: CtlT.Any): TickLabels;
        VAR new: TickLabels;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024706-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTickLabels;

    PROCEDURE IsTickLabels* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024706-0000-0000-C000-000000000046}")
    END IsTickLabels;

    PROCEDURE ThisPlotArea* (v: CtlT.Any): PlotArea;
        VAR new: PlotArea;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024707-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPlotArea;

    PROCEDURE IsPlotArea* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024707-0000-0000-C000-000000000046}")
    END IsPlotArea;

    PROCEDURE ThisChartArea* (v: CtlT.Any): ChartArea;
        VAR new: ChartArea;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024708-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisChartArea;

    PROCEDURE IsChartArea* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024708-0000-0000-C000-000000000046}")
    END IsChartArea;

    PROCEDURE ThisLegend* (v: CtlT.Any): Legend;
        VAR new: Legend;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{00024709-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLegend;

    PROCEDURE IsLegend* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{00024709-0000-0000-C000-000000000046}")
    END IsLegend;

    PROCEDURE ThisErrorBars* (v: CtlT.Any): ErrorBars;
        VAR new: ErrorBars;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{0002470A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisErrorBars;

    PROCEDURE IsErrorBars* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{0002470A-0000-0000-C000-000000000046}")
    END IsErrorBars;

    PROCEDURE ThisDataTable* (v: CtlT.Any): DataTable;
        VAR new: DataTable;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208FA-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDataTable;

    PROCEDURE IsDataTable* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208FA-0000-0000-C000-000000000046}")
    END IsDataTable;

    PROCEDURE ThisDisplayUnitLabel* (v: CtlT.Any): DisplayUnitLabel;
        VAR new: DisplayUnitLabel;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000208D3-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisDisplayUnitLabel;

    PROCEDURE IsDisplayUnitLabel* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000208D3-0000-0000-C000-000000000046}")
    END IsDisplayUnitLabel;



    (* ---------- Font ---------- *)

    PROCEDURE (this: Font) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Font) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Font) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Font) Background* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 180)
    END Background;

    PROCEDURE (this: Font) PUTBackground* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 180, p1)
    END PUTBackground;

    PROCEDURE (this: Font) Bold* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 96)
    END Bold;

    PROCEDURE (this: Font) PUTBold* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 96, p1)
    END PUTBold;

    PROCEDURE (this: Font) Color* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 99)
    END Color;

    PROCEDURE (this: Font) PUTColor* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 99, p1)
    END PUTColor;

    PROCEDURE (this: Font) ColorIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 97)
    END ColorIndex;

    PROCEDURE (this: Font) PUTColorIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 97, p1)
    END PUTColorIndex;

    PROCEDURE (this: Font) FontStyle* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 177)
    END FontStyle;

    PROCEDURE (this: Font) PUTFontStyle* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 177, p1)
    END PUTFontStyle;

    PROCEDURE (this: Font) Italic* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 101)
    END Italic;

    PROCEDURE (this: Font) PUTItalic* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 101, p1)
    END PUTItalic;

    PROCEDURE (this: Font) Name* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 110)
    END Name;

    PROCEDURE (this: Font) PUTName* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 110, p1)
    END PUTName;

    PROCEDURE (this: Font) OutlineFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 221)
    END OutlineFont;

    PROCEDURE (this: Font) PUTOutlineFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 221, p1)
    END PUTOutlineFont;

    PROCEDURE (this: Font) Shadow* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 103)
    END Shadow;

    PROCEDURE (this: Font) PUTShadow* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: Font) Size* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 104)
    END Size;

    PROCEDURE (this: Font) PUTSize* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 104, p1)
    END PUTSize;

    PROCEDURE (this: Font) Strikethrough* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 105)
    END Strikethrough;

    PROCEDURE (this: Font) PUTStrikethrough* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 105, p1)
    END PUTStrikethrough;

    PROCEDURE (this: Font) Subscript* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 179)
    END Subscript;

    PROCEDURE (this: Font) PUTSubscript* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 179, p1)
    END PUTSubscript;

    PROCEDURE (this: Font) Superscript* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 178)
    END Superscript;

    PROCEDURE (this: Font) PUTSuperscript* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 178, p1)
    END PUTSuperscript;

    PROCEDURE (this: Font) Underline* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 106)
    END Underline;

    PROCEDURE (this: Font) PUTUnderline* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 106, p1)
    END PUTUnderline;


    (* ---------- _Global, hidden ---------- *)

    PROCEDURE (this: _Global) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: _Global) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: _Global) Parent* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 150))
    END Parent;

    PROCEDURE (this: _Global) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.ThisCommandBars(CtlC.GetAny(this, 1439))
    END CommandBars;


    (* ---------- Chart ---------- *)

    PROCEDURE (this: Chart) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Chart) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Chart) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Chart) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 304, NIL);
    END Activate;

    PROCEDURE (this: Chart) ApplyDataLabels* ((* optional *) Type: CtlT.Any; LegendKey: CtlT.Any; AutoText: CtlT.Any; HasLeaderLines: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[3]);
        CtlC.AnyVar(LegendKey, arg[2]);
        CtlC.AnyVar(AutoText, arg[1]);
        CtlC.AnyVar(HasLeaderLines, arg[0]);
        CtlC.CallParMethod(this, 151, arg, NIL);
    END ApplyDataLabels;

    PROCEDURE (this: Chart) Area3DGroup* (): ChartGroup, NEW;
    BEGIN
        RETURN ThisChartGroup(CtlC.GetAny(this, 17))
    END Area3DGroup;

    PROCEDURE (this: Chart) AreaGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 9, arg, ret);
        RETURN CtlC.VarObj(ret)
    END AreaGroups;

    PROCEDURE (this: Chart) AutoFormat* (Gallery: INTEGER; (* optional *) Format: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Gallery, arg[1]);
        CtlC.AnyVar(Format, arg[0]);
        CtlC.CallParMethod(this, 114, arg, NIL);
    END AutoFormat;

    PROCEDURE (this: Chart) AutoScaling* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 107)
    END AutoScaling;

    PROCEDURE (this: Chart) PUTAutoScaling* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 107, p1)
    END PUTAutoScaling;

    PROCEDURE (this: Chart) Axes* ((* optional *) Type: CtlT.Any; AxisGroup: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[1]);
        CtlC.AnyVar(AxisGroup, arg[0]);
        CtlC.CallParMethod(this, 23, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Axes;

    PROCEDURE (this: Chart) Bar3DGroup* (): ChartGroup, NEW;
    BEGIN
        RETURN ThisChartGroup(CtlC.GetAny(this, 18))
    END Bar3DGroup;

    PROCEDURE (this: Chart) BarGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 10, arg, ret);
        RETURN CtlC.VarObj(ret)
    END BarGroups;

    PROCEDURE (this: Chart) ChartArea* (): ChartArea, NEW;
    BEGIN
        RETURN ThisChartArea(CtlC.GetAny(this, 80))
    END ChartArea;

    PROCEDURE (this: Chart) ChartGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 8, arg, ret);
        RETURN CtlC.VarObj(ret)
    END ChartGroups;

    PROCEDURE (this: Chart) ChartTitle* (): ChartTitle, NEW;
    BEGIN
        RETURN ThisChartTitle(CtlC.GetAny(this, 81))
    END ChartTitle;

    PROCEDURE (this: Chart) Column3DGroup* (): ChartGroup, NEW;
    BEGIN
        RETURN ThisChartGroup(CtlC.GetAny(this, 19))
    END Column3DGroup;

    PROCEDURE (this: Chart) ColumnGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 11, arg, ret);
        RETURN CtlC.VarObj(ret)
    END ColumnGroups;

    PROCEDURE (this: Chart) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.ThisCommandBars(CtlC.GetAny(this, 1439))
    END CommandBars;

    PROCEDURE (this: Chart) Corners* (): Corners, NEW;
    BEGIN
        RETURN ThisCorners(CtlC.GetAny(this, 79))
    END Corners;

    PROCEDURE (this: Chart) DataTable* (): DataTable, NEW;
    BEGIN
        RETURN ThisDataTable(CtlC.GetAny(this, 1395))
    END DataTable;

    PROCEDURE (this: Chart) DepthPercent* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 48)
    END DepthPercent;

    PROCEDURE (this: Chart) PUTDepthPercent* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 48, p1)
    END PUTDepthPercent;

    PROCEDURE (this: Chart) Deselect* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1120, NIL);
    END Deselect;

    PROCEDURE (this: Chart) DisplayBlanksAs* (): XlDisplayBlanksAs, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 93)
    END DisplayBlanksAs;

    PROCEDURE (this: Chart) PUTDisplayBlanksAs* (p1: XlDisplayBlanksAs), NEW;
    BEGIN
        CtlC.PutInt(this, 93, p1)
    END PUTDisplayBlanksAs;

    PROCEDURE (this: Chart) DoughnutGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 14, arg, ret);
        RETURN CtlC.VarObj(ret)
    END DoughnutGroups;

    PROCEDURE (this: Chart) Elevation* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 49)
    END Elevation;

    PROCEDURE (this: Chart) PUTElevation* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 49, p1)
    END PUTElevation;

    PROCEDURE (this: Chart) Floor* (): Floor, NEW;
    BEGIN
        RETURN ThisFloor(CtlC.GetAny(this, 83))
    END Floor;

    PROCEDURE (this: Chart) GapDepth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 50)
    END GapDepth;

    PROCEDURE (this: Chart) PUTGapDepth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 50, p1)
    END PUTGapDepth;

    PROCEDURE (this: Chart) HasAxis* ((* optional *) Index1: CtlT.Any; Index2: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index1, arg[1]);
        CtlC.AnyVar(Index2, arg[0]);
        CtlC.CallGetMethod(this, 52, arg, ret);
        RETURN CtlC.VarAny(ret)
    END HasAxis;

    PROCEDURE (this: Chart) PUTHasAxis* (Index1: CtlT.Any; (* optional *) Index2: CtlT.Any; p3: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index1, arg[2]);
        CtlC.AnyVar(Index2, arg[1]);
        CtlC.AnyVar(p3, arg[0]);
        CtlC.CallPutMethod(this, 52, arg, NIL);
    END PUTHasAxis;

    PROCEDURE (this: Chart) HasDataTable* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1396)
    END HasDataTable;

    PROCEDURE (this: Chart) PUTHasDataTable* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1396, p1)
    END PUTHasDataTable;

    PROCEDURE (this: Chart) HasLegend* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 53)
    END HasLegend;

    PROCEDURE (this: Chart) PUTHasLegend* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 53, p1)
    END PUTHasLegend;

    PROCEDURE (this: Chart) HasTitle* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 54)
    END HasTitle;

    PROCEDURE (this: Chart) PUTHasTitle* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 54, p1)
    END PUTHasTitle;

    PROCEDURE (this: Chart) Height* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 123)
    END Height;

    PROCEDURE (this: Chart) PUTHeight* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 123, p1)
    END PUTHeight;

    PROCEDURE (this: Chart) HeightPercent* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 55)
    END HeightPercent;

    PROCEDURE (this: Chart) PUTHeightPercent* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 55, p1)
    END PUTHeightPercent;

    PROCEDURE (this: Chart) Left* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 127)
    END Left;

    PROCEDURE (this: Chart) PUTLeft* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: Chart) Legend* (): Legend, NEW;
    BEGIN
        RETURN ThisLegend(CtlC.GetAny(this, 84))
    END Legend;

    PROCEDURE (this: Chart) Line3DGroup* (): ChartGroup, NEW;
    BEGIN
        RETURN ThisChartGroup(CtlC.GetAny(this, 20))
    END Line3DGroup;

    PROCEDURE (this: Chart) LineGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 12, arg, ret);
        RETURN CtlC.VarObj(ret)
    END LineGroups;

    PROCEDURE (this: Chart) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: Chart) OmitBackground* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1098, ret);
        RETURN CtlC.VarAny(ret)
    END OmitBackground;

    PROCEDURE (this: Chart) Perspective* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 57)
    END Perspective;

    PROCEDURE (this: Chart) PUTPerspective* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 57, p1)
    END PUTPerspective;

    PROCEDURE (this: Chart) Pie3DGroup* (): ChartGroup, NEW;
    BEGIN
        RETURN ThisChartGroup(CtlC.GetAny(this, 21))
    END Pie3DGroup;

    PROCEDURE (this: Chart) PieGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 13, arg, ret);
        RETURN CtlC.VarObj(ret)
    END PieGroups;

    PROCEDURE (this: Chart) PlotArea* (): PlotArea, NEW;
    BEGIN
        RETURN ThisPlotArea(CtlC.GetAny(this, 85))
    END PlotArea;

    PROCEDURE (this: Chart) RadarGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 15, arg, ret);
        RETURN CtlC.VarObj(ret)
    END RadarGroups;

    PROCEDURE (this: Chart) RightAngleAxes* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 58)
    END RightAngleAxes;

    PROCEDURE (this: Chart) PUTRightAngleAxes* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 58, p1)
    END PUTRightAngleAxes;

    PROCEDURE (this: Chart) Rotation* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 59)
    END Rotation;

    PROCEDURE (this: Chart) PUTRotation* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 59, p1)
    END PUTRotation;

    PROCEDURE (this: Chart) SeriesCollection* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 68, arg, ret);
        RETURN CtlC.VarObj(ret)
    END SeriesCollection;

    PROCEDURE (this: Chart) SetEchoOn* ((* optional *) EchoOn: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(EchoOn, arg[0]);
        CtlC.CallParMethod(this, 1133, arg, ret);
        RETURN CtlC.VarAny(ret)
    END SetEchoOn;

    PROCEDURE (this: Chart) SubType* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 109)
    END SubType;

    PROCEDURE (this: Chart) PUTSubType* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 109, p1)
    END PUTSubType;

    PROCEDURE (this: Chart) SurfaceGroup* (): ChartGroup, NEW;
    BEGIN
        RETURN ThisChartGroup(CtlC.GetAny(this, 22))
    END SurfaceGroup;

    PROCEDURE (this: Chart) Top* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 126)
    END Top;

    PROCEDURE (this: Chart) PUTTop* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: Chart) Type* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END Type;

    PROCEDURE (this: Chart) PUTType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTType;

    PROCEDURE (this: Chart) ChartType* (): XlChartType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1400)
    END ChartType;

    PROCEDURE (this: Chart) PUTChartType* (p1: XlChartType), NEW;
    BEGIN
        CtlC.PutInt(this, 1400, p1)
    END PUTChartType;

    PROCEDURE (this: Chart) ApplyCustomType* (ChartType: XlChartType; (* optional *) TypeName: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ChartType, arg[1]);
        CtlC.AnyVar(TypeName, arg[0]);
        CtlC.CallParMethod(this, 1401, arg, NIL);
    END ApplyCustomType;

    PROCEDURE (this: Chart) Walls* (): Walls, NEW;
    BEGIN
        RETURN ThisWalls(CtlC.GetAny(this, 86))
    END Walls;

    PROCEDURE (this: Chart) WallsAndGridlines2D* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 210)
    END WallsAndGridlines2D;

    PROCEDURE (this: Chart) PUTWallsAndGridlines2D* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 210, p1)
    END PUTWallsAndGridlines2D;

    PROCEDURE (this: Chart) Width* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 122)
    END Width;

    PROCEDURE (this: Chart) PUTWidth* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 122, p1)
    END PUTWidth;

    PROCEDURE (this: Chart) XYGroups* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 16, arg, ret);
        RETURN CtlC.VarObj(ret)
    END XYGroups;

    PROCEDURE (this: Chart) BarShape* (): XlBarShape, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1403)
    END BarShape;

    PROCEDURE (this: Chart) PUTBarShape* (p1: XlBarShape), NEW;
    BEGIN
        CtlC.PutInt(this, 1403, p1)
    END PUTBarShape;

    PROCEDURE (this: Chart) Export* (FileName: ARRAY OF CHAR; (* optional *) FilterName: CtlT.Any; Interactive: CtlT.Any): BOOLEAN, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[2]);
        CtlC.AnyVar(FilterName, arg[1]);
        CtlC.AnyVar(Interactive, arg[0]);
        CtlC.CallParMethod(this, 1414, arg, ret);
        RETURN CtlC.VarBool(ret)
    END Export;

    PROCEDURE (this: Chart) Refresh* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1417, NIL);
    END Refresh;

    PROCEDURE (this: Chart) PlotOnX* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1775)
    END PlotOnX;

    PROCEDURE (this: Chart) PUTPlotOnX* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1775, p1)
    END PUTPlotOnX;


    (* ---------- Application ---------- *)

    PROCEDURE (this: Application) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Application) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Application) Parent* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 150))
    END Parent;

    PROCEDURE (this: Application) CommandBars* (): CtlOffice.CommandBars, NEW;
    BEGIN
        RETURN CtlOffice.ThisCommandBars(CtlC.GetAny(this, 1439))
    END CommandBars;

    PROCEDURE (this: Application) AddChartAutoFormat* (Name: ARRAY OF CHAR; (* optional *) Description: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[1]);
        CtlC.AnyVar(Description, arg[0]);
        CtlC.CallParMethod(this, 216, arg, NIL);
    END AddChartAutoFormat;

    PROCEDURE (this: Application) CellDragAndDrop* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 320)
    END CellDragAndDrop;

    PROCEDURE (this: Application) PUTCellDragAndDrop* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 320, p1)
    END PUTCellDragAndDrop;

    PROCEDURE (this: Application) Chart* (): Chart, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 7, ret);
        RETURN ThisChart(CtlC.VarAny(ret))
    END Chart;

    PROCEDURE (this: Application) ChartWizardDisplay* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1129)
    END ChartWizardDisplay;

    PROCEDURE (this: Application) PUTChartWizardDisplay* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1129, p1)
    END PUTChartWizardDisplay;

    PROCEDURE (this: Application) DataSheet* (): DataSheet, NEW;
    BEGIN
        RETURN ThisDataSheet(CtlC.GetAny(this, 1101))
    END DataSheet;

    PROCEDURE (this: Application) PUTREFDataSheet* (p1: DataSheet), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 1101, arg, NIL);
    END PUTREFDataSheet;

    PROCEDURE (this: Application) DeleteChartAutoFormat* (Name: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 217, arg, NIL);
    END DeleteChartAutoFormat;

    PROCEDURE (this: Application) DisplayAlerts* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 343)
    END DisplayAlerts;

    PROCEDURE (this: Application) PUTDisplayAlerts* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 343, p1)
    END PUTDisplayAlerts;

    PROCEDURE (this: Application) Evaluate* (Name: ARRAY OF CHAR): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[0]);
        CtlC.CallParMethod(this, 1, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Evaluate;

    PROCEDURE (this: Application) FileImport* (FileName: ARRAY OF CHAR; (* optional *) Password: CtlT.Any; ImportRange: CtlT.Any; WorksheetName: CtlT.Any; OverwriteCells: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[4]);
        CtlC.AnyVar(Password, arg[3]);
        CtlC.AnyVar(ImportRange, arg[2]);
        CtlC.AnyVar(WorksheetName, arg[1]);
        CtlC.AnyVar(OverwriteCells, arg[0]);
        CtlC.CallParMethod(this, 1191, arg, NIL);
    END FileImport;

    PROCEDURE (this: Application) HasLinks* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1094)
    END HasLinks;

    PROCEDURE (this: Application) PUTHasLinks* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1094, p1)
    END PUTHasLinks;

    PROCEDURE (this: Application) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;

    PROCEDURE (this: Application) PUTHeight* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 123, p1)
    END PUTHeight;

    PROCEDURE (this: Application) ImportChart* (FileName: ARRAY OF CHAR; (* optional *) Password: CtlT.Any; ImportRange: CtlT.Any; WorksheetName: CtlT.Any; OverwriteCells: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[4]);
        CtlC.AnyVar(Password, arg[3]);
        CtlC.AnyVar(ImportRange, arg[2]);
        CtlC.AnyVar(WorksheetName, arg[1]);
        CtlC.AnyVar(OverwriteCells, arg[0]);
        CtlC.CallParMethod(this, 1099, arg, NIL);
    END ImportChart;

    PROCEDURE (this: Application) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: Application) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: Application) MoveAfterReturn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 374)
    END MoveAfterReturn;

    PROCEDURE (this: Application) PUTMoveAfterReturn* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 374, p1)
    END PUTMoveAfterReturn;

    PROCEDURE (this: Application) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: Application) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 110, p1)
    END PUTName;

    PROCEDURE (this: Application) PlotBy* (): XlRowCol, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 202)
    END PlotBy;

    PROCEDURE (this: Application) PUTPlotBy* (p1: XlRowCol), NEW;
    BEGIN
        CtlC.PutInt(this, 202, p1)
    END PUTPlotBy;

    PROCEDURE (this: Application) Quit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 302, NIL);
    END Quit;

    PROCEDURE (this: Application) SaveAs* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 284, arg, NIL);
    END SaveAs;

    PROCEDURE (this: Application) SaveAsOldFileFormat* ((* optional *) MajorVersion: CtlT.Any; MinorVersion: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(MajorVersion, arg[1]);
        CtlC.AnyVar(MinorVersion, arg[0]);
        CtlC.CallParMethod(this, 1091, arg, NIL);
    END SaveAsOldFileFormat;

    PROCEDURE (this: Application) SetDefaultChart* ((* optional *) FormatName: CtlT.Any; Gallery: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FormatName, arg[1]);
        CtlC.AnyVar(Gallery, arg[0]);
        CtlC.CallParMethod(this, 219, arg, NIL);
    END SetDefaultChart;

    PROCEDURE (this: Application) ShowChartTipNames* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1207)
    END ShowChartTipNames;

    PROCEDURE (this: Application) PUTShowChartTipNames* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1207, p1)
    END PUTShowChartTipNames;

    PROCEDURE (this: Application) ShowChartTipValues* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1208)
    END ShowChartTipValues;

    PROCEDURE (this: Application) PUTShowChartTipValues* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1208, p1)
    END PUTShowChartTipValues;

    PROCEDURE (this: Application) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: Application) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: Application) Update* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 680, NIL);
    END Update;

    PROCEDURE (this: Application) Version* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 392)
    END Version;

    PROCEDURE (this: Application) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 558)
    END Visible;

    PROCEDURE (this: Application) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 558, p1)
    END PUTVisible;

    PROCEDURE (this: Application) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: Application) PUTWidth* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 122, p1)
    END PUTWidth;

    PROCEDURE (this: Application) WindowState* (): XlWindowState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 396)
    END WindowState;

    PROCEDURE (this: Application) PUTWindowState* (p1: XlWindowState), NEW;
    BEGIN
        CtlC.PutInt(this, 396, p1)
    END PUTWindowState;

    PROCEDURE (this: Application) AutoCorrect* (): AutoCorrect, NEW;
    BEGIN
        RETURN ThisAutoCorrect(CtlC.GetAny(this, 1145))
    END AutoCorrect;


    (* ---------- DataSheet ---------- *)

    PROCEDURE (this: DataSheet) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: DataSheet) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: DataSheet) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: DataSheet) Activate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 304, NIL);
    END Activate;

    PROCEDURE (this: DataSheet) Cells* (): Range, NEW;
    BEGIN
        RETURN ThisRange(CtlC.GetAny(this, 238))
    END Cells;

    PROCEDURE (this: DataSheet) Columns* (): Range, NEW;
    BEGIN
        RETURN ThisRange(CtlC.GetAny(this, 241))
    END Columns;

    PROCEDURE (this: DataSheet) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: DataSheet) PUTREFFont* (p1: Font), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(p1, arg[0]);
        CtlC.CallPutRefMethod(this, 146, arg, NIL);
    END PUTREFFont;

    PROCEDURE (this: DataSheet) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;

    PROCEDURE (this: DataSheet) PUTHeight* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 123, p1)
    END PUTHeight;

    PROCEDURE (this: DataSheet) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: DataSheet) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: DataSheet) Range* (Range1: CtlT.Any; (* optional *) Range2: CtlT.Any): Range, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Range1, arg[1]);
        CtlC.AnyVar(Range2, arg[0]);
        CtlC.CallGetMethod(this, 197, arg, ret);
        RETURN ThisRange(CtlC.VarAny(ret))
    END Range;

    PROCEDURE (this: DataSheet) Rows* (): Range, NEW;
    BEGIN
        RETURN ThisRange(CtlC.GetAny(this, 258))
    END Rows;

    PROCEDURE (this: DataSheet) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: DataSheet) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: DataSheet) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: DataSheet) PUTWidth* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 122, p1)
    END PUTWidth;


    (* ---------- Range ---------- *)

    PROCEDURE (this: Range) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Range) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Range) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Range) AutoFit* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 237, NIL);
    END AutoFit;

    PROCEDURE (this: Range) Cells* (): Range, NEW;
    BEGIN
        RETURN ThisRange(CtlC.GetAny(this, 238))
    END Cells;

    PROCEDURE (this: Range) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 111, NIL);
    END Clear;

    PROCEDURE (this: Range) ClearContents* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 113, NIL);
    END ClearContents;

    PROCEDURE (this: Range) ClearFormats* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 112, NIL);
    END ClearFormats;

    PROCEDURE (this: Range) Columns* (): Range, NEW;
    BEGIN
        RETURN ThisRange(CtlC.GetAny(this, 241))
    END Columns;

    PROCEDURE (this: Range) ColumnWidth* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 242)
    END ColumnWidth;

    PROCEDURE (this: Range) PUTColumnWidth* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 242, p1)
    END PUTColumnWidth;

    PROCEDURE (this: Range) Copy* ((* optional *) Destination: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Destination, arg[0]);
        CtlC.CallParMethod(this, 551, arg, NIL);
    END Copy;

    PROCEDURE (this: Range) Cut* ((* optional *) Destination: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Destination, arg[0]);
        CtlC.CallParMethod(this, 565, arg, NIL);
    END Cut;

    PROCEDURE (this: Range) Delete* ((* optional *) Shift: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Shift, arg[0]);
        CtlC.CallParMethod(this, 117, arg, NIL);
    END Delete;

    PROCEDURE (this: Range) ImportData* (FileName: CtlT.Any; (* optional *) Range: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(FileName, arg[1]);
        CtlC.AnyVar(Range, arg[0]);
        CtlC.CallParMethod(this, 1100, arg, NIL);
    END ImportData;

    PROCEDURE (this: Range) Include* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 165)
    END Include;

    PROCEDURE (this: Range) PUTInclude* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 165, p1)
    END PUTInclude;

    PROCEDURE (this: Range) Insert* ((* optional *) Shift: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Shift, arg[0]);
        CtlC.CallParMethod(this, 252, arg, NIL);
    END Insert;

    PROCEDURE (this: Range) Item* ((* optional *) RowIndex: CtlT.Any; ColumnIndex: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RowIndex, arg[1]);
        CtlC.AnyVar(ColumnIndex, arg[0]);
        CtlC.CallGetMethod(this, 170, arg, ret);
        RETURN CtlC.VarAny(ret)
    END Item;

    PROCEDURE (this: Range) PUTItem* (RowIndex: CtlT.Any; (* optional *) ColumnIndex: CtlT.Any; p3: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RowIndex, arg[2]);
        CtlC.AnyVar(ColumnIndex, arg[1]);
        CtlC.AnyVar(p3, arg[0]);
        CtlC.CallPutMethod(this, 170, arg, NIL);
    END PUTItem;

    PROCEDURE (this: Range) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Range) NumberFormat* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 193)
    END NumberFormat;

    PROCEDURE (this: Range) PUTNumberFormat* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 193, p1)
    END PUTNumberFormat;

    PROCEDURE (this: Range) Paste* ((* optional *) Link: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Link, arg[0]);
        CtlC.CallParMethod(this, 211, arg, NIL);
    END Paste;

    PROCEDURE (this: Range) Rows* (): Range, NEW;
    BEGIN
        RETURN ThisRange(CtlC.GetAny(this, 258))
    END Rows;

    PROCEDURE (this: Range) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 6)
    END Value;

    PROCEDURE (this: Range) PUTValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 6, p1)
    END PUTValue;

    PROCEDURE (this: Range) _Default* ((* optional *) RowIndex: CtlT.Any; ColumnIndex: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RowIndex, arg[1]);
        CtlC.AnyVar(ColumnIndex, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarAny(ret)
    END _Default;

    PROCEDURE (this: Range) PUT_Default* (RowIndex: CtlT.Any; (* optional *) ColumnIndex: CtlT.Any; p3: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(RowIndex, arg[2]);
        CtlC.AnyVar(ColumnIndex, arg[1]);
        CtlC.AnyVar(p3, arg[0]);
        CtlC.CallPutMethod(this, 0, arg, NIL);
    END PUT_Default;


    (* ---------- AutoCorrect ---------- *)

    PROCEDURE (this: AutoCorrect) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: AutoCorrect) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: AutoCorrect) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: AutoCorrect) AddReplacement* (What: ARRAY OF CHAR; Replacement: ARRAY OF CHAR): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(What, arg[1]);
        CtlC.StrVar(Replacement, arg[0]);
        CtlC.CallParMethod(this, 1146, arg, ret);
        RETURN CtlC.VarAny(ret)
    END AddReplacement;

    PROCEDURE (this: AutoCorrect) CapitalizeNamesOfDays* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1150)
    END CapitalizeNamesOfDays;

    PROCEDURE (this: AutoCorrect) PUTCapitalizeNamesOfDays* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1150, p1)
    END PUTCapitalizeNamesOfDays;

    PROCEDURE (this: AutoCorrect) DeleteReplacement* (What: ARRAY OF CHAR): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(What, arg[0]);
        CtlC.CallParMethod(this, 1147, arg, ret);
        RETURN CtlC.VarAny(ret)
    END DeleteReplacement;

    PROCEDURE (this: AutoCorrect) ReplacementList* ((* optional *) Index: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 1151, arg, ret);
        RETURN CtlC.VarAny(ret)
    END ReplacementList;

    PROCEDURE (this: AutoCorrect) PUTReplacementList* (Index: CtlT.Any; (* optional *) p2: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[1]);
        CtlC.AnyVar(p2, arg[0]);
        CtlC.CallPutMethod(this, 1151, arg, NIL);
    END PUTReplacementList;

    PROCEDURE (this: AutoCorrect) ReplaceText* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1148)
    END ReplaceText;

    PROCEDURE (this: AutoCorrect) PUTReplaceText* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1148, p1)
    END PUTReplaceText;

    PROCEDURE (this: AutoCorrect) TwoInitialCapitals* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1149)
    END TwoInitialCapitals;

    PROCEDURE (this: AutoCorrect) PUTTwoInitialCapitals* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1149, p1)
    END PUTTwoInitialCapitals;

    PROCEDURE (this: AutoCorrect) CorrectSentenceCap* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1619)
    END CorrectSentenceCap;

    PROCEDURE (this: AutoCorrect) PUTCorrectSentenceCap* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1619, p1)
    END PUTCorrectSentenceCap;

    PROCEDURE (this: AutoCorrect) CorrectCapsLock* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1620)
    END CorrectCapsLock;

    PROCEDURE (this: AutoCorrect) PUTCorrectCapsLock* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1620, p1)
    END PUTCorrectCapsLock;


    (* ---------- Border ---------- *)

    PROCEDURE (this: Border) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Border) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Border) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Border) Color* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 99)
    END Color;

    PROCEDURE (this: Border) PUTColor* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 99, p1)
    END PUTColor;

    PROCEDURE (this: Border) ColorIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 97)
    END ColorIndex;

    PROCEDURE (this: Border) PUTColorIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 97, p1)
    END PUTColorIndex;

    PROCEDURE (this: Border) LineStyle* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 119)
    END LineStyle;

    PROCEDURE (this: Border) PUTLineStyle* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 119, p1)
    END PUTLineStyle;

    PROCEDURE (this: Border) Weight* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 120)
    END Weight;

    PROCEDURE (this: Border) PUTWeight* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 120, p1)
    END PUTWeight;


    (* ---------- Interior ---------- *)

    PROCEDURE (this: Interior) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Interior) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Interior) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Interior) Color* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 99)
    END Color;

    PROCEDURE (this: Interior) PUTColor* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 99, p1)
    END PUTColor;

    PROCEDURE (this: Interior) ColorIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 97)
    END ColorIndex;

    PROCEDURE (this: Interior) PUTColorIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 97, p1)
    END PUTColorIndex;

    PROCEDURE (this: Interior) InvertIfNegative* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 132)
    END InvertIfNegative;

    PROCEDURE (this: Interior) PUTInvertIfNegative* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 132, p1)
    END PUTInvertIfNegative;

    PROCEDURE (this: Interior) Pattern* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 95)
    END Pattern;

    PROCEDURE (this: Interior) PUTPattern* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 95, p1)
    END PUTPattern;

    PROCEDURE (this: Interior) PatternColor* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 100)
    END PatternColor;

    PROCEDURE (this: Interior) PUTPatternColor* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 100, p1)
    END PUTPatternColor;

    PROCEDURE (this: Interior) PatternColorIndex* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 98)
    END PatternColorIndex;

    PROCEDURE (this: Interior) PUTPatternColorIndex* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 98, p1)
    END PUTPatternColorIndex;


    (* ---------- ChartFillFormat ---------- *)

    PROCEDURE (this: ChartFillFormat) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: ChartFillFormat) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: ChartFillFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: ChartFillFormat) OneColorGradient* (Style: CtlOffice.MsoGradientStyle; Variant: INTEGER; Degree: SHORTREAL), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[2]);
        CtlC.IntVar(Variant, arg[1]);
        CtlC.SRealVar(Degree, arg[0]);
        CtlC.CallParMethod(this, 1621, arg, NIL);
    END OneColorGradient;

    PROCEDURE (this: ChartFillFormat) TwoColorGradient* (Style: CtlOffice.MsoGradientStyle; Variant: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[1]);
        CtlC.IntVar(Variant, arg[0]);
        CtlC.CallParMethod(this, 1624, arg, NIL);
    END TwoColorGradient;

    PROCEDURE (this: ChartFillFormat) PresetTextured* (PresetTexture: CtlOffice.MsoPresetTexture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PresetTexture, arg[0]);
        CtlC.CallParMethod(this, 1625, arg, NIL);
    END PresetTextured;

    PROCEDURE (this: ChartFillFormat) Solid* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1627, NIL);
    END Solid;

    PROCEDURE (this: ChartFillFormat) Patterned* (Pattern: CtlOffice.MsoPatternType), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Pattern, arg[0]);
        CtlC.CallParMethod(this, 1628, arg, NIL);
    END Patterned;

    PROCEDURE (this: ChartFillFormat) UserPicture* ((* optional *) PictureFile: CtlT.Any; PictureFormat: CtlT.Any; PictureStackUnit: CtlT.Any; PicturePlacement: CtlT.Any), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(PictureFile, arg[3]);
        CtlC.AnyVar(PictureFormat, arg[2]);
        CtlC.AnyVar(PictureStackUnit, arg[1]);
        CtlC.AnyVar(PicturePlacement, arg[0]);
        CtlC.CallParMethod(this, 1629, arg, NIL);
    END UserPicture;

    PROCEDURE (this: ChartFillFormat) UserTextured* (TextureFile: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(TextureFile, arg[0]);
        CtlC.CallParMethod(this, 1634, arg, NIL);
    END UserTextured;

    PROCEDURE (this: ChartFillFormat) PresetGradient* (Style: CtlOffice.MsoGradientStyle; Variant: INTEGER; PresetGradientType: CtlOffice.MsoPresetGradientType), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[2]);
        CtlC.IntVar(Variant, arg[1]);
        CtlC.IntVar(PresetGradientType, arg[0]);
        CtlC.CallParMethod(this, 1636, arg, NIL);
    END PresetGradient;

    PROCEDURE (this: ChartFillFormat) BackColor* (): ChartColorFormat, NEW;
    BEGIN
        RETURN ThisChartColorFormat(CtlC.GetAny(this, 1638))
    END BackColor;

    PROCEDURE (this: ChartFillFormat) ForeColor* (): ChartColorFormat, NEW;
    BEGIN
        RETURN ThisChartColorFormat(CtlC.GetAny(this, 1639))
    END ForeColor;

    PROCEDURE (this: ChartFillFormat) GradientColorType* (): CtlOffice.MsoGradientColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1640)
    END GradientColorType;

    PROCEDURE (this: ChartFillFormat) GradientDegree* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 1641)
    END GradientDegree;

    PROCEDURE (this: ChartFillFormat) GradientStyle* (): CtlOffice.MsoGradientStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1642)
    END GradientStyle;

    PROCEDURE (this: ChartFillFormat) GradientVariant* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1643)
    END GradientVariant;

    PROCEDURE (this: ChartFillFormat) Pattern* (): CtlOffice.MsoPatternType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 95)
    END Pattern;

    PROCEDURE (this: ChartFillFormat) PresetGradientType* (): CtlOffice.MsoPresetGradientType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1637)
    END PresetGradientType;

    PROCEDURE (this: ChartFillFormat) PresetTexture* (): CtlOffice.MsoPresetTexture, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1626)
    END PresetTexture;

    PROCEDURE (this: ChartFillFormat) TextureName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1644)
    END TextureName;

    PROCEDURE (this: ChartFillFormat) TextureType* (): CtlOffice.MsoTextureType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1645)
    END TextureType;

    PROCEDURE (this: ChartFillFormat) Type* (): CtlOffice.MsoFillType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END Type;

    PROCEDURE (this: ChartFillFormat) Visible* (): CtlOffice.MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 558)
    END Visible;

    PROCEDURE (this: ChartFillFormat) PUTVisible* (p1: CtlOffice.MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 558, p1)
    END PUTVisible;


    (* ---------- ChartColorFormat ---------- *)

    PROCEDURE (this: ChartColorFormat) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: ChartColorFormat) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: ChartColorFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: ChartColorFormat) SchemeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1646)
    END SchemeColor;

    PROCEDURE (this: ChartColorFormat) PUTSchemeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1646, p1)
    END PUTSchemeColor;

    PROCEDURE (this: ChartColorFormat) RGB* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1055)
    END RGB;

    PROCEDURE (this: ChartColorFormat) _Default* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END _Default;

    PROCEDURE (this: ChartColorFormat) Type* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END Type;


    (* ---------- Axis ---------- *)

    PROCEDURE (this: Axis) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Axis) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Axis) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Axis) AxisBetweenCategories* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 45)
    END AxisBetweenCategories;

    PROCEDURE (this: Axis) PUTAxisBetweenCategories* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 45, p1)
    END PUTAxisBetweenCategories;

    PROCEDURE (this: Axis) AxisGroup* (): XlAxisGroup, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 47)
    END AxisGroup;

    PROCEDURE (this: Axis) AxisTitle* (): AxisTitle, NEW;
    BEGIN
        RETURN ThisAxisTitle(CtlC.GetAny(this, 82))
    END AxisTitle;

    PROCEDURE (this: Axis) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Axis) Crosses* (): XlAxisCrosses, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 42)
    END Crosses;

    PROCEDURE (this: Axis) PUTCrosses* (p1: XlAxisCrosses), NEW;
    BEGIN
        CtlC.PutInt(this, 42, p1)
    END PUTCrosses;

    PROCEDURE (this: Axis) CrossesAt* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 43)
    END CrossesAt;

    PROCEDURE (this: Axis) PUTCrossesAt* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 43, p1)
    END PUTCrossesAt;

    PROCEDURE (this: Axis) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: Axis) HasMajorGridlines* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 24)
    END HasMajorGridlines;

    PROCEDURE (this: Axis) PUTHasMajorGridlines* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 24, p1)
    END PUTHasMajorGridlines;

    PROCEDURE (this: Axis) HasMinorGridlines* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 25)
    END HasMinorGridlines;

    PROCEDURE (this: Axis) PUTHasMinorGridlines* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 25, p1)
    END PUTHasMinorGridlines;

    PROCEDURE (this: Axis) HasTitle* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 54)
    END HasTitle;

    PROCEDURE (this: Axis) PUTHasTitle* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 54, p1)
    END PUTHasTitle;

    PROCEDURE (this: Axis) MajorGridlines* (): Gridlines, NEW;
    BEGIN
        RETURN ThisGridlines(CtlC.GetAny(this, 89))
    END MajorGridlines;

    PROCEDURE (this: Axis) MajorTickMark* (): XlTickMark, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 26)
    END MajorTickMark;

    PROCEDURE (this: Axis) PUTMajorTickMark* (p1: XlTickMark), NEW;
    BEGIN
        CtlC.PutInt(this, 26, p1)
    END PUTMajorTickMark;

    PROCEDURE (this: Axis) MajorUnit* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 37)
    END MajorUnit;

    PROCEDURE (this: Axis) PUTMajorUnit* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 37, p1)
    END PUTMajorUnit;

    PROCEDURE (this: Axis) MajorUnitIsAuto* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 38)
    END MajorUnitIsAuto;

    PROCEDURE (this: Axis) PUTMajorUnitIsAuto* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 38, p1)
    END PUTMajorUnitIsAuto;

    PROCEDURE (this: Axis) MaximumScale* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 35)
    END MaximumScale;

    PROCEDURE (this: Axis) PUTMaximumScale* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 35, p1)
    END PUTMaximumScale;

    PROCEDURE (this: Axis) MaximumScaleIsAuto* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 36)
    END MaximumScaleIsAuto;

    PROCEDURE (this: Axis) PUTMaximumScaleIsAuto* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 36, p1)
    END PUTMaximumScaleIsAuto;

    PROCEDURE (this: Axis) MinimumScale* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 33)
    END MinimumScale;

    PROCEDURE (this: Axis) PUTMinimumScale* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 33, p1)
    END PUTMinimumScale;

    PROCEDURE (this: Axis) MinimumScaleIsAuto* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 34)
    END MinimumScaleIsAuto;

    PROCEDURE (this: Axis) PUTMinimumScaleIsAuto* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 34, p1)
    END PUTMinimumScaleIsAuto;

    PROCEDURE (this: Axis) MinorGridlines* (): Gridlines, NEW;
    BEGIN
        RETURN ThisGridlines(CtlC.GetAny(this, 90))
    END MinorGridlines;

    PROCEDURE (this: Axis) MinorTickMark* (): XlTickMark, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 27)
    END MinorTickMark;

    PROCEDURE (this: Axis) PUTMinorTickMark* (p1: XlTickMark), NEW;
    BEGIN
        CtlC.PutInt(this, 27, p1)
    END PUTMinorTickMark;

    PROCEDURE (this: Axis) MinorUnit* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 39)
    END MinorUnit;

    PROCEDURE (this: Axis) PUTMinorUnit* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 39, p1)
    END PUTMinorUnit;

    PROCEDURE (this: Axis) MinorUnitIsAuto* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 40)
    END MinorUnitIsAuto;

    PROCEDURE (this: Axis) PUTMinorUnitIsAuto* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 40, p1)
    END PUTMinorUnitIsAuto;

    PROCEDURE (this: Axis) ReversePlotOrder* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 44)
    END ReversePlotOrder;

    PROCEDURE (this: Axis) PUTReversePlotOrder* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 44, p1)
    END PUTReversePlotOrder;

    PROCEDURE (this: Axis) ScaleType* (): XlScaleType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 41)
    END ScaleType;

    PROCEDURE (this: Axis) PUTScaleType* (p1: XlScaleType), NEW;
    BEGIN
        CtlC.PutInt(this, 41, p1)
    END PUTScaleType;

    PROCEDURE (this: Axis) TickLabelPosition* (): XlTickLabelPosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 28)
    END TickLabelPosition;

    PROCEDURE (this: Axis) PUTTickLabelPosition* (p1: XlTickLabelPosition), NEW;
    BEGIN
        CtlC.PutInt(this, 28, p1)
    END PUTTickLabelPosition;

    PROCEDURE (this: Axis) TickLabels* (): TickLabels, NEW;
    BEGIN
        RETURN ThisTickLabels(CtlC.GetAny(this, 91))
    END TickLabels;

    PROCEDURE (this: Axis) TickLabelSpacing* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 29)
    END TickLabelSpacing;

    PROCEDURE (this: Axis) PUTTickLabelSpacing* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 29, p1)
    END PUTTickLabelSpacing;

    PROCEDURE (this: Axis) TickMarkSpacing* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 31)
    END TickMarkSpacing;

    PROCEDURE (this: Axis) PUTTickMarkSpacing* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 31, p1)
    END PUTTickMarkSpacing;

    PROCEDURE (this: Axis) Type* (): XlAxisType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END Type;

    PROCEDURE (this: Axis) PUTType* (p1: XlAxisType), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTType;

    PROCEDURE (this: Axis) BaseUnit* (): XlTimeUnit, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1647)
    END BaseUnit;

    PROCEDURE (this: Axis) PUTBaseUnit* (p1: XlTimeUnit), NEW;
    BEGIN
        CtlC.PutInt(this, 1647, p1)
    END PUTBaseUnit;

    PROCEDURE (this: Axis) BaseUnitIsAuto* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1648)
    END BaseUnitIsAuto;

    PROCEDURE (this: Axis) PUTBaseUnitIsAuto* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1648, p1)
    END PUTBaseUnitIsAuto;

    PROCEDURE (this: Axis) MajorUnitScale* (): XlTimeUnit, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1649)
    END MajorUnitScale;

    PROCEDURE (this: Axis) PUTMajorUnitScale* (p1: XlTimeUnit), NEW;
    BEGIN
        CtlC.PutInt(this, 1649, p1)
    END PUTMajorUnitScale;

    PROCEDURE (this: Axis) MinorUnitScale* (): XlTimeUnit, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1650)
    END MinorUnitScale;

    PROCEDURE (this: Axis) PUTMinorUnitScale* (p1: XlTimeUnit), NEW;
    BEGIN
        CtlC.PutInt(this, 1650, p1)
    END PUTMinorUnitScale;

    PROCEDURE (this: Axis) CategoryType* (): XlCategoryType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1651)
    END CategoryType;

    PROCEDURE (this: Axis) PUTCategoryType* (p1: XlCategoryType), NEW;
    BEGIN
        CtlC.PutInt(this, 1651, p1)
    END PUTCategoryType;

    PROCEDURE (this: Axis) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: Axis) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: Axis) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: Axis) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;

    PROCEDURE (this: Axis) DisplayUnit* (): XlDisplayUnit, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1779)
    END DisplayUnit;

    PROCEDURE (this: Axis) PUTDisplayUnit* (p1: XlDisplayUnit), NEW;
    BEGIN
        CtlC.PutInt(this, 1779, p1)
    END PUTDisplayUnit;

    PROCEDURE (this: Axis) DisplayUnitCustom* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 1780)
    END DisplayUnitCustom;

    PROCEDURE (this: Axis) PUTDisplayUnitCustom* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 1780, p1)
    END PUTDisplayUnitCustom;

    PROCEDURE (this: Axis) HasDisplayUnitLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1781)
    END HasDisplayUnitLabel;

    PROCEDURE (this: Axis) PUTHasDisplayUnitLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1781, p1)
    END PUTHasDisplayUnitLabel;

    PROCEDURE (this: Axis) DisplayUnitLabel* (): DisplayUnitLabel, NEW;
    BEGIN
        RETURN ThisDisplayUnitLabel(CtlC.GetAny(this, 1782))
    END DisplayUnitLabel;


    (* ---------- ChartTitle ---------- *)

    PROCEDURE (this: ChartTitle) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: ChartTitle) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: ChartTitle) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: ChartTitle) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: ChartTitle) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: ChartTitle) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: ChartTitle) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: ChartTitle) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: ChartTitle) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 139)
    END Caption;

    PROCEDURE (this: ChartTitle) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 139, p1)
    END PUTCaption;

    PROCEDURE (this: ChartTitle) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: ChartTitle) HorizontalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 136)
    END HorizontalAlignment;

    PROCEDURE (this: ChartTitle) PUTHorizontalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 136, p1)
    END PUTHorizontalAlignment;

    PROCEDURE (this: ChartTitle) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: ChartTitle) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: ChartTitle) Orientation* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 134)
    END Orientation;

    PROCEDURE (this: ChartTitle) PUTOrientation* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 134, p1)
    END PUTOrientation;

    PROCEDURE (this: ChartTitle) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: ChartTitle) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: ChartTitle) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 138)
    END Text;

    PROCEDURE (this: ChartTitle) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 138, p1)
    END PUTText;

    PROCEDURE (this: ChartTitle) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: ChartTitle) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: ChartTitle) VerticalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 137)
    END VerticalAlignment;

    PROCEDURE (this: ChartTitle) PUTVerticalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 137, p1)
    END PUTVerticalAlignment;

    PROCEDURE (this: ChartTitle) ReadingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 975)
    END ReadingOrder;

    PROCEDURE (this: ChartTitle) PUTReadingOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 975, p1)
    END PUTReadingOrder;

    PROCEDURE (this: ChartTitle) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: ChartTitle) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;


    (* ---------- AxisTitle ---------- *)

    PROCEDURE (this: AxisTitle) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: AxisTitle) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: AxisTitle) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: AxisTitle) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: AxisTitle) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: AxisTitle) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: AxisTitle) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: AxisTitle) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: AxisTitle) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 139)
    END Caption;

    PROCEDURE (this: AxisTitle) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 139, p1)
    END PUTCaption;

    PROCEDURE (this: AxisTitle) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: AxisTitle) HorizontalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 136)
    END HorizontalAlignment;

    PROCEDURE (this: AxisTitle) PUTHorizontalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 136, p1)
    END PUTHorizontalAlignment;

    PROCEDURE (this: AxisTitle) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: AxisTitle) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: AxisTitle) Orientation* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 134)
    END Orientation;

    PROCEDURE (this: AxisTitle) PUTOrientation* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 134, p1)
    END PUTOrientation;

    PROCEDURE (this: AxisTitle) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: AxisTitle) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: AxisTitle) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 138)
    END Text;

    PROCEDURE (this: AxisTitle) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 138, p1)
    END PUTText;

    PROCEDURE (this: AxisTitle) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: AxisTitle) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: AxisTitle) VerticalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 137)
    END VerticalAlignment;

    PROCEDURE (this: AxisTitle) PUTVerticalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 137, p1)
    END PUTVerticalAlignment;

    PROCEDURE (this: AxisTitle) ReadingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 975)
    END ReadingOrder;

    PROCEDURE (this: AxisTitle) PUTReadingOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 975, p1)
    END PUTReadingOrder;

    PROCEDURE (this: AxisTitle) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: AxisTitle) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;


    (* ---------- ChartGroup ---------- *)

    PROCEDURE (this: ChartGroup) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: ChartGroup) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: ChartGroup) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: ChartGroup) AxisGroup* (): XlAxisGroup, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 47)
    END AxisGroup;

    PROCEDURE (this: ChartGroup) PUTAxisGroup* (p1: XlAxisGroup), NEW;
    BEGIN
        CtlC.PutInt(this, 47, p1)
    END PUTAxisGroup;

    PROCEDURE (this: ChartGroup) DoughnutHoleSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1126)
    END DoughnutHoleSize;

    PROCEDURE (this: ChartGroup) PUTDoughnutHoleSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1126, p1)
    END PUTDoughnutHoleSize;

    PROCEDURE (this: ChartGroup) DownBars* (): DownBars, NEW;
    BEGIN
        RETURN ThisDownBars(CtlC.GetAny(this, 141))
    END DownBars;

    PROCEDURE (this: ChartGroup) DropLines* (): DropLines, NEW;
    BEGIN
        RETURN ThisDropLines(CtlC.GetAny(this, 142))
    END DropLines;

    PROCEDURE (this: ChartGroup) FirstSliceAngle* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 63)
    END FirstSliceAngle;

    PROCEDURE (this: ChartGroup) PUTFirstSliceAngle* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 63, p1)
    END PUTFirstSliceAngle;

    PROCEDURE (this: ChartGroup) GapWidth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 51)
    END GapWidth;

    PROCEDURE (this: ChartGroup) PUTGapWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 51, p1)
    END PUTGapWidth;

    PROCEDURE (this: ChartGroup) HasDropLines* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 61)
    END HasDropLines;

    PROCEDURE (this: ChartGroup) PUTHasDropLines* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 61, p1)
    END PUTHasDropLines;

    PROCEDURE (this: ChartGroup) HasHiLoLines* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 62)
    END HasHiLoLines;

    PROCEDURE (this: ChartGroup) PUTHasHiLoLines* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 62, p1)
    END PUTHasHiLoLines;

    PROCEDURE (this: ChartGroup) HasRadarAxisLabels* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 64)
    END HasRadarAxisLabels;

    PROCEDURE (this: ChartGroup) PUTHasRadarAxisLabels* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 64, p1)
    END PUTHasRadarAxisLabels;

    PROCEDURE (this: ChartGroup) HasSeriesLines* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 65)
    END HasSeriesLines;

    PROCEDURE (this: ChartGroup) PUTHasSeriesLines* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 65, p1)
    END PUTHasSeriesLines;

    PROCEDURE (this: ChartGroup) HasUpDownBars* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 66)
    END HasUpDownBars;

    PROCEDURE (this: ChartGroup) PUTHasUpDownBars* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 66, p1)
    END PUTHasUpDownBars;

    PROCEDURE (this: ChartGroup) HiLoLines* (): HiLoLines, NEW;
    BEGIN
        RETURN ThisHiLoLines(CtlC.GetAny(this, 143))
    END HiLoLines;

    PROCEDURE (this: ChartGroup) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 486)
    END Index;

    PROCEDURE (this: ChartGroup) Overlap* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 56)
    END Overlap;

    PROCEDURE (this: ChartGroup) PUTOverlap* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 56, p1)
    END PUTOverlap;

    PROCEDURE (this: ChartGroup) RadarAxisLabels* (): TickLabels, NEW;
    BEGIN
        RETURN ThisTickLabels(CtlC.GetAny(this, 144))
    END RadarAxisLabels;

    PROCEDURE (this: ChartGroup) SeriesCollection* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 68, arg, ret);
        RETURN CtlC.VarObj(ret)
    END SeriesCollection;

    PROCEDURE (this: ChartGroup) SeriesLines* (): SeriesLines, NEW;
    BEGIN
        RETURN ThisSeriesLines(CtlC.GetAny(this, 145))
    END SeriesLines;

    PROCEDURE (this: ChartGroup) SubType* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END SubType;

    PROCEDURE (this: ChartGroup) PUTSubType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 109, p1)
    END PUTSubType;

    PROCEDURE (this: ChartGroup) Type* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END Type;

    PROCEDURE (this: ChartGroup) PUTType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTType;

    PROCEDURE (this: ChartGroup) UpBars* (): UpBars, NEW;
    BEGIN
        RETURN ThisUpBars(CtlC.GetAny(this, 140))
    END UpBars;

    PROCEDURE (this: ChartGroup) VaryByCategories* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 60)
    END VaryByCategories;

    PROCEDURE (this: ChartGroup) PUTVaryByCategories* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 60, p1)
    END PUTVaryByCategories;

    PROCEDURE (this: ChartGroup) SizeRepresents* (): XlSizeRepresents, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1652)
    END SizeRepresents;

    PROCEDURE (this: ChartGroup) PUTSizeRepresents* (p1: XlSizeRepresents), NEW;
    BEGIN
        CtlC.PutInt(this, 1652, p1)
    END PUTSizeRepresents;

    PROCEDURE (this: ChartGroup) BubbleScale* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1653)
    END BubbleScale;

    PROCEDURE (this: ChartGroup) PUTBubbleScale* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1653, p1)
    END PUTBubbleScale;

    PROCEDURE (this: ChartGroup) ShowNegativeBubbles* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1654)
    END ShowNegativeBubbles;

    PROCEDURE (this: ChartGroup) PUTShowNegativeBubbles* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1654, p1)
    END PUTShowNegativeBubbles;

    PROCEDURE (this: ChartGroup) SplitType* (): XlChartSplitType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1655)
    END SplitType;

    PROCEDURE (this: ChartGroup) PUTSplitType* (p1: XlChartSplitType), NEW;
    BEGIN
        CtlC.PutInt(this, 1655, p1)
    END PUTSplitType;

    PROCEDURE (this: ChartGroup) SplitValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1656)
    END SplitValue;

    PROCEDURE (this: ChartGroup) PUTSplitValue* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1656, p1)
    END PUTSplitValue;

    PROCEDURE (this: ChartGroup) SecondPlotSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1657)
    END SecondPlotSize;

    PROCEDURE (this: ChartGroup) PUTSecondPlotSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1657, p1)
    END PUTSecondPlotSize;

    PROCEDURE (this: ChartGroup) Has3DShading* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1658)
    END Has3DShading;

    PROCEDURE (this: ChartGroup) PUTHas3DShading* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1658, p1)
    END PUTHas3DShading;


    (* ---------- ChartGroups ---------- *)

    PROCEDURE (this: ChartGroups) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: ChartGroups) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: ChartGroups) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: ChartGroups) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END Count;

    PROCEDURE (this: ChartGroups) Item* (Index: CtlT.Any): ChartGroup, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 170, arg, ret);
        RETURN ThisChartGroup(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: ChartGroups) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- Axes ---------- *)

    PROCEDURE (this: Axes) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Axes) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Axes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Axes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END Count;

    PROCEDURE (this: Axes) Item* (Type: XlAxisType; AxisGroup: XlAxisGroup): Axis, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[1]);
        CtlC.IntVar(AxisGroup, arg[0]);
        CtlC.CallParMethod(this, 170, arg, ret);
        RETURN ThisAxis(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Axes) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- Points ---------- *)

    PROCEDURE (this: Points) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Points) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Points) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Points) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END Count;

    PROCEDURE (this: Points) Item* (Index: INTEGER): Point, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 170, arg, ret);
        RETURN ThisPoint(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Points) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- Point ---------- *)

    PROCEDURE (this: Point) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Point) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Point) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Point) ApplyDataLabels* (Type: XlDataLabelsType; (* optional *) LegendKey: CtlT.Any; AutoText: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[2]);
        CtlC.AnyVar(LegendKey, arg[1]);
        CtlC.AnyVar(AutoText, arg[0]);
        CtlC.CallParMethod(this, 151, arg, ret);
        RETURN CtlC.VarAny(ret)
    END ApplyDataLabels;

    PROCEDURE (this: Point) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Point) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: Point) DataLabel* (): DataLabel, NEW;
    BEGIN
        RETURN ThisDataLabel(CtlC.GetAny(this, 158))
    END DataLabel;

    PROCEDURE (this: Point) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: Point) Explosion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 182)
    END Explosion;

    PROCEDURE (this: Point) PUTExplosion* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 182, p1)
    END PUTExplosion;

    PROCEDURE (this: Point) HasDataLabel* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 77)
    END HasDataLabel;

    PROCEDURE (this: Point) PUTHasDataLabel* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 77, p1)
    END PUTHasDataLabel;

    PROCEDURE (this: Point) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: Point) InvertIfNegative* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 132)
    END InvertIfNegative;

    PROCEDURE (this: Point) PUTInvertIfNegative* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 132, p1)
    END PUTInvertIfNegative;

    PROCEDURE (this: Point) MarkerBackgroundColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 73)
    END MarkerBackgroundColor;

    PROCEDURE (this: Point) PUTMarkerBackgroundColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 73, p1)
    END PUTMarkerBackgroundColor;

    PROCEDURE (this: Point) MarkerBackgroundColorIndex* (): XlColorIndex, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 74)
    END MarkerBackgroundColorIndex;

    PROCEDURE (this: Point) PUTMarkerBackgroundColorIndex* (p1: XlColorIndex), NEW;
    BEGIN
        CtlC.PutInt(this, 74, p1)
    END PUTMarkerBackgroundColorIndex;

    PROCEDURE (this: Point) MarkerForegroundColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 75)
    END MarkerForegroundColor;

    PROCEDURE (this: Point) PUTMarkerForegroundColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 75, p1)
    END PUTMarkerForegroundColor;

    PROCEDURE (this: Point) MarkerForegroundColorIndex* (): XlColorIndex, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 76)
    END MarkerForegroundColorIndex;

    PROCEDURE (this: Point) PUTMarkerForegroundColorIndex* (p1: XlColorIndex), NEW;
    BEGIN
        CtlC.PutInt(this, 76, p1)
    END PUTMarkerForegroundColorIndex;

    PROCEDURE (this: Point) MarkerSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 231)
    END MarkerSize;

    PROCEDURE (this: Point) PUTMarkerSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 231, p1)
    END PUTMarkerSize;

    PROCEDURE (this: Point) MarkerStyle* (): XlMarkerStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 72)
    END MarkerStyle;

    PROCEDURE (this: Point) PUTMarkerStyle* (p1: XlMarkerStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 72, p1)
    END PUTMarkerStyle;

    PROCEDURE (this: Point) PictureType* (): XlChartPictureType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END PictureType;

    PROCEDURE (this: Point) PUTPictureType* (p1: XlChartPictureType), NEW;
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTPictureType;

    PROCEDURE (this: Point) PictureUnit* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END PictureUnit;

    PROCEDURE (this: Point) PUTPictureUnit* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 162, p1)
    END PUTPictureUnit;

    PROCEDURE (this: Point) ApplyPictToSides* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1659)
    END ApplyPictToSides;

    PROCEDURE (this: Point) PUTApplyPictToSides* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1659, p1)
    END PUTApplyPictToSides;

    PROCEDURE (this: Point) ApplyPictToFront* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1660)
    END ApplyPictToFront;

    PROCEDURE (this: Point) PUTApplyPictToFront* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1660, p1)
    END PUTApplyPictToFront;

    PROCEDURE (this: Point) ApplyPictToEnd* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1661)
    END ApplyPictToEnd;

    PROCEDURE (this: Point) PUTApplyPictToEnd* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1661, p1)
    END PUTApplyPictToEnd;

    PROCEDURE (this: Point) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: Point) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: Point) SecondaryPlot* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1662)
    END SecondaryPlot;

    PROCEDURE (this: Point) PUTSecondaryPlot* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1662, p1)
    END PUTSecondaryPlot;

    PROCEDURE (this: Point) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;


    (* ---------- Series ---------- *)

    PROCEDURE (this: Series) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Series) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Series) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Series) ApplyDataLabels* (Type: XlDataLabelsType; (* optional *) LegendKey: CtlT.Any; AutoText: CtlT.Any; HasLeaderLines: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[3]);
        CtlC.AnyVar(LegendKey, arg[2]);
        CtlC.AnyVar(AutoText, arg[1]);
        CtlC.AnyVar(HasLeaderLines, arg[0]);
        CtlC.CallParMethod(this, 151, arg, ret);
        RETURN CtlC.VarAny(ret)
    END ApplyDataLabels;

    PROCEDURE (this: Series) AxisGroup* (): XlAxisGroup, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 47)
    END AxisGroup;

    PROCEDURE (this: Series) PUTAxisGroup* (p1: XlAxisGroup), NEW;
    BEGIN
        CtlC.PutInt(this, 47, p1)
    END PUTAxisGroup;

    PROCEDURE (this: Series) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Series) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: Series) DataLabels* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 157, arg, ret);
        RETURN CtlC.VarObj(ret)
    END DataLabels;

    PROCEDURE (this: Series) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: Series) ErrorBar* (Direction: XlErrorBarDirection; Include: XlErrorBarInclude; Type: XlErrorBarType; (* optional *) Amount: CtlT.Any; MinusValues: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Direction, arg[4]);
        CtlC.IntVar(Include, arg[3]);
        CtlC.IntVar(Type, arg[2]);
        CtlC.AnyVar(Amount, arg[1]);
        CtlC.AnyVar(MinusValues, arg[0]);
        CtlC.CallParMethod(this, 152, arg, ret);
        RETURN CtlC.VarAny(ret)
    END ErrorBar;

    PROCEDURE (this: Series) ErrorBars* (): ErrorBars, NEW;
    BEGIN
        RETURN ThisErrorBars(CtlC.GetAny(this, 159))
    END ErrorBars;

    PROCEDURE (this: Series) Explosion* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 182)
    END Explosion;

    PROCEDURE (this: Series) PUTExplosion* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 182, p1)
    END PUTExplosion;

    PROCEDURE (this: Series) HasDataLabels* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 78)
    END HasDataLabels;

    PROCEDURE (this: Series) PUTHasDataLabels* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 78, p1)
    END PUTHasDataLabels;

    PROCEDURE (this: Series) HasErrorBars* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 160)
    END HasErrorBars;

    PROCEDURE (this: Series) PUTHasErrorBars* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 160, p1)
    END PUTHasErrorBars;

    PROCEDURE (this: Series) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: Series) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: Series) InvertIfNegative* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 132)
    END InvertIfNegative;

    PROCEDURE (this: Series) PUTInvertIfNegative* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 132, p1)
    END PUTInvertIfNegative;

    PROCEDURE (this: Series) MarkerBackgroundColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 73)
    END MarkerBackgroundColor;

    PROCEDURE (this: Series) PUTMarkerBackgroundColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 73, p1)
    END PUTMarkerBackgroundColor;

    PROCEDURE (this: Series) MarkerBackgroundColorIndex* (): XlColorIndex, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 74)
    END MarkerBackgroundColorIndex;

    PROCEDURE (this: Series) PUTMarkerBackgroundColorIndex* (p1: XlColorIndex), NEW;
    BEGIN
        CtlC.PutInt(this, 74, p1)
    END PUTMarkerBackgroundColorIndex;

    PROCEDURE (this: Series) MarkerForegroundColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 75)
    END MarkerForegroundColor;

    PROCEDURE (this: Series) PUTMarkerForegroundColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 75, p1)
    END PUTMarkerForegroundColor;

    PROCEDURE (this: Series) MarkerForegroundColorIndex* (): XlColorIndex, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 76)
    END MarkerForegroundColorIndex;

    PROCEDURE (this: Series) PUTMarkerForegroundColorIndex* (p1: XlColorIndex), NEW;
    BEGIN
        CtlC.PutInt(this, 76, p1)
    END PUTMarkerForegroundColorIndex;

    PROCEDURE (this: Series) MarkerSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 231)
    END MarkerSize;

    PROCEDURE (this: Series) PUTMarkerSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 231, p1)
    END PUTMarkerSize;

    PROCEDURE (this: Series) MarkerStyle* (): XlMarkerStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 72)
    END MarkerStyle;

    PROCEDURE (this: Series) PUTMarkerStyle* (p1: XlMarkerStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 72, p1)
    END PUTMarkerStyle;

    PROCEDURE (this: Series) PictureType* (): XlChartPictureType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END PictureType;

    PROCEDURE (this: Series) PUTPictureType* (p1: XlChartPictureType), NEW;
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTPictureType;

    PROCEDURE (this: Series) PictureUnit* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END PictureUnit;

    PROCEDURE (this: Series) PUTPictureUnit* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 162, p1)
    END PUTPictureUnit;

    PROCEDURE (this: Series) Points* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 70, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Points;

    PROCEDURE (this: Series) Smooth* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 163)
    END Smooth;

    PROCEDURE (this: Series) PUTSmooth* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 163, p1)
    END PUTSmooth;

    PROCEDURE (this: Series) Trendlines* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 154, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Trendlines;

    PROCEDURE (this: Series) Type* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END Type;

    PROCEDURE (this: Series) PUTType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTType;

    PROCEDURE (this: Series) ChartType* (): XlChartType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1400)
    END ChartType;

    PROCEDURE (this: Series) PUTChartType* (p1: XlChartType), NEW;
    BEGIN
        CtlC.PutInt(this, 1400, p1)
    END PUTChartType;

    PROCEDURE (this: Series) ApplyCustomType* (ChartType: XlChartType), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ChartType, arg[0]);
        CtlC.CallParMethod(this, 1401, arg, NIL);
    END ApplyCustomType;

    PROCEDURE (this: Series) BarShape* (): XlBarShape, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1403)
    END BarShape;

    PROCEDURE (this: Series) PUTBarShape* (p1: XlBarShape), NEW;
    BEGIN
        CtlC.PutInt(this, 1403, p1)
    END PUTBarShape;

    PROCEDURE (this: Series) ApplyPictToSides* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1659)
    END ApplyPictToSides;

    PROCEDURE (this: Series) PUTApplyPictToSides* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1659, p1)
    END PUTApplyPictToSides;

    PROCEDURE (this: Series) ApplyPictToFront* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1660)
    END ApplyPictToFront;

    PROCEDURE (this: Series) PUTApplyPictToFront* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1660, p1)
    END PUTApplyPictToFront;

    PROCEDURE (this: Series) ApplyPictToEnd* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1661)
    END ApplyPictToEnd;

    PROCEDURE (this: Series) PUTApplyPictToEnd* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1661, p1)
    END PUTApplyPictToEnd;

    PROCEDURE (this: Series) Has3DEffect* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1665)
    END Has3DEffect;

    PROCEDURE (this: Series) PUTHas3DEffect* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1665, p1)
    END PUTHas3DEffect;

    PROCEDURE (this: Series) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: Series) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: Series) HasLeaderLines* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1394)
    END HasLeaderLines;

    PROCEDURE (this: Series) PUTHasLeaderLines* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1394, p1)
    END PUTHasLeaderLines;

    PROCEDURE (this: Series) LeaderLines* (): LeaderLines, NEW;
    BEGIN
        RETURN ThisLeaderLines(CtlC.GetAny(this, 1666))
    END LeaderLines;


    (* ---------- SeriesCollection ---------- *)

    PROCEDURE (this: SeriesCollection) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: SeriesCollection) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: SeriesCollection) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: SeriesCollection) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END Count;

    PROCEDURE (this: SeriesCollection) Item* (Index: CtlT.Any): Series, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 170, arg, ret);
        RETURN ThisSeries(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: SeriesCollection) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- DataLabel ---------- *)

    PROCEDURE (this: DataLabel) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: DataLabel) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: DataLabel) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: DataLabel) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: DataLabel) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: DataLabel) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: DataLabel) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: DataLabel) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: DataLabel) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 139)
    END Caption;

    PROCEDURE (this: DataLabel) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 139, p1)
    END PUTCaption;

    PROCEDURE (this: DataLabel) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: DataLabel) HorizontalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 136)
    END HorizontalAlignment;

    PROCEDURE (this: DataLabel) PUTHorizontalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 136, p1)
    END PUTHorizontalAlignment;

    PROCEDURE (this: DataLabel) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: DataLabel) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: DataLabel) Orientation* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 134)
    END Orientation;

    PROCEDURE (this: DataLabel) PUTOrientation* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 134, p1)
    END PUTOrientation;

    PROCEDURE (this: DataLabel) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: DataLabel) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: DataLabel) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 138)
    END Text;

    PROCEDURE (this: DataLabel) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 138, p1)
    END PUTText;

    PROCEDURE (this: DataLabel) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: DataLabel) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: DataLabel) VerticalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 137)
    END VerticalAlignment;

    PROCEDURE (this: DataLabel) PUTVerticalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 137, p1)
    END PUTVerticalAlignment;

    PROCEDURE (this: DataLabel) ReadingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 975)
    END ReadingOrder;

    PROCEDURE (this: DataLabel) PUTReadingOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 975, p1)
    END PUTReadingOrder;

    PROCEDURE (this: DataLabel) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: DataLabel) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;

    PROCEDURE (this: DataLabel) AutoText* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 135)
    END AutoText;

    PROCEDURE (this: DataLabel) PUTAutoText* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 135, p1)
    END PUTAutoText;

    PROCEDURE (this: DataLabel) NumberFormat* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 193)
    END NumberFormat;

    PROCEDURE (this: DataLabel) PUTNumberFormat* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 193, p1)
    END PUTNumberFormat;

    PROCEDURE (this: DataLabel) NumberFormatLocal* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1097)
    END NumberFormatLocal;

    PROCEDURE (this: DataLabel) PUTNumberFormatLocal* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1097, p1)
    END PUTNumberFormatLocal;

    PROCEDURE (this: DataLabel) ShowLegendKey* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 171)
    END ShowLegendKey;

    PROCEDURE (this: DataLabel) PUTShowLegendKey* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 171, p1)
    END PUTShowLegendKey;

    PROCEDURE (this: DataLabel) Type* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 108)
    END Type;

    PROCEDURE (this: DataLabel) PUTType* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 108, p1)
    END PUTType;

    PROCEDURE (this: DataLabel) Position* (): XlDataLabelPosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 133)
    END Position;

    PROCEDURE (this: DataLabel) PUTPosition* (p1: XlDataLabelPosition), NEW;
    BEGIN
        CtlC.PutInt(this, 133, p1)
    END PUTPosition;


    (* ---------- DataLabels ---------- *)

    PROCEDURE (this: DataLabels) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: DataLabels) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: DataLabels) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: DataLabels) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: DataLabels) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: DataLabels) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: DataLabels) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: DataLabels) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: DataLabels) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: DataLabels) HorizontalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 136)
    END HorizontalAlignment;

    PROCEDURE (this: DataLabels) PUTHorizontalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 136, p1)
    END PUTHorizontalAlignment;

    PROCEDURE (this: DataLabels) Orientation* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 134)
    END Orientation;

    PROCEDURE (this: DataLabels) PUTOrientation* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 134, p1)
    END PUTOrientation;

    PROCEDURE (this: DataLabels) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: DataLabels) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: DataLabels) VerticalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 137)
    END VerticalAlignment;

    PROCEDURE (this: DataLabels) PUTVerticalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 137, p1)
    END PUTVerticalAlignment;

    PROCEDURE (this: DataLabels) ReadingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 975)
    END ReadingOrder;

    PROCEDURE (this: DataLabels) PUTReadingOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 975, p1)
    END PUTReadingOrder;

    PROCEDURE (this: DataLabels) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: DataLabels) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;

    PROCEDURE (this: DataLabels) AutoText* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 135)
    END AutoText;

    PROCEDURE (this: DataLabels) PUTAutoText* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 135, p1)
    END PUTAutoText;

    PROCEDURE (this: DataLabels) NumberFormat* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 193)
    END NumberFormat;

    PROCEDURE (this: DataLabels) PUTNumberFormat* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 193, p1)
    END PUTNumberFormat;

    PROCEDURE (this: DataLabels) NumberFormatLocal* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1097)
    END NumberFormatLocal;

    PROCEDURE (this: DataLabels) PUTNumberFormatLocal* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1097, p1)
    END PUTNumberFormatLocal;

    PROCEDURE (this: DataLabels) ShowLegendKey* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 171)
    END ShowLegendKey;

    PROCEDURE (this: DataLabels) PUTShowLegendKey* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 171, p1)
    END PUTShowLegendKey;

    PROCEDURE (this: DataLabels) Type* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 108)
    END Type;

    PROCEDURE (this: DataLabels) PUTType* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 108, p1)
    END PUTType;

    PROCEDURE (this: DataLabels) Position* (): XlDataLabelPosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 133)
    END Position;

    PROCEDURE (this: DataLabels) PUTPosition* (p1: XlDataLabelPosition), NEW;
    BEGIN
        CtlC.PutInt(this, 133, p1)
    END PUTPosition;

    PROCEDURE (this: DataLabels) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END Count;

    PROCEDURE (this: DataLabels) Item* (Index: CtlT.Any): DataLabel, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 170, arg, ret);
        RETURN ThisDataLabel(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: DataLabels) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- LegendEntry ---------- *)

    PROCEDURE (this: LegendEntry) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: LegendEntry) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: LegendEntry) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: LegendEntry) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: LegendEntry) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: LegendEntry) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 486)
    END Index;

    PROCEDURE (this: LegendEntry) LegendKey* (): LegendKey, NEW;
    BEGIN
        RETURN ThisLegendKey(CtlC.GetAny(this, 174))
    END LegendKey;

    PROCEDURE (this: LegendEntry) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: LegendEntry) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;

    PROCEDURE (this: LegendEntry) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: LegendEntry) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: LegendEntry) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: LegendEntry) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;


    (* ---------- LegendEntries ---------- *)

    PROCEDURE (this: LegendEntries) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: LegendEntries) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: LegendEntries) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: LegendEntries) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END Count;

    PROCEDURE (this: LegendEntries) Item* (Index: CtlT.Any): LegendEntry, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 170, arg, ret);
        RETURN ThisLegendEntry(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: LegendEntries) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- LegendKey ---------- *)

    PROCEDURE (this: LegendKey) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: LegendKey) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: LegendKey) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: LegendKey) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: LegendKey) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: LegendKey) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: LegendKey) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: LegendKey) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: LegendKey) InvertIfNegative* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 132)
    END InvertIfNegative;

    PROCEDURE (this: LegendKey) PUTInvertIfNegative* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 132, p1)
    END PUTInvertIfNegative;

    PROCEDURE (this: LegendKey) MarkerBackgroundColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 73)
    END MarkerBackgroundColor;

    PROCEDURE (this: LegendKey) PUTMarkerBackgroundColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 73, p1)
    END PUTMarkerBackgroundColor;

    PROCEDURE (this: LegendKey) MarkerBackgroundColorIndex* (): XlColorIndex, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 74)
    END MarkerBackgroundColorIndex;

    PROCEDURE (this: LegendKey) PUTMarkerBackgroundColorIndex* (p1: XlColorIndex), NEW;
    BEGIN
        CtlC.PutInt(this, 74, p1)
    END PUTMarkerBackgroundColorIndex;

    PROCEDURE (this: LegendKey) MarkerForegroundColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 75)
    END MarkerForegroundColor;

    PROCEDURE (this: LegendKey) PUTMarkerForegroundColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 75, p1)
    END PUTMarkerForegroundColor;

    PROCEDURE (this: LegendKey) MarkerForegroundColorIndex* (): XlColorIndex, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 76)
    END MarkerForegroundColorIndex;

    PROCEDURE (this: LegendKey) PUTMarkerForegroundColorIndex* (p1: XlColorIndex), NEW;
    BEGIN
        CtlC.PutInt(this, 76, p1)
    END PUTMarkerForegroundColorIndex;

    PROCEDURE (this: LegendKey) MarkerSize* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 231)
    END MarkerSize;

    PROCEDURE (this: LegendKey) PUTMarkerSize* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 231, p1)
    END PUTMarkerSize;

    PROCEDURE (this: LegendKey) MarkerStyle* (): XlMarkerStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 72)
    END MarkerStyle;

    PROCEDURE (this: LegendKey) PUTMarkerStyle* (p1: XlMarkerStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 72, p1)
    END PUTMarkerStyle;

    PROCEDURE (this: LegendKey) PictureType* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 161)
    END PictureType;

    PROCEDURE (this: LegendKey) PUTPictureType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 161, p1)
    END PUTPictureType;

    PROCEDURE (this: LegendKey) PictureUnit* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 162)
    END PictureUnit;

    PROCEDURE (this: LegendKey) PUTPictureUnit* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 162, p1)
    END PUTPictureUnit;

    PROCEDURE (this: LegendKey) Smooth* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 163)
    END Smooth;

    PROCEDURE (this: LegendKey) PUTSmooth* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 163, p1)
    END PUTSmooth;

    PROCEDURE (this: LegendKey) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: LegendKey) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: LegendKey) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: LegendKey) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;

    PROCEDURE (this: LegendKey) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: LegendKey) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;


    (* ---------- Trendlines ---------- *)

    PROCEDURE (this: Trendlines) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Trendlines) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Trendlines) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Trendlines) Add* (Type: XlTrendlineType; (* optional *) Order: CtlT.Any; Period: CtlT.Any; Forward: CtlT.Any; Backward: CtlT.Any; Intercept: CtlT.Any; DisplayEquation: CtlT.Any; DisplayRSquared: CtlT.Any; Name: CtlT.Any): Trendline, NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Type, arg[8]);
        CtlC.AnyVar(Order, arg[7]);
        CtlC.AnyVar(Period, arg[6]);
        CtlC.AnyVar(Forward, arg[5]);
        CtlC.AnyVar(Backward, arg[4]);
        CtlC.AnyVar(Intercept, arg[3]);
        CtlC.AnyVar(DisplayEquation, arg[2]);
        CtlC.AnyVar(DisplayRSquared, arg[1]);
        CtlC.AnyVar(Name, arg[0]);
        CtlC.CallParMethod(this, 181, arg, ret);
        RETURN ThisTrendline(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Trendlines) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 118)
    END Count;

    PROCEDURE (this: Trendlines) Item* ((* optional *) Index: CtlT.Any): Trendline, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 170, arg, ret);
        RETURN ThisTrendline(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Trendlines) _NewEnum* (): CtlT.Enumerator, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, -4, ret);
        RETURN CtlC.VarEnum(ret)
    END _NewEnum;


    (* ---------- Trendline ---------- *)

    PROCEDURE (this: Trendline) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Trendline) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Trendline) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Trendline) Backward* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 185)
    END Backward;

    PROCEDURE (this: Trendline) PUTBackward* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 185, p1)
    END PUTBackward;

    PROCEDURE (this: Trendline) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Trendline) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: Trendline) DataLabel* (): DataLabel, NEW;
    BEGIN
        RETURN ThisDataLabel(CtlC.GetAny(this, 158))
    END DataLabel;

    PROCEDURE (this: Trendline) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: Trendline) DisplayEquation* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 190)
    END DisplayEquation;

    PROCEDURE (this: Trendline) PUTDisplayEquation* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 190, p1)
    END PUTDisplayEquation;

    PROCEDURE (this: Trendline) DisplayRSquared* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 189)
    END DisplayRSquared;

    PROCEDURE (this: Trendline) PUTDisplayRSquared* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 189, p1)
    END PUTDisplayRSquared;

    PROCEDURE (this: Trendline) Forward* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 191)
    END Forward;

    PROCEDURE (this: Trendline) PUTForward* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 191, p1)
    END PUTForward;

    PROCEDURE (this: Trendline) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 486)
    END Index;

    PROCEDURE (this: Trendline) Intercept* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 186)
    END Intercept;

    PROCEDURE (this: Trendline) PUTIntercept* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 186, p1)
    END PUTIntercept;

    PROCEDURE (this: Trendline) InterceptIsAuto* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 187)
    END InterceptIsAuto;

    PROCEDURE (this: Trendline) PUTInterceptIsAuto* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 187, p1)
    END PUTInterceptIsAuto;

    PROCEDURE (this: Trendline) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: Trendline) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 110, p1)
    END PUTName;

    PROCEDURE (this: Trendline) NameIsAuto* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 188)
    END NameIsAuto;

    PROCEDURE (this: Trendline) PUTNameIsAuto* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 188, p1)
    END PUTNameIsAuto;

    PROCEDURE (this: Trendline) Order* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 192)
    END Order;

    PROCEDURE (this: Trendline) PUTOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 192, p1)
    END PUTOrder;

    PROCEDURE (this: Trendline) Period* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 184)
    END Period;

    PROCEDURE (this: Trendline) PUTPeriod* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 184, p1)
    END PUTPeriod;

    PROCEDURE (this: Trendline) Type* (): XlTrendlineType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END Type;

    PROCEDURE (this: Trendline) PUTType* (p1: XlTrendlineType), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTType;


    (* ---------- Corners ---------- *)

    PROCEDURE (this: Corners) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Corners) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Corners) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Corners) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;


    (* ---------- SeriesLines ---------- *)

    PROCEDURE (this: SeriesLines) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: SeriesLines) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: SeriesLines) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: SeriesLines) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: SeriesLines) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: SeriesLines) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;


    (* ---------- HiLoLines ---------- *)

    PROCEDURE (this: HiLoLines) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: HiLoLines) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: HiLoLines) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: HiLoLines) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: HiLoLines) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: HiLoLines) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;


    (* ---------- Gridlines ---------- *)

    PROCEDURE (this: Gridlines) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Gridlines) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Gridlines) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Gridlines) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: Gridlines) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Gridlines) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;


    (* ---------- DropLines ---------- *)

    PROCEDURE (this: DropLines) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: DropLines) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: DropLines) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: DropLines) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: DropLines) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: DropLines) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;


    (* ---------- LeaderLines ---------- *)

    PROCEDURE (this: LeaderLines) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: LeaderLines) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: LeaderLines) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: LeaderLines) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: LeaderLines) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 117, NIL);
    END Delete;


    (* ---------- UpBars ---------- *)

    PROCEDURE (this: UpBars) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: UpBars) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: UpBars) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: UpBars) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: UpBars) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: UpBars) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: UpBars) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: UpBars) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;


    (* ---------- DownBars ---------- *)

    PROCEDURE (this: DownBars) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: DownBars) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: DownBars) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: DownBars) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: DownBars) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: DownBars) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: DownBars) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: DownBars) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;


    (* ---------- Floor ---------- *)

    PROCEDURE (this: Floor) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Floor) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Floor) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Floor) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: Floor) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Floor) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: Floor) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: Floor) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: Floor) PictureType* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 161)
    END PictureType;

    PROCEDURE (this: Floor) PUTPictureType* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 161, p1)
    END PUTPictureType;


    (* ---------- Walls ---------- *)

    PROCEDURE (this: Walls) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Walls) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Walls) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Walls) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: Walls) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Walls) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: Walls) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: Walls) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: Walls) PictureType* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 161)
    END PictureType;

    PROCEDURE (this: Walls) PUTPictureType* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 161, p1)
    END PUTPictureType;

    PROCEDURE (this: Walls) PictureUnit* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 162)
    END PictureUnit;

    PROCEDURE (this: Walls) PUTPictureUnit* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 162, p1)
    END PUTPictureUnit;


    (* ---------- TickLabels ---------- *)

    PROCEDURE (this: TickLabels) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: TickLabels) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: TickLabels) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: TickLabels) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: TickLabels) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: TickLabels) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: TickLabels) NumberFormat* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 193)
    END NumberFormat;

    PROCEDURE (this: TickLabels) PUTNumberFormat* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 193, p1)
    END PUTNumberFormat;

    PROCEDURE (this: TickLabels) NumberFormatLocal* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1097)
    END NumberFormatLocal;

    PROCEDURE (this: TickLabels) PUTNumberFormatLocal* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1097, p1)
    END PUTNumberFormatLocal;

    PROCEDURE (this: TickLabels) Orientation* (): XlTickLabelOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 134)
    END Orientation;

    PROCEDURE (this: TickLabels) PUTOrientation* (p1: XlTickLabelOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 134, p1)
    END PUTOrientation;

    PROCEDURE (this: TickLabels) ReadingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 975)
    END ReadingOrder;

    PROCEDURE (this: TickLabels) PUTReadingOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 975, p1)
    END PUTReadingOrder;

    PROCEDURE (this: TickLabels) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: TickLabels) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;

    PROCEDURE (this: TickLabels) Offset* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 254)
    END Offset;

    PROCEDURE (this: TickLabels) PUTOffset* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 254, p1)
    END PUTOffset;


    (* ---------- PlotArea ---------- *)

    PROCEDURE (this: PlotArea) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: PlotArea) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: PlotArea) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: PlotArea) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: PlotArea) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: PlotArea) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: PlotArea) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;

    PROCEDURE (this: PlotArea) PUTHeight* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 123, p1)
    END PUTHeight;

    PROCEDURE (this: PlotArea) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: PlotArea) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: PlotArea) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: PlotArea) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: PlotArea) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: PlotArea) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: PlotArea) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: PlotArea) PUTWidth* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 122, p1)
    END PUTWidth;

    PROCEDURE (this: PlotArea) InsideLeft* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 1667)
    END InsideLeft;

    PROCEDURE (this: PlotArea) InsideTop* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 1668)
    END InsideTop;

    PROCEDURE (this: PlotArea) InsideWidth* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 1669)
    END InsideWidth;

    PROCEDURE (this: PlotArea) InsideHeight* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 1670)
    END InsideHeight;


    (* ---------- ChartArea ---------- *)

    PROCEDURE (this: ChartArea) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: ChartArea) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: ChartArea) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: ChartArea) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: ChartArea) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: ChartArea) Clear* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 111, ret);
        RETURN CtlC.VarAny(ret)
    END Clear;

    PROCEDURE (this: ChartArea) ClearContents* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 113, ret);
        RETURN CtlC.VarAny(ret)
    END ClearContents;

    PROCEDURE (this: ChartArea) Copy* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 551, ret);
        RETURN CtlC.VarAny(ret)
    END Copy;

    PROCEDURE (this: ChartArea) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: ChartArea) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: ChartArea) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: ChartArea) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: ChartArea) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;

    PROCEDURE (this: ChartArea) PUTHeight* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 123, p1)
    END PUTHeight;

    PROCEDURE (this: ChartArea) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: ChartArea) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: ChartArea) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: ChartArea) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: ChartArea) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: ChartArea) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: ChartArea) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: ChartArea) PUTWidth* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 122, p1)
    END PUTWidth;

    PROCEDURE (this: ChartArea) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: ChartArea) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;


    (* ---------- Legend ---------- *)

    PROCEDURE (this: Legend) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: Legend) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: Legend) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: Legend) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: Legend) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: Legend) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: Legend) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: Legend) LegendEntries* ((* optional *) Index: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 173, arg, ret);
        RETURN CtlC.VarObj(ret)
    END LegendEntries;

    PROCEDURE (this: Legend) Position* (): XlLegendPosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 133)
    END Position;

    PROCEDURE (this: Legend) PUTPosition* (p1: XlLegendPosition), NEW;
    BEGIN
        CtlC.PutInt(this, 133, p1)
    END PUTPosition;

    PROCEDURE (this: Legend) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: Legend) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: Legend) Clear* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 111, ret);
        RETURN CtlC.VarAny(ret)
    END Clear;

    PROCEDURE (this: Legend) Height* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 123)
    END Height;

    PROCEDURE (this: Legend) PUTHeight* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 123, p1)
    END PUTHeight;

    PROCEDURE (this: Legend) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: Legend) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: Legend) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: Legend) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: Legend) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: Legend) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: Legend) Width* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 122)
    END Width;

    PROCEDURE (this: Legend) PUTWidth* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 122, p1)
    END PUTWidth;

    PROCEDURE (this: Legend) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: Legend) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;


    (* ---------- ErrorBars ---------- *)

    PROCEDURE (this: ErrorBars) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: ErrorBars) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: ErrorBars) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: ErrorBars) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: ErrorBars) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: ErrorBars) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: ErrorBars) ClearFormats* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 112, ret);
        RETURN CtlC.VarAny(ret)
    END ClearFormats;

    PROCEDURE (this: ErrorBars) EndStyle* (): XlEndStyleCap, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1124)
    END EndStyle;

    PROCEDURE (this: ErrorBars) PUTEndStyle* (p1: XlEndStyleCap), NEW;
    BEGIN
        CtlC.PutInt(this, 1124, p1)
    END PUTEndStyle;


    (* ---------- DataTable ---------- *)

    PROCEDURE (this: DataTable) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: DataTable) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: DataTable) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: DataTable) ShowLegendKey* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 171)
    END ShowLegendKey;

    PROCEDURE (this: DataTable) PUTShowLegendKey* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 171, p1)
    END PUTShowLegendKey;

    PROCEDURE (this: DataTable) HasBorderHorizontal* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1671)
    END HasBorderHorizontal;

    PROCEDURE (this: DataTable) PUTHasBorderHorizontal* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1671, p1)
    END PUTHasBorderHorizontal;

    PROCEDURE (this: DataTable) HasBorderVertical* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1672)
    END HasBorderVertical;

    PROCEDURE (this: DataTable) PUTHasBorderVertical* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1672, p1)
    END PUTHasBorderVertical;

    PROCEDURE (this: DataTable) HasBorderOutline* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1673)
    END HasBorderOutline;

    PROCEDURE (this: DataTable) PUTHasBorderOutline* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1673, p1)
    END PUTHasBorderOutline;

    PROCEDURE (this: DataTable) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: DataTable) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: DataTable) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 117, NIL);
    END Delete;

    PROCEDURE (this: DataTable) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: DataTable) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;


    (* ---------- DisplayUnitLabel ---------- *)

    PROCEDURE (this: DisplayUnitLabel) Application* (): Application, NEW;
    BEGIN
        RETURN ThisApplication(CtlC.GetAny(this, 148))
    END Application;

    PROCEDURE (this: DisplayUnitLabel) Creator* (): XlCreator, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 149)
    END Creator;

    PROCEDURE (this: DisplayUnitLabel) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 150)
    END Parent;

    PROCEDURE (this: DisplayUnitLabel) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 110)
    END Name;

    PROCEDURE (this: DisplayUnitLabel) Border* (): Border, NEW;
    BEGIN
        RETURN ThisBorder(CtlC.GetAny(this, 128))
    END Border;

    PROCEDURE (this: DisplayUnitLabel) Delete* (): CtlT.Any, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 117, ret);
        RETURN CtlC.VarAny(ret)
    END Delete;

    PROCEDURE (this: DisplayUnitLabel) Interior* (): Interior, NEW;
    BEGIN
        RETURN ThisInterior(CtlC.GetAny(this, 129))
    END Interior;

    PROCEDURE (this: DisplayUnitLabel) Fill* (): ChartFillFormat, NEW;
    BEGIN
        RETURN ThisChartFillFormat(CtlC.GetAny(this, 1663))
    END Fill;

    PROCEDURE (this: DisplayUnitLabel) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 139)
    END Caption;

    PROCEDURE (this: DisplayUnitLabel) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 139, p1)
    END PUTCaption;

    PROCEDURE (this: DisplayUnitLabel) Font* (): Font, NEW;
    BEGIN
        RETURN ThisFont(CtlC.GetAny(this, 146))
    END Font;

    PROCEDURE (this: DisplayUnitLabel) HorizontalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 136)
    END HorizontalAlignment;

    PROCEDURE (this: DisplayUnitLabel) PUTHorizontalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 136, p1)
    END PUTHorizontalAlignment;

    PROCEDURE (this: DisplayUnitLabel) Left* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 127)
    END Left;

    PROCEDURE (this: DisplayUnitLabel) PUTLeft* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 127, p1)
    END PUTLeft;

    PROCEDURE (this: DisplayUnitLabel) Orientation* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 134)
    END Orientation;

    PROCEDURE (this: DisplayUnitLabel) PUTOrientation* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 134, p1)
    END PUTOrientation;

    PROCEDURE (this: DisplayUnitLabel) Shadow* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 103)
    END Shadow;

    PROCEDURE (this: DisplayUnitLabel) PUTShadow* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 103, p1)
    END PUTShadow;

    PROCEDURE (this: DisplayUnitLabel) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 138)
    END Text;

    PROCEDURE (this: DisplayUnitLabel) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 138, p1)
    END PUTText;

    PROCEDURE (this: DisplayUnitLabel) Top* (): REAL, NEW;
    BEGIN
        RETURN CtlC.GetReal(this, 126)
    END Top;

    PROCEDURE (this: DisplayUnitLabel) PUTTop* (p1: REAL), NEW;
    BEGIN
        CtlC.PutReal(this, 126, p1)
    END PUTTop;

    PROCEDURE (this: DisplayUnitLabel) VerticalAlignment* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 137)
    END VerticalAlignment;

    PROCEDURE (this: DisplayUnitLabel) PUTVerticalAlignment* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 137, p1)
    END PUTVerticalAlignment;

    PROCEDURE (this: DisplayUnitLabel) ReadingOrder* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 975)
    END ReadingOrder;

    PROCEDURE (this: DisplayUnitLabel) PUTReadingOrder* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 975, p1)
    END PUTReadingOrder;

    PROCEDURE (this: DisplayUnitLabel) AutoScaleFont* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1525)
    END AutoScaleFont;

    PROCEDURE (this: DisplayUnitLabel) PUTAutoScaleFont* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1525, p1)
    END PUTAutoScaleFont;


    PROCEDURE NewGlobal* (): _Global;
    BEGIN
        RETURN This_Global(CtlC.NewObj("{00020800-0000-0000-C000-000000000046}"))
    END NewGlobal;

END CtlGraph9.
