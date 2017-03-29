.class public abstract Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "PieRadarChartBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<+",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mMinOffset:F

.field private mRawRotationAngle:F

.field protected mRotateEnabled:Z

.field private mRotationAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 49
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    .line 58
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXVals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mDeltaX:F

    .line 70
    return-void
.end method

.method public calculateOffsets()V
    .locals 31

    .prologue
    .line 104
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v14, 0x0

    .local v14, "legendLeft":F
    const/4 v15, 0x0

    .local v15, "legendRight":F
    const/4 v12, 0x0

    .local v12, "legendBottom":F
    const/16 v16, 0x0

    .line 106
    .local v16, "legendTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v30

    mul-float v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(FF)F

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v29

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v29

    add-float v11, v28, v29

    .line 112
    .local v11, "fullLegendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 115
    const/high16 v28, 0x41500000    # 13.0f

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v25

    .line 117
    .local v25, "spacing":F
    add-float v15, v11, v25

    .line 210
    .end local v25    # "spacing":F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v28

    add-float v14, v14, v28

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v28

    add-float v15, v15, v28

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v28

    add-float v16, v16, v28

    .line 215
    .end local v11    # "fullLegendWidth":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v19

    .line 217
    .local v19, "minOffset":F
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/github/mikephil/charting/charts/RadarChart;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v28, p0

    .line 218
    check-cast v28, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/RadarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v26

    .line 220
    .local v26, "x":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 221
    move-object/from16 v0, v26

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 225
    .end local v26    # "x":Lcom/github/mikephil/charting/components/XAxis;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraTopOffset()F

    move-result v28

    add-float v16, v16, v28

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraRightOffset()F

    move-result v28

    add-float v15, v15, v28

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraBottomOffset()F

    move-result v28

    add-float v12, v12, v28

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraLeftOffset()F

    move-result v28

    add-float v14, v14, v28

    .line 230
    move/from16 v0, v19

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 231
    .local v21, "offsetLeft":F
    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 232
    .local v23, "offsetTop":F
    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 233
    .local v22, "offsetRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v28

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v28

    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 235
    .local v20, "offsetBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLogEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 238
    const-string v28, "MPAndroidChart"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "offsetLeft: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", offsetTop: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", offsetRight: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", offsetBottom: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_3
    return-void

    .line 119
    .end local v19    # "minOffset":F
    .end local v20    # "offsetBottom":F
    .end local v21    # "offsetLeft":F
    .end local v22    # "offsetRight":F
    .end local v23    # "offsetTop":F
    .restart local v11    # "fullLegendWidth":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 122
    const/high16 v28, 0x41000000    # 8.0f

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v25

    .line 124
    .restart local v25    # "spacing":F
    add-float v17, v11, v25

    .line 126
    .local v17, "legendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    move/from16 v29, v0

    add-float v13, v28, v29

    .line 128
    .local v13, "legendHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v7

    .line 130
    .local v7, "c":Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v17

    const/high16 v29, 0x41700000    # 15.0f

    add-float v28, v28, v29

    const/high16 v29, 0x41700000    # 15.0f

    add-float v29, v29, v13

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 131
    .local v6, "bottomRight":Landroid/graphics/PointF;
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v9

    .line 133
    .local v9, "distLegend":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v28

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v7, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v24

    .line 136
    .local v24, "reference":Landroid/graphics/PointF;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v10

    .line 137
    .local v10, "distReference":F
    const/high16 v28, 0x40a00000    # 5.0f

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v18

    .line 139
    .local v18, "min":F
    cmpg-float v28, v9, v10

    if-gez v28, :cond_5

    .line 141
    sub-float v8, v10, v9

    .line 142
    .local v8, "diff":F
    add-float v15, v18, v8

    .line 145
    .end local v8    # "diff":F
    :cond_5
    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v17

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_0

    .line 146
    move/from16 v15, v17

    goto/16 :goto_0

    .line 149
    .end local v6    # "bottomRight":Landroid/graphics/PointF;
    .end local v7    # "c":Landroid/graphics/PointF;
    .end local v9    # "distLegend":F
    .end local v10    # "distReference":F
    .end local v13    # "legendHeight":F
    .end local v17    # "legendWidth":F
    .end local v18    # "min":F
    .end local v24    # "reference":Landroid/graphics/PointF;
    .end local v25    # "spacing":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 152
    const/high16 v28, 0x41500000    # 13.0f

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v25

    .line 154
    .restart local v25    # "spacing":F
    add-float v14, v11, v25

    .line 156
    goto/16 :goto_0

    .end local v25    # "spacing":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 159
    const/high16 v28, 0x41000000    # 8.0f

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v25

    .line 161
    .restart local v25    # "spacing":F
    add-float v17, v11, v25

    .line 163
    .restart local v17    # "legendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    move/from16 v29, v0

    add-float v13, v28, v29

    .line 165
    .restart local v13    # "legendHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v7

    .line 167
    .restart local v7    # "c":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    const/high16 v28, 0x41700000    # 15.0f

    sub-float v28, v17, v28

    const/high16 v29, 0x41700000    # 15.0f

    add-float v29, v29, v13

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 168
    .local v5, "bottomLeft":Landroid/graphics/PointF;
    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v9

    .line 170
    .restart local v9    # "distLegend":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v28

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v7, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v24

    .line 173
    .restart local v24    # "reference":Landroid/graphics/PointF;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v10

    .line 174
    .restart local v10    # "distReference":F
    const/high16 v28, 0x40a00000    # 5.0f

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v18

    .line 176
    .restart local v18    # "min":F
    cmpg-float v28, v9, v10

    if-gez v28, :cond_8

    .line 178
    sub-float v8, v10, v9

    .line 179
    .restart local v8    # "diff":F
    add-float v14, v18, v8

    .line 182
    .end local v8    # "diff":F
    :cond_8
    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v17

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_0

    .line 183
    move/from16 v14, v17

    goto/16 :goto_0

    .line 186
    .end local v5    # "bottomLeft":Landroid/graphics/PointF;
    .end local v7    # "c":Landroid/graphics/PointF;
    .end local v9    # "distLegend":F
    .end local v10    # "distReference":F
    .end local v13    # "legendHeight":F
    .end local v17    # "legendWidth":F
    .end local v18    # "min":F
    .end local v24    # "reference":Landroid/graphics/PointF;
    .end local v25    # "spacing":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 193
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredLegendOffset()F

    move-result v27

    .line 195
    .local v27, "yOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v28, v0

    add-float v28, v28, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v30

    mul-float v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 197
    goto/16 :goto_0

    .end local v27    # "yOffset":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v28

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 204
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredLegendOffset()F

    move-result v27

    .line 206
    .restart local v27    # "yOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v28, v0

    add-float v28, v28, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v30

    mul-float v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto/16 :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    instance-of v0, v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    check-cast v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->computeScroll()V

    .line 86
    :cond_0
    return-void
