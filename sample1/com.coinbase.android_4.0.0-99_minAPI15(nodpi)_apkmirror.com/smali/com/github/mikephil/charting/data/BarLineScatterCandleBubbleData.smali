.class public abstract Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.super Lcom/github/mikephil/charting/data/ChartData;
.source "BarLineScatterCandleBubbleData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;, "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<TT;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 27
    .local p0, "this":Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;, "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/ChartData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 28
    return-void
.end method
