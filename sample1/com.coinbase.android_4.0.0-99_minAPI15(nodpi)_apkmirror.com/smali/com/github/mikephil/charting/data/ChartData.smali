.class public abstract Lcom/github/mikephil/charting/data/ChartData;
.super Ljava/lang/Object;
.source "ChartData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDataSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mLastEnd:I

.field protected mLastStart:I

.field protected mLeftAxisMax:F

.field protected mLeftAxisMin:F

.field protected mRightAxisMax:F

.field protected mRightAxisMin:F

.field private mXValAverageLength:F

.field protected mXVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mYMax:F

.field protected mYMin:F

.field private mYValCount:I

.field private mYValueSum:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 33
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 39
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 44
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 49
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 54
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 59
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 65
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 33
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 39
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 44
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 49
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 54
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 59
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 65
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 115
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 116
    iput-object p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 118
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 119
    return-void
.end method

.method private calcXValAverageLength()V
    .locals 3

    .prologue
    .line 166
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 167
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 173
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    goto :goto_0
.end method

.method private checkLegal()V
    .locals 3

    .prologue
    .line 186
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v1, :cond_1

    .line 200
    :cond_0
    return-void

    .line 189
    :cond_1
    instance-of v1, p0, Lcom/github/mikephil/charting/data/ScatterData;

    if-nez v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 196
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more of the DataSet Entry arrays are longer than the x-values array of this ChartData object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .local p2, "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-nez p1, :cond_1

    .line 619
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 620
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    if-nez p2, :cond_0

    .line 622
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 623
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method


# virtual methods
.method public calcMinMax(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    .line 215
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 217
    :cond_0
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 218
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 284
    :goto_0
    return-void

    .line 221
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 222
    iput p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 224
    iput v8, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 225
    const v5, -0x800001

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 227
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 229
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5, p1, p2}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 231
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 232
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 234
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 235
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 227
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    :cond_4
    iget v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_5

    .line 239
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 240
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v1

    .line 246
    .local v1, "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-eqz v1, :cond_8

    .line 248
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 249
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 251
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 252
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v5, v6, :cond_6

    .line 253
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 254
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 256
    :cond_7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 257
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    goto :goto_2

    .line 263
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    .line 265
    .local v2, "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-eqz v2, :cond_b

    .line 267
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 268
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 270
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 271
    .restart local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v5, v6, :cond_9

    .line 272
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 273
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 275
    :cond_a
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 276
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_3

    .line 282
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-direct {p0, v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V

    goto/16 :goto_0
.end method

.method protected calcYValueCount()V
    .locals 3

    .prologue
    .line 309
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 311
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 316
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    :cond_1
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    goto :goto_0
.end method

.method protected calcYValueSum()V
    .locals 3

    .prologue
    .line 291
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 293
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v1, :cond_1

    .line 299
    :cond_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 297
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 994
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 995
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 996
    return-void
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 552
    :cond_0
    const/4 v0, 0x0

    .line 554
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    goto :goto_0
.end method

.method public getDataSetCount()I
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    return-object v0
.end method

.method public getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .param p1, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 517
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 862
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    .line 866
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstRight()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 877
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    .line 881
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 851
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 846
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getXValAverageLength()F
    .locals 1

    .prologue
    .line 396
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    return v0
.end method

.method public getXValCount()I
    .locals 1

    .prologue
    .line 491
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getXVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    return v0
.end method

.method public getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 383
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 384
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 386
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    return v0
.end method

.method public getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 361
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 362
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 364
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method

.method public getYValCount()I
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    return v0
.end method

.method public getYValueSum()F
    .locals 1

    .prologue
    .line 406
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;->checkLegal()V

    .line 154
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(II)V

    .line 155
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcYValueSum()V

    .line 156
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcYValueCount()V

    .line 158
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcXValAverageLength()V

    .line 159
    return-void
.end method

.method public notifyDataChanged()V
    .locals 0

    .prologue
    .line 207
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 208
    return-void
.end method
