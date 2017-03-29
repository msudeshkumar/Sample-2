.class public Lcom/github/mikephil/charting/data/PieData;
.super Lcom/github/mikephil/charting/data/ChartData;
.source "PieData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/ChartData",
        "<",
        "Lcom/github/mikephil/charting/data/PieDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieDataSet;

    return-object v0
.end method

.method public bridge synthetic getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/data/PieDataSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
