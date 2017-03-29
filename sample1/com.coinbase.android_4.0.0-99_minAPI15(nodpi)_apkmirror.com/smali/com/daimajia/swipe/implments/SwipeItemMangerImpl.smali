.class public abstract Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"

# interfaces
.implements Lcom/daimajia/swipe/interfaces/SwipeItemMangerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;,
        Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;,
        Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;
    }
.end annotation


# instance fields
.field public final INVALID_POSITION:I

.field protected mBaseAdapter:Landroid/widget/BaseAdapter;

.field protected mOpenPosition:I

.field protected mOpenPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field protected mShownLayouts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lcom/daimajia/swipe/util/Attributes$Mode;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    const/4 v1, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/daimajia/swipe/util/Attributes$Mode;->Single:Lcom/daimajia/swipe/util/Attributes$Mode;

    iput-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    .line 25
    iput v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->INVALID_POSITION:I

    .line 27
    iput v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    instance-of v0, p1, Lcom/daimajia/swipe/interfaces/SwipeItemMangerInterface;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter should implement the SwipeAdapterInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;)Lcom/daimajia/swipe/util/Attributes$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    return-object v0
.end method


# virtual methods
.method public closeAllExcept(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/daimajia/swipe/SwipeLayout;

    .line 117
    .local v1, "s":Lcom/daimajia/swipe/SwipeLayout;
    if-eq v1, p1, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto :goto_0

    .line 120
    .end local v1    # "s":Lcom/daimajia/swipe/SwipeLayout;
    :cond_1
    return-void
.end method

.method public closeAllItems()V
    .locals 4

    .prologue
    .line 124
    iget-object v2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    sget-object v3, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v2, v3, :cond_0

    .line 125
    iget-object v2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/daimajia/swipe/SwipeLayout;

    .line 130
    .local v1, "s":Lcom/daimajia/swipe/SwipeLayout;
    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto :goto_1

    .line 127
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Lcom/daimajia/swipe/SwipeLayout;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0

    .line 132
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public closeItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mBaseAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_1
    :goto_1
    return-void

    .line 104
    :cond_2
    iget v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    if-ne v0, p1, :cond_0

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public getMode()Lcom/daimajia/swipe/util/Attributes$Mode;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    return-object v0
.end method

.method public getOpenItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOpenLayouts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSwipeLayoutId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mBaseAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;

    check-cast v0, Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;

    invoke-interface {v0, p1}, Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;->getSwipeLayoutResourceId(I)I

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;

    check-cast v0, Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;

    invoke-interface {v0, p1}, Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;->getSwipeLayoutResourceId(I)I

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isOpen(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v0, v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mBaseAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_1
    :goto_1
    return-void

    .line 90
    :cond_2
    iput p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public removeShownLayouts(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public setMode(Lcom/daimajia/swipe/util/Attributes$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/daimajia/swipe/util/Attributes$Mode;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;

    .line 61
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 62
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    .line 64
    return-void
.end method
