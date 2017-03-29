.class Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;
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
    name = "BaseCurrencyOnClickListener"
.end annotation


# instance fields
.field private mBaseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;)V
    .locals 0
    .param p2, "baseCurrency"    # Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;->mBaseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    .line 162
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrencyViews:Ljava/util/List;
    invoke-static {v1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$200(Lcom/coinbase/android/pricechart/PriceChartFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 172
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 173
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;->mBaseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    invoke-virtual {v1, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->setBaseCurrency(Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;)V

    .line 175
    :cond_2
    return-void
.end method
