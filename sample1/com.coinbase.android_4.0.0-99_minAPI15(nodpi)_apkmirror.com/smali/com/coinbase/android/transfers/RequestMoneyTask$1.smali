.class Lcom/coinbase/android/transfers/RequestMoneyTask$1;
.super Ljava/lang/Object;
.source "RequestMoneyTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/RequestMoneyTask;->requestMoney(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/RequestMoneyTask;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/RequestMoneyTask;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    iput-object p2, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->val$params:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    const/4 v1, 0x0

    # invokes: Lcom/coinbase/android/transfers/RequestMoneyTask;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/RequestMoneyTask;->access$000(Lcom/coinbase/android/transfers/RequestMoneyTask;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 11
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    const/4 v10, 0x0

    .line 53
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/coinbase/android/transfers/RequestMoneyTask;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/coinbase/android/transfers/RequestMoneyTask;->access$000(Lcom/coinbase/android/transfers/RequestMoneyTask;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/transactions/Transaction;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transactions/Transaction;->getData()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v4

    .line 61
    .local v4, "transaction":Lcom/coinbase/v2/models/transactions/Data;
    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v5

    invoke-static {v5}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromAmount(Lcom/coinbase/v2/models/transactions/Amount;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 62
    .local v0, "amount":Lorg/joda/money/BigMoney;
    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->abs()Lorg/joda/money/BigMoney;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    iget-object v6, v6, Lcom/coinbase/android/transfers/RequestMoneyTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "amountValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    iget-object v5, v5, Lcom/coinbase/android/transfers/RequestMoneyTask;->context:Landroid/content/Context;

    const v6, 0x7f07027a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->val$params:Ljava/util/HashMap;

    const-string v9, "to"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 67
    .end local v0    # "amount":Lorg/joda/money/BigMoney;
    .end local v1    # "amountValue":Ljava/lang/String;
    .end local v4    # "transaction":Lcom/coinbase/v2/models/transactions/Data;
    .local v3, "text":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    iget-object v5, v5, Lcom/coinbase/android/transfers/RequestMoneyTask;->context:Landroid/content/Context;

    invoke-static {v5, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 68
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    iget-object v5, v5, Lcom/coinbase/android/transfers/RequestMoneyTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    iget-object v5, v5, Lcom/coinbase/android/transfers/RequestMoneyTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    :cond_2
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/transactions/Transaction;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transactions/Transaction;->getData()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v4

    .line 72
    .restart local v4    # "transaction":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->this$0:Lcom/coinbase/android/transfers/RequestMoneyTask;

    iget-object v5, v5, Lcom/coinbase/android/transfers/RequestMoneyTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v6, Lcom/coinbase/android/event/TransferMadeEvent;

    invoke-direct {v6, v4}, Lcom/coinbase/android/event/TransferMadeEvent;-><init>(Lcom/coinbase/v2/models/transactions/Data;)V

    invoke-virtual {v5, v6}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 74
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v5, :cond_0

    .line 75
    iget-object v5, p0, Lcom/coinbase/android/transfers/RequestMoneyTask$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 64
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "transaction":Lcom/coinbase/v2/models/transactions/Data;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "error"

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_1
.end method
