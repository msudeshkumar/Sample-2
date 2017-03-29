.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;,
        Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    }
.end annotation


# instance fields
.field private mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

.field private mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

.field private mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

.field private mColors:[I

.field private mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private mExtraColors:[I

.field private mExtraLabels:[Ljava/lang/String;

.field private mFormSize:F

.field private mFormToTextSpace:F

.field private mIsLegendCustom:Z

.field private mLabels:[Ljava/lang/String;

.field private mMaxSizePercent:F

.field public mNeededHeight:F

.field public mNeededWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field private mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mStackSpace:F

.field public mTextHeightMax:F

.field public mTextWidthMax:F

.field private mWordWrapEnabled:Z

.field private mXEntrySpace:F

.field private mYEntrySpace:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    .line 64
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 67
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 70
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 73
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 76
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 81
    iput v5, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 86
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 93
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 96
    iput v4, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 99
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 555
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 558
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 560
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 562
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 565
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 618
    new-array v0, v2, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 619
    new-array v0, v2, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    .line 620
    new-array v0, v2, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 104
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 105
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 106
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 107
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 108
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextSize:F

    .line 109
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 110
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXOffset:F

    .line 111
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYOffset:F

    .line 112
    return-void
.end method


# virtual methods
.method public calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 18
    .param p1, "labelpaint"    # Landroid/graphics/Paint;
    .param p2, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 648
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 649
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getFullHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 650
    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 651
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 770
    :goto_0
    return-void

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 660
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v8, v15

    .line 661
    .local v8, "labelCount":I
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v9

    .line 662
    .local v9, "labelLineHeight":F
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    move/from16 v16, v0

    add-float v10, v15, v16

    .line 663
    .local v10, "labelLineSpacing":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v4

    .line 666
    .local v4, "contentWidth":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    .local v2, "calculatedLabelSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v1, "calculatedLabelBreakPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v3, "calculatedLineSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    const/4 v11, 0x0

    .line 672
    .local v11, "maxLineWidth":F
    const/4 v5, 0x0

    .line 673
    .local v5, "currentLineWidth":F
    const/4 v13, 0x0

    .line 674
    .local v13, "requiredWidth":F
    const/4 v14, -0x1

    .line 676
    .local v14, "stackedStartIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_10

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    aget v15, v15, v7

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    const/4 v6, 0x1

    .line 680
    .local v6, "drawingForm":Z
    :goto_2
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 686
    const/4 v13, 0x0

    .line 693
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    if-eqz v15, :cond_b

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    move/from16 v16, v0

    add-float v15, v15, v16

    :goto_4
    add-float/2addr v13, v15

    .line 697
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/utils/FSize;

    iget v15, v15, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v13, v15

    .line 709
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    if-nez v15, :cond_4

    add-int/lit8 v15, v8, -0x1

    if-ne v7, v15, :cond_6

    .line 711
    :cond_4
    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-nez v15, :cond_d

    const/4 v12, 0x0

    .line 713
    .local v12, "requiredSpacing":F
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_5

    sub-float v15, v4, v5

    add-float v16, v12, v13

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_e

    .line 721
    :cond_5
    add-float v15, v12, v13

    add-float/2addr v5, v15

    .line 735
    :goto_7
    add-int/lit8 v15, v8, -0x1

    if-ne v7, v15, :cond_6

    .line 737
    new-instance v15, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v15, v5, v9}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 742
    .end local v12    # "requiredSpacing":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    if-eqz v15, :cond_7

    const/4 v14, -0x1

    .line 676
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 678
    .end local v6    # "drawingForm":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 689
    .restart local v6    # "drawingForm":Z
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    add-float/2addr v13, v15

    goto :goto_3

    .line 696
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .line 700
    :cond_b
    new-instance v15, Lcom/github/mikephil/charting/utils/FSize;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    :goto_8
    add-float/2addr v13, v15

    .line 703
    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    .line 705
    move v14, v7

    goto :goto_5

    .line 701
    :cond_c
    const/4 v15, 0x0

    goto :goto_8

    .line 711
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    goto :goto_6

    .line 726
    .restart local v12    # "requiredSpacing":F
    :cond_e
    new-instance v15, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v15, v5, v9}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 730
    const/4 v15, -0x1

    if-le v14, v15, :cond_f

    move v15, v14

    :goto_9
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 732
    move v5, v13

    goto :goto_7

    :cond_f
    move v15, v7

    .line 730
    goto :goto_9

    .line 745
    .end local v6    # "drawingForm":Z
    .end local v12    # "requiredSpacing":F
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/github/mikephil/charting/utils/FSize;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 747
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/Boolean;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    .line 749
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/github/mikephil/charting/utils/FSize;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 752
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 753
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 754
    move-object/from16 v0, p0

    iput v11, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 755
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    array-length v15, v15

    int-to-float v15, v15

    mul-float v16, v9, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    array-length v15, v15

    if-nez v15, :cond_11

    const/4 v15, 0x0

    :goto_a
    int-to-float v15, v15

    mul-float/2addr v15, v10

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 765
    .end local v1    # "calculatedLabelBreakPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v2    # "calculatedLabelSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v3    # "calculatedLineSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v4    # "contentWidth":F
    .end local v5    # "currentLineWidth":F
    .end local v7    # "i":I
    .end local v8    # "labelCount":I
    .end local v9    # "labelLineHeight":F
    .end local v10    # "labelLineSpacing":F
    .end local v11    # "maxLineWidth":F
    .end local v13    # "requiredWidth":F
    .end local v14    # "stackedStartIndex":I
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getFullWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 766
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 767
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 768
    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    goto/16 :goto_0
.end method

.method public getCalculatedLabelBreakPoints()[Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCalculatedLabelSizes()[Lcom/github/mikephil/charting/utils/FSize;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    return-object v0
.end method

.method public getCalculatedLineSizes()[Lcom/github/mikephil/charting/utils/FSize;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    return-object v0
.end method

.method public getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public getExtraColors()[I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraColors:[I

    return-object v0
.end method

.method public getExtraLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormSize()F
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    return v0
.end method

.method public getFormToTextSpace()F
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    return v0
.end method

.method public getFullHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p1, "labelpaint"    # Landroid/graphics/Paint;

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 546
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 547
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    add-float/2addr v0, v2

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_1
    return v0
.end method

.method public getFullWidth(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "labelpaint"    # Landroid/graphics/Paint;

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 506
    .local v1, "width":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 512
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    aget v2, v2, v0

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    .line 513
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    iget v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 517
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 518
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    add-float/2addr v1, v2

    .line 506
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_2
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v1, v2

    .line 521
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 522
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    add-float/2addr v1, v2

    goto :goto_1

    .line 526
    :cond_3
    return v1
.end method

.method public getLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSizePercent()F
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    return v0
.end method

.method public getMaximumEntryHeight(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 209
    .local v2, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v1, v3

    .line 215
    .local v1, "length":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 216
    move v2, v1

    .line 209
    .end local v1    # "length":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return v2
.end method

.method public getMaximumEntryWidth(Landroid/graphics/Paint;)F
    .locals 5
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v1, v3

    .line 191
    .local v1, "length":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 192
    move v2, v1

    .line 185
    .end local v1    # "length":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v3, v4

    return v3
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    return-object v0
.end method

.method public getStackSpace()F
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    return v0
.end method

.method public getXEntrySpace()F
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    return v0
.end method

.method public getYEntrySpace()F
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    return v0
.end method

.method public isLegendCustom()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    return v0
.end method

.method public setComputedColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 164
    return-void
.end method

.method public setComputedLabels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0
    .param p1, "shape"    # Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 400
    return-void
.end method
