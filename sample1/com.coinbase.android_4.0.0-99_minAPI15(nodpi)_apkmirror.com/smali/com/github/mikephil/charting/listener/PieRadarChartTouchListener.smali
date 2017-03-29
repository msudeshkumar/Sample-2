.class public Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;
.super Lcom/github/mikephil/charting/listener/ChartTouchListener;
.source "PieRadarChartTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/listener/ChartTouchListener",
        "<",
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private _velocitySamples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;",
            ">;"
        }
    .end annotation
.end field

.field private mDecelerationAngularVelocity:F

.field private mDecelerationLastTime:J

.field private mStartAngle:F

.field private mTouchStartPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "chart":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<*>;"
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    .line 32
    iput v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mStartAngle:F

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationLastTime:J

    .line 37
    iput v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    .line 41
    return-void
.end method

.method private calculateVelocity()F
    .locals 12

    .prologue
    .line 236
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    const/4 v6, 0x0

    .line 279
    :cond_0
    :goto_0
    return v6

    .line 239
    :cond_1
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;

    .line 240
    .local v2, "firstSample":Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;

    .line 243
    .local v4, "lastSample":Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;
    move-object v0, v2

    .line 244
    .local v0, "beforeLastSample":Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 245
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "beforeLastSample":Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;
    check-cast v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;

    .line 246
    .restart local v0    # "beforeLastSample":Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;
    iget v7, v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    iget v8, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    .line 252
    :cond_2
    iget-wide v8, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->time:J

    iget-wide v10, v2, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->time:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float v5, v7, v8

    .line 253
    .local v5, "timeDelta":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_3

    .line 254
    const v5, 0x3dcccccd    # 0.1f

    .line 259
    :cond_3
    iget v7, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    iget v8, v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    const/4 v1, 0x1

    .line 260
    .local v1, "clockwise":Z
    :goto_2
    iget v7, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    iget v8, v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x4070e00000000000L    # 270.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_4

    .line 261
    if-nez v1, :cond_8

    const/4 v1, 0x1

    .line 265
    :cond_4
    :goto_3
    iget v7, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    iget v8, v2, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_9

    .line 266
    iget v7, v2, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    float-to-double v8, v7

    const-wide v10, 0x4076800000000000L    # 360.0

    add-double/2addr v8, v10

    double-to-float v7, v8

    iput v7, v2, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    .line 272
    :cond_5
    :goto_4
    iget v7, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    iget v8, v2, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 275
    .local v6, "velocity":F
    if-nez v1, :cond_0

    .line 276
    neg-float v6, v6

    goto/16 :goto_0

    .line 244
    .end local v1    # "clockwise":Z
    .end local v5    # "timeDelta":F
    .end local v6    # "velocity":F
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 259
    .restart local v5    # "timeDelta":F
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 261
    .restart local v1    # "clockwise":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 267
    :cond_9
    iget v7, v2, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    iget v8, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_5

    .line 268
    iget v7, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    float-to-double v8, v7

    const-wide v10, 0x4076800000000000L    # 360.0

    add-double/2addr v8, v10

    double-to-float v7, v8

    iput v7, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    goto :goto_4
.end method

.method private resetVelocity()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    return-void
.end method

