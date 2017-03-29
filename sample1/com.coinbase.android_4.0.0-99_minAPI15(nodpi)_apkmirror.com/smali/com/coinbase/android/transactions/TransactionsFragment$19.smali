.class Lcom/coinbase/android/transactions/TransactionsFragment$19;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->cancelTransactionsCall(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

.field final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$19;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$19;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$19;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$19;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    invoke-interface {v0}, Lretrofit/Call;->cancel()V

    .line 1275
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$19;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    .line 1276
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$19;->val$run:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment$19;->run()V

    .line 1279
    :cond_0
    return-void
.end method
