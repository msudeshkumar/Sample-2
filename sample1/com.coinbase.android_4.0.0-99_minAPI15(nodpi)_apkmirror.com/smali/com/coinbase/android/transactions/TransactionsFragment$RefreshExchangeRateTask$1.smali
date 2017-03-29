.class Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->onSuccess(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->handleErrorResponse()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$100(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 246
    return-void
.end method

.method public onFinally(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/paymentMethods/Data;>;"
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mPaymentMethods:Ljava/util/HashMap;

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 252
    .local v0, "paymentMethod":Lcom/coinbase/v2/models/paymentMethods/Data;
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v2, v2, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v2, v2, Lcom/coinbase/android/transactions/TransactionsFragment;->mPaymentMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    .end local v0    # "paymentMethod":Lcom/coinbase/v2/models/paymentMethods/Data;
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->refreshComplete()V
    invoke-static {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$200(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 256
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    .line 259
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->loadTransactionsList()V

    .line 262
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->updateWidgets()V
    invoke-static {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$300(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 264
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/TransactionsSyncedEvent;

    invoke-direct {v2}, Lcom/coinbase/android/event/TransactionsSyncedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mListener:Lcom/coinbase/android/transactions/TransactionsFragment$Listener;

    invoke-interface {v1}, Lcom/coinbase/android/transactions/TransactionsFragment$Listener;->onFinishTransactionsSync()V

    .line 268
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const/4 v2, 0x0

    iput v2, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->retryCount:I

    .line 269
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
