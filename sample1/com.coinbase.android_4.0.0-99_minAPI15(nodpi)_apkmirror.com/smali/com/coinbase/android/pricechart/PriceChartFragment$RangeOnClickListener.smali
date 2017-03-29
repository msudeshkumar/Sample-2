.class Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;
.super Ljava/lang/Object;
.source "PriceChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RangeOnClickListener"
.end annotation


# instance fields
.field private mPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    .locals 0
    .param p2, "period"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;->mPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 140
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mRangeViews:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$000(Lcom/coinbase/android/pricechart/PriceChartFragment;)[Landroid/widget/TextView;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 146
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 152
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;->mPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    # invokes: Lcom/coinbase/android/pricechart/PriceChartFragment;->loadCharts(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    invoke-static {v1, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$100(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    .line 154
    :cond_2
    return-void
.end method
