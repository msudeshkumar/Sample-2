.class Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "PriceChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUserCurrencyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Lorg/joda/money/CurrencyUnit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    .line 298
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 299
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->call()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/joda/money/CurrencyUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getCountry()Lcom/coinbase/api/internal/entity/CountryResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/CountryResponse;->getData()Lcom/coinbase/api/internal/entity/CountryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/CountryInfo;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/coinbase/android/task/ApiTask;->onException(Ljava/lang/Exception;)V

    .line 315
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v0, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mFailure:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v0, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    const/4 v1, 0x0

    # setter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;
    invoke-static {v0, v1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$302(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;)Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    .line 318
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    check-cast p1, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->onSuccess(Lorg/joda/money/CurrencyUnit;)V

    return-void
.end method

.method protected onSuccess(Lorg/joda/money/CurrencyUnit;)V
    .locals 2
    .param p1, "currencyUnit"    # Lorg/joda/money/CurrencyUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    const/4 v1, 0x0

    # setter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;
    invoke-static {v0, v1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$302(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;)Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    .line 309
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->setCurrency(Lorg/joda/money/CurrencyUnit;)V

    .line 310
    return-void
.end method
