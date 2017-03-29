.class Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;
.super Lcom/coinbase/android/transfers/FetchExchangeRatesTask;
.source "TransferAmountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferAmountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshExchangeRateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/transfers/TransferAmountFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    .line 47
    invoke-direct {p0, p2}, Lcom/coinbase/android/transfers/FetchExchangeRatesTask;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-super {p0, p1}, Lcom/coinbase/android/transfers/FetchExchangeRatesTask;->onException(Ljava/lang/Exception;)V

    .line 67
    return-void
.end method

.method public onFinally()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    const/4 v1, 0x0

    # setter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeTask:Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$202(Lcom/coinbase/android/transfers/TransferAmountFragment;Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;)Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

    .line 72
    return-void
.end method

.method protected onPreExecute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Lcom/coinbase/android/transfers/FetchExchangeRatesTask;->onPreExecute()V

    .line 60
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/math/BigDecimal;>;"
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # setter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeRates:Ljava/util/Map;
    invoke-static {v0, p1}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$002(Lcom/coinbase/android/transfers/TransferAmountFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeRateTime:J

    .line 54
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->onExchangeRatesRefreshed()V
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$100(Lcom/coinbase/android/transfers/TransferAmountFragment;)V

    .line 55
    return-void
.end method
