.class public Lcom/github/mikephil/charting/data/CandleDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "CandleDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/CandleEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mBodySpace:F

.field protected mDecreasingColor:I

.field protected mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

.field protected mIncreasingColor:I

.field protected mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

.field protected mShadowColor:I

.field private mShadowColorSameAsCandle:Z

.field private mShadowWidth:F


# virtual methods
.method protected calcMinMax(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 75
    iget-object v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 103
    :cond_0
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    .line 82
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p2, v4, :cond_5

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 87
    .local v1, "endValue":I
    :goto_0
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mLastStart:I

    .line 88
    iput v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mLastEnd:I

    .line 90
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    .line 91
    const v4, -0x800001

    iput v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    .line 93
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-gt v3, v1, :cond_0

    .line 95
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 97
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 98
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    .line 100
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 101
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    .line 93
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v1    # "endValue":I
    .end local v3    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_0
.end method

.method public getBodySpace()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    return v0
.end method

.method public getDecreasingColor()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingColor:I

    return v0
.end method

.method public getDecreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getIncreasingColor()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingColor:I

    return v0
.end method

.method public getIncreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    return v0
.end method

.method public getShadowColorSameAsCandle()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColorSameAsCandle:Z

    return v0
.end method

.method public getShadowWidth()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    return v0
.end method
