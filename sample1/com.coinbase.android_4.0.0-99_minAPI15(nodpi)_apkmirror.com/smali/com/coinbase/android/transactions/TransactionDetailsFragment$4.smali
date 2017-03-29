.class Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;
.super Ljava/lang/Object;
.source "TransactionDetailsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getTransaction(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->handleRequestError()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$200(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)V

    .line 252
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
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
    .line 237
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->handleRequestError()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$200(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/transactions/Transaction;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Transaction;->getData()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v0

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fillViewsForTransaction(Lcom/coinbase/v2/models/transactions/Data;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$300(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;)V

    goto :goto_0
.end method
