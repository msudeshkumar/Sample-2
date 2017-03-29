.class Lcom/coinbase/android/transfers/DelayedTxSenderService$2;
.super Ljava/lang/Object;
.source "DelayedTxSenderService.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/DelayedTxSenderService;->handleTransactionRequest(Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/account/Data;)V
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
        "Lcom/coinbase/v2/models/transactions/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;

.field final synthetic val$account:Lcom/coinbase/v2/models/account/Data;

.field final synthetic val$tx:Lcom/coinbase/v2/models/transactions/Data;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/DelayedTxSenderService;Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/account/Data;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/DelayedTxSenderService;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;->this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;

    iput-object p2, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;->val$tx:Lcom/coinbase/v2/models/transactions/Data;

    iput-object p3, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;->val$account:Lcom/coinbase/v2/models/account/Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/transactions/Transaction;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Transaction;->getData()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v0

    .line 137
    .local v0, "newTx":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;->this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;

    iget-object v2, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;->val$tx:Lcom/coinbase/v2/models/transactions/Data;

    iget-object v3, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;->val$account:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/coinbase/android/transfers/DelayedTxSenderService;->handleRequestSuccess(Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->access$100(Lcom/coinbase/android/transfers/DelayedTxSenderService;Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;)V

    .line 141
    .end local v0    # "newTx":Lcom/coinbase/v2/models/transactions/Data;
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;->this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;

    # invokes: Lcom/coinbase/android/transfers/DelayedTxSenderService;->checkCompletion()V
    invoke-static {v1}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->access$200(Lcom/coinbase/android/transfers/DelayedTxSenderService;)V

    .line 142
    return-void

    .line 139
    :cond_0
    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send delayed transaction error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
