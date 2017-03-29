.class public Lcom/github/mikephil/charting/data/BarDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.source "BarDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mBarShadowColor:I

.field private mBarSpace:F

.field private mHighLightAlpha:I

.field private mStackLabels:[Ljava/lang/String;

.field private mStackSize:I


# virtual methods
.method protected calcMinMax(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    .line 104
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    .local v3, "yValCount":I
    if-nez v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    if-eqz p2, :cond_2

    if-lt p2, v3, :cond_5

    .line 112
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 116
    .local v1, "endValue":I
    :goto_1
    iput p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mLastStart:I

    .line 117
    iput v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mLastEnd:I

    .line 119
    iput v7, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 120
    const v4, -0x800001

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    .line 122
    move v2, p1

    .local v2, "i":I
    :goto_2
    if-gt v2, v1, :cond_8

    .line 124
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 126
    .local v0, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 128
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v4

    if-nez v4, :cond_6

    .line 130
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 131
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 133
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 134
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    .line 122
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 114
    .end local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_1

    .line 137
    .restart local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v4

    neg-float v4, v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 138
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v4

    neg-float v4, v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 140
    :cond_7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 141
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    goto :goto_3

    .line 146
    .end local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    :cond_8
    iget v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 147
    iput v6, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 148
    iput v6, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    goto/16 :goto_0
.end method

.method public getBarShadowColor()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    return v0
.end method

.method public getBarSpace()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarSpace:F

    return v0
.end method

.method public getHighLightAlpha()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    return v0
.end method

.method public getStackLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getStackSize()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    return v0
.end method

.method public isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 168
    iget v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
