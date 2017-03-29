.class Lcom/coinbase/android/transactions/TransactionsFragment$17$1;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/transactions/TransactionsFragment$17;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/transactions/TransactionsFragment$17;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$17;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$17;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$17;

    iget v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment$17;->val$insertAtIndex:I

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$17;

    iget-object v2, v2, Lcom/coinbase/android/transactions/TransactionsFragment$17;->val$item:Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->_insertTransactionAnimated(ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V
    invoke-static {v0, v1, v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$1100(Lcom/coinbase/android/transactions/TransactionsFragment;ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V

    .line 1028
    return-void
.end method
