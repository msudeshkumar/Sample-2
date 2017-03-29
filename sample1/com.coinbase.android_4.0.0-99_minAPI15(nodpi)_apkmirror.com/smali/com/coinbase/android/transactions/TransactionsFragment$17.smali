.class Lcom/coinbase/android/transactions/TransactionsFragment$17;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->insertTransactionAnimated(ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

.field final synthetic val$insertAtIndex:I

.field final synthetic val$item:Lcom/coinbase/android/transactions/TransactionListDisplayItem;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iput p2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17;->val$insertAtIndex:I

    iput-object p3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17;->val$item:Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1025
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$17;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/transactions/TransactionsFragment$17$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$17$1;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment$17;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1030
    return-void
.end method
