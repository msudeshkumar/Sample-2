.class public Lcom/github/mikephil/charting/data/BubbleDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.source "BubbleDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/BubbleEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mHighlightCircleWidth:F

.field protected mMaxSize:F

.field protected mXMax:F

.field protected mXMin:F


# direct methods
.method private largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v0

    return v0
.end method

.method private xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method

.method private yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method


# virtual methods
.method protected calcMinMax(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 50
    iget-object v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 107
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getYVals()Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    if-nez p2, :cond_7

    .line 58
    iget-object v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 62
    .local v0, "endValue":I
    :goto_0
    iput p1, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mLastStart:I

    .line 63
    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mLastEnd:I

    .line 65
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-direct {p0, v9}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v9

    iput v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    .line 66
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-direct {p0, v9}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v9

    iput v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    .line 70
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-gt v3, v0, :cond_0

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 74
    .local v2, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v8

    .line 75
    .local v8, "ymin":F
    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v7

    .line 77
    .local v7, "ymax":F
    iget v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    .line 79
    iput v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    .line 82
    :cond_2
    iget v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3

    .line 84
    iput v7, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    .line 87
    :cond_3
    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v6

    .line 88
    .local v6, "xmin":F
    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v5

    .line 90
    .local v5, "xmax":F
    iget v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    .line 92
    iput v6, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    .line 95
    :cond_4
    iget v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    cmpl-float v9, v5, v9

    if-lez v9, :cond_5

    .line 97
    iput v5, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    .line 100
    :cond_5
    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v4

    .line 102
    .local v4, "size":F
    iget v9, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    cmpl-float v9, v4, v9

    if-lez v9, :cond_6

    .line 104
    iput v4, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    .line 70
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "endValue":I
    .end local v2    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v3    # "i":I
    .end local v4    # "size":F
    .end local v5    # "xmax":F
    .end local v6    # "xmin":F
    .end local v7    # "ymax":F
    .end local v8    # "ymin":F
    :cond_7
    move v0, p2

    .restart local v0    # "endValue":I
    goto :goto_0
.end method

.method public getHighlightCircleWidth()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighlightCircleWidth:F

    return v0
.end method

.method public getMaxSize()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    return v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    return v0
.end method