.end method

.method public distanceToCenter(FF)F
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 300
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 302
    .local v0, "c":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 304
    .local v1, "dist":F
    const/4 v2, 0x0

    .line 305
    .local v2, "xDist":F
    const/4 v3, 0x0

    .line 307
    .local v3, "yDist":F
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    .line 308
    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v4

    .line 313
    :goto_0
    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    .line 314
    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v4

    .line 320
    :goto_1
    float-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 322
    return v1

    .line 310
    :cond_0
    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, v4, p1

    goto :goto_0

    .line 316
    :cond_1
    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v3, v4, p2

    goto :goto_1
.end method

.method public getAngleForPoint(FF)F
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 253
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v1

    .line 255
    .local v1, "c":Landroid/graphics/PointF;
    iget v10, v1, Landroid/graphics/PointF;->x:F

    sub-float v10, p1, v10

    float-to-double v6, v10

    .local v6, "tx":D
    iget v10, v1, Landroid/graphics/PointF;->y:F

    sub-float v10, p2, v10

    float-to-double v8, v10

    .line 256
    .local v8, "ty":D
    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 257
    .local v2, "length":D
    div-double v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    .line 259
    .local v4, "r":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v0, v10

    .line 261
    .local v0, "angle":F
    iget v10, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v10, p1, v10

    if-lez v10, :cond_0

    .line 262
    const/high16 v10, 0x43b40000    # 360.0f

    sub-float v0, v10, v0

    .line 265
    :cond_0
    const/high16 v10, 0x42b40000    # 90.0f

    add-float/2addr v0, v10

    .line 268
    const/high16 v10, 0x43b40000    # 360.0f

    cmpl-float v10, v0, v10

    if-lez v10, :cond_1

    .line 269
    const/high16 v10, 0x43b40000    # 360.0f

    sub-float/2addr v0, v10

    .line 271
    :cond_1
    return v0
.end method

.method public getDiameter()F
    .locals 3

    .prologue
    .line 402
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 403
    .local v0, "content":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public abstract getIndexForAngle(F)I
.end method

.method public getMinOffset()F
    .locals 1

    .prologue
    .line 388
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    return v0
.end method

.method protected getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 8
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "dist"    # F
    .param p3, "angle"    # F

    .prologue
    .line 285
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 287
    .local v0, "p":Landroid/graphics/PointF;
    return-object v0
.end method

.method public abstract getRadius()F
.end method

.method public getRawRotationAngle()F
    .locals 1

    .prologue
    .line 354
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    return v0
.end method

.method protected abstract getRequiredBaseOffset()F
.end method

.method protected abstract getRequiredLegendOffset()F
.end method

.method public getRotationAngle()F
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    return v0
.end method

.method public getSelectionDetailsAtIndex(I)Ljava/util/List;
    .locals 5
    .param p1, "xIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelectionDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 454
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v0

    .line 457
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValForXIndex(I)F

    move-result v3

    .line 458
    .local v3, "yVal":F
    const/high16 v4, 0x7fc00000    # NaNf

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 452
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    new-instance v4, Lcom/github/mikephil/charting/utils/SelectionDetail;

    invoke-direct {v4, v3, v1, v0}, Lcom/github/mikephil/charting/utils/SelectionDetail;-><init>(FILcom/github/mikephil/charting/data/DataSet;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    .end local v3    # "yVal":F
    :cond_1
    return-object v2
.end method

.method public getYChartMax()F
    .locals 1

    .prologue
    .line 431
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    .prologue
    .line 437
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 64
    new-instance v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 65
    return-void
.end method

.method public isRotationEnabled()Z
    .locals 1

    .prologue
    .line 383
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mDataNotSet:Z

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calcMinMax()V

    .line 95
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calculateOffsets()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setMinOffset(F)V
    .locals 0
    .param p1, "minOffset"    # F

    .prologue
    .line 393
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    .line 394
    return-void
.end method

.method public setRotationAngle(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 341
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 342
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->getNormalizedAngle(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 343
    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 374
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 375
    return-void
.end method
