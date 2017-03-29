.class public Lcom/github/mikephil/charting/data/BarData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.source "BarData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
        "<",
        "Lcom/github/mikephil/charting/data/BarDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupSpace:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>()V

    .line 15
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mGroupSpace:F

    .line 24
    return-void
.end method


# virtual methods
.method public getGroupSpace()F
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/BarData;->mGroupSpace:F

    goto :goto_0
.end method

.method public isGrouped()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
