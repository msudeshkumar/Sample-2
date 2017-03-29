.class Lcom/coinbase/android/pricechart/PriceChartFragment$PriceValueFormatter;
.super Ljava/lang/Object;
.source "PriceChartFragment.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriceValueFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment$1;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment$PriceValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/YAxis;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis;

    .prologue
    .line 87
    const-string v0, ""

    return-object v0
.end method
