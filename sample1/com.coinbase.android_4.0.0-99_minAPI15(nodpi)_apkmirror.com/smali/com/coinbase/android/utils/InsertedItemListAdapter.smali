.class public Lcom/coinbase/android/utils/InsertedItemListAdapter;
.super Ljava/lang/Object;
.source "InsertedItemListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private mInsertIndex:I

.field private mInsertedView:Landroid/view/View;

.field private mInsertedViewVisible:Z

.field private mWrappedAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;Landroid/view/View;I)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "insertedView"    # Landroid/view/View;
    .param p3, "insertIndex"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertedViewVisible:Z

    .line 20
    iput-object p1, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    .line 21
    iput-object p2, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertedView:Landroid/view/View;

    .line 22
    iput p3, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    .line 23
    return-void
.end method

.method private numInserted()I
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertedViewVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    if-le v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    if-ge p1, v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 69
    :goto_0
    return-wide v0

    .line 66
    :cond_0
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    if-ge p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 69
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    if-ge p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    if-ge p1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertedView:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public incrementInsertIndex()V
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    .line 31
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->numInserted()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertIndex:I

    if-ge p1, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 119
    return-void
.end method

.method public setInsertedViewVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mInsertedViewVisible:Z

    .line 27
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/coinbase/android/utils/InsertedItemListAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    return-void
.end method
