.class public abstract Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ArraySwipeAdapter.java"

# interfaces
.implements Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;
.implements Lcom/daimajia/swipe/interfaces/SwipeItemMangerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter;",
        "Lcom/daimajia/swipe/interfaces/SwipeAdapterInterface;",
        "Lcom/daimajia/swipe/interfaces/SwipeItemMangerInterface;"
    }
.end annotation


# instance fields
.field private mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 22
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 19
    new-instance v0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 26
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 19
    new-instance v0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 19
    new-instance v0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    new-instance v0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    .local p3, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    .line 31
    return-void
.end method


# virtual methods
.method public closeAllExcept(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 69
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->closeAllExcept(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 70
    return-void
.end method

.method public closeAllItems()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->closeAllItems()V

    .line 75
    return-void
.end method

.method public closeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->closeItem(I)V

    .line 65
    return-void
.end method

.method public getMode()Lcom/daimajia/swipe/util/Attributes$Mode;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->getMode()Lcom/daimajia/swipe/util/Attributes$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getOpenItems()Ljava/util/List;
    .locals 1
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
    .line 79
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->getOpenItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOpenLayouts()Ljava/util/List;
    .locals 1
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
    .line 84
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->getOpenLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 48
    .local v0, "convertViewIsNull":Z
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v2, v1, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->initialize(Landroid/view/View;I)V

    .line 54
    :goto_1
    return-object v1

    .line 47
    .end local v0    # "convertViewIsNull":Z
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    .restart local v0    # "convertViewIsNull":Z
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v2, v1, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->updateConvertView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public isOpen(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->isOpen(I)Z

    move-result v0

    return v0
.end method

.method public openItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->openItem(I)V

    .line 60
    return-void
.end method

.method public removeShownLayouts(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 89
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->removeShownLayouts(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 90
    return-void
.end method

.method public setMode(Lcom/daimajia/swipe/util/Attributes$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/daimajia/swipe/util/Attributes$Mode;

    .prologue
    .line 104
    .local p0, "this":Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;, "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter<TT;>;"
    iget-object v0, p0, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;->mItemManger:Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemAdapterMangerImpl;->setMode(Lcom/daimajia/swipe/util/Attributes$Mode;)V

    .line 105
    return-void
.end method
