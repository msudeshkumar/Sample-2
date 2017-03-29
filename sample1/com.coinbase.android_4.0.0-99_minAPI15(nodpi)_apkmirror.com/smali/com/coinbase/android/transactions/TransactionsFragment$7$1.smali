.class Lcom/coinbase/android/transactions/TransactionsFragment$7$1;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/transactions/TransactionsFragment$7;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 594
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$700(Lcom/coinbase/android/transactions/TransactionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$7;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 599
    :cond_0
    return-void
.end method
