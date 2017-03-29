.class Lcom/coinbase/android/pricechart/PriceChartFragment$2;
.super Ljava/lang/Object;
.source "PriceChartFragment.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/FillFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;->setChartData(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$2;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/LineDataProvider;)F
    .locals 3
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .param p2, "dataProvider"    # Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    .prologue
    .line 546
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getYMin()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getYMax()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getYMin()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
