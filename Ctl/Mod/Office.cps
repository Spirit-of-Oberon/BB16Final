MODULE CtlOffice;
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

    (* Microsoft Office 9.0 Object Library, help: C:\Program Files\Microsoft Office\Office\vbaoff9.chm, id: 1 *)
    (* guid: {2DF8D04C-5BFA-101B-BDE5-00AA0044DE52}, lcid: 0, syskind: win32, version: 2.1 *)

    IMPORT CtlT, CtlC;

    CONST
        (* MsoLineDashStyle *)
            msoLineDashStyleMixed* = -2;
            msoLineSolid* = 1;
            msoLineSquareDot* = 2;
            msoLineRoundDot* = 3;
            msoLineDash* = 4;
            msoLineDashDot* = 5;
            msoLineDashDotDot* = 6;
            msoLineLongDash* = 7;
            msoLineLongDashDot* = 8;
        (* MsoLineStyle *)
            msoLineStyleMixed* = -2;
            msoLineSingle* = 1;
            msoLineThinThin* = 2;
            msoLineThinThick* = 3;
            msoLineThickThin* = 4;
            msoLineThickBetweenThin* = 5;
        (* MsoArrowheadStyle *)
            msoArrowheadStyleMixed* = -2;
            msoArrowheadNone* = 1;
            msoArrowheadTriangle* = 2;
            msoArrowheadOpen* = 3;
            msoArrowheadStealth* = 4;
            msoArrowheadDiamond* = 5;
            msoArrowheadOval* = 6;
        (* MsoArrowheadWidth *)
            msoArrowheadWidthMixed* = -2;
            msoArrowheadNarrow* = 1;
            msoArrowheadWidthMedium* = 2;
            msoArrowheadWide* = 3;
        (* MsoArrowheadLength *)
            msoArrowheadLengthMixed* = -2;
            msoArrowheadShort* = 1;
            msoArrowheadLengthMedium* = 2;
            msoArrowheadLong* = 3;
        (* MsoFillType *)
            msoFillMixed* = -2;
            msoFillSolid* = 1;
            msoFillPatterned* = 2;
            msoFillGradient* = 3;
            msoFillTextured* = 4;
            msoFillBackground* = 5;
            msoFillPicture* = 6;
        (* MsoGradientStyle *)
            msoGradientMixed* = -2;
            msoGradientHorizontal* = 1;
            msoGradientVertical* = 2;
            msoGradientDiagonalUp* = 3;
            msoGradientDiagonalDown* = 4;
            msoGradientFromCorner* = 5;
            msoGradientFromTitle* = 6;
            msoGradientFromCenter* = 7;
        (* MsoGradientColorType *)
            msoGradientColorMixed* = -2;
            msoGradientOneColor* = 1;
            msoGradientTwoColors* = 2;
            msoGradientPresetColors* = 3;
        (* MsoTextureType *)
            msoTextureTypeMixed* = -2;
            msoTexturePreset* = 1;
            msoTextureUserDefined* = 2;
        (* MsoPresetTexture *)
            msoPresetTextureMixed* = -2;
            msoTexturePapyrus* = 1;
            msoTextureCanvas* = 2;
            msoTextureDenim* = 3;
            msoTextureWovenMat* = 4;
            msoTextureWaterDroplets* = 5;
            msoTexturePaperBag* = 6;
            msoTextureFishFossil* = 7;
            msoTextureSand* = 8;
            msoTextureGreenMarble* = 9;
            msoTextureWhiteMarble* = 10;
            msoTextureBrownMarble* = 11;
            msoTextureGranite* = 12;
            msoTextureNewsprint* = 13;
            msoTextureRecycledPaper* = 14;
            msoTextureParchment* = 15;
            msoTextureStationery* = 16;
            msoTextureBlueTissuePaper* = 17;
            msoTexturePinkTissuePaper* = 18;
            msoTexturePurpleMesh* = 19;
            msoTextureBouquet* = 20;
            msoTextureCork* = 21;
            msoTextureWalnut* = 22;
            msoTextureOak* = 23;
            msoTextureMediumWood* = 24;
        (* MsoPatternType *)
            msoPatternMixed* = -2;
            msoPattern5Percent* = 1;
            msoPattern10Percent* = 2;
            msoPattern20Percent* = 3;
            msoPattern25Percent* = 4;
            msoPattern30Percent* = 5;
            msoPattern40Percent* = 6;
            msoPattern50Percent* = 7;
            msoPattern60Percent* = 8;
            msoPattern70Percent* = 9;
            msoPattern75Percent* = 10;
            msoPattern80Percent* = 11;
            msoPattern90Percent* = 12;
            msoPatternDarkHorizontal* = 13;
            msoPatternDarkVertical* = 14;
            msoPatternDarkDownwardDiagonal* = 15;
            msoPatternDarkUpwardDiagonal* = 16;
            msoPatternSmallCheckerBoard* = 17;
            msoPatternTrellis* = 18;
            msoPatternLightHorizontal* = 19;
            msoPatternLightVertical* = 20;
            msoPatternLightDownwardDiagonal* = 21;
            msoPatternLightUpwardDiagonal* = 22;
            msoPatternSmallGrid* = 23;
            msoPatternDottedDiamond* = 24;
            msoPatternWideDownwardDiagonal* = 25;
            msoPatternWideUpwardDiagonal* = 26;
            msoPatternDashedUpwardDiagonal* = 27;
            msoPatternDashedDownwardDiagonal* = 28;
            msoPatternNarrowVertical* = 29;
            msoPatternNarrowHorizontal* = 30;
            msoPatternDashedVertical* = 31;
            msoPatternDashedHorizontal* = 32;
            msoPatternLargeConfetti* = 33;
            msoPatternLargeGrid* = 34;
            msoPatternHorizontalBrick* = 35;
            msoPatternLargeCheckerBoard* = 36;
            msoPatternSmallConfetti* = 37;
            msoPatternZigZag* = 38;
            msoPatternSolidDiamond* = 39;
            msoPatternDiagonalBrick* = 40;
            msoPatternOutlinedDiamond* = 41;
            msoPatternPlaid* = 42;
            msoPatternSphere* = 43;
            msoPatternWeave* = 44;
            msoPatternDottedGrid* = 45;
            msoPatternDivot* = 46;
            msoPatternShingle* = 47;
            msoPatternWave* = 48;
        (* MsoPresetGradientType *)
            msoPresetGradientMixed* = -2;
            msoGradientEarlySunset* = 1;
            msoGradientLateSunset* = 2;
            msoGradientNightfall* = 3;
            msoGradientDaybreak* = 4;
            msoGradientHorizon* = 5;
            msoGradientDesert* = 6;
            msoGradientOcean* = 7;
            msoGradientCalmWater* = 8;
            msoGradientFire* = 9;
            msoGradientFog* = 10;
            msoGradientMoss* = 11;
            msoGradientPeacock* = 12;
            msoGradientWheat* = 13;
            msoGradientParchment* = 14;
            msoGradientMahogany* = 15;
            msoGradientRainbow* = 16;
            msoGradientRainbowII* = 17;
            msoGradientGold* = 18;
            msoGradientGoldII* = 19;
            msoGradientBrass* = 20;
            msoGradientChrome* = 21;
            msoGradientChromeII* = 22;
            msoGradientSilver* = 23;
            msoGradientSapphire* = 24;
        (* MsoShadowType *)
            msoShadowMixed* = -2;
            msoShadow1* = 1;
            msoShadow2* = 2;
            msoShadow3* = 3;
            msoShadow4* = 4;
            msoShadow5* = 5;
            msoShadow6* = 6;
            msoShadow7* = 7;
            msoShadow8* = 8;
            msoShadow9* = 9;
            msoShadow10* = 10;
            msoShadow11* = 11;
            msoShadow12* = 12;
            msoShadow13* = 13;
            msoShadow14* = 14;
            msoShadow15* = 15;
            msoShadow16* = 16;
            msoShadow17* = 17;
            msoShadow18* = 18;
            msoShadow19* = 19;
            msoShadow20* = 20;
        (* MsoPresetTextEffect *)
            msoTextEffectMixed* = -2;
            msoTextEffect1* = 0;
            msoTextEffect2* = 1;
            msoTextEffect3* = 2;
            msoTextEffect4* = 3;
            msoTextEffect5* = 4;
            msoTextEffect6* = 5;
            msoTextEffect7* = 6;
            msoTextEffect8* = 7;
            msoTextEffect9* = 8;
            msoTextEffect10* = 9;
            msoTextEffect11* = 10;
            msoTextEffect12* = 11;
            msoTextEffect13* = 12;
            msoTextEffect14* = 13;
            msoTextEffect15* = 14;
            msoTextEffect16* = 15;
            msoTextEffect17* = 16;
            msoTextEffect18* = 17;
            msoTextEffect19* = 18;
            msoTextEffect20* = 19;
            msoTextEffect21* = 20;
            msoTextEffect22* = 21;
            msoTextEffect23* = 22;
            msoTextEffect24* = 23;
            msoTextEffect25* = 24;
            msoTextEffect26* = 25;
            msoTextEffect27* = 26;
            msoTextEffect28* = 27;
            msoTextEffect29* = 28;
            msoTextEffect30* = 29;
        (* MsoPresetTextEffectShape *)
            msoTextEffectShapeMixed* = -2;
            msoTextEffectShapePlainText* = 1;
            msoTextEffectShapeStop* = 2;
            msoTextEffectShapeTriangleUp* = 3;
            msoTextEffectShapeTriangleDown* = 4;
            msoTextEffectShapeChevronUp* = 5;
            msoTextEffectShapeChevronDown* = 6;
            msoTextEffectShapeRingInside* = 7;
            msoTextEffectShapeRingOutside* = 8;
            msoTextEffectShapeArchUpCurve* = 9;
            msoTextEffectShapeArchDownCurve* = 10;
            msoTextEffectShapeCircleCurve* = 11;
            msoTextEffectShapeButtonCurve* = 12;
            msoTextEffectShapeArchUpPour* = 13;
            msoTextEffectShapeArchDownPour* = 14;
            msoTextEffectShapeCirclePour* = 15;
            msoTextEffectShapeButtonPour* = 16;
            msoTextEffectShapeCurveUp* = 17;
            msoTextEffectShapeCurveDown* = 18;
            msoTextEffectShapeCanUp* = 19;
            msoTextEffectShapeCanDown* = 20;
            msoTextEffectShapeWave1* = 21;
            msoTextEffectShapeWave2* = 22;
            msoTextEffectShapeDoubleWave1* = 23;
            msoTextEffectShapeDoubleWave2* = 24;
            msoTextEffectShapeInflate* = 25;
            msoTextEffectShapeDeflate* = 26;
            msoTextEffectShapeInflateBottom* = 27;
            msoTextEffectShapeDeflateBottom* = 28;
            msoTextEffectShapeInflateTop* = 29;
            msoTextEffectShapeDeflateTop* = 30;
            msoTextEffectShapeDeflateInflate* = 31;
            msoTextEffectShapeDeflateInflateDeflate* = 32;
            msoTextEffectShapeFadeRight* = 33;
            msoTextEffectShapeFadeLeft* = 34;
            msoTextEffectShapeFadeUp* = 35;
            msoTextEffectShapeFadeDown* = 36;
            msoTextEffectShapeSlantUp* = 37;
            msoTextEffectShapeSlantDown* = 38;
            msoTextEffectShapeCascadeUp* = 39;
            msoTextEffectShapeCascadeDown* = 40;
        (* MsoTextEffectAlignment *)
            msoTextEffectAlignmentMixed* = -2;
            msoTextEffectAlignmentLeft* = 1;
            msoTextEffectAlignmentCentered* = 2;
            msoTextEffectAlignmentRight* = 3;
            msoTextEffectAlignmentLetterJustify* = 4;
            msoTextEffectAlignmentWordJustify* = 5;
            msoTextEffectAlignmentStretchJustify* = 6;
        (* MsoPresetLightingDirection *)
            msoPresetLightingDirectionMixed* = -2;
            msoLightingTopLeft* = 1;
            msoLightingTop* = 2;
            msoLightingTopRight* = 3;
            msoLightingLeft* = 4;
            msoLightingNone* = 5;
            msoLightingRight* = 6;
            msoLightingBottomLeft* = 7;
            msoLightingBottom* = 8;
            msoLightingBottomRight* = 9;
        (* MsoPresetLightingSoftness *)
            msoPresetLightingSoftnessMixed* = -2;
            msoLightingDim* = 1;
            msoLightingNormal* = 2;
            msoLightingBright* = 3;
        (* MsoPresetMaterial *)
            msoPresetMaterialMixed* = -2;
            msoMaterialMatte* = 1;
            msoMaterialPlastic* = 2;
            msoMaterialMetal* = 3;
            msoMaterialWireFrame* = 4;
        (* MsoPresetExtrusionDirection *)
            msoPresetExtrusionDirectionMixed* = -2;
            msoExtrusionBottomRight* = 1;
            msoExtrusionBottom* = 2;
            msoExtrusionBottomLeft* = 3;
            msoExtrusionRight* = 4;
            msoExtrusionNone* = 5;
            msoExtrusionLeft* = 6;
            msoExtrusionTopRight* = 7;
            msoExtrusionTop* = 8;
            msoExtrusionTopLeft* = 9;
        (* MsoPresetThreeDFormat *)
            msoPresetThreeDFormatMixed* = -2;
            msoThreeD1* = 1;
            msoThreeD2* = 2;
            msoThreeD3* = 3;
            msoThreeD4* = 4;
            msoThreeD5* = 5;
            msoThreeD6* = 6;
            msoThreeD7* = 7;
            msoThreeD8* = 8;
            msoThreeD9* = 9;
            msoThreeD10* = 10;
            msoThreeD11* = 11;
            msoThreeD12* = 12;
            msoThreeD13* = 13;
            msoThreeD14* = 14;
            msoThreeD15* = 15;
            msoThreeD16* = 16;
            msoThreeD17* = 17;
            msoThreeD18* = 18;
            msoThreeD19* = 19;
            msoThreeD20* = 20;
        (* MsoExtrusionColorType *)
            msoExtrusionColorTypeMixed* = -2;
            msoExtrusionColorAutomatic* = 1;
            msoExtrusionColorCustom* = 2;
        (* MsoAlignCmd *)
            msoAlignLefts* = 0;
            msoAlignCenters* = 1;
            msoAlignRights* = 2;
            msoAlignTops* = 3;
            msoAlignMiddles* = 4;
            msoAlignBottoms* = 5;
        (* MsoDistributeCmd *)
            msoDistributeHorizontally* = 0;
            msoDistributeVertically* = 1;
        (* MsoConnectorType *)
            msoConnectorTypeMixed* = -2;
            msoConnectorStraight* = 1;
            msoConnectorElbow* = 2;
            msoConnectorCurve* = 3;
        (* MsoHorizontalAnchor *)
            msoHorizontalAnchorMixed* = -2;
            msoAnchorNone* = 1;
            msoAnchorCenter* = 2;
        (* MsoVerticalAnchor *)
            msoVerticalAnchorMixed* = -2;
            msoAnchorTop* = 1;
            msoAnchorTopBaseline* = 2;
            msoAnchorMiddle* = 3;
            msoAnchorBottom* = 4;
            msoAnchorBottomBaseLine* = 5;
        (* MsoOrientation *)
            msoOrientationMixed* = -2;
            msoOrientationHorizontal* = 1;
            msoOrientationVertical* = 2;
        (* MsoZOrderCmd *)
            msoBringToFront* = 0;
            msoSendToBack* = 1;
            msoBringForward* = 2;
            msoSendBackward* = 3;
            msoBringInFrontOfText* = 4;
            msoSendBehindText* = 5;
        (* MsoSegmentType *)
            msoSegmentLine* = 0;
            msoSegmentCurve* = 1;
        (* MsoEditingType *)
            msoEditingAuto* = 0;
            msoEditingCorner* = 1;
            msoEditingSmooth* = 2;
            msoEditingSymmetric* = 3;
        (* MsoAutoShapeType *)
            msoShapeMixed* = -2;
            msoShapeRectangle* = 1;
            msoShapeParallelogram* = 2;
            msoShapeTrapezoid* = 3;
            msoShapeDiamond* = 4;
            msoShapeRoundedRectangle* = 5;
            msoShapeOctagon* = 6;
            msoShapeIsoscelesTriangle* = 7;
            msoShapeRightTriangle* = 8;
            msoShapeOval* = 9;
            msoShapeHexagon* = 10;
            msoShapeCross* = 11;
            msoShapeRegularPentagon* = 12;
            msoShapeCan* = 13;
            msoShapeCube* = 14;
            msoShapeBevel* = 15;
            msoShapeFoldedCorner* = 16;
            msoShapeSmileyFace* = 17;
            msoShapeDonut* = 18;
            msoShapeNoSymbol* = 19;
            msoShapeBlockArc* = 20;
            msoShapeHeart* = 21;
            msoShapeLightningBolt* = 22;
            msoShapeSun* = 23;
            msoShapeMoon* = 24;
            msoShapeArc* = 25;
            msoShapeDoubleBracket* = 26;
            msoShapeDoubleBrace* = 27;
            msoShapePlaque* = 28;
            msoShapeLeftBracket* = 29;
            msoShapeRightBracket* = 30;
            msoShapeLeftBrace* = 31;
            msoShapeRightBrace* = 32;
            msoShapeRightArrow* = 33;
            msoShapeLeftArrow* = 34;
            msoShapeUpArrow* = 35;
            msoShapeDownArrow* = 36;
            msoShapeLeftRightArrow* = 37;
            msoShapeUpDownArrow* = 38;
            msoShapeQuadArrow* = 39;
            msoShapeLeftRightUpArrow* = 40;
            msoShapeBentArrow* = 41;
            msoShapeUTurnArrow* = 42;
            msoShapeLeftUpArrow* = 43;
            msoShapeBentUpArrow* = 44;
            msoShapeCurvedRightArrow* = 45;
            msoShapeCurvedLeftArrow* = 46;
            msoShapeCurvedUpArrow* = 47;
            msoShapeCurvedDownArrow* = 48;
            msoShapeStripedRightArrow* = 49;
            msoShapeNotchedRightArrow* = 50;
            msoShapePentagon* = 51;
            msoShapeChevron* = 52;
            msoShapeRightArrowCallout* = 53;
            msoShapeLeftArrowCallout* = 54;
            msoShapeUpArrowCallout* = 55;
            msoShapeDownArrowCallout* = 56;
            msoShapeLeftRightArrowCallout* = 57;
            msoShapeUpDownArrowCallout* = 58;
            msoShapeQuadArrowCallout* = 59;
            msoShapeCircularArrow* = 60;
            msoShapeFlowchartProcess* = 61;
            msoShapeFlowchartAlternateProcess* = 62;
            msoShapeFlowchartDecision* = 63;
            msoShapeFlowchartData* = 64;
            msoShapeFlowchartPredefinedProcess* = 65;
            msoShapeFlowchartInternalStorage* = 66;
            msoShapeFlowchartDocument* = 67;
            msoShapeFlowchartMultidocument* = 68;
            msoShapeFlowchartTerminator* = 69;
            msoShapeFlowchartPreparation* = 70;
            msoShapeFlowchartManualInput* = 71;
            msoShapeFlowchartManualOperation* = 72;
            msoShapeFlowchartConnector* = 73;
            msoShapeFlowchartOffpageConnector* = 74;
            msoShapeFlowchartCard* = 75;
            msoShapeFlowchartPunchedTape* = 76;
            msoShapeFlowchartSummingJunction* = 77;
            msoShapeFlowchartOr* = 78;
            msoShapeFlowchartCollate* = 79;
            msoShapeFlowchartSort* = 80;
            msoShapeFlowchartExtract* = 81;
            msoShapeFlowchartMerge* = 82;
            msoShapeFlowchartStoredData* = 83;
            msoShapeFlowchartDelay* = 84;
            msoShapeFlowchartSequentialAccessStorage* = 85;
            msoShapeFlowchartMagneticDisk* = 86;
            msoShapeFlowchartDirectAccessStorage* = 87;
            msoShapeFlowchartDisplay* = 88;
            msoShapeExplosion1* = 89;
            msoShapeExplosion2* = 90;
            msoShape4pointStar* = 91;
            msoShape5pointStar* = 92;
            msoShape8pointStar* = 93;
            msoShape16pointStar* = 94;
            msoShape24pointStar* = 95;
            msoShape32pointStar* = 96;
            msoShapeUpRibbon* = 97;
            msoShapeDownRibbon* = 98;
            msoShapeCurvedUpRibbon* = 99;
            msoShapeCurvedDownRibbon* = 100;
            msoShapeVerticalScroll* = 101;
            msoShapeHorizontalScroll* = 102;
            msoShapeWave* = 103;
            msoShapeDoubleWave* = 104;
            msoShapeRectangularCallout* = 105;
            msoShapeRoundedRectangularCallout* = 106;
            msoShapeOvalCallout* = 107;
            msoShapeCloudCallout* = 108;
            msoShapeLineCallout1* = 109;
            msoShapeLineCallout2* = 110;
            msoShapeLineCallout3* = 111;
            msoShapeLineCallout4* = 112;
            msoShapeLineCallout1AccentBar* = 113;
            msoShapeLineCallout2AccentBar* = 114;
            msoShapeLineCallout3AccentBar* = 115;
            msoShapeLineCallout4AccentBar* = 116;
            msoShapeLineCallout1NoBorder* = 117;
            msoShapeLineCallout2NoBorder* = 118;
            msoShapeLineCallout3NoBorder* = 119;
            msoShapeLineCallout4NoBorder* = 120;
            msoShapeLineCallout1BorderandAccentBar* = 121;
            msoShapeLineCallout2BorderandAccentBar* = 122;
            msoShapeLineCallout3BorderandAccentBar* = 123;
            msoShapeLineCallout4BorderandAccentBar* = 124;
            msoShapeActionButtonCustom* = 125;
            msoShapeActionButtonHome* = 126;
            msoShapeActionButtonHelp* = 127;
            msoShapeActionButtonInformation* = 128;
            msoShapeActionButtonBackorPrevious* = 129;
            msoShapeActionButtonForwardorNext* = 130;
            msoShapeActionButtonBeginning* = 131;
            msoShapeActionButtonEnd* = 132;
            msoShapeActionButtonReturn* = 133;
            msoShapeActionButtonDocument* = 134;
            msoShapeActionButtonSound* = 135;
            msoShapeActionButtonMovie* = 136;
            msoShapeBalloon* = 137;
            msoShapeNotPrimitive* = 138;
        (* MsoShapeType *)
            msoShapeTypeMixed* = -2;
            msoAutoShape* = 1;
            msoCallout* = 2;
            msoChart* = 3;
            msoComment* = 4;
            msoFreeform* = 5;
            msoGroup* = 6;
            msoEmbeddedOLEObject* = 7;
            msoFormControl* = 8;
            msoLine* = 9;
            msoLinkedOLEObject* = 10;
            msoLinkedPicture* = 11;
            msoOLEControlObject* = 12;
            msoPicture* = 13;
            msoPlaceholder* = 14;
            msoTextEffect* = 15;
            msoMedia* = 16;
            msoTextBox* = 17;
            msoScriptAnchor* = 18;
            msoTable* = 19;
        (* MsoFlipCmd *)
            msoFlipHorizontal* = 0;
            msoFlipVertical* = 1;
        (* MsoTriState *)
            msoTrue* = -1;
            msoFalse* = 0;
            msoCTrue* = 1;
            msoTriStateToggle* = -3;
            msoTriStateMixed* = -2;
        (* MsoColorType *)
            msoColorTypeMixed* = -2;
            msoColorTypeRGB* = 1;
            msoColorTypeScheme* = 2;
        (* MsoPictureColorType *)
            msoPictureMixed* = -2;
            msoPictureAutomatic* = 1;
            msoPictureGrayscale* = 2;
            msoPictureBlackAndWhite* = 3;
            msoPictureWatermark* = 4;
        (* MsoCalloutAngleType *)
            msoCalloutAngleMixed* = -2;
            msoCalloutAngleAutomatic* = 1;
            msoCalloutAngle30* = 2;
            msoCalloutAngle45* = 3;
            msoCalloutAngle60* = 4;
            msoCalloutAngle90* = 5;
        (* MsoCalloutDropType *)
            msoCalloutDropMixed* = -2;
            msoCalloutDropCustom* = 1;
            msoCalloutDropTop* = 2;
            msoCalloutDropCenter* = 3;
            msoCalloutDropBottom* = 4;
        (* MsoCalloutType *)
            msoCalloutMixed* = -2;
            msoCalloutOne* = 1;
            msoCalloutTwo* = 2;
            msoCalloutThree* = 3;
            msoCalloutFour* = 4;
        (* MsoBlackWhiteMode *)
            msoBlackWhiteMixed* = -2;
            msoBlackWhiteAutomatic* = 1;
            msoBlackWhiteGrayScale* = 2;
            msoBlackWhiteLightGrayScale* = 3;
            msoBlackWhiteInverseGrayScale* = 4;
            msoBlackWhiteGrayOutline* = 5;
            msoBlackWhiteBlackTextAndLine* = 6;
            msoBlackWhiteHighContrast* = 7;
            msoBlackWhiteBlack* = 8;
            msoBlackWhiteWhite* = 9;
            msoBlackWhiteDontShow* = 10;
        (* MsoMixedType *)
            msoIntegerMixed* = 32768;
            msoSingleMixed* = 80000000H;
        (* MsoTextOrientation *)
            msoTextOrientationMixed* = -2;
            msoTextOrientationHorizontal* = 1;
            msoTextOrientationUpward* = 2;
            msoTextOrientationDownward* = 3;
            msoTextOrientationVerticalFarEast* = 4;
            msoTextOrientationVertical* = 5;
            msoTextOrientationHorizontalRotatedFarEast* = 6;
        (* MsoScaleFrom *)
            msoScaleFromTopLeft* = 0;
            msoScaleFromMiddle* = 1;
            msoScaleFromBottomRight* = 2;
        (* MsoBarPosition *)
            msoBarLeft* = 0;
            msoBarTop* = 1;
            msoBarRight* = 2;
            msoBarBottom* = 3;
            msoBarFloating* = 4;
            msoBarPopup* = 5;
            msoBarMenuBar* = 6;
        (* MsoBarProtection *)
            msoBarNoProtection* = 0;
            msoBarNoCustomize* = 1;
            msoBarNoResize* = 2;
            msoBarNoMove* = 4;
            msoBarNoChangeVisible* = 8;
            msoBarNoChangeDock* = 16;
            msoBarNoVerticalDock* = 32;
            msoBarNoHorizontalDock* = 64;
        (* MsoBarType *)
            msoBarTypeNormal* = 0;
            msoBarTypeMenuBar* = 1;
            msoBarTypePopup* = 2;
        (* MsoControlType *)
            msoControlCustom* = 0;
            msoControlButton* = 1;
            msoControlEdit* = 2;
            msoControlDropdown* = 3;
            msoControlComboBox* = 4;
            msoControlButtonDropdown* = 5;
            msoControlSplitDropdown* = 6;
            msoControlOCXDropdown* = 7;
            msoControlGenericDropdown* = 8;
            msoControlGraphicDropdown* = 9;
            msoControlPopup* = 10;
            msoControlGraphicPopup* = 11;
            msoControlButtonPopup* = 12;
            msoControlSplitButtonPopup* = 13;
            msoControlSplitButtonMRUPopup* = 14;
            msoControlLabel* = 15;
            msoControlExpandingGrid* = 16;
            msoControlSplitExpandingGrid* = 17;
            msoControlGrid* = 18;
            msoControlGauge* = 19;
            msoControlGraphicCombo* = 20;
            msoControlPane* = 21;
            msoControlActiveX* = 22;
        (* MsoButtonState *)
            msoButtonUp* = 0;
            msoButtonDown* = -1;
            msoButtonMixed* = 2;
        (* MsoControlOLEUsage *)
            msoControlOLEUsageNeither* = 0;
            msoControlOLEUsageServer* = 1;
            msoControlOLEUsageClient* = 2;
            msoControlOLEUsageBoth* = 3;
        (* MsoButtonStyleHidden, hidden *)
            msoButtonWrapText* = 4;
            msoButtonTextBelow* = 8;
        (* MsoButtonStyle *)
            msoButtonAutomatic* = 0;
            msoButtonIcon* = 1;
            msoButtonCaption* = 2;
            msoButtonIconAndCaption* = 3;
            msoButtonIconAndWrapCaption* = 7;
            msoButtonIconAndCaptionBelow* = 11;
            msoButtonWrapCaption* = 14;
            msoButtonIconAndWrapCaptionBelow* = 15;
        (* MsoComboStyle *)
            msoComboNormal* = 0;
            msoComboLabel* = 1;
        (* MsoOLEMenuGroup *)
            msoOLEMenuGroupNone* = -1;
            msoOLEMenuGroupFile* = 0;
            msoOLEMenuGroupEdit* = 1;
            msoOLEMenuGroupContainer* = 2;
            msoOLEMenuGroupObject* = 3;
            msoOLEMenuGroupWindow* = 4;
            msoOLEMenuGroupHelp* = 5;
        (* MsoMenuAnimation *)
            msoMenuAnimationNone* = 0;
            msoMenuAnimationRandom* = 1;
            msoMenuAnimationUnfold* = 2;
            msoMenuAnimationSlide* = 3;
        (* MsoBarRow *)
            msoBarRowFirst* = 0;
            msoBarRowLast* = -1;
        (* MsoCommandBarButtonHyperlinkType *)
            msoCommandBarButtonHyperlinkNone* = 0;
            msoCommandBarButtonHyperlinkOpen* = 1;
            msoCommandBarButtonHyperlinkInsertPicture* = 2;
        (* MsoHyperlinkType *)
            msoHyperlinkRange* = 0;
            msoHyperlinkShape* = 1;
            msoHyperlinkInlineShape* = 2;
        (* MsoExtraInfoMethod *)
            msoMethodGet* = 0;
            msoMethodPost* = 1;
        (* MsoAnimationType *)
            msoAnimationIdle* = 1;
            msoAnimationGreeting* = 2;
            msoAnimationGoodbye* = 3;
            msoAnimationBeginSpeaking* = 4;
            msoAnimationRestPose* = 5;
            msoAnimationCharacterSuccessMajor* = 6;
            msoAnimationGetAttentionMajor* = 11;
            msoAnimationGetAttentionMinor* = 12;
            msoAnimationSearching* = 13;
            msoAnimationPrinting* = 18;
            msoAnimationGestureRight* = 19;
            msoAnimationWritingNotingSomething* = 22;
            msoAnimationWorkingAtSomething* = 23;
            msoAnimationThinking* = 24;
            msoAnimationSendingMail* = 25;
            msoAnimationListensToComputer* = 26;
            msoAnimationDisappear* = 31;
            msoAnimationAppear* = 32;
            msoAnimationGetArtsy* = 100;
            msoAnimationGetTechy* = 101;
            msoAnimationGetWizardy* = 102;
            msoAnimationCheckingSomething* = 103;
            msoAnimationLookDown* = 104;
            msoAnimationLookDownLeft* = 105;
            msoAnimationLookDownRight* = 106;
            msoAnimationLookLeft* = 107;
            msoAnimationLookRight* = 108;
            msoAnimationLookUp* = 109;
            msoAnimationLookUpLeft* = 110;
            msoAnimationLookUpRight* = 111;
            msoAnimationSaving* = 112;
            msoAnimationGestureDown* = 113;
            msoAnimationGestureLeft* = 114;
            msoAnimationGestureUp* = 115;
            msoAnimationEmptyTrash* = 116;
        (* MsoButtonSetType *)
            msoButtonSetNone* = 0;
            msoButtonSetOK* = 1;
            msoButtonSetCancel* = 2;
            msoButtonSetOkCancel* = 3;
            msoButtonSetYesNo* = 4;
            msoButtonSetYesNoCancel* = 5;
            msoButtonSetBackClose* = 6;
            msoButtonSetNextClose* = 7;
            msoButtonSetBackNextClose* = 8;
            msoButtonSetRetryCancel* = 9;
            msoButtonSetAbortRetryIgnore* = 10;
            msoButtonSetSearchClose* = 11;
            msoButtonSetBackNextSnooze* = 12;
            msoButtonSetTipsOptionsClose* = 13;
            msoButtonSetYesAllNoCancel* = 14;
        (* MsoIconType *)
            msoIconNone* = 0;
            msoIconAlert* = 2;
            msoIconTip* = 3;
            msoIconAlertInfo* = 4;
            msoIconAlertWarning* = 5;
            msoIconAlertQuery* = 6;
            msoIconAlertCritical* = 7;
        (* MsoBalloonType *)
            msoBalloonTypeButtons* = 0;
            msoBalloonTypeBullets* = 1;
            msoBalloonTypeNumbers* = 2;
        (* MsoModeType *)
            msoModeModal* = 0;
            msoModeAutoDown* = 1;
            msoModeModeless* = 2;
        (* MsoBalloonErrorType *)
            msoBalloonErrorNone* = 0;
            msoBalloonErrorOther* = 1;
            msoBalloonErrorTooBig* = 2;
            msoBalloonErrorOutOfMemory* = 3;
            msoBalloonErrorBadPictureRef* = 4;
            msoBalloonErrorBadReference* = 5;
            msoBalloonErrorButtonlessModal* = 6;
            msoBalloonErrorButtonModeless* = 7;
            msoBalloonErrorBadCharacter* = 8;
            msoBalloonErrorCOMFailure* = 9;
            msoBalloonErrorCharNotTopmostForModal* = 10;
            msoBalloonErrorTooManyControls* = 11;
        (* MsoWizardActType *)
            msoWizardActInactive* = 0;
            msoWizardActActive* = 1;
            msoWizardActSuspend* = 2;
            msoWizardActResume* = 3;
        (* MsoWizardMsgType *)
            msoWizardMsgLocalStateOn* = 1;
            msoWizardMsgLocalStateOff* = 2;
            msoWizardMsgShowHelp* = 3;
            msoWizardMsgSuspending* = 4;
            msoWizardMsgResuming* = 5;
        (* MsoBalloonButtonType *)
            msoBalloonButtonYesToAll* = -15;
            msoBalloonButtonOptions* = -14;
            msoBalloonButtonTips* = -13;
            msoBalloonButtonClose* = -12;
            msoBalloonButtonSnooze* = -11;
            msoBalloonButtonSearch* = -10;
            msoBalloonButtonIgnore* = -9;
            msoBalloonButtonAbort* = -8;
            msoBalloonButtonRetry* = -7;
            msoBalloonButtonNext* = -6;
            msoBalloonButtonBack* = -5;
            msoBalloonButtonNo* = -4;
            msoBalloonButtonYes* = -3;
            msoBalloonButtonCancel* = -2;
            msoBalloonButtonOK* = -1;
            msoBalloonButtonNull* = 0;
        (* DocProperties, hidden *)
            offPropertyTypeNumber* = 1;
            offPropertyTypeBoolean* = 2;
            offPropertyTypeDate* = 3;
            offPropertyTypeString* = 4;
            offPropertyTypeFloat* = 5;
        (* MsoDocProperties *)
            msoPropertyTypeNumber* = 1;
            msoPropertyTypeBoolean* = 2;
            msoPropertyTypeDate* = 3;
            msoPropertyTypeString* = 4;
            msoPropertyTypeFloat* = 5;
        (* MsoAppLanguageID *)
            msoLanguageIDInstall* = 1;
            msoLanguageIDUI* = 2;
            msoLanguageIDHelp* = 3;
            msoLanguageIDExeMode* = 4;
            msoLanguageIDUIPrevious* = 5;
        (* MsoFarEastLineBreakLanguageID *)
            MsoFarEastLineBreakLanguageJapanese* = 1041;
            MsoFarEastLineBreakLanguageKorean* = 1042;
            MsoFarEastLineBreakLanguageSimplifiedChinese* = 2052;
            MsoFarEastLineBreakLanguageTraditionalChinese* = 1028;
        (* MsoFeatureInstall *)
            msoFeatureInstallNone* = 0;
            msoFeatureInstallOnDemand* = 1;
            msoFeatureInstallOnDemandWithUI* = 2;
        (* MsoScriptLanguage *)
            msoScriptLanguageJava* = 1;
            msoScriptLanguageVisualBasic* = 2;
            msoScriptLanguageASP* = 3;
            msoScriptLanguageOther* = 4;
        (* MsoScriptLocation *)
            msoScriptLocationInHead* = 1;
            msoScriptLocationInBody* = 2;
        (* MsoFileFindOptions *)
            msoOptionsNew* = 1;
            msoOptionsAdd* = 2;
            msoOptionsWithin* = 3;
        (* MsoFileFindView *)
            msoViewFileInfo* = 1;
            msoViewPreview* = 2;
            msoViewSummaryInfo* = 3;
        (* MsoFileFindSortBy *)
            msoFileFindSortbyAuthor* = 1;
            msoFileFindSortbyDateCreated* = 2;
            msoFileFindSortbyLastSavedBy* = 3;
            msoFileFindSortbyDateSaved* = 4;
            msoFileFindSortbyFileName* = 5;
            msoFileFindSortbySize* = 6;
            msoFileFindSortbyTitle* = 7;
        (* MsoFileFindListBy *)
            msoListbyName* = 1;
            msoListbyTitle* = 2;
        (* MsoLastModified *)
            msoLastModifiedYesterday* = 1;
            msoLastModifiedToday* = 2;
            msoLastModifiedLastWeek* = 3;
            msoLastModifiedThisWeek* = 4;
            msoLastModifiedLastMonth* = 5;
            msoLastModifiedThisMonth* = 6;
            msoLastModifiedAnyTime* = 7;
        (* MsoSortBy *)
            msoSortByFileName* = 1;
            msoSortBySize* = 2;
            msoSortByFileType* = 3;
            msoSortByLastModified* = 4;
        (* MsoSortOrder *)
            msoSortOrderAscending* = 1;
            msoSortOrderDescending* = 2;
        (* MsoConnector *)
            msoConnectorAnd* = 1;
            msoConnectorOr* = 2;
        (* MsoCondition *)
            msoConditionFileTypeAllFiles* = 1;
            msoConditionFileTypeOfficeFiles* = 2;
            msoConditionFileTypeWordDocuments* = 3;
            msoConditionFileTypeExcelWorkbooks* = 4;
            msoConditionFileTypePowerPointPresentations* = 5;
            msoConditionFileTypeBinders* = 6;
            msoConditionFileTypeDatabases* = 7;
            msoConditionFileTypeTemplates* = 8;
            msoConditionIncludes* = 9;
            msoConditionIncludesPhrase* = 10;
            msoConditionBeginsWith* = 11;
            msoConditionEndsWith* = 12;
            msoConditionIncludesNearEachOther* = 13;
            msoConditionIsExactly* = 14;
            msoConditionIsNot* = 15;
            msoConditionYesterday* = 16;
            msoConditionToday* = 17;
            msoConditionTomorrow* = 18;
            msoConditionLastWeek* = 19;
            msoConditionThisWeek* = 20;
            msoConditionNextWeek* = 21;
            msoConditionLastMonth* = 22;
            msoConditionThisMonth* = 23;
            msoConditionNextMonth* = 24;
            msoConditionAnytime* = 25;
            msoConditionAnytimeBetween* = 26;
            msoConditionOn* = 27;
            msoConditionOnOrAfter* = 28;
            msoConditionOnOrBefore* = 29;
            msoConditionInTheNext* = 30;
            msoConditionInTheLast* = 31;
            msoConditionEquals* = 32;
            msoConditionDoesNotEqual* = 33;
            msoConditionAnyNumberBetween* = 34;
            msoConditionAtMost* = 35;
            msoConditionAtLeast* = 36;
            msoConditionMoreThan* = 37;
            msoConditionLessThan* = 38;
            msoConditionIsYes* = 39;
            msoConditionIsNo* = 40;
        (* MsoFileType *)
            msoFileTypeAllFiles* = 1;
            msoFileTypeOfficeFiles* = 2;
            msoFileTypeWordDocuments* = 3;
            msoFileTypeExcelWorkbooks* = 4;
            msoFileTypePowerPointPresentations* = 5;
            msoFileTypeBinders* = 6;
            msoFileTypeDatabases* = 7;
            msoFileTypeTemplates* = 8;
        (* MsoLanguageID *)
            msoLanguageIDMixed* = -2;
            msoLanguageIDNone* = 0;
            msoLanguageIDNoProofing* = 1024;
            msoLanguageIDAfrikaans* = 1078;
            msoLanguageIDAlbanian* = 1052;
            msoLanguageIDArabicAlgeria* = 5121;
            msoLanguageIDArabicBahrain* = 15361;
            msoLanguageIDArabicEgypt* = 3073;
            msoLanguageIDArabicIraq* = 2049;
            msoLanguageIDArabicJordan* = 11265;
            msoLanguageIDArabicKuwait* = 13313;
            msoLanguageIDArabicLebanon* = 12289;
            msoLanguageIDArabicLibya* = 4097;
            msoLanguageIDArabicMorocco* = 6145;
            msoLanguageIDArabicOman* = 8193;
            msoLanguageIDArabicQatar* = 16385;
            msoLanguageIDArabic* = 1025;
            msoLanguageIDArabicSyria* = 10241;
            msoLanguageIDArabicTunisia* = 7169;
            msoLanguageIDArabicUAE* = 14337;
            msoLanguageIDArabicYemen* = 9217;
            msoLanguageIDArmenian* = 1067;
            msoLanguageIDAssamese* = 1101;
            msoLanguageIDAzeriCyrillic* = 2092;
            msoLanguageIDAzeriLatin* = 1068;
            msoLanguageIDBasque* = 1069;
            msoLanguageIDByelorussian* = 1059;
            msoLanguageIDBengali* = 1093;
            msoLanguageIDBulgarian* = 1026;
            msoLanguageIDBurmese* = 1109;
            msoLanguageIDCatalan* = 1027;
            msoLanguageIDChineseHongKong* = 3076;
            msoLanguageIDChineseMacao* = 5124;
            msoLanguageIDSimplifiedChinese* = 2052;
            msoLanguageIDChineseSingapore* = 4100;
            msoLanguageIDTraditionalChinese* = 1028;
            msoLanguageIDCroatian* = 1050;
            msoLanguageIDCzech* = 1029;
            msoLanguageIDDanish* = 1030;
            msoLanguageIDBelgianDutch* = 2067;
            msoLanguageIDDutch* = 1043;
            msoLanguageIDEnglishAUS* = 3081;
            msoLanguageIDEnglishBelize* = 10249;
            msoLanguageIDEnglishCanadian* = 4105;
            msoLanguageIDEnglishCaribbean* = 9225;
            msoLanguageIDEnglishIreland* = 6153;
            msoLanguageIDEnglishJamaica* = 8201;
            msoLanguageIDEnglishNewZealand* = 5129;
            msoLanguageIDEnglishPhilippines* = 13321;
            msoLanguageIDEnglishSouthAfrica* = 7177;
            msoLanguageIDEnglishTrinidad* = 11273;
            msoLanguageIDEnglishUK* = 2057;
            msoLanguageIDEnglishUS* = 1033;
            msoLanguageIDEnglishZimbabwe* = 12297;
            msoLanguageIDEstonian* = 1061;
            msoLanguageIDFaeroese* = 1080;
            msoLanguageIDFarsi* = 1065;
            msoLanguageIDFinnish* = 1035;
            msoLanguageIDBelgianFrench* = 2060;
            msoLanguageIDFrenchCameroon* = 11276;
            msoLanguageIDFrenchCanadian* = 3084;
            msoLanguageIDFrenchCotedIvoire* = 12300;
            msoLanguageIDFrench* = 1036;
            msoLanguageIDFrenchLuxembourg* = 5132;
            msoLanguageIDFrenchMali* = 13324;
            msoLanguageIDFrenchMonaco* = 6156;
            msoLanguageIDFrenchReunion* = 8204;
            msoLanguageIDFrenchSenegal* = 10252;
            msoLanguageIDSwissFrench* = 4108;
            msoLanguageIDFrenchWestIndies* = 7180;
            msoLanguageIDFrenchZaire* = 9228;
            msoLanguageIDFrisianNetherlands* = 1122;
            msoLanguageIDGaelicIreland* = 2108;
            msoLanguageIDGaelicScotland* = 1084;
            msoLanguageIDGalician* = 1110;
            msoLanguageIDGeorgian* = 1079;
            msoLanguageIDGermanAustria* = 3079;
            msoLanguageIDGerman* = 1031;
            msoLanguageIDGermanLiechtenstein* = 5127;
            msoLanguageIDGermanLuxembourg* = 4103;
            msoLanguageIDSwissGerman* = 2055;
            msoLanguageIDGreek* = 1032;
            msoLanguageIDGujarati* = 1095;
            msoLanguageIDHebrew* = 1037;
            msoLanguageIDHindi* = 1081;
            msoLanguageIDHungarian* = 1038;
            msoLanguageIDIcelandic* = 1039;
            msoLanguageIDIndonesian* = 1057;
            msoLanguageIDItalian* = 1040;
            msoLanguageIDSwissItalian* = 2064;
            msoLanguageIDJapanese* = 1041;
            msoLanguageIDKannada* = 1099;
            msoLanguageIDKashmiri* = 1120;
            msoLanguageIDKazakh* = 1087;
            msoLanguageIDKhmer* = 1107;
            msoLanguageIDKirghiz* = 1088;
            msoLanguageIDKonkani* = 1111;
            msoLanguageIDKorean* = 1042;
            msoLanguageIDLao* = 1108;
            msoLanguageIDLatvian* = 1062;
            msoLanguageIDLithuanian* = 1063;
            msoLanguageIDMacedonian* = 1071;
            msoLanguageIDMalaysian* = 1086;
            msoLanguageIDMalayBruneiDarussalam* = 2110;
            msoLanguageIDMalayalam* = 1100;
            msoLanguageIDMaltese* = 1082;
            msoLanguageIDManipuri* = 1112;
            msoLanguageIDMarathi* = 1102;
            msoLanguageIDMongolian* = 1104;
            msoLanguageIDNepali* = 1121;
            msoLanguageIDNorwegianBokmol* = 1044;
            msoLanguageIDNorwegianNynorsk* = 2068;
            msoLanguageIDOriya* = 1096;
            msoLanguageIDPolish* = 1045;
            msoLanguageIDBrazilianPortuguese* = 1046;
            msoLanguageIDPortuguese* = 2070;
            msoLanguageIDPunjabi* = 1094;
            msoLanguageIDRhaetoRomanic* = 1047;
            msoLanguageIDRomanianMoldova* = 2072;
            msoLanguageIDRomanian* = 1048;
            msoLanguageIDRussianMoldova* = 2073;
            msoLanguageIDRussian* = 1049;
            msoLanguageIDSamiLappish* = 1083;
            msoLanguageIDSanskrit* = 1103;
            msoLanguageIDSerbianCyrillic* = 3098;
            msoLanguageIDSerbianLatin* = 2074;
            msoLanguageIDSesotho* = 1072;
            msoLanguageIDSindhi* = 1113;
            msoLanguageIDSlovak* = 1051;
            msoLanguageIDSlovenian* = 1060;
            msoLanguageIDSorbian* = 1070;
            msoLanguageIDSpanishArgentina* = 11274;
            msoLanguageIDSpanishBolivia* = 16394;
            msoLanguageIDSpanishChile* = 13322;
            msoLanguageIDSpanishColombia* = 9226;
            msoLanguageIDSpanishCostaRica* = 5130;
            msoLanguageIDSpanishDominicanRepublic* = 7178;
            msoLanguageIDSpanishEcuador* = 12298;
            msoLanguageIDSpanishElSalvador* = 17418;
            msoLanguageIDSpanishGuatemala* = 4106;
            msoLanguageIDSpanishHonduras* = 18442;
            msoLanguageIDMexicanSpanish* = 2058;
            msoLanguageIDSpanishNicaragua* = 19466;
            msoLanguageIDSpanishPanama* = 6154;
            msoLanguageIDSpanishParaguay* = 15370;
            msoLanguageIDSpanishPeru* = 10250;
            msoLanguageIDSpanishPuertoRico* = 20490;
            msoLanguageIDSpanishModernSort* = 3082;
            msoLanguageIDSpanish* = 1034;
            msoLanguageIDSpanishUruguay* = 14346;
            msoLanguageIDSpanishVenezuela* = 8202;
            msoLanguageIDSutu* = 1072;
            msoLanguageIDSwahili* = 1089;
            msoLanguageIDSwedishFinland* = 2077;
            msoLanguageIDSwedish* = 1053;
            msoLanguageIDTajik* = 1064;
            msoLanguageIDTamil* = 1097;
            msoLanguageIDTatar* = 1092;
            msoLanguageIDTelugu* = 1098;
            msoLanguageIDThai* = 1054;
            msoLanguageIDTibetan* = 1105;
            msoLanguageIDTsonga* = 1073;
            msoLanguageIDTswana* = 1074;
            msoLanguageIDTurkish* = 1055;
            msoLanguageIDTurkmen* = 1090;
            msoLanguageIDUkrainian* = 1058;
            msoLanguageIDUrdu* = 1056;
            msoLanguageIDUzbekCyrillic* = 2115;
            msoLanguageIDUzbekLatin* = 1091;
            msoLanguageIDVenda* = 1075;
            msoLanguageIDVietnamese* = 1066;
            msoLanguageIDWelsh* = 1106;
            msoLanguageIDXhosa* = 1076;
            msoLanguageIDZulu* = 1077;
        (* MsoScreenSize *)
            msoScreenSize544x376* = 0;
            msoScreenSize640x480* = 1;
            msoScreenSize720x512* = 2;
            msoScreenSize800x600* = 3;
            msoScreenSize1024x768* = 4;
            msoScreenSize1152x882* = 5;
            msoScreenSize1152x900* = 6;
            msoScreenSize1280x1024* = 7;
            msoScreenSize1600x1200* = 8;
            msoScreenSize1800x1440* = 9;
            msoScreenSize1920x1200* = 10;
        (* MsoCharacterSet *)
            msoCharacterSetArabic* = 1;
            msoCharacterSetCyrillic* = 2;
            msoCharacterSetEnglishWesternEuropeanOtherLatinScript* = 3;
            msoCharacterSetGreek* = 4;
            msoCharacterSetHebrew* = 5;
            msoCharacterSetJapanese* = 6;
            msoCharacterSetKorean* = 7;
            msoCharacterSetMultilingualUnicode* = 8;
            msoCharacterSetSimplifiedChinese* = 9;
            msoCharacterSetThai* = 10;
            msoCharacterSetTraditionalChinese* = 11;
            msoCharacterSetVietnamese* = 12;
        (* MsoEncoding *)
            msoEncodingThai* = 874;
            msoEncodingJapaneseShiftJIS* = 932;
            msoEncodingSimplifiedChineseGBK* = 936;
            msoEncodingKorean* = 949;
            msoEncodingTraditionalChineseBig5* = 950;
            msoEncodingUnicodeLittleEndian* = 1200;
            msoEncodingUnicodeBigEndian* = 1201;
            msoEncodingCentralEuropean* = 1250;
            msoEncodingCyrillic* = 1251;
            msoEncodingWestern* = 1252;
            msoEncodingGreek* = 1253;
            msoEncodingTurkish* = 1254;
            msoEncodingHebrew* = 1255;
            msoEncodingArabic* = 1256;
            msoEncodingBaltic* = 1257;
            msoEncodingVietnamese* = 1258;
            msoEncodingAutoDetect* = 50001;
            msoEncodingJapaneseAutoDetect* = 50932;
            msoEncodingSimplifiedChineseAutoDetect* = 50936;
            msoEncodingKoreanAutoDetect* = 50949;
            msoEncodingTraditionalChineseAutoDetect* = 50950;
            msoEncodingCyrillicAutoDetect* = 51251;
            msoEncodingGreekAutoDetect* = 51253;
            msoEncodingArabicAutoDetect* = 51256;
            msoEncodingISO88591Latin1* = 28591;
            msoEncodingISO88592CentralEurope* = 28592;
            msoEncodingISO88593Latin3* = 28593;
            msoEncodingISO88594Baltic* = 28594;
            msoEncodingISO88595Cyrillic* = 28595;
            msoEncodingISO88596Arabic* = 28596;
            msoEncodingISO88597Greek* = 28597;
            msoEncodingISO88598Hebrew* = 28598;
            msoEncodingISO88599Turkish* = 28599;
            msoEncodingISO885915Latin9* = 28605;
            msoEncodingISO2022JPNoHalfwidthKatakana* = 50220;
            msoEncodingISO2022JPJISX02021984* = 50221;
            msoEncodingISO2022JPJISX02011989* = 50222;
            msoEncodingISO2022KR* = 50225;
            msoEncodingISO2022CNTraditionalChinese* = 50227;
            msoEncodingISO2022CNSimplifiedChinese* = 50229;
            msoEncodingMacRoman* = 10000;
            msoEncodingMacJapanese* = 10001;
            msoEncodingMacTraditionalChineseBig5* = 10002;
            msoEncodingMacKorean* = 10003;
            msoEncodingMacArabic* = 10004;
            msoEncodingMacHebrew* = 10005;
            msoEncodingMacGreek1* = 10006;
            msoEncodingMacCyrillic* = 10007;
            msoEncodingMacSimplifiedChineseGB2312* = 10008;
            msoEncodingMacRomania* = 10010;
            msoEncodingMacUkraine* = 10017;
            msoEncodingMacLatin2* = 10029;
            msoEncodingMacIcelandic* = 10079;
            msoEncodingMacTurkish* = 10081;
            msoEncodingMacCroatia* = 10082;
            msoEncodingEBCDICUSCanada* = 37;
            msoEncodingEBCDICInternational* = 500;
            msoEncodingEBCDICMultilingualROECELatin2* = 870;
            msoEncodingEBCDICGreekModern* = 875;
            msoEncodingEBCDICTurkishLatin5* = 1026;
            msoEncodingEBCDICGermany* = 20273;
            msoEncodingEBCDICDenmarkNorway* = 20277;
            msoEncodingEBCDICFinlandSweden* = 20278;
            msoEncodingEBCDICItaly* = 20280;
            msoEncodingEBCDICLatinAmericaSpain* = 20284;
            msoEncodingEBCDICUnitedKingdom* = 20285;
            msoEncodingEBCDICJapaneseKatakanaExtended* = 20290;
            msoEncodingEBCDICFrance* = 20297;
            msoEncodingEBCDICArabic* = 20420;
            msoEncodingEBCDICGreek* = 20423;
            msoEncodingEBCDICHebrew* = 20424;
            msoEncodingEBCDICKoreanExtended* = 20833;
            msoEncodingEBCDICThai* = 20838;
            msoEncodingEBCDICIcelandic* = 20871;
            msoEncodingEBCDICTurkish* = 20905;
            msoEncodingEBCDICRussian* = 20880;
            msoEncodingEBCDICSerbianBulgarian* = 21025;
            msoEncodingEBCDICJapaneseKatakanaExtendedAndJapanese* = 50930;
            msoEncodingEBCDICUSCanadaandJapanese* = 50931;
            msoEncodingEBCDICKoreanExtendedAndKorean* = 50933;
            msoEncodingEBCDICSimplifiedChineseExtendedAndSimplifiedChinese* = 50935;
            msoEncodingEBCDICUSCanadaAndTraditionalChinese* = 50937;
            msoEncodingEBCDICJapaneseLatinExtendedAndJapanese* = 50939;
            msoEncodingOEMUnitedStates* = 437;
            msoEncodingOEMGreek437G* = 737;
            msoEncodingOEMBaltic* = 775;
            msoEncodingOEMMultilingualLatinI* = 850;
            msoEncodingOEMMultilingualLatinII* = 852;
            msoEncodingOEMCyrillic* = 855;
            msoEncodingOEMTurkish* = 857;
            msoEncodingOEMPortuguese* = 860;
            msoEncodingOEMIcelandic* = 861;
            msoEncodingOEMHebrew* = 862;
            msoEncodingOEMCanadianFrench* = 863;
            msoEncodingOEMArabic* = 864;
            msoEncodingOEMNordic* = 865;
            msoEncodingOEMCyrillicII* = 866;
            msoEncodingOEMModernGreek* = 869;
            msoEncodingEUCJapanese* = 51932;
            msoEncodingEUCChineseSimplifiedChinese* = 51936;
            msoEncodingEUCKorean* = 51949;
            msoEncodingEUCTaiwaneseTraditionalChinese* = 51950;
            msoEncodingArabicASMO* = 708;
            msoEncodingArabicTransparentASMO* = 720;
            msoEncodingKoreanJohab* = 1361;
            msoEncodingTaiwanCNS* = 20000;
            msoEncodingTaiwanTCA* = 20001;
            msoEncodingTaiwanEten* = 20002;
            msoEncodingTaiwanIBM5550* = 20003;
            msoEncodingTaiwanTeleText* = 20004;
            msoEncodingTaiwanWang* = 20005;
            msoEncodingIA5IRV* = 20105;
            msoEncodingIA5German* = 20106;
            msoEncodingIA5Swedish* = 20107;
            msoEncodingIA5Norwegian* = 20108;
            msoEncodingUSASCII* = 20127;
            msoEncodingT61* = 20261;
            msoEncodingISO6937NonSpacingAccent* = 20269;
            msoEncodingKOI8R* = 20866;
            msoEncodingExtAlphaLowercase* = 21027;
            msoEncodingKOI8U* = 21866;
            msoEncodingEuropa3* = 29001;
            msoEncodingHZGBSimplifiedChinese* = 52936;
            msoEncodingUTF7* = 65000;
            msoEncodingUTF8* = 65001;
        (* MsoHTMLProjectOpen *)
            msoHTMLProjectOpenSourceView* = 1;
            msoHTMLProjectOpenTextView* = 2;
        (* MsoHTMLProjectState *)
            msoHTMLProjectStateDocumentLocked* = 1;
            msoHTMLProjectStateProjectLocked* = 2;
            msoHTMLProjectStateDocumentProjectUnlocked* = 3;


    TYPE
        MsoLineDashStyle* = INTEGER;
        MsoLineStyle* = INTEGER;
        MsoArrowheadStyle* = INTEGER;
        MsoArrowheadWidth* = INTEGER;
        MsoArrowheadLength* = INTEGER;
        MsoFillType* = INTEGER;
        MsoGradientStyle* = INTEGER;
        MsoGradientColorType* = INTEGER;
        MsoTextureType* = INTEGER;
        MsoPresetTexture* = INTEGER;
        MsoPatternType* = INTEGER;
        MsoPresetGradientType* = INTEGER;
        MsoShadowType* = INTEGER;
        MsoPresetTextEffect* = INTEGER;
        MsoPresetTextEffectShape* = INTEGER;
        MsoTextEffectAlignment* = INTEGER;
        MsoPresetLightingDirection* = INTEGER;
        MsoPresetLightingSoftness* = INTEGER;
        MsoPresetMaterial* = INTEGER;
        MsoPresetExtrusionDirection* = INTEGER;
        MsoPresetThreeDFormat* = INTEGER;
        MsoExtrusionColorType* = INTEGER;
        MsoAlignCmd* = INTEGER;
        MsoDistributeCmd* = INTEGER;
        MsoConnectorType* = INTEGER;
        MsoHorizontalAnchor* = INTEGER;
        MsoVerticalAnchor* = INTEGER;
        MsoOrientation* = INTEGER;
        MsoZOrderCmd* = INTEGER;
        MsoSegmentType* = INTEGER;
        MsoEditingType* = INTEGER;
        MsoAutoShapeType* = INTEGER;
        MsoShapeType* = INTEGER;
        MsoFlipCmd* = INTEGER;
        MsoTriState* = INTEGER;
        MsoColorType* = INTEGER;
        MsoPictureColorType* = INTEGER;
        MsoCalloutAngleType* = INTEGER;
        MsoCalloutDropType* = INTEGER;
        MsoCalloutType* = INTEGER;
        MsoBlackWhiteMode* = INTEGER;
        MsoMixedType* = INTEGER;
        MsoTextOrientation* = INTEGER;
        MsoScaleFrom* = INTEGER;
        MsoRGBType* = INTEGER;
        MsoBarPosition* = INTEGER;
        MsoBarProtection* = INTEGER;
        MsoBarType* = INTEGER;
        MsoControlType* = INTEGER;
        MsoButtonState* = INTEGER;
        MsoControlOLEUsage* = INTEGER;
        MsoButtonStyleHidden* = INTEGER;
        MsoButtonStyle* = INTEGER;
        MsoComboStyle* = INTEGER;
        MsoOLEMenuGroup* = INTEGER;
        MsoMenuAnimation* = INTEGER;
        MsoBarRow* = INTEGER;
        MsoCommandBarButtonHyperlinkType* = INTEGER;
        MsoHyperlinkType* = INTEGER;
        MsoExtraInfoMethod* = INTEGER;
        MsoAnimationType* = INTEGER;
        MsoButtonSetType* = INTEGER;
        MsoIconType* = INTEGER;
        MsoBalloonType* = INTEGER;
        MsoModeType* = INTEGER;
        MsoBalloonErrorType* = INTEGER;
        MsoWizardActType* = INTEGER;
        MsoWizardMsgType* = INTEGER;
        MsoBalloonButtonType* = INTEGER;
        DocProperties* = INTEGER;
        MsoDocProperties* = INTEGER;
        MsoAppLanguageID* = INTEGER;
        MsoFarEastLineBreakLanguageID* = INTEGER;
        MsoFeatureInstall* = INTEGER;
        IAccessible* = POINTER TO RECORD (CtlT.Object) END;
        _IMsoDispObj* = POINTER TO RECORD (CtlT.Object) END;
        _IMsoOleAccDispObj* = POINTER TO RECORD (CtlT.Object) END;
        _CommandBars* = POINTER TO RECORD (CtlT.Object) END;
        CommandBar* = POINTER TO RECORD (CtlT.Object) END;
        CommandBarControls* = POINTER TO RECORD (CtlT.Object) END;
        CommandBarControl* = POINTER TO RECORD (CtlT.Object) END;
        _CommandBarButton* = POINTER TO RECORD (CtlT.Object) END;
        CommandBarPopup* = POINTER TO RECORD (CtlT.Object) END;
        _CommandBarComboBox* = POINTER TO RECORD (CtlT.Object) END;
        _CommandBarActiveX* = POINTER TO RECORD (CtlT.Object) END;
        Adjustments* = POINTER TO RECORD (CtlT.Object) END;
        CalloutFormat* = POINTER TO RECORD (CtlT.Object) END;
        ColorFormat* = POINTER TO RECORD (CtlT.Object) END;
        ConnectorFormat* = POINTER TO RECORD (CtlT.Object) END;
        FillFormat* = POINTER TO RECORD (CtlT.Object) END;
        FreeformBuilder* = POINTER TO RECORD (CtlT.Object) END;
        GroupShapes* = POINTER TO RECORD (CtlT.Object) END;
        LineFormat* = POINTER TO RECORD (CtlT.Object) END;
        ShapeNode* = POINTER TO RECORD (CtlT.Object) END;
        ShapeNodes* = POINTER TO RECORD (CtlT.Object) END;
        PictureFormat* = POINTER TO RECORD (CtlT.Object) END;
        ShadowFormat* = POINTER TO RECORD (CtlT.Object) END;
        MsoScriptLanguage* = INTEGER;
        MsoScriptLocation* = INTEGER;
        Script* = POINTER TO RECORD (CtlT.Object) END;
        Scripts* = POINTER TO RECORD (CtlT.Object) END;
        Shape* = POINTER TO RECORD (CtlT.Object) END;
        ShapeRange* = POINTER TO RECORD (CtlT.Object) END;
        Shapes* = POINTER TO RECORD (CtlT.Object) END;
        TextEffectFormat* = POINTER TO RECORD (CtlT.Object) END;
        TextFrame* = POINTER TO RECORD (CtlT.Object) END;
        ThreeDFormat* = POINTER TO RECORD (CtlT.Object) END;
        IMsoDispCagNotifySink* = POINTER TO RECORD (CtlT.Object) END;
        Balloon* = POINTER TO RECORD (CtlT.Object) END;
        BalloonCheckboxes* = POINTER TO RECORD (CtlT.Object) END;
        BalloonCheckbox* = POINTER TO RECORD (CtlT.Object) END;
        BalloonLabels* = POINTER TO RECORD (CtlT.Object) END;
        BalloonLabel* = POINTER TO RECORD (CtlT.Object) END;
        AnswerWizardFiles* = POINTER TO RECORD (CtlT.Object) END;
        AnswerWizard* = POINTER TO RECORD (CtlT.Object) END;
        Assistant* = POINTER TO RECORD (CtlT.Object) END;
        MsoFileFindOptions* = INTEGER;
        MsoFileFindView* = INTEGER;
        MsoFileFindSortBy* = INTEGER;
        MsoFileFindListBy* = INTEGER;
        IFoundFiles* = POINTER TO RECORD (CtlT.Object) END;
        IFind* = POINTER TO RECORD (CtlT.Object) END;
        MsoLastModified* = INTEGER;
        MsoSortBy* = INTEGER;
        MsoSortOrder* = INTEGER;
        MsoConnector* = INTEGER;
        MsoCondition* = INTEGER;
        MsoFileType* = INTEGER;
        FoundFiles* = POINTER TO RECORD (CtlT.Object) END;
        PropertyTest* = POINTER TO RECORD (CtlT.Object) END;
        PropertyTests* = POINTER TO RECORD (CtlT.Object) END;
        FileSearch* = POINTER TO RECORD (CtlT.Object) END;
        COMAddIn* = POINTER TO RECORD (CtlT.Object) END;
        COMAddIns* = POINTER TO RECORD (CtlT.Object) END;
        MsoLanguageID* = INTEGER;
        LanguageSettings* = POINTER TO RECORD (CtlT.Object) END;
        ICommandBarsEvents* = POINTER TO RECORD (CtlT.Object) END;
        _CommandBarsEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        CommandBars* = _CommandBars;
        ICommandBarComboBoxEvents* = POINTER TO RECORD (CtlT.Object) END;
        _CommandBarComboBoxEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        CommandBarComboBox* = _CommandBarComboBox;
        ICommandBarButtonEvents* = POINTER TO RECORD (CtlT.Object) END;
        _CommandBarButtonEvents* = POINTER TO ABSTRACT RECORD (CtlT.OutObject) END;
        CommandBarButton* = _CommandBarButton;
        MsoScreenSize* = INTEGER;
        MsoCharacterSet* = INTEGER;
        MsoEncoding* = INTEGER;
        WebPageFont* = POINTER TO RECORD (CtlT.Object) END;
        WebPageFonts* = POINTER TO RECORD (CtlT.Object) END;
        MsoHTMLProjectOpen* = INTEGER;
        MsoHTMLProjectState* = INTEGER;
        HTMLProjectItem* = POINTER TO RECORD (CtlT.Object) END;
        HTMLProjectItems* = POINTER TO RECORD (CtlT.Object) END;
        HTMLProject* = POINTER TO RECORD (CtlT.Object) END;
        MsoDebugOptions* = POINTER TO RECORD (CtlT.Object) END;


    PROCEDURE ThisIAccessible* (v: CtlT.Any): IAccessible;
        VAR new: IAccessible;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{618736E0-3C3D-11CF-810C-00AA00389B71}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIAccessible;

    PROCEDURE IsIAccessible* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{618736E0-3C3D-11CF-810C-00AA00389B71}")
    END IsIAccessible;

    PROCEDURE This_IMsoDispObj* (v: CtlT.Any): _IMsoDispObj;
        VAR new: _IMsoDispObj;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0300-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_IMsoDispObj;

    PROCEDURE Is_IMsoDispObj* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0300-0000-0000-C000-000000000046}")
    END Is_IMsoDispObj;

    PROCEDURE This_IMsoOleAccDispObj* (v: CtlT.Any): _IMsoOleAccDispObj;
        VAR new: _IMsoOleAccDispObj;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0301-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_IMsoOleAccDispObj;

    PROCEDURE Is_IMsoOleAccDispObj* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0301-0000-0000-C000-000000000046}")
    END Is_IMsoOleAccDispObj;

    PROCEDURE This_CommandBars* (v: CtlT.Any): _CommandBars;
        VAR new: _CommandBars;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0302-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CommandBars;

    PROCEDURE Is_CommandBars* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0302-0000-0000-C000-000000000046}")
    END Is_CommandBars;

    (* by hand *)
    PROCEDURE ThisCommandBars* (v: CtlT.Any): CommandBars;
        VAR new: CommandBars;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0302-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCommandBars;

    (* by hand *)
    PROCEDURE IsCommandBars* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0302-0000-0000-C000-000000000046}")
    END IsCommandBars;

    PROCEDURE ThisCommandBar* (v: CtlT.Any): CommandBar;
        VAR new: CommandBar;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0304-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCommandBar;

    PROCEDURE IsCommandBar* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0304-0000-0000-C000-000000000046}")
    END IsCommandBar;

    PROCEDURE ThisCommandBarControls* (v: CtlT.Any): CommandBarControls;
        VAR new: CommandBarControls;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0306-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCommandBarControls;

    PROCEDURE IsCommandBarControls* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0306-0000-0000-C000-000000000046}")
    END IsCommandBarControls;

    PROCEDURE ThisCommandBarControl* (v: CtlT.Any): CommandBarControl;
        VAR new: CommandBarControl;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0308-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCommandBarControl;

    PROCEDURE IsCommandBarControl* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0308-0000-0000-C000-000000000046}")
    END IsCommandBarControl;

    PROCEDURE This_CommandBarButton* (v: CtlT.Any): _CommandBarButton;
        VAR new: _CommandBarButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C030E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CommandBarButton;

    PROCEDURE Is_CommandBarButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C030E-0000-0000-C000-000000000046}")
    END Is_CommandBarButton;

    (* by hand *)
    PROCEDURE ThisCommandBarButton* (v: CtlT.Any): CommandBarButton;
        VAR new: CommandBarButton;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C030E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCommandBarButton;

    (* by hand *)
    PROCEDURE IsCommandBarButton* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C030E-0000-0000-C000-000000000046}")
    END IsCommandBarButton;

    PROCEDURE ThisCommandBarPopup* (v: CtlT.Any): CommandBarPopup;
        VAR new: CommandBarPopup;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C030A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCommandBarPopup;

    PROCEDURE IsCommandBarPopup* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C030A-0000-0000-C000-000000000046}")
    END IsCommandBarPopup;

    PROCEDURE This_CommandBarComboBox* (v: CtlT.Any): _CommandBarComboBox;
        VAR new: _CommandBarComboBox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C030C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CommandBarComboBox;

    PROCEDURE Is_CommandBarComboBox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C030C-0000-0000-C000-000000000046}")
    END Is_CommandBarComboBox;

    (* by hand *)
    PROCEDURE ThisCommandBarComboBox* (v: CtlT.Any): CommandBarComboBox;
        VAR new: CommandBarComboBox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C030C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCommandBarComboBox;

    (* by hand *)
    PROCEDURE IsCommandBarComboBox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C030C-0000-0000-C000-000000000046}")
    END IsCommandBarComboBox;
    
    PROCEDURE This_CommandBarActiveX* (v: CtlT.Any): _CommandBarActiveX;
        VAR new: _CommandBarActiveX;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C030D-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END This_CommandBarActiveX;

    PROCEDURE Is_CommandBarActiveX* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C030D-0000-0000-C000-000000000046}")
    END Is_CommandBarActiveX;

    PROCEDURE ThisAdjustments* (v: CtlT.Any): Adjustments;
        VAR new: Adjustments;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0310-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAdjustments;

    PROCEDURE IsAdjustments* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0310-0000-0000-C000-000000000046}")
    END IsAdjustments;

    PROCEDURE ThisCalloutFormat* (v: CtlT.Any): CalloutFormat;
        VAR new: CalloutFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0311-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCalloutFormat;

    PROCEDURE IsCalloutFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0311-0000-0000-C000-000000000046}")
    END IsCalloutFormat;

    PROCEDURE ThisColorFormat* (v: CtlT.Any): ColorFormat;
        VAR new: ColorFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0312-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisColorFormat;

    PROCEDURE IsColorFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0312-0000-0000-C000-000000000046}")
    END IsColorFormat;

    PROCEDURE ThisConnectorFormat* (v: CtlT.Any): ConnectorFormat;
        VAR new: ConnectorFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0313-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisConnectorFormat;

    PROCEDURE IsConnectorFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0313-0000-0000-C000-000000000046}")
    END IsConnectorFormat;

    PROCEDURE ThisFillFormat* (v: CtlT.Any): FillFormat;
        VAR new: FillFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0314-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFillFormat;

    PROCEDURE IsFillFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0314-0000-0000-C000-000000000046}")
    END IsFillFormat;

    PROCEDURE ThisFreeformBuilder* (v: CtlT.Any): FreeformBuilder;
        VAR new: FreeformBuilder;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0315-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFreeformBuilder;

    PROCEDURE IsFreeformBuilder* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0315-0000-0000-C000-000000000046}")
    END IsFreeformBuilder;

    PROCEDURE ThisGroupShapes* (v: CtlT.Any): GroupShapes;
        VAR new: GroupShapes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0316-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisGroupShapes;

    PROCEDURE IsGroupShapes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0316-0000-0000-C000-000000000046}")
    END IsGroupShapes;

    PROCEDURE ThisLineFormat* (v: CtlT.Any): LineFormat;
        VAR new: LineFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0317-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLineFormat;

    PROCEDURE IsLineFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0317-0000-0000-C000-000000000046}")
    END IsLineFormat;

    PROCEDURE ThisShapeNode* (v: CtlT.Any): ShapeNode;
        VAR new: ShapeNode;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0318-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapeNode;

    PROCEDURE IsShapeNode* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0318-0000-0000-C000-000000000046}")
    END IsShapeNode;

    PROCEDURE ThisShapeNodes* (v: CtlT.Any): ShapeNodes;
        VAR new: ShapeNodes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0319-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapeNodes;

    PROCEDURE IsShapeNodes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0319-0000-0000-C000-000000000046}")
    END IsShapeNodes;

    PROCEDURE ThisPictureFormat* (v: CtlT.Any): PictureFormat;
        VAR new: PictureFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C031A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPictureFormat;

    PROCEDURE IsPictureFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C031A-0000-0000-C000-000000000046}")
    END IsPictureFormat;

    PROCEDURE ThisShadowFormat* (v: CtlT.Any): ShadowFormat;
        VAR new: ShadowFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C031B-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShadowFormat;

    PROCEDURE IsShadowFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C031B-0000-0000-C000-000000000046}")
    END IsShadowFormat;

    PROCEDURE ThisScript* (v: CtlT.Any): Script;
        VAR new: Script;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0341-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisScript;

    PROCEDURE IsScript* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0341-0000-0000-C000-000000000046}")
    END IsScript;

    PROCEDURE ThisScripts* (v: CtlT.Any): Scripts;
        VAR new: Scripts;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0340-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisScripts;

    PROCEDURE IsScripts* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0340-0000-0000-C000-000000000046}")
    END IsScripts;

    PROCEDURE ThisShape* (v: CtlT.Any): Shape;
        VAR new: Shape;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C031C-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShape;

    PROCEDURE IsShape* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C031C-0000-0000-C000-000000000046}")
    END IsShape;

    PROCEDURE ThisShapeRange* (v: CtlT.Any): ShapeRange;
        VAR new: ShapeRange;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C031D-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapeRange;

    PROCEDURE IsShapeRange* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C031D-0000-0000-C000-000000000046}")
    END IsShapeRange;

    PROCEDURE ThisShapes* (v: CtlT.Any): Shapes;
        VAR new: Shapes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C031E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisShapes;

    PROCEDURE IsShapes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C031E-0000-0000-C000-000000000046}")
    END IsShapes;

    PROCEDURE ThisTextEffectFormat* (v: CtlT.Any): TextEffectFormat;
        VAR new: TextEffectFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C031F-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextEffectFormat;

    PROCEDURE IsTextEffectFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C031F-0000-0000-C000-000000000046}")
    END IsTextEffectFormat;

    PROCEDURE ThisTextFrame* (v: CtlT.Any): TextFrame;
        VAR new: TextFrame;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0320-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisTextFrame;

    PROCEDURE IsTextFrame* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0320-0000-0000-C000-000000000046}")
    END IsTextFrame;

    PROCEDURE ThisThreeDFormat* (v: CtlT.Any): ThreeDFormat;
        VAR new: ThreeDFormat;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0321-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisThreeDFormat;

    PROCEDURE IsThreeDFormat* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0321-0000-0000-C000-000000000046}")
    END IsThreeDFormat;

    PROCEDURE ThisIMsoDispCagNotifySink* (v: CtlT.Any): IMsoDispCagNotifySink;
        VAR new: IMsoDispCagNotifySink;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0359-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIMsoDispCagNotifySink;

    PROCEDURE IsIMsoDispCagNotifySink* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0359-0000-0000-C000-000000000046}")
    END IsIMsoDispCagNotifySink;

    PROCEDURE ThisBalloon* (v: CtlT.Any): Balloon;
        VAR new: Balloon;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0324-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBalloon;

    PROCEDURE IsBalloon* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0324-0000-0000-C000-000000000046}")
    END IsBalloon;

    PROCEDURE ThisBalloonCheckboxes* (v: CtlT.Any): BalloonCheckboxes;
        VAR new: BalloonCheckboxes;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0326-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBalloonCheckboxes;

    PROCEDURE IsBalloonCheckboxes* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0326-0000-0000-C000-000000000046}")
    END IsBalloonCheckboxes;

    PROCEDURE ThisBalloonCheckbox* (v: CtlT.Any): BalloonCheckbox;
        VAR new: BalloonCheckbox;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0328-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBalloonCheckbox;

    PROCEDURE IsBalloonCheckbox* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0328-0000-0000-C000-000000000046}")
    END IsBalloonCheckbox;

    PROCEDURE ThisBalloonLabels* (v: CtlT.Any): BalloonLabels;
        VAR new: BalloonLabels;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C032E-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBalloonLabels;

    PROCEDURE IsBalloonLabels* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C032E-0000-0000-C000-000000000046}")
    END IsBalloonLabels;

    PROCEDURE ThisBalloonLabel* (v: CtlT.Any): BalloonLabel;
        VAR new: BalloonLabel;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0330-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisBalloonLabel;

    PROCEDURE IsBalloonLabel* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0330-0000-0000-C000-000000000046}")
    END IsBalloonLabel;

    PROCEDURE ThisAnswerWizardFiles* (v: CtlT.Any): AnswerWizardFiles;
        VAR new: AnswerWizardFiles;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0361-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAnswerWizardFiles;

    PROCEDURE IsAnswerWizardFiles* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0361-0000-0000-C000-000000000046}")
    END IsAnswerWizardFiles;

    PROCEDURE ThisAnswerWizard* (v: CtlT.Any): AnswerWizard;
        VAR new: AnswerWizard;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0360-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAnswerWizard;

    PROCEDURE IsAnswerWizard* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0360-0000-0000-C000-000000000046}")
    END IsAnswerWizard;

    PROCEDURE ThisAssistant* (v: CtlT.Any): Assistant;
        VAR new: Assistant;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0322-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisAssistant;

    PROCEDURE IsAssistant* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0322-0000-0000-C000-000000000046}")
    END IsAssistant;

    PROCEDURE ThisIFoundFiles* (v: CtlT.Any): IFoundFiles;
        VAR new: IFoundFiles;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0338-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIFoundFiles;

    PROCEDURE IsIFoundFiles* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0338-0000-0000-C000-000000000046}")
    END IsIFoundFiles;

    PROCEDURE ThisIFind* (v: CtlT.Any): IFind;
        VAR new: IFind;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0337-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisIFind;

    PROCEDURE IsIFind* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0337-0000-0000-C000-000000000046}")
    END IsIFind;

    PROCEDURE ThisFoundFiles* (v: CtlT.Any): FoundFiles;
        VAR new: FoundFiles;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0331-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFoundFiles;

    PROCEDURE IsFoundFiles* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0331-0000-0000-C000-000000000046}")
    END IsFoundFiles;

    PROCEDURE ThisPropertyTest* (v: CtlT.Any): PropertyTest;
        VAR new: PropertyTest;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0333-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPropertyTest;

    PROCEDURE IsPropertyTest* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0333-0000-0000-C000-000000000046}")
    END IsPropertyTest;

    PROCEDURE ThisPropertyTests* (v: CtlT.Any): PropertyTests;
        VAR new: PropertyTests;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0334-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisPropertyTests;

    PROCEDURE IsPropertyTests* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0334-0000-0000-C000-000000000046}")
    END IsPropertyTests;

    PROCEDURE ThisFileSearch* (v: CtlT.Any): FileSearch;
        VAR new: FileSearch;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0332-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisFileSearch;

    PROCEDURE IsFileSearch* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0332-0000-0000-C000-000000000046}")
    END IsFileSearch;

    PROCEDURE ThisCOMAddIn* (v: CtlT.Any): COMAddIn;
        VAR new: COMAddIn;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C033A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCOMAddIn;

    PROCEDURE IsCOMAddIn* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C033A-0000-0000-C000-000000000046}")
    END IsCOMAddIn;

    PROCEDURE ThisCOMAddIns* (v: CtlT.Any): COMAddIns;
        VAR new: COMAddIns;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0339-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisCOMAddIns;

    PROCEDURE IsCOMAddIns* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0339-0000-0000-C000-000000000046}")
    END IsCOMAddIns;

    PROCEDURE ThisLanguageSettings* (v: CtlT.Any): LanguageSettings;
        VAR new: LanguageSettings;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0353-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisLanguageSettings;

    PROCEDURE IsLanguageSettings* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0353-0000-0000-C000-000000000046}")
    END IsLanguageSettings;

    PROCEDURE ThisICommandBarsEvents* (v: CtlT.Any): ICommandBarsEvents;
        VAR new: ICommandBarsEvents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{55F88892-7708-11D1-ACEB-006008961DA5}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisICommandBarsEvents;

    PROCEDURE IsICommandBarsEvents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{55F88892-7708-11D1-ACEB-006008961DA5}")
    END IsICommandBarsEvents;

    PROCEDURE ThisICommandBarComboBoxEvents* (v: CtlT.Any): ICommandBarComboBoxEvents;
        VAR new: ICommandBarComboBoxEvents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{55F88896-7708-11D1-ACEB-006008961DA5}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisICommandBarComboBoxEvents;

    PROCEDURE IsICommandBarComboBoxEvents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{55F88896-7708-11D1-ACEB-006008961DA5}")
    END IsICommandBarComboBoxEvents;

    PROCEDURE ThisICommandBarButtonEvents* (v: CtlT.Any): ICommandBarButtonEvents;
        VAR new: ICommandBarButtonEvents;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{55F88890-7708-11D1-ACEB-006008961DA5}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisICommandBarButtonEvents;

    PROCEDURE IsICommandBarButtonEvents* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{55F88890-7708-11D1-ACEB-006008961DA5}")
    END IsICommandBarButtonEvents;

    PROCEDURE ThisWebPageFont* (v: CtlT.Any): WebPageFont;
        VAR new: WebPageFont;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0913-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisWebPageFont;

    PROCEDURE IsWebPageFont* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0913-0000-0000-C000-000000000046}")
    END IsWebPageFont;

    PROCEDURE ThisWebPageFonts* (v: CtlT.Any): WebPageFonts;
        VAR new: WebPageFonts;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0914-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisWebPageFonts;

    PROCEDURE IsWebPageFonts* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0914-0000-0000-C000-000000000046}")
    END IsWebPageFonts;

    PROCEDURE ThisHTMLProjectItem* (v: CtlT.Any): HTMLProjectItem;
        VAR new: HTMLProjectItem;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0358-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHTMLProjectItem;

    PROCEDURE IsHTMLProjectItem* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0358-0000-0000-C000-000000000046}")
    END IsHTMLProjectItem;

    PROCEDURE ThisHTMLProjectItems* (v: CtlT.Any): HTMLProjectItems;
        VAR new: HTMLProjectItems;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0357-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHTMLProjectItems;

    PROCEDURE IsHTMLProjectItems* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0357-0000-0000-C000-000000000046}")
    END IsHTMLProjectItems;

    PROCEDURE ThisHTMLProject* (v: CtlT.Any): HTMLProject;
        VAR new: HTMLProject;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C0356-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisHTMLProject;

    PROCEDURE IsHTMLProject* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C0356-0000-0000-C000-000000000046}")
    END IsHTMLProject;

    PROCEDURE ThisMsoDebugOptions* (v: CtlT.Any): MsoDebugOptions;
        VAR new: MsoDebugOptions;
    BEGIN
        IF v # NIL THEN
            NEW(new); CtlC.InitObj(new, v, "{000C035A-0000-0000-C000-000000000046}"); RETURN new
        ELSE RETURN NIL
        END
    END ThisMsoDebugOptions;

    PROCEDURE IsMsoDebugOptions* (v: CtlT.Any): BOOLEAN;
    BEGIN
        RETURN CtlC.IsObj(v, "{000C035A-0000-0000-C000-000000000046}")
    END IsMsoDebugOptions;



    (* ---------- IAccessible, hidden, dual ---------- *)

    PROCEDURE (this: IAccessible) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: IAccessible) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: IAccessible) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: IAccessible) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: IAccessible) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: IAccessible) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: IAccessible) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: IAccessible) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: IAccessible) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: IAccessible) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: IAccessible) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: IAccessible) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: IAccessible) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: IAccessible) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: IAccessible) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: IAccessible) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: IAccessible) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: IAccessible) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: IAccessible) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: IAccessible) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: IAccessible) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;


    (* ---------- _IMsoDispObj, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _IMsoDispObj) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: _IMsoDispObj) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;


    (* ---------- _IMsoOleAccDispObj, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _IMsoOleAccDispObj) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: _IMsoOleAccDispObj) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: _IMsoOleAccDispObj) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: _IMsoOleAccDispObj) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: _IMsoOleAccDispObj) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: _IMsoOleAccDispObj) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: _IMsoOleAccDispObj) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: _IMsoOleAccDispObj) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: _IMsoOleAccDispObj) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: _IMsoOleAccDispObj) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: _IMsoOleAccDispObj) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: _IMsoOleAccDispObj) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: _IMsoOleAccDispObj) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: _IMsoOleAccDispObj) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: _IMsoOleAccDispObj) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: _IMsoOleAccDispObj) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: _IMsoOleAccDispObj) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: _IMsoOleAccDispObj) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: _IMsoOleAccDispObj) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: _IMsoOleAccDispObj) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: _IMsoOleAccDispObj) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;

    PROCEDURE (this: _IMsoOleAccDispObj) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Application;

    PROCEDURE (this: _IMsoOleAccDispObj) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Creator;


    (* ---------- _CommandBars, dual, nonextensible ---------- *)

    PROCEDURE (this: _CommandBars) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: _CommandBars) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: _CommandBars) ActionControl* (): CommandBarControl, NEW;
    BEGIN
        RETURN ThisCommandBarControl(CtlC.GetAny(this, 1610809344))
    END ActionControl;

    PROCEDURE (this: _CommandBars) ActiveMenuBar* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610809345))
    END ActiveMenuBar;

    PROCEDURE (this: _CommandBars) Add* ((* optional *) Name: CtlT.Any; Position: CtlT.Any; MenuBar: CtlT.Any; Temporary: CtlT.Any): CommandBar, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Name, arg[3]);
        CtlC.AnyVar(Position, arg[2]);
        CtlC.AnyVar(MenuBar, arg[1]);
        CtlC.AnyVar(Temporary, arg[0]);
        CtlC.CallParMethod(this, 1610809346, arg, ret);
        RETURN ThisCommandBar(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: _CommandBars) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809347)
    END Count;

    PROCEDURE (this: _CommandBars) DisplayTooltips* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809348)
    END DisplayTooltips;

    PROCEDURE (this: _CommandBars) PUTDisplayTooltips* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809348, p1)
    END PUTDisplayTooltips;

    PROCEDURE (this: _CommandBars) DisplayKeysInTooltips* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809350)
    END DisplayKeysInTooltips;

    PROCEDURE (this: _CommandBars) PUTDisplayKeysInTooltips* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809350, p1)
    END PUTDisplayKeysInTooltips;

    PROCEDURE (this: _CommandBars) FindControl* ((* optional *) Type: CtlT.Any; Id: CtlT.Any; Tag: CtlT.Any; Visible: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[3]);
        CtlC.AnyVar(Id, arg[2]);
        CtlC.AnyVar(Tag, arg[1]);
        CtlC.AnyVar(Visible, arg[0]);
        CtlC.CallParMethod(this, 1610809352, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END FindControl;

    PROCEDURE (this: _CommandBars) Item* (Index: CtlT.Any): CommandBar, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisCommandBar(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: _CommandBars) LargeButtons* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809354)
    END LargeButtons;

    PROCEDURE (this: _CommandBars) PUTLargeButtons* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809354, p1)
    END PUTLargeButtons;

    PROCEDURE (this: _CommandBars) MenuAnimationStyle* (): MsoMenuAnimation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809356)
    END MenuAnimationStyle;

    PROCEDURE (this: _CommandBars) PUTMenuAnimationStyle* (p1: MsoMenuAnimation), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809356, p1)
    END PUTMenuAnimationStyle;

    PROCEDURE (this: _CommandBars) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: _CommandBars) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809359)
    END Parent;

    PROCEDURE (this: _CommandBars) ReleaseFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809360, NIL);
    END ReleaseFocus;

    PROCEDURE (this: _CommandBars) IdsString* (ids: INTEGER; OUT pbstrName: CtlT.Strg): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pbstrName_TEMP: CtlT.Variant;
    BEGIN
        CtlC.IntVar(ids, arg[1]);
        CtlC.RefStrVar(pbstrName_TEMP, arg[0]);
        CtlC.CallGetMethod(this, 1610809361, arg, ret);
        pbstrName := CtlC.VarStr(pbstrName_TEMP);
        RETURN CtlC.VarInt(ret)
    END IdsString;

    PROCEDURE (this: _CommandBars) TmcGetName* (tmc: INTEGER; OUT pbstrName: CtlT.Strg): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pbstrName_TEMP: CtlT.Variant;
    BEGIN
        CtlC.IntVar(tmc, arg[1]);
        CtlC.RefStrVar(pbstrName_TEMP, arg[0]);
        CtlC.CallGetMethod(this, 1610809362, arg, ret);
        pbstrName := CtlC.VarStr(pbstrName_TEMP);
        RETURN CtlC.VarInt(ret)
    END TmcGetName;

    PROCEDURE (this: _CommandBars) AdaptiveMenus* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809363)
    END AdaptiveMenus;

    PROCEDURE (this: _CommandBars) PUTAdaptiveMenus* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809363, p1)
    END PUTAdaptiveMenus;

    PROCEDURE (this: _CommandBars) FindControls* ((* optional *) Type: CtlT.Any; Id: CtlT.Any; Tag: CtlT.Any; Visible: CtlT.Any): CommandBarControls, NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[3]);
        CtlC.AnyVar(Id, arg[2]);
        CtlC.AnyVar(Tag, arg[1]);
        CtlC.AnyVar(Visible, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, ret);
        RETURN ThisCommandBarControls(CtlC.VarAny(ret))
    END FindControls;

    PROCEDURE (this: _CommandBars) AddEx* ((* optional *) TbidOrName: CtlT.Any; Position: CtlT.Any; MenuBar: CtlT.Any; Temporary: CtlT.Any; TbtrProtection: CtlT.Any): CommandBar, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(TbidOrName, arg[4]);
        CtlC.AnyVar(Position, arg[3]);
        CtlC.AnyVar(MenuBar, arg[2]);
        CtlC.AnyVar(Temporary, arg[1]);
        CtlC.AnyVar(TbtrProtection, arg[0]);
        CtlC.CallParMethod(this, 1610809366, arg, ret);
        RETURN ThisCommandBar(CtlC.VarAny(ret))
    END AddEx;

    PROCEDURE (this: _CommandBars) DisplayFonts* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809367)
    END DisplayFonts;

    PROCEDURE (this: _CommandBars) PUTDisplayFonts* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809367, p1)
    END PUTDisplayFonts;


    (* ---------- CommandBar, dual, nonextensible ---------- *)

    PROCEDURE (this: CommandBar) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: CommandBar) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: CommandBar) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: CommandBar) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: CommandBar) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: CommandBar) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: CommandBar) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: CommandBar) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: CommandBar) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: CommandBar) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: CommandBar) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: CommandBar) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: CommandBar) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: CommandBar) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: CommandBar) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: CommandBar) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: CommandBar) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: CommandBar) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: CommandBar) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: CommandBar) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: CommandBar) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;

    PROCEDURE (this: CommandBar) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Application;

    PROCEDURE (this: CommandBar) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Creator;

    PROCEDURE (this: CommandBar) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874880)
    END BuiltIn;

    PROCEDURE (this: CommandBar) Context* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874881)
    END Context;

    PROCEDURE (this: CommandBar) PUTContext* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874881, p1)
    END PUTContext;

    PROCEDURE (this: CommandBar) Controls* (): CommandBarControls, NEW;
    BEGIN
        RETURN ThisCommandBarControls(CtlC.GetAny(this, 1610874883))
    END Controls;

    PROCEDURE (this: CommandBar) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874884, NIL);
    END Delete;

    PROCEDURE (this: CommandBar) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874885)
    END Enabled;

    PROCEDURE (this: CommandBar) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874885, p1)
    END PUTEnabled;

    PROCEDURE (this: CommandBar) FindControl* ((* optional *) Type: CtlT.Any; Id: CtlT.Any; Tag: CtlT.Any; Visible: CtlT.Any; Recursive: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[4]);
        CtlC.AnyVar(Id, arg[3]);
        CtlC.AnyVar(Tag, arg[2]);
        CtlC.AnyVar(Visible, arg[1]);
        CtlC.AnyVar(Recursive, arg[0]);
        CtlC.CallParMethod(this, 1610874887, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END FindControl;

    PROCEDURE (this: CommandBar) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874888)
    END Height;

    PROCEDURE (this: CommandBar) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874888, p1)
    END PUTHeight;

    PROCEDURE (this: CommandBar) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874890)
    END Index;

    PROCEDURE (this: CommandBar) InstanceId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874891)
    END InstanceId;

    PROCEDURE (this: CommandBar) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874892)
    END Left;

    PROCEDURE (this: CommandBar) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874892, p1)
    END PUTLeft;

    PROCEDURE (this: CommandBar) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874894)
    END Name;

    PROCEDURE (this: CommandBar) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874894, p1)
    END PUTName;

    PROCEDURE (this: CommandBar) NameLocal* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874896)
    END NameLocal;

    PROCEDURE (this: CommandBar) PUTNameLocal* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874896, p1)
    END PUTNameLocal;

    PROCEDURE (this: CommandBar) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610874898)
    END Parent;

    PROCEDURE (this: CommandBar) Position* (): MsoBarPosition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874899)
    END Position;

    PROCEDURE (this: CommandBar) PUTPosition* (p1: MsoBarPosition), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874899, p1)
    END PUTPosition;

    PROCEDURE (this: CommandBar) RowIndex* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874901)
    END RowIndex;

    PROCEDURE (this: CommandBar) PUTRowIndex* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874901, p1)
    END PUTRowIndex;

    PROCEDURE (this: CommandBar) Protection* (): MsoBarProtection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874903)
    END Protection;

    PROCEDURE (this: CommandBar) PUTProtection* (p1: MsoBarProtection), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874903, p1)
    END PUTProtection;

    PROCEDURE (this: CommandBar) Reset* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874905, NIL);
    END Reset;

    PROCEDURE (this: CommandBar) ShowPopup* ((* optional *) x: CtlT.Any; y: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(x, arg[1]);
        CtlC.AnyVar(y, arg[0]);
        CtlC.CallParMethod(this, 1610874906, arg, NIL);
    END ShowPopup;

    PROCEDURE (this: CommandBar) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874907)
    END Top;

    PROCEDURE (this: CommandBar) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874907, p1)
    END PUTTop;

    PROCEDURE (this: CommandBar) Type* (): MsoBarType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874909)
    END Type;

    PROCEDURE (this: CommandBar) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874910)
    END Visible;

    PROCEDURE (this: CommandBar) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874910, p1)
    END PUTVisible;

    PROCEDURE (this: CommandBar) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874912)
    END Width;

    PROCEDURE (this: CommandBar) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874912, p1)
    END PUTWidth;

    PROCEDURE (this: CommandBar) AdaptiveMenu* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874914)
    END AdaptiveMenu;

    PROCEDURE (this: CommandBar) PUTAdaptiveMenu* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874914, p1)
    END PUTAdaptiveMenu;


    (* ---------- CommandBarControls, dual, nonextensible ---------- *)

    PROCEDURE (this: CommandBarControls) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: CommandBarControls) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: CommandBarControls) Add* ((* optional *) Type: CtlT.Any; Id: CtlT.Any; Parameter: CtlT.Any; Before: CtlT.Any; Temporary: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Type, arg[4]);
        CtlC.AnyVar(Id, arg[3]);
        CtlC.AnyVar(Parameter, arg[2]);
        CtlC.AnyVar(Before, arg[1]);
        CtlC.AnyVar(Temporary, arg[0]);
        CtlC.CallParMethod(this, 1610809344, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: CommandBarControls) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Count;

    PROCEDURE (this: CommandBarControls) Item* (Index: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: CommandBarControls) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: CommandBarControls) Parent* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610809348))
    END Parent;


    (* ---------- CommandBarControl, dual ---------- *)

    PROCEDURE (this: CommandBarControl) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: CommandBarControl) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: CommandBarControl) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: CommandBarControl) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: CommandBarControl) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: CommandBarControl) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: CommandBarControl) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: CommandBarControl) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: CommandBarControl) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: CommandBarControl) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: CommandBarControl) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: CommandBarControl) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: CommandBarControl) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: CommandBarControl) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: CommandBarControl) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: CommandBarControl) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: CommandBarControl) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: CommandBarControl) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: CommandBarControl) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: CommandBarControl) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: CommandBarControl) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;

    PROCEDURE (this: CommandBarControl) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Application;

    PROCEDURE (this: CommandBarControl) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Creator;

    PROCEDURE (this: CommandBarControl) BeginGroup* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874880)
    END BeginGroup;

    PROCEDURE (this: CommandBarControl) PUTBeginGroup* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874880, p1)
    END PUTBeginGroup;

    PROCEDURE (this: CommandBarControl) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874882)
    END BuiltIn;

    PROCEDURE (this: CommandBarControl) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874883)
    END Caption;

    PROCEDURE (this: CommandBarControl) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874883, p1)
    END PUTCaption;

    PROCEDURE (this: CommandBarControl) Control* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610874885)
    END Control;

    PROCEDURE (this: CommandBarControl) Copy* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874886, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Copy;

    PROCEDURE (this: CommandBarControl) Delete* ((* optional *) Temporary: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Temporary, arg[0]);
        CtlC.CallParMethod(this, 1610874887, arg, NIL);
    END Delete;

    PROCEDURE (this: CommandBarControl) DescriptionText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874888)
    END DescriptionText;

    PROCEDURE (this: CommandBarControl) PUTDescriptionText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874888, p1)
    END PUTDescriptionText;

    PROCEDURE (this: CommandBarControl) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874890)
    END Enabled;

    PROCEDURE (this: CommandBarControl) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874890, p1)
    END PUTEnabled;

    PROCEDURE (this: CommandBarControl) Execute* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874892, NIL);
    END Execute;

    PROCEDURE (this: CommandBarControl) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874893)
    END Height;

    PROCEDURE (this: CommandBarControl) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874893, p1)
    END PUTHeight;

    PROCEDURE (this: CommandBarControl) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874895)
    END HelpContextId;

    PROCEDURE (this: CommandBarControl) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874895, p1)
    END PUTHelpContextId;

    PROCEDURE (this: CommandBarControl) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874897)
    END HelpFile;

    PROCEDURE (this: CommandBarControl) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874897, p1)
    END PUTHelpFile;

    PROCEDURE (this: CommandBarControl) Id* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874899)
    END Id;

    PROCEDURE (this: CommandBarControl) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874900)
    END Index;

    PROCEDURE (this: CommandBarControl) InstanceId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874901)
    END InstanceId;

    PROCEDURE (this: CommandBarControl) Move* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874902, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Move;

    PROCEDURE (this: CommandBarControl) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874903)
    END Left;

    PROCEDURE (this: CommandBarControl) OLEUsage* (): MsoControlOLEUsage, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874904)
    END OLEUsage;

    PROCEDURE (this: CommandBarControl) PUTOLEUsage* (p1: MsoControlOLEUsage), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874904, p1)
    END PUTOLEUsage;

    PROCEDURE (this: CommandBarControl) OnAction* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874906)
    END OnAction;

    PROCEDURE (this: CommandBarControl) PUTOnAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874906, p1)
    END PUTOnAction;

    PROCEDURE (this: CommandBarControl) Parent* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610874908))
    END Parent;

    PROCEDURE (this: CommandBarControl) Parameter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874909)
    END Parameter;

    PROCEDURE (this: CommandBarControl) PUTParameter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874909, p1)
    END PUTParameter;

    PROCEDURE (this: CommandBarControl) Priority* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874911)
    END Priority;

    PROCEDURE (this: CommandBarControl) PUTPriority* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874911, p1)
    END PUTPriority;

    PROCEDURE (this: CommandBarControl) Reset* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874913, NIL);
    END Reset;

    PROCEDURE (this: CommandBarControl) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874914, NIL);
    END SetFocus;

    PROCEDURE (this: CommandBarControl) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874915)
    END Tag;

    PROCEDURE (this: CommandBarControl) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874915, p1)
    END PUTTag;

    PROCEDURE (this: CommandBarControl) TooltipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874917)
    END TooltipText;

    PROCEDURE (this: CommandBarControl) PUTTooltipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874917, p1)
    END PUTTooltipText;

    PROCEDURE (this: CommandBarControl) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874919)
    END Top;

    PROCEDURE (this: CommandBarControl) Type* (): MsoControlType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874920)
    END Type;

    PROCEDURE (this: CommandBarControl) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874921)
    END Visible;

    PROCEDURE (this: CommandBarControl) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874921, p1)
    END PUTVisible;

    PROCEDURE (this: CommandBarControl) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874923)
    END Width;

    PROCEDURE (this: CommandBarControl) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874923, p1)
    END PUTWidth;

    PROCEDURE (this: CommandBarControl) IsPriorityDropped* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874925)
    END IsPriorityDropped;

    PROCEDURE (this: CommandBarControl) Reserved1* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874926, NIL);
    END Reserved1;

    PROCEDURE (this: CommandBarControl) Reserved2* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874927, NIL);
    END Reserved2;

    PROCEDURE (this: CommandBarControl) Reserved3* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874928, NIL);
    END Reserved3;

    PROCEDURE (this: CommandBarControl) Reserved4* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874929, NIL);
    END Reserved4;

    PROCEDURE (this: CommandBarControl) Reserved5* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874930, NIL);
    END Reserved5;

    PROCEDURE (this: CommandBarControl) Reserved6* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874931, NIL);
    END Reserved6;

    PROCEDURE (this: CommandBarControl) Reserved7* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874932, NIL);
    END Reserved7;


    (* ---------- _CommandBarButton, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: _CommandBarButton) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: _CommandBarButton) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: _CommandBarButton) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: _CommandBarButton) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: _CommandBarButton) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: _CommandBarButton) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: _CommandBarButton) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: _CommandBarButton) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: _CommandBarButton) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: _CommandBarButton) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: _CommandBarButton) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: _CommandBarButton) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: _CommandBarButton) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: _CommandBarButton) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: _CommandBarButton) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: _CommandBarButton) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: _CommandBarButton) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: _CommandBarButton) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: _CommandBarButton) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: _CommandBarButton) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: _CommandBarButton) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;

    PROCEDURE (this: _CommandBarButton) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Application;

    PROCEDURE (this: _CommandBarButton) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Creator;

    PROCEDURE (this: _CommandBarButton) BeginGroup* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874880)
    END BeginGroup;

    PROCEDURE (this: _CommandBarButton) PUTBeginGroup* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874880, p1)
    END PUTBeginGroup;

    PROCEDURE (this: _CommandBarButton) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874882)
    END BuiltIn;

    PROCEDURE (this: _CommandBarButton) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874883)
    END Caption;

    PROCEDURE (this: _CommandBarButton) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874883, p1)
    END PUTCaption;

    PROCEDURE (this: _CommandBarButton) Control* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610874885)
    END Control;

    PROCEDURE (this: _CommandBarButton) Copy* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874886, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Copy;

    PROCEDURE (this: _CommandBarButton) Delete* ((* optional *) Temporary: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Temporary, arg[0]);
        CtlC.CallParMethod(this, 1610874887, arg, NIL);
    END Delete;

    PROCEDURE (this: _CommandBarButton) DescriptionText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874888)
    END DescriptionText;

    PROCEDURE (this: _CommandBarButton) PUTDescriptionText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874888, p1)
    END PUTDescriptionText;

    PROCEDURE (this: _CommandBarButton) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874890)
    END Enabled;

    PROCEDURE (this: _CommandBarButton) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874890, p1)
    END PUTEnabled;

    PROCEDURE (this: _CommandBarButton) Execute* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874892, NIL);
    END Execute;

    PROCEDURE (this: _CommandBarButton) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874893)
    END Height;

    PROCEDURE (this: _CommandBarButton) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874893, p1)
    END PUTHeight;

    PROCEDURE (this: _CommandBarButton) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874895)
    END HelpContextId;

    PROCEDURE (this: _CommandBarButton) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874895, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _CommandBarButton) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874897)
    END HelpFile;

    PROCEDURE (this: _CommandBarButton) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874897, p1)
    END PUTHelpFile;

    PROCEDURE (this: _CommandBarButton) Id* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874899)
    END Id;

    PROCEDURE (this: _CommandBarButton) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874900)
    END Index;

    PROCEDURE (this: _CommandBarButton) InstanceId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874901)
    END InstanceId;

    PROCEDURE (this: _CommandBarButton) Move* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874902, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Move;

    PROCEDURE (this: _CommandBarButton) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874903)
    END Left;

    PROCEDURE (this: _CommandBarButton) OLEUsage* (): MsoControlOLEUsage, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874904)
    END OLEUsage;

    PROCEDURE (this: _CommandBarButton) PUTOLEUsage* (p1: MsoControlOLEUsage), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874904, p1)
    END PUTOLEUsage;

    PROCEDURE (this: _CommandBarButton) OnAction* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874906)
    END OnAction;

    PROCEDURE (this: _CommandBarButton) PUTOnAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874906, p1)
    END PUTOnAction;

    PROCEDURE (this: _CommandBarButton) Parent* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610874908))
    END Parent;

    PROCEDURE (this: _CommandBarButton) Parameter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874909)
    END Parameter;

    PROCEDURE (this: _CommandBarButton) PUTParameter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874909, p1)
    END PUTParameter;

    PROCEDURE (this: _CommandBarButton) Priority* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874911)
    END Priority;

    PROCEDURE (this: _CommandBarButton) PUTPriority* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874911, p1)
    END PUTPriority;

    PROCEDURE (this: _CommandBarButton) Reset* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874913, NIL);
    END Reset;

    PROCEDURE (this: _CommandBarButton) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874914, NIL);
    END SetFocus;

    PROCEDURE (this: _CommandBarButton) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874915)
    END Tag;

    PROCEDURE (this: _CommandBarButton) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874915, p1)
    END PUTTag;

    PROCEDURE (this: _CommandBarButton) TooltipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874917)
    END TooltipText;

    PROCEDURE (this: _CommandBarButton) PUTTooltipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874917, p1)
    END PUTTooltipText;

    PROCEDURE (this: _CommandBarButton) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874919)
    END Top;

    PROCEDURE (this: _CommandBarButton) Type* (): MsoControlType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874920)
    END Type;

    PROCEDURE (this: _CommandBarButton) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874921)
    END Visible;

    PROCEDURE (this: _CommandBarButton) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874921, p1)
    END PUTVisible;

    PROCEDURE (this: _CommandBarButton) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874923)
    END Width;

    PROCEDURE (this: _CommandBarButton) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874923, p1)
    END PUTWidth;

    PROCEDURE (this: _CommandBarButton) IsPriorityDropped* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874925)
    END IsPriorityDropped;

    PROCEDURE (this: _CommandBarButton) Reserved1* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874926, NIL);
    END Reserved1;

    PROCEDURE (this: _CommandBarButton) Reserved2* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874927, NIL);
    END Reserved2;

    PROCEDURE (this: _CommandBarButton) Reserved3* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874928, NIL);
    END Reserved3;

    PROCEDURE (this: _CommandBarButton) Reserved4* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874929, NIL);
    END Reserved4;

    PROCEDURE (this: _CommandBarButton) Reserved5* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874930, NIL);
    END Reserved5;

    PROCEDURE (this: _CommandBarButton) Reserved6* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874931, NIL);
    END Reserved6;

    PROCEDURE (this: _CommandBarButton) Reserved7* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874932, NIL);
    END Reserved7;

    PROCEDURE (this: _CommandBarButton) BuiltInFace* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610940416)
    END BuiltInFace;

    PROCEDURE (this: _CommandBarButton) PUTBuiltInFace* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610940416, p1)
    END PUTBuiltInFace;

    PROCEDURE (this: _CommandBarButton) CopyFace* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610940418, NIL);
    END CopyFace;

    PROCEDURE (this: _CommandBarButton) FaceId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940419)
    END FaceId;

    PROCEDURE (this: _CommandBarButton) PUTFaceId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940419, p1)
    END PUTFaceId;

    PROCEDURE (this: _CommandBarButton) PasteFace* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610940421, NIL);
    END PasteFace;

    PROCEDURE (this: _CommandBarButton) ShortcutText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610940422)
    END ShortcutText;

    PROCEDURE (this: _CommandBarButton) PUTShortcutText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610940422, p1)
    END PUTShortcutText;

    PROCEDURE (this: _CommandBarButton) State* (): MsoButtonState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940424)
    END State;

    PROCEDURE (this: _CommandBarButton) PUTState* (p1: MsoButtonState), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940424, p1)
    END PUTState;

    PROCEDURE (this: _CommandBarButton) Style* (): MsoButtonStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940426)
    END Style;

    PROCEDURE (this: _CommandBarButton) PUTStyle* (p1: MsoButtonStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940426, p1)
    END PUTStyle;

    PROCEDURE (this: _CommandBarButton) HyperlinkType* (): MsoCommandBarButtonHyperlinkType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940428)
    END HyperlinkType;

    PROCEDURE (this: _CommandBarButton) PUTHyperlinkType* (p1: MsoCommandBarButtonHyperlinkType), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940428, p1)
    END PUTHyperlinkType;


    (* ---------- CommandBarPopup, dual, nonextensible ---------- *)

    PROCEDURE (this: CommandBarPopup) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: CommandBarPopup) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: CommandBarPopup) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: CommandBarPopup) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: CommandBarPopup) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: CommandBarPopup) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: CommandBarPopup) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: CommandBarPopup) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: CommandBarPopup) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: CommandBarPopup) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: CommandBarPopup) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: CommandBarPopup) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: CommandBarPopup) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: CommandBarPopup) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: CommandBarPopup) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: CommandBarPopup) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: CommandBarPopup) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: CommandBarPopup) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: CommandBarPopup) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: CommandBarPopup) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: CommandBarPopup) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;

    PROCEDURE (this: CommandBarPopup) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Application;

    PROCEDURE (this: CommandBarPopup) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Creator;

    PROCEDURE (this: CommandBarPopup) BeginGroup* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874880)
    END BeginGroup;

    PROCEDURE (this: CommandBarPopup) PUTBeginGroup* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874880, p1)
    END PUTBeginGroup;

    PROCEDURE (this: CommandBarPopup) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874882)
    END BuiltIn;

    PROCEDURE (this: CommandBarPopup) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874883)
    END Caption;

    PROCEDURE (this: CommandBarPopup) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874883, p1)
    END PUTCaption;

    PROCEDURE (this: CommandBarPopup) Control* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610874885)
    END Control;

    PROCEDURE (this: CommandBarPopup) Copy* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874886, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Copy;

    PROCEDURE (this: CommandBarPopup) Delete* ((* optional *) Temporary: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Temporary, arg[0]);
        CtlC.CallParMethod(this, 1610874887, arg, NIL);
    END Delete;

    PROCEDURE (this: CommandBarPopup) DescriptionText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874888)
    END DescriptionText;

    PROCEDURE (this: CommandBarPopup) PUTDescriptionText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874888, p1)
    END PUTDescriptionText;

    PROCEDURE (this: CommandBarPopup) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874890)
    END Enabled;

    PROCEDURE (this: CommandBarPopup) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874890, p1)
    END PUTEnabled;

    PROCEDURE (this: CommandBarPopup) Execute* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874892, NIL);
    END Execute;

    PROCEDURE (this: CommandBarPopup) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874893)
    END Height;

    PROCEDURE (this: CommandBarPopup) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874893, p1)
    END PUTHeight;

    PROCEDURE (this: CommandBarPopup) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874895)
    END HelpContextId;

    PROCEDURE (this: CommandBarPopup) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874895, p1)
    END PUTHelpContextId;

    PROCEDURE (this: CommandBarPopup) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874897)
    END HelpFile;

    PROCEDURE (this: CommandBarPopup) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874897, p1)
    END PUTHelpFile;

    PROCEDURE (this: CommandBarPopup) Id* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874899)
    END Id;

    PROCEDURE (this: CommandBarPopup) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874900)
    END Index;

    PROCEDURE (this: CommandBarPopup) InstanceId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874901)
    END InstanceId;

    PROCEDURE (this: CommandBarPopup) Move* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874902, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Move;

    PROCEDURE (this: CommandBarPopup) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874903)
    END Left;

    PROCEDURE (this: CommandBarPopup) OLEUsage* (): MsoControlOLEUsage, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874904)
    END OLEUsage;

    PROCEDURE (this: CommandBarPopup) PUTOLEUsage* (p1: MsoControlOLEUsage), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874904, p1)
    END PUTOLEUsage;

    PROCEDURE (this: CommandBarPopup) OnAction* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874906)
    END OnAction;

    PROCEDURE (this: CommandBarPopup) PUTOnAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874906, p1)
    END PUTOnAction;

    PROCEDURE (this: CommandBarPopup) Parent* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610874908))
    END Parent;

    PROCEDURE (this: CommandBarPopup) Parameter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874909)
    END Parameter;

    PROCEDURE (this: CommandBarPopup) PUTParameter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874909, p1)
    END PUTParameter;

    PROCEDURE (this: CommandBarPopup) Priority* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874911)
    END Priority;

    PROCEDURE (this: CommandBarPopup) PUTPriority* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874911, p1)
    END PUTPriority;

    PROCEDURE (this: CommandBarPopup) Reset* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874913, NIL);
    END Reset;

    PROCEDURE (this: CommandBarPopup) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874914, NIL);
    END SetFocus;

    PROCEDURE (this: CommandBarPopup) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874915)
    END Tag;

    PROCEDURE (this: CommandBarPopup) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874915, p1)
    END PUTTag;

    PROCEDURE (this: CommandBarPopup) TooltipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874917)
    END TooltipText;

    PROCEDURE (this: CommandBarPopup) PUTTooltipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874917, p1)
    END PUTTooltipText;

    PROCEDURE (this: CommandBarPopup) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874919)
    END Top;

    PROCEDURE (this: CommandBarPopup) Type* (): MsoControlType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874920)
    END Type;

    PROCEDURE (this: CommandBarPopup) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874921)
    END Visible;

    PROCEDURE (this: CommandBarPopup) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874921, p1)
    END PUTVisible;

    PROCEDURE (this: CommandBarPopup) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874923)
    END Width;

    PROCEDURE (this: CommandBarPopup) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874923, p1)
    END PUTWidth;

    PROCEDURE (this: CommandBarPopup) IsPriorityDropped* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874925)
    END IsPriorityDropped;

    PROCEDURE (this: CommandBarPopup) Reserved1* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874926, NIL);
    END Reserved1;

    PROCEDURE (this: CommandBarPopup) Reserved2* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874927, NIL);
    END Reserved2;

    PROCEDURE (this: CommandBarPopup) Reserved3* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874928, NIL);
    END Reserved3;

    PROCEDURE (this: CommandBarPopup) Reserved4* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874929, NIL);
    END Reserved4;

    PROCEDURE (this: CommandBarPopup) Reserved5* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874930, NIL);
    END Reserved5;

    PROCEDURE (this: CommandBarPopup) Reserved6* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874931, NIL);
    END Reserved6;

    PROCEDURE (this: CommandBarPopup) Reserved7* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874932, NIL);
    END Reserved7;

    PROCEDURE (this: CommandBarPopup) CommandBar* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610940416))
    END CommandBar;

    PROCEDURE (this: CommandBarPopup) Controls* (): CommandBarControls, NEW;
    BEGIN
        RETURN ThisCommandBarControls(CtlC.GetAny(this, 1610940417))
    END Controls;

    PROCEDURE (this: CommandBarPopup) OLEMenuGroup* (): MsoOLEMenuGroup, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940418)
    END OLEMenuGroup;

    PROCEDURE (this: CommandBarPopup) PUTOLEMenuGroup* (p1: MsoOLEMenuGroup), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940418, p1)
    END PUTOLEMenuGroup;


    (* ---------- _CommandBarComboBox, dual, nonextensible ---------- *)

    PROCEDURE (this: _CommandBarComboBox) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: _CommandBarComboBox) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: _CommandBarComboBox) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: _CommandBarComboBox) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: _CommandBarComboBox) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: _CommandBarComboBox) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: _CommandBarComboBox) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: _CommandBarComboBox) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: _CommandBarComboBox) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: _CommandBarComboBox) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: _CommandBarComboBox) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: _CommandBarComboBox) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: _CommandBarComboBox) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: _CommandBarComboBox) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: _CommandBarComboBox) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: _CommandBarComboBox) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: _CommandBarComboBox) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: _CommandBarComboBox) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: _CommandBarComboBox) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: _CommandBarComboBox) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: _CommandBarComboBox) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;

    PROCEDURE (this: _CommandBarComboBox) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Application;

    PROCEDURE (this: _CommandBarComboBox) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Creator;

    PROCEDURE (this: _CommandBarComboBox) BeginGroup* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874880)
    END BeginGroup;

    PROCEDURE (this: _CommandBarComboBox) PUTBeginGroup* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874880, p1)
    END PUTBeginGroup;

    PROCEDURE (this: _CommandBarComboBox) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874882)
    END BuiltIn;

    PROCEDURE (this: _CommandBarComboBox) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874883)
    END Caption;

    PROCEDURE (this: _CommandBarComboBox) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874883, p1)
    END PUTCaption;

    PROCEDURE (this: _CommandBarComboBox) Control* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610874885)
    END Control;

    PROCEDURE (this: _CommandBarComboBox) Copy* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874886, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Copy;

    PROCEDURE (this: _CommandBarComboBox) Delete* ((* optional *) Temporary: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Temporary, arg[0]);
        CtlC.CallParMethod(this, 1610874887, arg, NIL);
    END Delete;

    PROCEDURE (this: _CommandBarComboBox) DescriptionText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874888)
    END DescriptionText;

    PROCEDURE (this: _CommandBarComboBox) PUTDescriptionText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874888, p1)
    END PUTDescriptionText;

    PROCEDURE (this: _CommandBarComboBox) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874890)
    END Enabled;

    PROCEDURE (this: _CommandBarComboBox) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874890, p1)
    END PUTEnabled;

    PROCEDURE (this: _CommandBarComboBox) Execute* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874892, NIL);
    END Execute;

    PROCEDURE (this: _CommandBarComboBox) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874893)
    END Height;

    PROCEDURE (this: _CommandBarComboBox) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874893, p1)
    END PUTHeight;

    PROCEDURE (this: _CommandBarComboBox) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874895)
    END HelpContextId;

    PROCEDURE (this: _CommandBarComboBox) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874895, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _CommandBarComboBox) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874897)
    END HelpFile;

    PROCEDURE (this: _CommandBarComboBox) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874897, p1)
    END PUTHelpFile;

    PROCEDURE (this: _CommandBarComboBox) Id* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874899)
    END Id;

    PROCEDURE (this: _CommandBarComboBox) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874900)
    END Index;

    PROCEDURE (this: _CommandBarComboBox) InstanceId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874901)
    END InstanceId;

    PROCEDURE (this: _CommandBarComboBox) Move* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874902, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Move;

    PROCEDURE (this: _CommandBarComboBox) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874903)
    END Left;

    PROCEDURE (this: _CommandBarComboBox) OLEUsage* (): MsoControlOLEUsage, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874904)
    END OLEUsage;

    PROCEDURE (this: _CommandBarComboBox) PUTOLEUsage* (p1: MsoControlOLEUsage), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874904, p1)
    END PUTOLEUsage;

    PROCEDURE (this: _CommandBarComboBox) OnAction* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874906)
    END OnAction;

    PROCEDURE (this: _CommandBarComboBox) PUTOnAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874906, p1)
    END PUTOnAction;

    PROCEDURE (this: _CommandBarComboBox) Parent* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610874908))
    END Parent;

    PROCEDURE (this: _CommandBarComboBox) Parameter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874909)
    END Parameter;

    PROCEDURE (this: _CommandBarComboBox) PUTParameter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874909, p1)
    END PUTParameter;

    PROCEDURE (this: _CommandBarComboBox) Priority* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874911)
    END Priority;

    PROCEDURE (this: _CommandBarComboBox) PUTPriority* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874911, p1)
    END PUTPriority;

    PROCEDURE (this: _CommandBarComboBox) Reset* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874913, NIL);
    END Reset;

    PROCEDURE (this: _CommandBarComboBox) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874914, NIL);
    END SetFocus;

    PROCEDURE (this: _CommandBarComboBox) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874915)
    END Tag;

    PROCEDURE (this: _CommandBarComboBox) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874915, p1)
    END PUTTag;

    PROCEDURE (this: _CommandBarComboBox) TooltipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874917)
    END TooltipText;

    PROCEDURE (this: _CommandBarComboBox) PUTTooltipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874917, p1)
    END PUTTooltipText;

    PROCEDURE (this: _CommandBarComboBox) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874919)
    END Top;

    PROCEDURE (this: _CommandBarComboBox) Type* (): MsoControlType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874920)
    END Type;

    PROCEDURE (this: _CommandBarComboBox) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874921)
    END Visible;

    PROCEDURE (this: _CommandBarComboBox) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874921, p1)
    END PUTVisible;

    PROCEDURE (this: _CommandBarComboBox) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874923)
    END Width;

    PROCEDURE (this: _CommandBarComboBox) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874923, p1)
    END PUTWidth;

    PROCEDURE (this: _CommandBarComboBox) IsPriorityDropped* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874925)
    END IsPriorityDropped;

    PROCEDURE (this: _CommandBarComboBox) Reserved1* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874926, NIL);
    END Reserved1;

    PROCEDURE (this: _CommandBarComboBox) Reserved2* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874927, NIL);
    END Reserved2;

    PROCEDURE (this: _CommandBarComboBox) Reserved3* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874928, NIL);
    END Reserved3;

    PROCEDURE (this: _CommandBarComboBox) Reserved4* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874929, NIL);
    END Reserved4;

    PROCEDURE (this: _CommandBarComboBox) Reserved5* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874930, NIL);
    END Reserved5;

    PROCEDURE (this: _CommandBarComboBox) Reserved6* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874931, NIL);
    END Reserved6;

    PROCEDURE (this: _CommandBarComboBox) Reserved7* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874932, NIL);
    END Reserved7;

    PROCEDURE (this: _CommandBarComboBox) AddItem* (Text: ARRAY OF CHAR; (* optional *) Index: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Text, arg[1]);
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 1610940416, arg, NIL);
    END AddItem;

    PROCEDURE (this: _CommandBarComboBox) Clear* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610940417, NIL);
    END Clear;

    PROCEDURE (this: _CommandBarComboBox) DropDownLines* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940418)
    END DropDownLines;

    PROCEDURE (this: _CommandBarComboBox) PUTDropDownLines* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940418, p1)
    END PUTDropDownLines;

    PROCEDURE (this: _CommandBarComboBox) DropDownWidth* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940420)
    END DropDownWidth;

    PROCEDURE (this: _CommandBarComboBox) PUTDropDownWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940420, p1)
    END PUTDropDownWidth;

    PROCEDURE (this: _CommandBarComboBox) List* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 1610940422, arg, ret);
        RETURN CtlC.VarStr(ret)
    END List;

    PROCEDURE (this: _CommandBarComboBox) PUTList* (Index: INTEGER; p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, 1610940422, arg, NIL);
    END PUTList;

    PROCEDURE (this: _CommandBarComboBox) ListCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940424)
    END ListCount;

    PROCEDURE (this: _CommandBarComboBox) ListHeaderCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940425)
    END ListHeaderCount;

    PROCEDURE (this: _CommandBarComboBox) PUTListHeaderCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940425, p1)
    END PUTListHeaderCount;

    PROCEDURE (this: _CommandBarComboBox) ListIndex* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940427)
    END ListIndex;

    PROCEDURE (this: _CommandBarComboBox) PUTListIndex* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940427, p1)
    END PUTListIndex;

    PROCEDURE (this: _CommandBarComboBox) RemoveItem* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 1610940429, arg, NIL);
    END RemoveItem;

    PROCEDURE (this: _CommandBarComboBox) Style* (): MsoComboStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610940430)
    END Style;

    PROCEDURE (this: _CommandBarComboBox) PUTStyle* (p1: MsoComboStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 1610940430, p1)
    END PUTStyle;

    PROCEDURE (this: _CommandBarComboBox) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610940432)
    END Text;

    PROCEDURE (this: _CommandBarComboBox) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610940432, p1)
    END PUTText;


    (* ---------- _CommandBarActiveX, dual, nonextensible ---------- *)

    PROCEDURE (this: _CommandBarActiveX) accParent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, -5000)
    END accParent;

    PROCEDURE (this: _CommandBarActiveX) accChildCount* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, -5001)
    END accChildCount;

    PROCEDURE (this: _CommandBarActiveX) accChild* (varChild: CtlT.Any): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5002, arg, ret);
        RETURN CtlC.VarObj(ret)
    END accChild;

    PROCEDURE (this: _CommandBarActiveX) accName* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5003, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accName;

    PROCEDURE (this: _CommandBarActiveX) accValue* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5004, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accValue;

    PROCEDURE (this: _CommandBarActiveX) accDescription* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5005, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDescription;

    PROCEDURE (this: _CommandBarActiveX) accRole* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5006, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accRole;

    PROCEDURE (this: _CommandBarActiveX) accState* ((* optional *) varChild: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5007, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accState;

    PROCEDURE (this: _CommandBarActiveX) accHelp* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5008, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accHelp;

    PROCEDURE (this: _CommandBarActiveX) accHelpTopic* (OUT pszHelpFile: CtlT.Strg; (* optional *) varChild: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant; pszHelpFile_TEMP: CtlT.Variant;
    BEGIN
        CtlC.RefStrVar(pszHelpFile_TEMP, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5009, arg, ret);
        pszHelpFile := CtlC.VarStr(pszHelpFile_TEMP);
        RETURN CtlC.VarInt(ret)
    END accHelpTopic;

    PROCEDURE (this: _CommandBarActiveX) accKeyboardShortcut* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5010, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accKeyboardShortcut;

    PROCEDURE (this: _CommandBarActiveX) accFocus* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5011)
    END accFocus;

    PROCEDURE (this: _CommandBarActiveX) accSelection* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, -5012)
    END accSelection;

    PROCEDURE (this: _CommandBarActiveX) accDefaultAction* ((* optional *) varChild: CtlT.Any): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallGetMethod(this, -5013, arg, ret);
        RETURN CtlC.VarStr(ret)
    END accDefaultAction;

    PROCEDURE (this: _CommandBarActiveX) accSelect* (flagsSelect: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(flagsSelect, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5014, arg, NIL);
    END accSelect;

    PROCEDURE (this: _CommandBarActiveX) accLocation* (OUT pxLeft: INTEGER; OUT pyTop: INTEGER; OUT pcxWidth: INTEGER; OUT pcyHeight: INTEGER; (* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.RefIntVar(pxLeft, arg[4]);
        CtlC.RefIntVar(pyTop, arg[3]);
        CtlC.RefIntVar(pcxWidth, arg[2]);
        CtlC.RefIntVar(pcyHeight, arg[1]);
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5015, arg, NIL);
    END accLocation;

    PROCEDURE (this: _CommandBarActiveX) accNavigate* (navDir: INTEGER; (* optional *) varStart: CtlT.Any): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(navDir, arg[1]);
        CtlC.AnyVar(varStart, arg[0]);
        CtlC.CallParMethod(this, -5016, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accNavigate;

    PROCEDURE (this: _CommandBarActiveX) accHitTest* (xLeft: INTEGER; yTop: INTEGER): CtlT.Any, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, -5017, arg, ret);
        RETURN CtlC.VarAny(ret)
    END accHitTest;

    PROCEDURE (this: _CommandBarActiveX) accDoDefaultAction* ((* optional *) varChild: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[0]);
        CtlC.CallParMethod(this, -5018, arg, NIL);
    END accDoDefaultAction;

    PROCEDURE (this: _CommandBarActiveX) PUTaccName* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5003, arg, NIL);
    END PUTaccName;

    PROCEDURE (this: _CommandBarActiveX) PUTaccValue* (varChild: CtlT.Any; (* optional *) p2: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(varChild, arg[1]);
        CtlC.StrVar(p2, arg[0]);
        CtlC.CallPutMethod(this, -5004, arg, NIL);
    END PUTaccValue;

    PROCEDURE (this: _CommandBarActiveX) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Application;

    PROCEDURE (this: _CommandBarActiveX) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Creator;

    PROCEDURE (this: _CommandBarActiveX) BeginGroup* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874880)
    END BeginGroup;

    PROCEDURE (this: _CommandBarActiveX) PUTBeginGroup* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874880, p1)
    END PUTBeginGroup;

    PROCEDURE (this: _CommandBarActiveX) BuiltIn* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874882)
    END BuiltIn;

    PROCEDURE (this: _CommandBarActiveX) Caption* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874883)
    END Caption;

    PROCEDURE (this: _CommandBarActiveX) PUTCaption* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874883, p1)
    END PUTCaption;

    PROCEDURE (this: _CommandBarActiveX) Control* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610874885)
    END Control;

    PROCEDURE (this: _CommandBarActiveX) Copy* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874886, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Copy;

    PROCEDURE (this: _CommandBarActiveX) Delete* ((* optional *) Temporary: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Temporary, arg[0]);
        CtlC.CallParMethod(this, 1610874887, arg, NIL);
    END Delete;

    PROCEDURE (this: _CommandBarActiveX) DescriptionText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874888)
    END DescriptionText;

    PROCEDURE (this: _CommandBarActiveX) PUTDescriptionText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874888, p1)
    END PUTDescriptionText;

    PROCEDURE (this: _CommandBarActiveX) Enabled* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874890)
    END Enabled;

    PROCEDURE (this: _CommandBarActiveX) PUTEnabled* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874890, p1)
    END PUTEnabled;

    PROCEDURE (this: _CommandBarActiveX) Execute* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874892, NIL);
    END Execute;

    PROCEDURE (this: _CommandBarActiveX) Height* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874893)
    END Height;

    PROCEDURE (this: _CommandBarActiveX) PUTHeight* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874893, p1)
    END PUTHeight;

    PROCEDURE (this: _CommandBarActiveX) HelpContextId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874895)
    END HelpContextId;

    PROCEDURE (this: _CommandBarActiveX) PUTHelpContextId* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874895, p1)
    END PUTHelpContextId;

    PROCEDURE (this: _CommandBarActiveX) HelpFile* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874897)
    END HelpFile;

    PROCEDURE (this: _CommandBarActiveX) PUTHelpFile* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874897, p1)
    END PUTHelpFile;

    PROCEDURE (this: _CommandBarActiveX) Id* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874899)
    END Id;

    PROCEDURE (this: _CommandBarActiveX) Index* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874900)
    END Index;

    PROCEDURE (this: _CommandBarActiveX) InstanceId* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874901)
    END InstanceId;

    PROCEDURE (this: _CommandBarActiveX) Move* ((* optional *) Bar: CtlT.Any; Before: CtlT.Any): CommandBarControl, NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Bar, arg[1]);
        CtlC.AnyVar(Before, arg[0]);
        CtlC.CallParMethod(this, 1610874902, arg, ret);
        RETURN ThisCommandBarControl(CtlC.VarAny(ret))
    END Move;

    PROCEDURE (this: _CommandBarActiveX) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874903)
    END Left;

    PROCEDURE (this: _CommandBarActiveX) OLEUsage* (): MsoControlOLEUsage, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874904)
    END OLEUsage;

    PROCEDURE (this: _CommandBarActiveX) PUTOLEUsage* (p1: MsoControlOLEUsage), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874904, p1)
    END PUTOLEUsage;

    PROCEDURE (this: _CommandBarActiveX) OnAction* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874906)
    END OnAction;

    PROCEDURE (this: _CommandBarActiveX) PUTOnAction* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874906, p1)
    END PUTOnAction;

    PROCEDURE (this: _CommandBarActiveX) Parent* (): CommandBar, NEW;
    BEGIN
        RETURN ThisCommandBar(CtlC.GetAny(this, 1610874908))
    END Parent;

    PROCEDURE (this: _CommandBarActiveX) Parameter* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874909)
    END Parameter;

    PROCEDURE (this: _CommandBarActiveX) PUTParameter* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874909, p1)
    END PUTParameter;

    PROCEDURE (this: _CommandBarActiveX) Priority* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874911)
    END Priority;

    PROCEDURE (this: _CommandBarActiveX) PUTPriority* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874911, p1)
    END PUTPriority;

    PROCEDURE (this: _CommandBarActiveX) Reset* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874913, NIL);
    END Reset;

    PROCEDURE (this: _CommandBarActiveX) SetFocus* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874914, NIL);
    END SetFocus;

    PROCEDURE (this: _CommandBarActiveX) Tag* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874915)
    END Tag;

    PROCEDURE (this: _CommandBarActiveX) PUTTag* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874915, p1)
    END PUTTag;

    PROCEDURE (this: _CommandBarActiveX) TooltipText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610874917)
    END TooltipText;

    PROCEDURE (this: _CommandBarActiveX) PUTTooltipText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610874917, p1)
    END PUTTooltipText;

    PROCEDURE (this: _CommandBarActiveX) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874919)
    END Top;

    PROCEDURE (this: _CommandBarActiveX) Type* (): MsoControlType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874920)
    END Type;

    PROCEDURE (this: _CommandBarActiveX) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874921)
    END Visible;

    PROCEDURE (this: _CommandBarActiveX) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610874921, p1)
    END PUTVisible;

    PROCEDURE (this: _CommandBarActiveX) Width* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610874923)
    END Width;

    PROCEDURE (this: _CommandBarActiveX) PUTWidth* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610874923, p1)
    END PUTWidth;

    PROCEDURE (this: _CommandBarActiveX) IsPriorityDropped* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610874925)
    END IsPriorityDropped;

    PROCEDURE (this: _CommandBarActiveX) Reserved1* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874926, NIL);
    END Reserved1;

    PROCEDURE (this: _CommandBarActiveX) Reserved2* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874927, NIL);
    END Reserved2;

    PROCEDURE (this: _CommandBarActiveX) Reserved3* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874928, NIL);
    END Reserved3;

    PROCEDURE (this: _CommandBarActiveX) Reserved4* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874929, NIL);
    END Reserved4;

    PROCEDURE (this: _CommandBarActiveX) Reserved5* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874930, NIL);
    END Reserved5;

    PROCEDURE (this: _CommandBarActiveX) Reserved6* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874931, NIL);
    END Reserved6;

    PROCEDURE (this: _CommandBarActiveX) Reserved7* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610874932, NIL);
    END Reserved7;

    PROCEDURE (this: _CommandBarActiveX) ControlCLSID* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610940416)
    END ControlCLSID;

    PROCEDURE (this: _CommandBarActiveX) PUTControlCLSID* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610940416, p1)
    END PUTControlCLSID;

    PROCEDURE (this: _CommandBarActiveX) QueryControlInterface* (bstrIid: ARRAY OF CHAR): CtlT.IUnknown, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrIid, arg[0]);
        CtlC.CallGetMethod(this, 1610940418, arg, ret);
        RETURN CtlC.VarIntfce(ret)
    END QueryControlInterface;

    PROCEDURE (this: _CommandBarActiveX) SetInnerObjectFactory* (pUnk: CtlT.IUnknown), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntfceVar(pUnk, arg[0]);
        CtlC.CallParMethod(this, 1610940419, arg, NIL);
    END SetInnerObjectFactory;

    PROCEDURE (this: _CommandBarActiveX) EnsureControl* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610940420, NIL);
    END EnsureControl;

    PROCEDURE (this: _CommandBarActiveX) PUTInitWith* (p1: CtlT.IUnknown), NEW;
    BEGIN
        CtlC.PutIntfce(this, 1610940421, p1)
    END PUTInitWith;


    (* ---------- Adjustments, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: Adjustments) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: Adjustments) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: Adjustments) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: Adjustments) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: Adjustments) Item* (Index: INTEGER): SHORTREAL, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarSReal(ret)
    END Item;

    PROCEDURE (this: Adjustments) PUTItem* (Index: INTEGER; p2: SHORTREAL), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[1]);
        CtlC.SRealVar(p2, arg[0]);
        CtlC.CallPutMethod(this, 0, arg, NIL);
    END PUTItem;


    (* ---------- CalloutFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: CalloutFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: CalloutFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: CalloutFormat) PresetDrop* (DropType: MsoCalloutDropType), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(DropType, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END PresetDrop;

    PROCEDURE (this: CalloutFormat) Accent* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END Accent;

    PROCEDURE (this: CalloutFormat) PUTAccent* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTAccent;

    PROCEDURE (this: CalloutFormat) Angle* (): MsoCalloutAngleType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Angle;

    PROCEDURE (this: CalloutFormat) PUTAngle* (p1: MsoCalloutAngleType), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTAngle;

    PROCEDURE (this: CalloutFormat) AutoAttach* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END AutoAttach;

    PROCEDURE (this: CalloutFormat) PUTAutoAttach* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTAutoAttach;

    PROCEDURE (this: CalloutFormat) AutoLength* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END AutoLength;

    PROCEDURE (this: CalloutFormat) Border* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END Border;

    PROCEDURE (this: CalloutFormat) PUTBorder* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 104, p1)
    END PUTBorder;

    PROCEDURE (this: CalloutFormat) Drop* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 105)
    END Drop;

    PROCEDURE (this: CalloutFormat) DropType* (): MsoCalloutDropType, NEW;
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

    PROCEDURE (this: CalloutFormat) Type* (): MsoCalloutType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END Type;

    PROCEDURE (this: CalloutFormat) PUTType* (p1: MsoCalloutType), NEW;
    BEGIN
        CtlC.PutInt(this, 109, p1)
    END PUTType;


    (* ---------- ColorFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ColorFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: ColorFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: ColorFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ColorFormat) RGB* (): MsoRGBType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END RGB;

    PROCEDURE (this: ColorFormat) PUTRGB* (p1: MsoRGBType), NEW;
    BEGIN
        CtlC.PutInt(this, 0, p1)
    END PUTRGB;

    PROCEDURE (this: ColorFormat) SchemeColor* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END SchemeColor;

    PROCEDURE (this: ColorFormat) PUTSchemeColor* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTSchemeColor;

    PROCEDURE (this: ColorFormat) Type* (): MsoColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Type;


    (* ---------- ConnectorFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ConnectorFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: ConnectorFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: ConnectorFormat) BeginConnected* (): MsoTriState, NEW;
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

    PROCEDURE (this: ConnectorFormat) EndConnected* (): MsoTriState, NEW;
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

    PROCEDURE (this: ConnectorFormat) Type* (): MsoConnectorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Type;

    PROCEDURE (this: ConnectorFormat) PUTType* (p1: MsoConnectorType), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTType;


    (* ---------- FillFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: FillFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: FillFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: FillFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: FillFormat) Background* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END Background;

    PROCEDURE (this: FillFormat) OneColorGradient* (Style: MsoGradientStyle; Variant: INTEGER; Degree: SHORTREAL), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[2]);
        CtlC.IntVar(Variant, arg[1]);
        CtlC.SRealVar(Degree, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END OneColorGradient;

    PROCEDURE (this: FillFormat) Patterned* (Pattern: MsoPatternType), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Pattern, arg[0]);
        CtlC.CallParMethod(this, 12, arg, NIL);
    END Patterned;

    PROCEDURE (this: FillFormat) PresetGradient* (Style: MsoGradientStyle; Variant: INTEGER; PresetGradientType: MsoPresetGradientType), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Style, arg[2]);
        CtlC.IntVar(Variant, arg[1]);
        CtlC.IntVar(PresetGradientType, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END PresetGradient;

    PROCEDURE (this: FillFormat) PresetTextured* (PresetTexture: MsoPresetTexture), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PresetTexture, arg[0]);
        CtlC.CallParMethod(this, 14, arg, NIL);
    END PresetTextured;

    PROCEDURE (this: FillFormat) Solid* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 15, NIL);
    END Solid;

    PROCEDURE (this: FillFormat) TwoColorGradient* (Style: MsoGradientStyle; Variant: INTEGER), NEW;
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

    PROCEDURE (this: FillFormat) GradientColorType* (): MsoGradientColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END GradientColorType;

    PROCEDURE (this: FillFormat) GradientDegree* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 103)
    END GradientDegree;

    PROCEDURE (this: FillFormat) GradientStyle* (): MsoGradientStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END GradientStyle;

    PROCEDURE (this: FillFormat) GradientVariant* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END GradientVariant;

    PROCEDURE (this: FillFormat) Pattern* (): MsoPatternType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Pattern;

    PROCEDURE (this: FillFormat) PresetGradientType* (): MsoPresetGradientType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END PresetGradientType;

    PROCEDURE (this: FillFormat) PresetTexture* (): MsoPresetTexture, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END PresetTexture;

    PROCEDURE (this: FillFormat) TextureName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 109)
    END TextureName;

    PROCEDURE (this: FillFormat) TextureType* (): MsoTextureType, NEW;
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

    PROCEDURE (this: FillFormat) Type* (): MsoFillType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 112)
    END Type;

    PROCEDURE (this: FillFormat) Visible* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 113)
    END Visible;

    PROCEDURE (this: FillFormat) PUTVisible* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 113, p1)
    END PUTVisible;


    (* ---------- FreeformBuilder, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: FreeformBuilder) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: FreeformBuilder) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: FreeformBuilder) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: FreeformBuilder) AddNodes* (SegmentType: MsoSegmentType; EditingType: MsoEditingType; X1: SHORTREAL; Y1: SHORTREAL; X2: SHORTREAL; Y2: SHORTREAL; X3: SHORTREAL; Y3: SHORTREAL), NEW;
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


    (* ---------- GroupShapes, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: GroupShapes) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: GroupShapes) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: GroupShapes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: GroupShapes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: GroupShapes) Item* (Index: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: GroupShapes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- LineFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: LineFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: LineFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: LineFormat) BeginArrowheadLength* (): MsoArrowheadLength, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END BeginArrowheadLength;

    PROCEDURE (this: LineFormat) PUTBeginArrowheadLength* (p1: MsoArrowheadLength), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTBeginArrowheadLength;

    PROCEDURE (this: LineFormat) BeginArrowheadStyle* (): MsoArrowheadStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END BeginArrowheadStyle;

    PROCEDURE (this: LineFormat) PUTBeginArrowheadStyle* (p1: MsoArrowheadStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTBeginArrowheadStyle;

    PROCEDURE (this: LineFormat) BeginArrowheadWidth* (): MsoArrowheadWidth, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END BeginArrowheadWidth;

    PROCEDURE (this: LineFormat) PUTBeginArrowheadWidth* (p1: MsoArrowheadWidth), NEW;
    BEGIN
        CtlC.PutInt(this, 103, p1)
    END PUTBeginArrowheadWidth;

    PROCEDURE (this: LineFormat) DashStyle* (): MsoLineDashStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END DashStyle;

    PROCEDURE (this: LineFormat) PUTDashStyle* (p1: MsoLineDashStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 104, p1)
    END PUTDashStyle;

    PROCEDURE (this: LineFormat) EndArrowheadLength* (): MsoArrowheadLength, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END EndArrowheadLength;

    PROCEDURE (this: LineFormat) PUTEndArrowheadLength* (p1: MsoArrowheadLength), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTEndArrowheadLength;

    PROCEDURE (this: LineFormat) EndArrowheadStyle* (): MsoArrowheadStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END EndArrowheadStyle;

    PROCEDURE (this: LineFormat) PUTEndArrowheadStyle* (p1: MsoArrowheadStyle), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTEndArrowheadStyle;

    PROCEDURE (this: LineFormat) EndArrowheadWidth* (): MsoArrowheadWidth, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END EndArrowheadWidth;

    PROCEDURE (this: LineFormat) PUTEndArrowheadWidth* (p1: MsoArrowheadWidth), NEW;
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

    PROCEDURE (this: LineFormat) Pattern* (): MsoPatternType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END Pattern;

    PROCEDURE (this: LineFormat) PUTPattern* (p1: MsoPatternType), NEW;
    BEGIN
        CtlC.PutInt(this, 109, p1)
    END PUTPattern;

    PROCEDURE (this: LineFormat) Style* (): MsoLineStyle, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 110)
    END Style;

    PROCEDURE (this: LineFormat) PUTStyle* (p1: MsoLineStyle), NEW;
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

    PROCEDURE (this: LineFormat) Visible* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 112)
    END Visible;

    PROCEDURE (this: LineFormat) PUTVisible* (p1: MsoTriState), NEW;
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


    (* ---------- ShapeNode, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ShapeNode) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: ShapeNode) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: ShapeNode) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ShapeNode) EditingType* (): MsoEditingType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END EditingType;

    PROCEDURE (this: ShapeNode) Points* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 101)
    END Points;

    PROCEDURE (this: ShapeNode) SegmentType* (): MsoSegmentType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END SegmentType;


    (* ---------- ShapeNodes, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ShapeNodes) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: ShapeNodes) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: ShapeNodes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ShapeNodes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: ShapeNodes) Item* (Index: CtlT.Any): ShapeNode, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShapeNode(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: ShapeNodes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ShapeNodes) Delete* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 11, arg, NIL);
    END Delete;

    PROCEDURE (this: ShapeNodes) Insert* (Index: INTEGER; SegmentType: MsoSegmentType; EditingType: MsoEditingType; X1: SHORTREAL; Y1: SHORTREAL; X2: SHORTREAL; Y2: SHORTREAL; X3: SHORTREAL; Y3: SHORTREAL), NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[8]);
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

    PROCEDURE (this: ShapeNodes) SetEditingType* (Index: INTEGER; EditingType: MsoEditingType), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[1]);
        CtlC.IntVar(EditingType, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END SetEditingType;

    PROCEDURE (this: ShapeNodes) SetPosition* (Index: INTEGER; X1: SHORTREAL; Y1: SHORTREAL), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[2]);
        CtlC.SRealVar(X1, arg[1]);
        CtlC.SRealVar(Y1, arg[0]);
        CtlC.CallParMethod(this, 14, arg, NIL);
    END SetPosition;

    PROCEDURE (this: ShapeNodes) SetSegmentType* (Index: INTEGER; SegmentType: MsoSegmentType), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[1]);
        CtlC.IntVar(SegmentType, arg[0]);
        CtlC.CallParMethod(this, 15, arg, NIL);
    END SetSegmentType;


    (* ---------- PictureFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: PictureFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: PictureFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: PictureFormat) ColorType* (): MsoPictureColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END ColorType;

    PROCEDURE (this: PictureFormat) PUTColorType* (p1: MsoPictureColorType), NEW;
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

    PROCEDURE (this: PictureFormat) TransparencyColor* (): MsoRGBType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END TransparencyColor;

    PROCEDURE (this: PictureFormat) PUTTransparencyColor* (p1: MsoRGBType), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTTransparencyColor;

    PROCEDURE (this: PictureFormat) TransparentBackground* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END TransparentBackground;

    PROCEDURE (this: PictureFormat) PUTTransparentBackground* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTTransparentBackground;


    (* ---------- ShadowFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ShadowFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: ShadowFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: ShadowFormat) Obscured* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END Obscured;

    PROCEDURE (this: ShadowFormat) PUTObscured* (p1: MsoTriState), NEW;
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

    PROCEDURE (this: ShadowFormat) Type* (): MsoShadowType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END Type;

    PROCEDURE (this: ShadowFormat) PUTType* (p1: MsoShadowType), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTType;

    PROCEDURE (this: ShadowFormat) Visible* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END Visible;

    PROCEDURE (this: ShadowFormat) PUTVisible* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTVisible;


    (* ---------- Script, dual, nonextensible ---------- *)

    PROCEDURE (this: Script) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: Script) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: Script) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Parent;

    PROCEDURE (this: Script) Extended* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Extended;

    PROCEDURE (this: Script) PUTExtended* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809345, p1)
    END PUTExtended;

    PROCEDURE (this: Script) Id* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END Id;

    PROCEDURE (this: Script) PUTId* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTId;

    PROCEDURE (this: Script) Language* (): MsoScriptLanguage, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END Language;

    PROCEDURE (this: Script) PUTLanguage* (p1: MsoScriptLanguage), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTLanguage;

    PROCEDURE (this: Script) Location* (): MsoScriptLocation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809351)
    END Location;

    PROCEDURE (this: Script) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809352, NIL);
    END Delete;

    PROCEDURE (this: Script) Shape* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809353)
    END Shape;

    PROCEDURE (this: Script) ScriptText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END ScriptText;

    PROCEDURE (this: Script) PUTScriptText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTScriptText;


    (* ---------- Scripts, dual, nonextensible ---------- *)

    PROCEDURE (this: Scripts) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: Scripts) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: Scripts) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Parent;

    PROCEDURE (this: Scripts) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809345)
    END Count;

    PROCEDURE (this: Scripts) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Scripts) Item* (Index: CtlT.Any): Script, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisScript(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Scripts) Add* (Anchor: CtlT.Object; Location: MsoScriptLocation; Language: MsoScriptLanguage; Id: ARRAY OF CHAR; Extended: ARRAY OF CHAR; ScriptText: ARRAY OF CHAR): Script, NEW;
        VAR arg: ARRAY 6 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Anchor, arg[5]);
        CtlC.IntVar(Location, arg[4]);
        CtlC.IntVar(Language, arg[3]);
        CtlC.StrVar(Id, arg[2]);
        CtlC.StrVar(Extended, arg[1]);
        CtlC.StrVar(ScriptText, arg[0]);
        CtlC.CallParMethod(this, 1610809348, arg, ret);
        RETURN ThisScript(CtlC.VarAny(ret))
    END Add;

    PROCEDURE (this: Scripts) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809349, NIL);
    END Delete;


    (* ---------- Shape, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: Shape) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: Shape) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: Shape) Duplicate* (): Shape, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 12, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Duplicate;

    PROCEDURE (this: Shape) Flip* (FlipCmd: MsoFlipCmd), NEW;
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

    PROCEDURE (this: Shape) ScaleHeight* (Factor: SHORTREAL; RelativeToOriginalSize: MsoTriState; fScale: MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 19, arg, NIL);
    END ScaleHeight;

    PROCEDURE (this: Shape) ScaleWidth* (Factor: SHORTREAL; RelativeToOriginalSize: MsoTriState; fScale: MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 20, arg, NIL);
    END ScaleWidth;

    PROCEDURE (this: Shape) Select* ((* optional *) Replace: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Replace, arg[0]);
        CtlC.CallParMethod(this, 21, arg, NIL);
    END Select;

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

    PROCEDURE (this: Shape) ZOrder* (ZOrderCmd: MsoZOrderCmd), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ZOrderCmd, arg[0]);
        CtlC.CallParMethod(this, 24, arg, NIL);
    END ZOrder;

    PROCEDURE (this: Shape) Adjustments* (): Adjustments, NEW;
    BEGIN
        RETURN ThisAdjustments(CtlC.GetAny(this, 100))
    END Adjustments;

    PROCEDURE (this: Shape) AutoShapeType* (): MsoAutoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END AutoShapeType;

    PROCEDURE (this: Shape) PUTAutoShapeType* (p1: MsoAutoShapeType), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTAutoShapeType;

    PROCEDURE (this: Shape) BlackWhiteMode* (): MsoBlackWhiteMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END BlackWhiteMode;

    PROCEDURE (this: Shape) PUTBlackWhiteMode* (p1: MsoBlackWhiteMode), NEW;
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

    PROCEDURE (this: Shape) Connector* (): MsoTriState, NEW;
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

    PROCEDURE (this: Shape) HorizontalFlip* (): MsoTriState, NEW;
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

    PROCEDURE (this: Shape) LockAspectRatio* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 113)
    END LockAspectRatio;

    PROCEDURE (this: Shape) PUTLockAspectRatio* (p1: MsoTriState), NEW;
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

    PROCEDURE (this: Shape) Type* (): MsoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END Type;

    PROCEDURE (this: Shape) VerticalFlip* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 125)
    END VerticalFlip;

    PROCEDURE (this: Shape) Vertices* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 126)
    END Vertices;

    PROCEDURE (this: Shape) Visible* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END Visible;

    PROCEDURE (this: Shape) PUTVisible* (p1: MsoTriState), NEW;
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

    PROCEDURE (this: Shape) Script* (): Script, NEW;
    BEGIN
        RETURN ThisScript(CtlC.GetAny(this, 130))
    END Script;

    PROCEDURE (this: Shape) AlternativeText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 131)
    END AlternativeText;

    PROCEDURE (this: Shape) PUTAlternativeText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 131, p1)
    END PUTAlternativeText;


    (* ---------- ShapeRange, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ShapeRange) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: ShapeRange) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: ShapeRange) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: ShapeRange) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: ShapeRange) Item* (Index: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: ShapeRange) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: ShapeRange) Align* (AlignCmd: MsoAlignCmd; RelativeTo: MsoTriState), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(AlignCmd, arg[1]);
        CtlC.IntVar(RelativeTo, arg[0]);
        CtlC.CallParMethod(this, 10, arg, NIL);
    END Align;

    PROCEDURE (this: ShapeRange) Apply* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 11, NIL);
    END Apply;

    PROCEDURE (this: ShapeRange) Delete* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 12, NIL);
    END Delete;

    PROCEDURE (this: ShapeRange) Distribute* (DistributeCmd: MsoDistributeCmd; RelativeTo: MsoTriState), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(DistributeCmd, arg[1]);
        CtlC.IntVar(RelativeTo, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END Distribute;

    PROCEDURE (this: ShapeRange) Duplicate* (): ShapeRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 14, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Duplicate;

    PROCEDURE (this: ShapeRange) Flip* (FlipCmd: MsoFlipCmd), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(FlipCmd, arg[0]);
        CtlC.CallParMethod(this, 15, arg, NIL);
    END Flip;

    PROCEDURE (this: ShapeRange) IncrementLeft* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 16, arg, NIL);
    END IncrementLeft;

    PROCEDURE (this: ShapeRange) IncrementRotation* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 17, arg, NIL);
    END IncrementRotation;

    PROCEDURE (this: ShapeRange) IncrementTop* (Increment: SHORTREAL), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Increment, arg[0]);
        CtlC.CallParMethod(this, 18, arg, NIL);
    END IncrementTop;

    PROCEDURE (this: ShapeRange) Group* (): Shape, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 19, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Group;

    PROCEDURE (this: ShapeRange) PickUp* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 20, NIL);
    END PickUp;

    PROCEDURE (this: ShapeRange) Regroup* (): Shape, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 21, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Regroup;

    PROCEDURE (this: ShapeRange) RerouteConnections* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 22, NIL);
    END RerouteConnections;

    PROCEDURE (this: ShapeRange) ScaleHeight* (Factor: SHORTREAL; RelativeToOriginalSize: MsoTriState; fScale: MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 23, arg, NIL);
    END ScaleHeight;

    PROCEDURE (this: ShapeRange) ScaleWidth* (Factor: SHORTREAL; RelativeToOriginalSize: MsoTriState; fScale: MsoScaleFrom), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.SRealVar(Factor, arg[2]);
        CtlC.IntVar(RelativeToOriginalSize, arg[1]);
        CtlC.IntVar(fScale, arg[0]);
        CtlC.CallParMethod(this, 24, arg, NIL);
    END ScaleWidth;

    PROCEDURE (this: ShapeRange) Select* ((* optional *) Replace: CtlT.Any), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Replace, arg[0]);
        CtlC.CallParMethod(this, 25, arg, NIL);
    END Select;

    PROCEDURE (this: ShapeRange) SetShapesDefaultProperties* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 26, NIL);
    END SetShapesDefaultProperties;

    PROCEDURE (this: ShapeRange) Ungroup* (): ShapeRange, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 27, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Ungroup;

    PROCEDURE (this: ShapeRange) ZOrder* (ZOrderCmd: MsoZOrderCmd), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(ZOrderCmd, arg[0]);
        CtlC.CallParMethod(this, 28, arg, NIL);
    END ZOrder;

    PROCEDURE (this: ShapeRange) Adjustments* (): Adjustments, NEW;
    BEGIN
        RETURN ThisAdjustments(CtlC.GetAny(this, 100))
    END Adjustments;

    PROCEDURE (this: ShapeRange) AutoShapeType* (): MsoAutoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END AutoShapeType;

    PROCEDURE (this: ShapeRange) PUTAutoShapeType* (p1: MsoAutoShapeType), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTAutoShapeType;

    PROCEDURE (this: ShapeRange) BlackWhiteMode* (): MsoBlackWhiteMode, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END BlackWhiteMode;

    PROCEDURE (this: ShapeRange) PUTBlackWhiteMode* (p1: MsoBlackWhiteMode), NEW;
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

    PROCEDURE (this: ShapeRange) Connector* (): MsoTriState, NEW;
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

    PROCEDURE (this: ShapeRange) HorizontalFlip* (): MsoTriState, NEW;
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

    PROCEDURE (this: ShapeRange) LockAspectRatio* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 113)
    END LockAspectRatio;

    PROCEDURE (this: ShapeRange) PUTLockAspectRatio* (p1: MsoTriState), NEW;
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

    PROCEDURE (this: ShapeRange) Type* (): MsoShapeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 124)
    END Type;

    PROCEDURE (this: ShapeRange) VerticalFlip* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 125)
    END VerticalFlip;

    PROCEDURE (this: ShapeRange) Vertices* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 126)
    END Vertices;

    PROCEDURE (this: ShapeRange) Visible* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 127)
    END Visible;

    PROCEDURE (this: ShapeRange) PUTVisible* (p1: MsoTriState), NEW;
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

    PROCEDURE (this: ShapeRange) Script* (): Script, NEW;
    BEGIN
        RETURN ThisScript(CtlC.GetAny(this, 130))
    END Script;

    PROCEDURE (this: ShapeRange) AlternativeText* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 131)
    END AlternativeText;

    PROCEDURE (this: ShapeRange) PUTAlternativeText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 131, p1)
    END PUTAlternativeText;


    (* ---------- Shapes, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: Shapes) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: Shapes) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: Shapes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: Shapes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Count;

    PROCEDURE (this: Shapes) Item* (Index: CtlT.Any): Shape, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisShape(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: Shapes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: Shapes) AddCallout* (Type: MsoCalloutType; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
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

    PROCEDURE (this: Shapes) AddConnector* (Type: MsoConnectorType; BeginX: SHORTREAL; BeginY: SHORTREAL; EndX: SHORTREAL; EndY: SHORTREAL): Shape, NEW;
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

    PROCEDURE (this: Shapes) AddLabel* (Orientation: MsoTextOrientation; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
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

    PROCEDURE (this: Shapes) AddPicture* (FileName: ARRAY OF CHAR; LinkToFile: MsoTriState; SaveWithDocument: MsoTriState; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
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

    PROCEDURE (this: Shapes) AddShape* (Type: MsoAutoShapeType; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
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

    PROCEDURE (this: Shapes) AddTextEffect* (PresetTextEffect: MsoPresetTextEffect; Text: ARRAY OF CHAR; FontName: ARRAY OF CHAR; FontSize: SHORTREAL; FontBold: MsoTriState; FontItalic: MsoTriState; Left: SHORTREAL; Top: SHORTREAL): Shape, NEW;
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

    PROCEDURE (this: Shapes) AddTextbox* (Orientation: MsoTextOrientation; Left: SHORTREAL; Top: SHORTREAL; Width: SHORTREAL; Height: SHORTREAL): Shape, NEW;
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

    PROCEDURE (this: Shapes) BuildFreeform* (EditingType: MsoEditingType; X1: SHORTREAL; Y1: SHORTREAL): FreeformBuilder, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(EditingType, arg[2]);
        CtlC.SRealVar(X1, arg[1]);
        CtlC.SRealVar(Y1, arg[0]);
        CtlC.CallParMethod(this, 20, arg, ret);
        RETURN ThisFreeformBuilder(CtlC.VarAny(ret))
    END BuildFreeform;

    PROCEDURE (this: Shapes) Range* (Index: CtlT.Any): ShapeRange, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 21, arg, ret);
        RETURN ThisShapeRange(CtlC.VarAny(ret))
    END Range;

    PROCEDURE (this: Shapes) SelectAll* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 22, NIL);
    END SelectAll;

    PROCEDURE (this: Shapes) Background* (): Shape, NEW;
    BEGIN
        RETURN ThisShape(CtlC.GetAny(this, 100))
    END Background;

    PROCEDURE (this: Shapes) Default* (): Shape, NEW;
    BEGIN
        RETURN ThisShape(CtlC.GetAny(this, 101))
    END Default;


    (* ---------- TextEffectFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: TextEffectFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: TextEffectFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: TextEffectFormat) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1)
    END Parent;

    PROCEDURE (this: TextEffectFormat) ToggleVerticalText* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END ToggleVerticalText;

    PROCEDURE (this: TextEffectFormat) Alignment* (): MsoTextEffectAlignment, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 100)
    END Alignment;

    PROCEDURE (this: TextEffectFormat) PUTAlignment* (p1: MsoTextEffectAlignment), NEW;
    BEGIN
        CtlC.PutInt(this, 100, p1)
    END PUTAlignment;

    PROCEDURE (this: TextEffectFormat) FontBold* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 101)
    END FontBold;

    PROCEDURE (this: TextEffectFormat) PUTFontBold* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 101, p1)
    END PUTFontBold;

    PROCEDURE (this: TextEffectFormat) FontItalic* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END FontItalic;

    PROCEDURE (this: TextEffectFormat) PUTFontItalic* (p1: MsoTriState), NEW;
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

    PROCEDURE (this: TextEffectFormat) KernedPairs* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END KernedPairs;

    PROCEDURE (this: TextEffectFormat) PUTKernedPairs* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTKernedPairs;

    PROCEDURE (this: TextEffectFormat) NormalizedHeight* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END NormalizedHeight;

    PROCEDURE (this: TextEffectFormat) PUTNormalizedHeight* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTNormalizedHeight;

    PROCEDURE (this: TextEffectFormat) PresetShape* (): MsoPresetTextEffectShape, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END PresetShape;

    PROCEDURE (this: TextEffectFormat) PUTPresetShape* (p1: MsoPresetTextEffectShape), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTPresetShape;

    PROCEDURE (this: TextEffectFormat) PresetTextEffect* (): MsoPresetTextEffect, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 108)
    END PresetTextEffect;

    PROCEDURE (this: TextEffectFormat) PUTPresetTextEffect* (p1: MsoPresetTextEffect), NEW;
    BEGIN
        CtlC.PutInt(this, 108, p1)
    END PUTPresetTextEffect;

    PROCEDURE (this: TextEffectFormat) RotatedChars* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 109)
    END RotatedChars;

    PROCEDURE (this: TextEffectFormat) PUTRotatedChars* (p1: MsoTriState), NEW;
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


    (* ---------- TextFrame, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: TextFrame) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: TextFrame) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: TextFrame) Orientation* (): MsoTextOrientation, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END Orientation;

    PROCEDURE (this: TextFrame) PUTOrientation* (p1: MsoTextOrientation), NEW;
    BEGIN
        CtlC.PutInt(this, 104, p1)
    END PUTOrientation;


    (* ---------- ThreeDFormat, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ThreeDFormat) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: ThreeDFormat) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
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

    PROCEDURE (this: ThreeDFormat) SetThreeDFormat* (PresetThreeDFormat: MsoPresetThreeDFormat), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(PresetThreeDFormat, arg[0]);
        CtlC.CallParMethod(this, 13, arg, NIL);
    END SetThreeDFormat;

    PROCEDURE (this: ThreeDFormat) SetExtrusionDirection* (PresetExtrusionDirection: MsoPresetExtrusionDirection), NEW;
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

    PROCEDURE (this: ThreeDFormat) ExtrusionColorType* (): MsoExtrusionColorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 102)
    END ExtrusionColorType;

    PROCEDURE (this: ThreeDFormat) PUTExtrusionColorType* (p1: MsoExtrusionColorType), NEW;
    BEGIN
        CtlC.PutInt(this, 102, p1)
    END PUTExtrusionColorType;

    PROCEDURE (this: ThreeDFormat) Perspective* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 103)
    END Perspective;

    PROCEDURE (this: ThreeDFormat) PUTPerspective* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 103, p1)
    END PUTPerspective;

    PROCEDURE (this: ThreeDFormat) PresetExtrusionDirection* (): MsoPresetExtrusionDirection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 104)
    END PresetExtrusionDirection;

    PROCEDURE (this: ThreeDFormat) PresetLightingDirection* (): MsoPresetLightingDirection, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 105)
    END PresetLightingDirection;

    PROCEDURE (this: ThreeDFormat) PUTPresetLightingDirection* (p1: MsoPresetLightingDirection), NEW;
    BEGIN
        CtlC.PutInt(this, 105, p1)
    END PUTPresetLightingDirection;

    PROCEDURE (this: ThreeDFormat) PresetLightingSoftness* (): MsoPresetLightingSoftness, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 106)
    END PresetLightingSoftness;

    PROCEDURE (this: ThreeDFormat) PUTPresetLightingSoftness* (p1: MsoPresetLightingSoftness), NEW;
    BEGIN
        CtlC.PutInt(this, 106, p1)
    END PUTPresetLightingSoftness;

    PROCEDURE (this: ThreeDFormat) PresetMaterial* (): MsoPresetMaterial, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 107)
    END PresetMaterial;

    PROCEDURE (this: ThreeDFormat) PUTPresetMaterial* (p1: MsoPresetMaterial), NEW;
    BEGIN
        CtlC.PutInt(this, 107, p1)
    END PUTPresetMaterial;

    PROCEDURE (this: ThreeDFormat) PresetThreeDFormat* (): MsoPresetThreeDFormat, NEW;
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

    PROCEDURE (this: ThreeDFormat) Visible* (): MsoTriState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 111)
    END Visible;

    PROCEDURE (this: ThreeDFormat) PUTVisible* (p1: MsoTriState), NEW;
    BEGIN
        CtlC.PutInt(this, 111, p1)
    END PUTVisible;


    (* ---------- IMsoDispCagNotifySink, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: IMsoDispCagNotifySink) InsertClip* (pClipMoniker: CtlT.IUnknown; pItemMoniker: CtlT.IUnknown), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntfceVar(pClipMoniker, arg[1]);
        CtlC.IntfceVar(pItemMoniker, arg[0]);
        CtlC.CallParMethod(this, 1, arg, NIL);
    END InsertClip;

    PROCEDURE (this: IMsoDispCagNotifySink) WindowIsClosing* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2, NIL);
    END WindowIsClosing;


    (* ---------- Balloon, dual, nonextensible ---------- *)

    PROCEDURE (this: Balloon) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: Balloon) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: Balloon) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Parent;

    PROCEDURE (this: Balloon) Checkboxes* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809345)
    END Checkboxes;

    PROCEDURE (this: Balloon) Labels* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809346)
    END Labels;

    PROCEDURE (this: Balloon) PUTBalloonType* (p1: MsoBalloonType), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809347, p1)
    END PUTBalloonType;

    PROCEDURE (this: Balloon) BalloonType* (): MsoBalloonType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809347)
    END BalloonType;

    PROCEDURE (this: Balloon) PUTIcon* (p1: MsoIconType), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809349, p1)
    END PUTIcon;

    PROCEDURE (this: Balloon) Icon* (): MsoIconType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809349)
    END Icon;

    PROCEDURE (this: Balloon) PUTHeading* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809351, p1)
    END PUTHeading;

    PROCEDURE (this: Balloon) Heading* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809351)
    END Heading;

    PROCEDURE (this: Balloon) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809353, p1)
    END PUTText;

    PROCEDURE (this: Balloon) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809353)
    END Text;

    PROCEDURE (this: Balloon) PUTMode* (p1: MsoModeType), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809355, p1)
    END PUTMode;

    PROCEDURE (this: Balloon) Mode* (): MsoModeType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809355)
    END Mode;

    PROCEDURE (this: Balloon) PUTAnimation* (p1: MsoAnimationType), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809357, p1)
    END PUTAnimation;

    PROCEDURE (this: Balloon) Animation* (): MsoAnimationType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809357)
    END Animation;

    PROCEDURE (this: Balloon) PUTButton* (p1: MsoButtonSetType), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809359, p1)
    END PUTButton;

    PROCEDURE (this: Balloon) Button* (): MsoButtonSetType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809359)
    END Button;

    PROCEDURE (this: Balloon) PUTCallback* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809361, p1)
    END PUTCallback;

    PROCEDURE (this: Balloon) Callback* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809361)
    END Callback;

    PROCEDURE (this: Balloon) PUTPrivate* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809363, p1)
    END PUTPrivate;

    PROCEDURE (this: Balloon) Private* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809363)
    END Private;

    PROCEDURE (this: Balloon) SetAvoidRectangle* (Left: INTEGER; Top: INTEGER; Right: INTEGER; Bottom: INTEGER), NEW;
        VAR arg: ARRAY 4 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Left, arg[3]);
        CtlC.IntVar(Top, arg[2]);
        CtlC.IntVar(Right, arg[1]);
        CtlC.IntVar(Bottom, arg[0]);
        CtlC.CallParMethod(this, 1610809365, arg, NIL);
    END SetAvoidRectangle;

    PROCEDURE (this: Balloon) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809366)
    END Name;

    PROCEDURE (this: Balloon) Show* (): MsoBalloonButtonType, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610809367, ret);
        RETURN CtlC.VarInt(ret)
    END Show;

    PROCEDURE (this: Balloon) Close* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809368, NIL);
    END Close;


    (* ---------- BalloonCheckboxes, dual, nonextensible ---------- *)

    PROCEDURE (this: BalloonCheckboxes) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: BalloonCheckboxes) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: BalloonCheckboxes) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: BalloonCheckboxes) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809345)
    END Parent;

    PROCEDURE (this: BalloonCheckboxes) Item* (Index: INTEGER): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: BalloonCheckboxes) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809347)
    END Count;

    PROCEDURE (this: BalloonCheckboxes) PUTCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809347, p1)
    END PUTCount;

    PROCEDURE (this: BalloonCheckboxes) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- BalloonCheckbox, dual, nonextensible ---------- *)

    PROCEDURE (this: BalloonCheckbox) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: BalloonCheckbox) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: BalloonCheckbox) Item* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Item;

    PROCEDURE (this: BalloonCheckbox) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Name;

    PROCEDURE (this: BalloonCheckbox) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809346)
    END Parent;

    PROCEDURE (this: BalloonCheckbox) PUTChecked* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809347, p1)
    END PUTChecked;

    PROCEDURE (this: BalloonCheckbox) Checked* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809347)
    END Checked;

    PROCEDURE (this: BalloonCheckbox) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809349, p1)
    END PUTText;

    PROCEDURE (this: BalloonCheckbox) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809349)
    END Text;


    (* ---------- BalloonLabels, dual, nonextensible ---------- *)

    PROCEDURE (this: BalloonLabels) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: BalloonLabels) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: BalloonLabels) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809344)
    END Name;

    PROCEDURE (this: BalloonLabels) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809345)
    END Parent;

    PROCEDURE (this: BalloonLabels) Item* (Index: INTEGER): CtlT.Object, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarObj(ret)
    END Item;

    PROCEDURE (this: BalloonLabels) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809347)
    END Count;

    PROCEDURE (this: BalloonLabels) PUTCount* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809347, p1)
    END PUTCount;

    PROCEDURE (this: BalloonLabels) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- BalloonLabel, dual, nonextensible ---------- *)

    PROCEDURE (this: BalloonLabel) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: BalloonLabel) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: BalloonLabel) Item* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Item;

    PROCEDURE (this: BalloonLabel) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809345)
    END Name;

    PROCEDURE (this: BalloonLabel) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809346)
    END Parent;

    PROCEDURE (this: BalloonLabel) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809347, p1)
    END PUTText;

    PROCEDURE (this: BalloonLabel) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809347)
    END Text;


    (* ---------- AnswerWizardFiles, dual, nonextensible ---------- *)

    PROCEDURE (this: AnswerWizardFiles) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: AnswerWizardFiles) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: AnswerWizardFiles) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Parent;

    PROCEDURE (this: AnswerWizardFiles) Item* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Item;

    PROCEDURE (this: AnswerWizardFiles) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809346)
    END Count;

    PROCEDURE (this: AnswerWizardFiles) Add* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610809347, arg, NIL);
    END Add;

    PROCEDURE (this: AnswerWizardFiles) Delete* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 1610809348, arg, NIL);
    END Delete;


    (* ---------- AnswerWizard, dual, nonextensible ---------- *)

    PROCEDURE (this: AnswerWizard) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: AnswerWizard) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: AnswerWizard) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Parent;

    PROCEDURE (this: AnswerWizard) Files* (): AnswerWizardFiles, NEW;
    BEGIN
        RETURN ThisAnswerWizardFiles(CtlC.GetAny(this, 1610809345))
    END Files;

    PROCEDURE (this: AnswerWizard) ClearFileList* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809346, NIL);
    END ClearFileList;

    PROCEDURE (this: AnswerWizard) ResetFileList* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809347, NIL);
    END ResetFileList;


    (* ---------- Assistant, dual, nonextensible ---------- *)

    PROCEDURE (this: Assistant) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: Assistant) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: Assistant) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610809344)
    END Parent;

    PROCEDURE (this: Assistant) Move* (xLeft: INTEGER; yTop: INTEGER), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(xLeft, arg[1]);
        CtlC.IntVar(yTop, arg[0]);
        CtlC.CallParMethod(this, 1610809345, arg, NIL);
    END Move;

    PROCEDURE (this: Assistant) PUTTop* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809346, p1)
    END PUTTop;

    PROCEDURE (this: Assistant) Top* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809346)
    END Top;

    PROCEDURE (this: Assistant) PUTLeft* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809348, p1)
    END PUTLeft;

    PROCEDURE (this: Assistant) Left* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809348)
    END Left;

    PROCEDURE (this: Assistant) Help* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809350, NIL);
    END Help;

    PROCEDURE (this: Assistant) StartWizard* (On: BOOLEAN; Callback: ARRAY OF CHAR; PrivateX: INTEGER; (* optional *) Animation: CtlT.Any; CustomTeaser: CtlT.Any; Top: CtlT.Any; Left: CtlT.Any; Bottom: CtlT.Any; Right: CtlT.Any): INTEGER, NEW;
        VAR arg: ARRAY 9 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.BoolVar(On, arg[8]);
        CtlC.StrVar(Callback, arg[7]);
        CtlC.IntVar(PrivateX, arg[6]);
        CtlC.AnyVar(Animation, arg[5]);
        CtlC.AnyVar(CustomTeaser, arg[4]);
        CtlC.AnyVar(Top, arg[3]);
        CtlC.AnyVar(Left, arg[2]);
        CtlC.AnyVar(Bottom, arg[1]);
        CtlC.AnyVar(Right, arg[0]);
        CtlC.CallParMethod(this, 1610809351, arg, ret);
        RETURN CtlC.VarInt(ret)
    END StartWizard;

    PROCEDURE (this: Assistant) EndWizard* (WizardID: INTEGER; varfSuccess: BOOLEAN; (* optional *) Animation: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(WizardID, arg[2]);
        CtlC.BoolVar(varfSuccess, arg[1]);
        CtlC.AnyVar(Animation, arg[0]);
        CtlC.CallParMethod(this, 1610809352, arg, NIL);
    END EndWizard;

    PROCEDURE (this: Assistant) ActivateWizard* (WizardID: INTEGER; act: MsoWizardActType; (* optional *) Animation: CtlT.Any), NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(WizardID, arg[2]);
        CtlC.IntVar(act, arg[1]);
        CtlC.AnyVar(Animation, arg[0]);
        CtlC.CallParMethod(this, 1610809353, arg, NIL);
    END ActivateWizard;

    PROCEDURE (this: Assistant) ResetTips* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610809354, NIL);
    END ResetTips;

    PROCEDURE (this: Assistant) NewBalloon* (): Balloon, NEW;
    BEGIN
        RETURN ThisBalloon(CtlC.GetAny(this, 1610809355))
    END NewBalloon;

    PROCEDURE (this: Assistant) BalloonError* (): MsoBalloonErrorType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809356)
    END BalloonError;

    PROCEDURE (this: Assistant) Visible* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809357)
    END Visible;

    PROCEDURE (this: Assistant) PUTVisible* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809357, p1)
    END PUTVisible;

    PROCEDURE (this: Assistant) Animation* (): MsoAnimationType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610809359)
    END Animation;

    PROCEDURE (this: Assistant) PUTAnimation* (p1: MsoAnimationType), NEW;
    BEGIN
        CtlC.PutInt(this, 1610809359, p1)
    END PUTAnimation;

    PROCEDURE (this: Assistant) Reduced* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809361)
    END Reduced;

    PROCEDURE (this: Assistant) PUTReduced* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809361, p1)
    END PUTReduced;

    PROCEDURE (this: Assistant) PUTAssistWithHelp* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809363, p1)
    END PUTAssistWithHelp;

    PROCEDURE (this: Assistant) AssistWithHelp* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809363)
    END AssistWithHelp;

    PROCEDURE (this: Assistant) PUTAssistWithWizards* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809365, p1)
    END PUTAssistWithWizards;

    PROCEDURE (this: Assistant) AssistWithWizards* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809365)
    END AssistWithWizards;

    PROCEDURE (this: Assistant) PUTAssistWithAlerts* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809367, p1)
    END PUTAssistWithAlerts;

    PROCEDURE (this: Assistant) AssistWithAlerts* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809367)
    END AssistWithAlerts;

    PROCEDURE (this: Assistant) PUTMoveWhenInTheWay* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809369, p1)
    END PUTMoveWhenInTheWay;

    PROCEDURE (this: Assistant) MoveWhenInTheWay* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809369)
    END MoveWhenInTheWay;

    PROCEDURE (this: Assistant) PUTSounds* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809371, p1)
    END PUTSounds;

    PROCEDURE (this: Assistant) Sounds* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809371)
    END Sounds;

    PROCEDURE (this: Assistant) PUTFeatureTips* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809373, p1)
    END PUTFeatureTips;

    PROCEDURE (this: Assistant) FeatureTips* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809373)
    END FeatureTips;

    PROCEDURE (this: Assistant) PUTMouseTips* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809375, p1)
    END PUTMouseTips;

    PROCEDURE (this: Assistant) MouseTips* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809375)
    END MouseTips;

    PROCEDURE (this: Assistant) PUTKeyboardShortcutTips* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809377, p1)
    END PUTKeyboardShortcutTips;

    PROCEDURE (this: Assistant) KeyboardShortcutTips* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809377)
    END KeyboardShortcutTips;

    PROCEDURE (this: Assistant) PUTHighPriorityTips* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809379, p1)
    END PUTHighPriorityTips;

    PROCEDURE (this: Assistant) HighPriorityTips* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809379)
    END HighPriorityTips;

    PROCEDURE (this: Assistant) PUTTipOfDay* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809381, p1)
    END PUTTipOfDay;

    PROCEDURE (this: Assistant) TipOfDay* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809381)
    END TipOfDay;

    PROCEDURE (this: Assistant) PUTGuessHelp* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809383, p1)
    END PUTGuessHelp;

    PROCEDURE (this: Assistant) GuessHelp* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809383)
    END GuessHelp;

    PROCEDURE (this: Assistant) PUTSearchWhenProgramming* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809385, p1)
    END PUTSearchWhenProgramming;

    PROCEDURE (this: Assistant) SearchWhenProgramming* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809385)
    END SearchWhenProgramming;

    PROCEDURE (this: Assistant) Item* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Item;

    PROCEDURE (this: Assistant) FileName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809388)
    END FileName;

    PROCEDURE (this: Assistant) PUTFileName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610809388, p1)
    END PUTFileName;

    PROCEDURE (this: Assistant) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610809390)
    END Name;

    PROCEDURE (this: Assistant) On* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610809391)
    END On;

    PROCEDURE (this: Assistant) PUTOn* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610809391, p1)
    END PUTOn;


    (* ---------- IFoundFiles, dual, nonextensible ---------- *)

    PROCEDURE (this: IFoundFiles) Item* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Item;

    PROCEDURE (this: IFoundFiles) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Count;

    PROCEDURE (this: IFoundFiles) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- IFind, dual, nonextensible ---------- *)

    PROCEDURE (this: IFind) SearchPath* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END SearchPath;

    PROCEDURE (this: IFind) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743809)
    END Name;

    PROCEDURE (this: IFind) SubDir* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743810)
    END SubDir;

    PROCEDURE (this: IFind) Title* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743811)
    END Title;

    PROCEDURE (this: IFind) Author* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743812)
    END Author;

    PROCEDURE (this: IFind) Keywords* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743813)
    END Keywords;

    PROCEDURE (this: IFind) Subject* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743814)
    END Subject;

    PROCEDURE (this: IFind) Options* (): MsoFileFindOptions, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743815)
    END Options;

    PROCEDURE (this: IFind) MatchCase* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743816)
    END MatchCase;

    PROCEDURE (this: IFind) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743817)
    END Text;

    PROCEDURE (this: IFind) PatternMatch* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1610743818)
    END PatternMatch;

    PROCEDURE (this: IFind) DateSavedFrom* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610743819)
    END DateSavedFrom;

    PROCEDURE (this: IFind) DateSavedTo* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610743820)
    END DateSavedTo;

    PROCEDURE (this: IFind) SavedBy* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 1610743821)
    END SavedBy;

    PROCEDURE (this: IFind) DateCreatedFrom* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610743822)
    END DateCreatedFrom;

    PROCEDURE (this: IFind) DateCreatedTo* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 1610743823)
    END DateCreatedTo;

    PROCEDURE (this: IFind) View* (): MsoFileFindView, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743824)
    END View;

    PROCEDURE (this: IFind) SortBy* (): MsoFileFindSortBy, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743825)
    END SortBy;

    PROCEDURE (this: IFind) ListBy* (): MsoFileFindListBy, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743826)
    END ListBy;

    PROCEDURE (this: IFind) SelectedFile* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743827)
    END SelectedFile;

    PROCEDURE (this: IFind) Results* (): IFoundFiles, NEW;
    BEGIN
        RETURN ThisIFoundFiles(CtlC.GetAny(this, 1610743828))
    END Results;

    PROCEDURE (this: IFind) Show* (): INTEGER, NEW;
        VAR ret: CtlT.Variant;
    BEGIN
        CtlC.CallMethod(this, 1610743829, ret);
        RETURN CtlC.VarInt(ret)
    END Show;

    PROCEDURE (this: IFind) PUTSearchPath* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTSearchPath;

    PROCEDURE (this: IFind) PUTName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743809, p1)
    END PUTName;

    PROCEDURE (this: IFind) PUTSubDir* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743810, p1)
    END PUTSubDir;

    PROCEDURE (this: IFind) PUTTitle* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743811, p1)
    END PUTTitle;

    PROCEDURE (this: IFind) PUTAuthor* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743812, p1)
    END PUTAuthor;

    PROCEDURE (this: IFind) PUTKeywords* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743813, p1)
    END PUTKeywords;

    PROCEDURE (this: IFind) PUTSubject* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743814, p1)
    END PUTSubject;

    PROCEDURE (this: IFind) PUTOptions* (p1: MsoFileFindOptions), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743815, p1)
    END PUTOptions;

    PROCEDURE (this: IFind) PUTMatchCase* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743816, p1)
    END PUTMatchCase;

    PROCEDURE (this: IFind) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743817, p1)
    END PUTText;

    PROCEDURE (this: IFind) PUTPatternMatch* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1610743818, p1)
    END PUTPatternMatch;

    PROCEDURE (this: IFind) PUTDateSavedFrom* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610743819, p1)
    END PUTDateSavedFrom;

    PROCEDURE (this: IFind) PUTDateSavedTo* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610743820, p1)
    END PUTDateSavedTo;

    PROCEDURE (this: IFind) PUTSavedBy* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 1610743821, p1)
    END PUTSavedBy;

    PROCEDURE (this: IFind) PUTDateCreatedFrom* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610743822, p1)
    END PUTDateCreatedFrom;

    PROCEDURE (this: IFind) PUTDateCreatedTo* (p1: CtlT.Any), NEW;
    BEGIN
        CtlC.PutAny(this, 1610743823, p1)
    END PUTDateCreatedTo;

    PROCEDURE (this: IFind) PUTView* (p1: MsoFileFindView), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743824, p1)
    END PUTView;

    PROCEDURE (this: IFind) PUTSortBy* (p1: MsoFileFindSortBy), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743825, p1)
    END PUTSortBy;

    PROCEDURE (this: IFind) PUTListBy* (p1: MsoFileFindListBy), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743826, p1)
    END PUTListBy;

    PROCEDURE (this: IFind) PUTSelectedFile* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743827, p1)
    END PUTSelectedFile;

    PROCEDURE (this: IFind) Execute* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1610743850, NIL);
    END Execute;

    PROCEDURE (this: IFind) Load* (bstrQueryName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrQueryName, arg[0]);
        CtlC.CallParMethod(this, 1610743851, arg, NIL);
    END Load;

    PROCEDURE (this: IFind) Save* (bstrQueryName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrQueryName, arg[0]);
        CtlC.CallParMethod(this, 1610743852, arg, NIL);
    END Save;

    PROCEDURE (this: IFind) Delete* (bstrQueryName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(bstrQueryName, arg[0]);
        CtlC.CallParMethod(this, 1610743853, arg, NIL);
    END Delete;

    PROCEDURE (this: IFind) FileType* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743854)
    END FileType;

    PROCEDURE (this: IFind) PUTFileType* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 1610743854, p1)
    END PUTFileType;


    (* ---------- FoundFiles, dual ---------- *)

    PROCEDURE (this: FoundFiles) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: FoundFiles) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: FoundFiles) Item* (Index: INTEGER): CtlT.Strg, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN CtlC.VarStr(ret)
    END Item;

    PROCEDURE (this: FoundFiles) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4)
    END Count;

    PROCEDURE (this: FoundFiles) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- PropertyTest, dual, nonextensible ---------- *)

    PROCEDURE (this: PropertyTest) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: PropertyTest) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: PropertyTest) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: PropertyTest) Condition* (): MsoCondition, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 2)
    END Condition;

    PROCEDURE (this: PropertyTest) Value* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 3)
    END Value;

    PROCEDURE (this: PropertyTest) SecondValue* (): CtlT.Any, NEW;
    BEGIN
        RETURN CtlC.GetAny(this, 4)
    END SecondValue;

    PROCEDURE (this: PropertyTest) Connector* (): MsoConnector, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 5)
    END Connector;


    (* ---------- PropertyTests, dual ---------- *)

    PROCEDURE (this: PropertyTests) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: PropertyTests) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: PropertyTests) Item* (Index: INTEGER): PropertyTest, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisPropertyTest(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: PropertyTests) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4)
    END Count;

    PROCEDURE (this: PropertyTests) Add* (Name: ARRAY OF CHAR; Condition: MsoCondition; Value: CtlT.Any; SecondValue: CtlT.Any; Connector: MsoConnector), NEW;
        VAR arg: ARRAY 5 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(Name, arg[4]);
        CtlC.IntVar(Condition, arg[3]);
        CtlC.AnyVar(Value, arg[2]);
        CtlC.AnyVar(SecondValue, arg[1]);
        CtlC.IntVar(Connector, arg[0]);
        CtlC.CallParMethod(this, 5, arg, NIL);
    END Add;

    PROCEDURE (this: PropertyTests) Remove* (Index: INTEGER), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallParMethod(this, 6, arg, NIL);
    END Remove;

    PROCEDURE (this: PropertyTests) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- FileSearch, dual ---------- *)

    PROCEDURE (this: FileSearch) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: FileSearch) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: FileSearch) SearchSubFolders* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 1)
    END SearchSubFolders;

    PROCEDURE (this: FileSearch) PUTSearchSubFolders* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 1, p1)
    END PUTSearchSubFolders;

    PROCEDURE (this: FileSearch) MatchTextExactly* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 2)
    END MatchTextExactly;

    PROCEDURE (this: FileSearch) PUTMatchTextExactly* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 2, p1)
    END PUTMatchTextExactly;

    PROCEDURE (this: FileSearch) MatchAllWordForms* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 3)
    END MatchAllWordForms;

    PROCEDURE (this: FileSearch) PUTMatchAllWordForms* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 3, p1)
    END PUTMatchAllWordForms;

    PROCEDURE (this: FileSearch) FileName* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 4)
    END FileName;

    PROCEDURE (this: FileSearch) PUTFileName* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 4, p1)
    END PUTFileName;

    PROCEDURE (this: FileSearch) FileType* (): MsoFileType, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 5)
    END FileType;

    PROCEDURE (this: FileSearch) PUTFileType* (p1: MsoFileType), NEW;
    BEGIN
        CtlC.PutInt(this, 5, p1)
    END PUTFileType;

    PROCEDURE (this: FileSearch) LastModified* (): MsoLastModified, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 6)
    END LastModified;

    PROCEDURE (this: FileSearch) PUTLastModified* (p1: MsoLastModified), NEW;
    BEGIN
        CtlC.PutInt(this, 6, p1)
    END PUTLastModified;

    PROCEDURE (this: FileSearch) TextOrProperty* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 7)
    END TextOrProperty;

    PROCEDURE (this: FileSearch) PUTTextOrProperty* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 7, p1)
    END PUTTextOrProperty;

    PROCEDURE (this: FileSearch) LookIn* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 8)
    END LookIn;

    PROCEDURE (this: FileSearch) PUTLookIn* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 8, p1)
    END PUTLookIn;

    PROCEDURE (this: FileSearch) Execute* (SortBy: MsoSortBy; SortOrder: MsoSortOrder; AlwaysAccurate: BOOLEAN): INTEGER, NEW;
        VAR arg: ARRAY 3 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(SortBy, arg[2]);
        CtlC.IntVar(SortOrder, arg[1]);
        CtlC.BoolVar(AlwaysAccurate, arg[0]);
        CtlC.CallParMethod(this, 9, arg, ret);
        RETURN CtlC.VarInt(ret)
    END Execute;

    PROCEDURE (this: FileSearch) NewSearch* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 10, NIL);
    END NewSearch;

    PROCEDURE (this: FileSearch) FoundFiles* (): FoundFiles, NEW;
    BEGIN
        RETURN ThisFoundFiles(CtlC.GetAny(this, 11))
    END FoundFiles;

    PROCEDURE (this: FileSearch) PropertyTests* (): PropertyTests, NEW;
    BEGIN
        RETURN ThisPropertyTests(CtlC.GetAny(this, 12))
    END PropertyTests;


    (* ---------- COMAddIn, dual, nonextensible ---------- *)

    PROCEDURE (this: COMAddIn) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: COMAddIn) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: COMAddIn) Description* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Description;

    PROCEDURE (this: COMAddIn) PUTDescription* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 0, p1)
    END PUTDescription;

    PROCEDURE (this: COMAddIn) ProgId* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 3)
    END ProgId;

    PROCEDURE (this: COMAddIn) Guid* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 4)
    END Guid;

    PROCEDURE (this: COMAddIn) Connect* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 6)
    END Connect;

    PROCEDURE (this: COMAddIn) PUTConnect* (p1: BOOLEAN), NEW;
    BEGIN
        CtlC.PutBool(this, 6, p1)
    END PUTConnect;

    PROCEDURE (this: COMAddIn) Object* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 7)
    END Object;

    PROCEDURE (this: COMAddIn) PUTObject* (p1: CtlT.Object), NEW;
    BEGIN
        CtlC.PutObj(this, 7, p1)
    END PUTObject;

    PROCEDURE (this: COMAddIn) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 8)
    END Parent;


    (* ---------- COMAddIns, dual, nonextensible ---------- *)

    PROCEDURE (this: COMAddIns) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: COMAddIns) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: COMAddIns) Item* (Index: CtlT.Any): COMAddIn, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisCOMAddIn(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: COMAddIns) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1)
    END Count;

    PROCEDURE (this: COMAddIns) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: COMAddIns) Update* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 2, NIL);
    END Update;

    PROCEDURE (this: COMAddIns) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 3)
    END Parent;

    PROCEDURE (this: COMAddIns) SetAppModal* (varfModal: BOOLEAN), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.BoolVar(varfModal, arg[0]);
        CtlC.CallParMethod(this, 4, arg, NIL);
    END SetAppModal;


    (* ---------- LanguageSettings, dual, nonextensible ---------- *)

    PROCEDURE (this: LanguageSettings) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: LanguageSettings) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: LanguageSettings) LanguageID* (Id: MsoAppLanguageID): INTEGER, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Id, arg[0]);
        CtlC.CallGetMethod(this, 1, arg, ret);
        RETURN CtlC.VarInt(ret)
    END LanguageID;

    PROCEDURE (this: LanguageSettings) LanguagePreferredForEditing* (lid: MsoLanguageID): BOOLEAN, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(lid, arg[0]);
        CtlC.CallGetMethod(this, 2, arg, ret);
        RETURN CtlC.VarBool(ret)
    END LanguagePreferredForEditing;


    (* ---------- ICommandBarsEvents, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ICommandBarsEvents) OnUpdate* (), NEW;
    BEGIN
        CtlC.CallMethod(this, 1, NIL);
    END OnUpdate;


    (* ---------- _CommandBarsEvents, hidden ---------- *)

    PROCEDURE (this: _CommandBarsEvents) OnUpdate* (), NEW, ABSTRACT;

    PROCEDURE (this: _CommandBarsEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 1: ASSERT(n = 0, 11); this.OnUpdate()
        END
    END Invoke;

    PROCEDURE (this: _CommandBarsEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{000C0352-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- ICommandBarComboBoxEvents, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ICommandBarComboBoxEvents) Change* (Ctrl: CommandBarComboBox), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Ctrl, arg[0]);
        CtlC.CallParMethod(this, 1, arg, NIL);
    END Change;


    (* ---------- _CommandBarComboBoxEvents, hidden ---------- *)

    PROCEDURE (this: _CommandBarComboBoxEvents) Change* (Ctrl: CommandBarComboBox), NEW, ABSTRACT;

    PROCEDURE (this: _CommandBarComboBoxEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 1: ASSERT(n = 1, 11); this.Change(This_CommandBarComboBox(CtlC.VarAny(par[0])))
        END
    END Invoke;

    PROCEDURE (this: _CommandBarComboBoxEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{000C0354-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- ICommandBarButtonEvents, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: ICommandBarButtonEvents) Click* (Ctrl: CommandBarButton; VAR CancelDefault: BOOLEAN), NEW;
        VAR arg: ARRAY 2 OF CtlT.Variant; CancelDefault_TEMP: CtlT.Variant;
    BEGIN
        CtlC.ObjVar(Ctrl, arg[1]);
        CtlC.BoolVar(CancelDefault, CancelDefault_TEMP);
        CtlC.RefBoolVar(CancelDefault_TEMP, arg[0]);
        CtlC.CallParMethod(this, 1, arg, NIL);
        CancelDefault := CtlC.VarBool(CancelDefault_TEMP);
    END Click;


    (* ---------- _CommandBarButtonEvents, hidden ---------- *)

    PROCEDURE (this: _CommandBarButtonEvents) Click* (Ctrl: CommandBarButton; VAR CancelDefault: BOOLEAN), NEW, ABSTRACT;

    PROCEDURE (this: _CommandBarButtonEvents) Invoke* (id, n: INTEGER; VAR par: CtlT.ParList; VAR ret: CtlT.Variant);
    BEGIN
        CASE id OF
        | 1: ASSERT(n = 2, 11); this.Click(This_CommandBarButton(CtlC.VarAny(par[1])), CtlC.VarRefBool(par[0])[0]); CtlC.RetBool(par[0])
        END
    END Invoke;

    PROCEDURE (this: _CommandBarButtonEvents) GetIID* (OUT iid: CtlT.GUID);
    BEGIN
        iid := "{000C0351-0000-0000-C000-000000000046}"
    END GetIID;


    (* ---------- WebPageFont, dual, nonextensible ---------- *)

    PROCEDURE (this: WebPageFont) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: WebPageFont) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: WebPageFont) ProportionalFont* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 10)
    END ProportionalFont;

    PROCEDURE (this: WebPageFont) PUTProportionalFont* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 10, p1)
    END PUTProportionalFont;

    PROCEDURE (this: WebPageFont) ProportionalFontSize* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 11)
    END ProportionalFontSize;

    PROCEDURE (this: WebPageFont) PUTProportionalFontSize* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 11, p1)
    END PUTProportionalFontSize;

    PROCEDURE (this: WebPageFont) FixedWidthFont* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 12)
    END FixedWidthFont;

    PROCEDURE (this: WebPageFont) PUTFixedWidthFont* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 12, p1)
    END PUTFixedWidthFont;

    PROCEDURE (this: WebPageFont) FixedWidthFontSize* (): SHORTREAL, NEW;
    BEGIN
        RETURN CtlC.GetSReal(this, 13)
    END FixedWidthFontSize;

    PROCEDURE (this: WebPageFont) PUTFixedWidthFontSize* (p1: SHORTREAL), NEW;
    BEGIN
        CtlC.PutSReal(this, 13, p1)
    END PUTFixedWidthFontSize;


    (* ---------- WebPageFonts, dual, nonextensible ---------- *)

    PROCEDURE (this: WebPageFonts) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: WebPageFonts) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: WebPageFonts) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1)
    END Count;

    PROCEDURE (this: WebPageFonts) Item* (Index: MsoCharacterSet): WebPageFont, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.IntVar(Index, arg[0]);
        CtlC.CallGetMethod(this, 0, arg, ret);
        RETURN ThisWebPageFont(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: WebPageFonts) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;


    (* ---------- HTMLProjectItem, dual, nonextensible ---------- *)

    PROCEDURE (this: HTMLProjectItem) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: HTMLProjectItem) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: HTMLProjectItem) Name* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 0)
    END Name;

    PROCEDURE (this: HTMLProjectItem) IsOpen* (): BOOLEAN, NEW;
    BEGIN
        RETURN CtlC.GetBool(this, 4)
    END IsOpen;

    PROCEDURE (this: HTMLProjectItem) LoadFromFile* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 5, arg, NIL);
    END LoadFromFile;

    PROCEDURE (this: HTMLProjectItem) Open* (OpenKind: MsoHTMLProjectOpen), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(OpenKind, arg[0]);
        CtlC.CallParMethod(this, 6, arg, NIL);
    END Open;

    PROCEDURE (this: HTMLProjectItem) SaveCopyAs* (FileName: ARRAY OF CHAR), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.StrVar(FileName, arg[0]);
        CtlC.CallParMethod(this, 7, arg, NIL);
    END SaveCopyAs;

    PROCEDURE (this: HTMLProjectItem) Text* (): CtlT.Strg, NEW;
    BEGIN
        RETURN CtlC.GetStr(this, 8)
    END Text;

    PROCEDURE (this: HTMLProjectItem) PUTText* (p1: ARRAY OF CHAR), NEW;
    BEGIN
        CtlC.PutStr(this, 8, p1)
    END PUTText;

    PROCEDURE (this: HTMLProjectItem) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 10)
    END Parent;


    (* ---------- HTMLProjectItems, dual, nonextensible ---------- *)

    PROCEDURE (this: HTMLProjectItems) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: HTMLProjectItems) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: HTMLProjectItems) Item* (Index: CtlT.Any): HTMLProjectItem, NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant; ret: CtlT.Variant;
    BEGIN
        CtlC.AnyVar(Index, arg[0]);
        CtlC.CallParMethod(this, 0, arg, ret);
        RETURN ThisHTMLProjectItem(CtlC.VarAny(ret))
    END Item;

    PROCEDURE (this: HTMLProjectItems) Count* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1)
    END Count;

    PROCEDURE (this: HTMLProjectItems) _NewEnum* (): CtlT.Enumerator, NEW;
    BEGIN
        RETURN CtlC.GetEnum(this, -4)
    END _NewEnum;

    PROCEDURE (this: HTMLProjectItems) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 2)
    END Parent;


    (* ---------- HTMLProject, dual, nonextensible ---------- *)

    PROCEDURE (this: HTMLProject) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: HTMLProject) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: HTMLProject) State* (): MsoHTMLProjectState, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 0)
    END State;

    PROCEDURE (this: HTMLProject) RefreshProject* (Refresh: BOOLEAN), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.BoolVar(Refresh, arg[0]);
        CtlC.CallParMethod(this, 1, arg, NIL);
    END RefreshProject;

    PROCEDURE (this: HTMLProject) RefreshDocument* (Refresh: BOOLEAN), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.BoolVar(Refresh, arg[0]);
        CtlC.CallParMethod(this, 2, arg, NIL);
    END RefreshDocument;

    PROCEDURE (this: HTMLProject) HTMLProjectItems* (): HTMLProjectItems, NEW;
    BEGIN
        RETURN ThisHTMLProjectItems(CtlC.GetAny(this, 3))
    END HTMLProjectItems;

    PROCEDURE (this: HTMLProject) Parent* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 4)
    END Parent;

    PROCEDURE (this: HTMLProject) Open* (OpenKind: MsoHTMLProjectOpen), NEW;
        VAR arg: ARRAY 1 OF CtlT.Variant;
    BEGIN
        CtlC.IntVar(OpenKind, arg[0]);
        CtlC.CallParMethod(this, 5, arg, NIL);
    END Open;


    (* ---------- MsoDebugOptions, hidden, dual, nonextensible ---------- *)

    PROCEDURE (this: MsoDebugOptions) Application* (): CtlT.Object, NEW;
    BEGIN
        RETURN CtlC.GetObj(this, 1610743808)
    END Application;

    PROCEDURE (this: MsoDebugOptions) Creator* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 1610743809)
    END Creator;

    PROCEDURE (this: MsoDebugOptions) FeatureReports* (): INTEGER, NEW;
    BEGIN
        RETURN CtlC.GetInt(this, 4)
    END FeatureReports;

    PROCEDURE (this: MsoDebugOptions) PUTFeatureReports* (p1: INTEGER), NEW;
    BEGIN
        CtlC.PutInt(this, 4, p1)
    END PUTFeatureReports;


    PROCEDURE NewCommandBars* (): _CommandBars;
    BEGIN
        RETURN This_CommandBars(CtlC.NewObj("{55F88893-7708-11D1-ACEB-006008961DA5}"))
    END NewCommandBars;

    PROCEDURE NewCommandBarComboBox* (): _CommandBarComboBox;
    BEGIN
        RETURN This_CommandBarComboBox(CtlC.NewObj("{55F88897-7708-11D1-ACEB-006008961DA5}"))
    END NewCommandBarComboBox;

    PROCEDURE NewCommandBarButton* (): _CommandBarButton;
    BEGIN
        RETURN This_CommandBarButton(CtlC.NewObj("{55F88891-7708-11D1-ACEB-006008961DA5}"))
    END NewCommandBarButton;

END CtlOffice.
