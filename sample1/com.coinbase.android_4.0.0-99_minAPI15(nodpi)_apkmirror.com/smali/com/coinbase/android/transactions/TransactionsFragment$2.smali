.class Lcom/coinbase/android/transactions/TransactionsFragment$2;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->getTransactions(Ljava/lang/String;)Lretrofit/Call;
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
        "Lcom/coinbase/v2/models/transactions/Transactions;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

.field final synthetic val$accountId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->handleErrorResponse()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$100(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 424
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    .line 425
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transactions;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transactions;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->handleErrorResponse()V
    invoke-static {v3}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$100(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 368
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 369
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment$2;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const/4 v4, 0x0

    iput v4, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->retryCount:I

    .line 384
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/transactions/Transactions;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Transactions;->getPagination()Lcom/coinbase/v2/models/Pagination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/Pagination;->getNextUri()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "nextURI":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 386
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 387
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const-string v4, "starting_after"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->startingAfterId:Ljava/lang/String;

    .line 391
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    new-instance v3, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;

    invoke-direct {v3, p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment$2;Lretrofit/Response;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->startingAfterId:Ljava/lang/String;

    goto :goto_1
.end method
