.class Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;
.super Lcom/coinbase/android/transfers/FetchExchangeRatesTask;
.source "TransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshExchangeRateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    .line 228
    invoke-direct {p0, p2}, Lcom/coinbase/android/transfers/FetchExchangeRatesTask;-><init>(Landroid/content/Context;)V

    .line 229
    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->handleErrorResponse()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$100(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 278
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
    .line 226
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->onSuccess(Ljava/util/Map;)V

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
    .line 233
    .local p1, "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/math/BigDecimal;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btc_to_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v3, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    iput-object v2, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->exchangeRate:Ljava/math/BigDecimal;

    .line 236
    new-instance v1, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->context:Landroid/content/Context;

    new-instance v3, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;)V

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;)V

    .line 271
    .local v1, "task":Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;
    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->getPaymentMethods()V

    .line 273
    return-void
.end method
