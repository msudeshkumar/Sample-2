.class Lcom/coinbase/android/transactions/TransactionsFragment$9;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$9;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 634
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$9;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$9;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-boolean v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->fuzzy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->fuzzy:Z

    .line 635
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$9;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/money/Money;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->setBalance(Lorg/joda/money/Money;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$900(Lcom/coinbase/android/transactions/TransactionsFragment;Lorg/joda/money/Money;)V

    .line 636
    return-void

    .line 634
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
