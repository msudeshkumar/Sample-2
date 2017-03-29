.class Lcom/coinbase/android/transactions/TransactionsFragment$18;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->_insertTransactionAnimated(ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

.field final synthetic val$_newListItem:Landroid/view/View;

.field final synthetic val$background:Landroid/view/View;

.field final synthetic val$fakeListView:Landroid/widget/ImageView;

.field final synthetic val$root:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$root:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$_newListItem:Landroid/view/View;

    iput-object p4, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$fakeListView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$background:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1141
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAnimationPlaying:Z

    .line 1130
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$root:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$_newListItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1132
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$fakeListView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1133
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->val$background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$18;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1136
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1146
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1125
    return-void
.end method
