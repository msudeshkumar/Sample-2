.class Lcom/coinbase/android/pricechart/PriceChartFragment$3;
.super Ljava/lang/Object;
.source "PriceChartFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;->getChartsPrices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/coinbase/api/internal/models/priceCharts/PriceChart;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v0, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v0, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mFailure:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 5
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/PriceChart;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/priceCharts/PriceChart;>;"
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v2, v2, Lcom/coinbase/android/pricechart/PriceChartFragment;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 648
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v2, v2, Lcom/coinbase/android/pricechart/PriceChartFragment;->mFailure:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/models/priceCharts/PriceChart;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/priceCharts/PriceChart;->getData()Lcom/coinbase/api/internal/models/priceCharts/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/priceCharts/Data;->getPrices()Ljava/util/List;

    move-result-object v1

    .line 653
    .local v1, "prices":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/priceCharts/Price;>;"
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    invoke-static {v2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$600(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    move-result-object v2

    sget-object v3, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->DAY:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    if-ne v2, v3, :cond_1

    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    const/4 v3, 0x1

    .line 658
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    .line 659
    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    invoke-static {v4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$600(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    move-result-object v4

    .line 657
    # invokes: Lcom/coinbase/android/pricechart/PriceChartFragment;->applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    invoke-static {v2, v3, v4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$700(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/NullPointerException;
    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Stopped race condition on activity"

    invoke-static {v2, v3, v0}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 663
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    invoke-static {v2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$600(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    move-result-object v2

    sget-object v3, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->HOUR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    if-ne v2, v3, :cond_2

    .line 665
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    const/16 v4, 0x3c

    # invokes: Lcom/coinbase/android/pricechart/PriceChartFragment;->sample(Ljava/util/List;I)Ljava/util/List;
    invoke-static {v3, v1, v4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$900(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    invoke-static {v4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$600(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    move-result-object v4

    # invokes: Lcom/coinbase/android/pricechart/PriceChartFragment;->applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    invoke-static {v2, v3, v4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$700(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$3;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    invoke-static {v3}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$600(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    move-result-object v3

    # invokes: Lcom/coinbase/android/pricechart/PriceChartFragment;->applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    invoke-static {v2, v1, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$700(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    goto :goto_0
.end method
