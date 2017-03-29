.class public Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;
.super Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;
.source "SwipeItemAdapterMangerImpl.java"


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    .line 27
    iput-object p1, p0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    .line 28
    return-void
.end method


# virtual methods
.method public initialize(Landroid/view/View;I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p2}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->getSwipeLayoutId(I)I

    move-result v1

    .line 34
    .local v1, "resId":I
    new-instance v0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;

    invoke-direct {v0, p0, p2}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;-><init>(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;I)V

    .line 35
    .local v0, "onLayoutListener":Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/daimajia/swipe/SwipeLayout;

    .line 36
    .local v2, "swipeLayout":Lcom/daimajia/swipe/SwipeLayout;
    if-nez v2, :cond_0

    .line 37
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "can not find SwipeLayout in target view"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_0
    new-instance v3, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;

    invoke-direct {v3, p0, p2}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;-><init>(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;I)V

    .line 40
    .local v3, "swipeMemory":Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;
    invoke-virtual {v2, v3}, Lcom/daimajia/swipe/SwipeLayout;->addSwipeListener(Lcom/daimajia/swipe/SwipeLayout$SwipeListener;)V

    .line 41
    invoke-virtual {v2, v0}, Lcom/daimajia/swipe/SwipeLayout;->addOnLayoutListener(Lcom/daimajia/swipe/SwipeLayout$OnLayout;)V

    .line 42
    new-instance v4, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;

    invoke-direct {v4, p0, p2, v3, v0}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;-><init>(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;ILcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;)V

    invoke-virtual {v2, v1, v4}, Lcom/daimajia/swipe/SwipeLayout;->setTag(ILjava/lang/Object;)V

    .line 44
    iget-object v4, p0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public updateConvertView(Landroid/view/View;I)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->getSwipeLayoutId(I)I

    move-result v0

    .line 51
    .local v0, "resId":I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/daimajia/swipe/SwipeLayout;

    .line 52
    .local v1, "swipeLayout":Lcom/daimajia/swipe/SwipeLayout;
    if-nez v1, :cond_0

    .line 53
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can not find SwipeLayout in target view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    invoke-virtual {v1, v0}, Lcom/daimajia/swipe/SwipeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;

    .line 56
    .local v2, "valueBox":Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;
    iget-object v3, v2, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;->swipeMemory:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;

    invoke-virtual {v3, p2}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->setPosition(I)V

    .line 57
    iget-object v3, v2, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;->onLayoutListener:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;

    invoke-virtual {v3, p2}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;->setPosition(I)V

    .line 58
    iput p2, v2, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;->position:I

    .line 59
    return-void
.end method