.method private sampleVelocity(FF)V
    .locals 8
    .param p1, "touchLocationX"    # F
    .param p2, "touchLocationY"    # F

    .prologue
    .line 218
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 220
    .local v2, "currentTime":J
    iget-object v5, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v4, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v4

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;-><init>(Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;JF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    add-int/lit8 v4, v0, -0x2

    if-lez v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;

    iget-wide v4, v4, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->time:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->_velocitySamples:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    add-int/lit8 v1, v1, -0x1

    .line 227
    add-int/lit8 v0, v0, -0x1

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 8

    .prologue
    .line 313
    iget v3, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 330
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 318
    .local v0, "currentTime":J
    iget v4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getDragDecelerationFrictionCoef()F

    move-result v3

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    .line 320
    iget-wide v4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationLastTime:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v2, v3, v4

    .line 322
    .local v2, "timeInterval":F
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 324
    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationLastTime:J

    .line 326
    iget v3, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->stopDeceleration()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    sget-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->LONG_PRESS:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 127
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 129
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartLongPressed(Landroid/view/MotionEvent;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 142
    sget-object v7, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->SINGLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 144
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v5

    .line 146
    .local v5, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v5, :cond_0

    .line 147
    invoke-interface {v5, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartSingleTapped(Landroid/view/MotionEvent;)V

    .line 150
    :cond_0
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->isHighlightPerTapEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 151
    const/4 v7, 0x0

    .line 209
    :goto_0
    return v7

    .line 154
    :cond_1
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v2

    .line 157
    .local v2, "distance":F
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_3

    .line 161
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    if-nez v7, :cond_2

    .line 162
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 166
    :goto_1
    iput-object v10, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    .line 209
    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    .line 164
    :cond_2
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->highlightTouch(Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_1

    .line 170
    :cond_3
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v0

    .line 172
    .local v0, "angle":F
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    instance-of v7, v7, Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz v7, :cond_4

    .line 173
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    div-float/2addr v0, v7

    .line 176
    :cond_4
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getIndexForAngle(F)I

    move-result v4

    .line 179
    .local v4, "index":I
    if-gez v4, :cond_5

    .line 181
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 182
    iput-object v10, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_2

    .line 186
    :cond_5
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getSelectionDetailsAtIndex(I)Ljava/util/List;

    move-result-object v6

    .line 188
    .local v6, "valsAtIndex":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const/4 v1, 0x0

    .line 193
    .local v1, "dataSetIndex":I
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    instance-of v7, v7, Lcom/github/mikephil/charting/charts/RadarChart;

    if-eqz v7, :cond_6

    .line 195
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v7

    div-float v7, v2, v7

    invoke-static {v6, v7, v10}, Lcom/github/mikephil/charting/utils/Utils;->getClosestDataSetIndex(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)I

    move-result v1

    .line 199
    :cond_6
    if-gez v1, :cond_7

    .line 200
    iget-object v7, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 201
    iput-object v10, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_2

    .line 203
    :cond_7
    new-instance v3, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v3, v4, v1}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    .line 204
    .local v3, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {p0, v3, p1}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->performHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/view/MotionEvent;)V

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 47
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v4

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->isRotationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 54
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 56
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->startAction(Landroid/view/MotionEvent;)V

    .line 62
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->stopDeceleration()V

    .line 64
    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->resetVelocity()V

    .line 66
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->isDragDecelerationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->sampleVelocity(FF)V

    .line 69
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->setGestureStartAngle(FF)V

    .line 70
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 71
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->isDragDecelerationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->sampleVelocity(FF)V

    .line 79
    :cond_3
    iget v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchMode:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v1, v3}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->distance(FFFF)F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 82
    sget-object v2, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->ROTATE:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 83
    iput v5, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchMode:I

    .line 84
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->disableScroll()V

    .line 90
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->endAction(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 85
    :cond_5
    iget v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchMode:I

    if-ne v2, v5, :cond_4

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->updateGestureRotation(FF)V

    .line 87
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->invalidate()V

    goto :goto_1

    .line 95
    :pswitch_2
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->isDragDecelerationEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->stopDeceleration()V

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->sampleVelocity(FF)V

    .line 101
    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->calculateVelocity()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    .line 103
    iget v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 104
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationLastTime:J

    .line 106
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 110
    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->enableScroll()V

    .line 111
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mTouchMode:I

    .line 113
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->endAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setGestureStartAngle(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 290
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRawRotationAngle()F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mStartAngle:F

    .line 291
    return-void
.end method

.method public stopDeceleration()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mDecelerationAngularVelocity:F

    .line 309
    return-void
.end method

.method public updateGestureRotation(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 301
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v1

    iget v2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->mStartAngle:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 302
    return-void
.end method
