.class Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionsInfiniteScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/android/transactions/TransactionsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/transactions/TransactionsFragment$1;

    .prologue
    .line 1543
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 1550
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    if-nez p2, :cond_0

    .line 1551
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v3, v5

    .line 1552
    .local v3, "position":F
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    int-to-float v0, v5

    .line 1554
    .local v0, "fourthHeight":F
    add-float v5, v0, v3

    div-float v1, v5, v0

    .line 1556
    .local v1, "opacity":F
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1557
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1560
    .end local v0    # "fourthHeight":F
    .end local v1    # "opacity":F
    .end local v3    # "position":F
    :cond_0
    const-class v5, Lcom/coinbase/android/ui/IToolbarDropShadow;

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v7}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1561
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v5}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/coinbase/android/ui/IToolbarDropShadow;

    invoke-interface {v5}, Lcom/coinbase/android/ui/IToolbarDropShadow;->setToolbarDropShadowVisibility()V

    .line 1564
    :cond_1
    const/4 v2, 0x2

    .line 1565
    .local v2, "padding":I
    const/4 v4, 0x0

    .line 1566
    .local v4, "shouldLoadMore":Z
    if-lez p2, :cond_2

    .line 1567
    add-int v5, p2, p3

    add-int/2addr v5, v2

    if-lt v5, p4, :cond_4

    const/4 v4, 0x1

    .line 1569
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->canLoadMorePages()Z
    invoke-static {v5}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$1400(Lcom/coinbase/android/transactions/TransactionsFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1572
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->startingAfterId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1573
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/coinbase/android/utils/Utils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1574
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v6, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->startingAfterId:Ljava/lang/String;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->getTransactions(Ljava/lang/String;)Lretrofit/Call;
    invoke-static {v6, v7}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$500(Lcom/coinbase/android/transactions/TransactionsFragment;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v6

    iput-object v6, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    .line 1578
    :cond_3
    return-void

    :cond_4
    move v4, v6

    .line 1567
    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1583
    return-void
.end method
