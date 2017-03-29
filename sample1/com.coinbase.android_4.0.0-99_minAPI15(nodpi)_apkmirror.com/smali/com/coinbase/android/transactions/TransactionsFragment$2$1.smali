.class Lcom/coinbase/android/transactions/TransactionsFragment$2$1;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment$2;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/transactions/TransactionsFragment$2;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->retryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget v1, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->retryCount:I

    .line 373
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->getTransactions(Ljava/lang/String;)Lretrofit/Call;
    invoke-static {v1, v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$500(Lcom/coinbase/android/transactions/TransactionsFragment;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    iput-object v1, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iput-object v2, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    goto :goto_0
.end method
