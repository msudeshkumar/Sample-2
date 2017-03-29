.class public abstract Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.source "LineScatterCandleRadarDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mDrawHorizontalHighlightIndicator:Z

.field protected mDrawVerticalHighlightIndicator:Z

.field protected mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

.field protected mHighlightLineWidth:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 14
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    .line 15
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    .line 18
    iput v1, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 26
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 27
    return-void
.end method


# virtual methods
.method public getDashPathEffectHighlight()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getHighlightLineWidth()F
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    return v0
.end method

.method public isHorizontalHighlightIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    return v0
.end method

.method public isVerticalHighlightIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    return v0
.end method
