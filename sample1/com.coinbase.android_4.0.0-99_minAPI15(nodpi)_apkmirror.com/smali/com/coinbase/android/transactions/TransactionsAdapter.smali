.class public Lcom/coinbase/android/transactions/TransactionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TransactionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_ITEM:I = 0x0

.field private static final TYPE_SEPARATOR:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/coinbase/android/transactions/TransactionListDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTransactionItemPosition:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsVault:Z

.field private sectionHeader:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isVault"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mFirstTransactionItemPosition:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mData:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->sectionHeader:Ljava/util/TreeSet;

    .line 33
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-boolean p2, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mIsVault:Z

    .line 36
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/transactions/TransactionListDisplayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/transactions/TransactionListDisplayItem;>;"
    const/4 v0, 0x0

    .line 49
    .local v0, "currentHeader":Ljava/lang/String;
    const/4 v3, -0x1

    iput v3, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mFirstTransactionItemPosition:I

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    .line 51
    .local v2, "item":Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    invoke-interface {v2}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->getSection()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "header":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    :cond_0
    move-object v0, v1

    .line 55
    new-instance v4, Lcom/coinbase/android/transactions/TransactionListItems$TransactionHeaderItem;

    invoke-direct {v4, v1}, Lcom/coinbase/android/transactions/TransactionListItems$TransactionHeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/coinbase/android/transactions/TransactionsAdapter;->addSectionHeaderItem(Lcom/coinbase/android/transactions/TransactionListDisplayItem;)V

    .line 57
    :cond_1
    iget v4, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mFirstTransactionItemPosition:I

    if-gez v4, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mFirstTransactionItemPosition:I

    .line 60
    :cond_2
    invoke-virtual {p0, v2}, Lcom/coinbase/android/transactions/TransactionsAdapter;->addItem(Lcom/coinbase/android/transactions/TransactionListDisplayItem;)V

    goto :goto_0

    .line 62
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "item":Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    :cond_3
    return-void
.end method

.method public addItem(Lcom/coinbase/android/transactions/TransactionListDisplayItem;)V
    .locals 1
    .param p1, "item"    # Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public addSectionHeaderItem(Lcom/coinbase/android/transactions/TransactionListDisplayItem;)V
    .locals 2
    .param p1, "item"    # Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->sectionHeader:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->sectionHeader:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFirstTransactionItemPosition()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mFirstTransactionItemPosition:I

    return v0
.end method

.method public getItem(I)Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getItem(I)Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->sectionHeader:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getItemViewType(I)I

    move-result v2

    .line 113
    .local v2, "rowType":I
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getItem(I)Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    move-result-object v1

    .line 115
    .local v1, "item":Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    if-nez p2, :cond_0

    .line 116
    new-instance v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;-><init>(Lcom/coinbase/android/transactions/TransactionsAdapter$1;)V

    .line 117
    .local v0, "holder":Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03008d

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    const v3, 0x7f0d0280

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->listItem:Landroid/view/View;

    .line 120
    const v3, 0x7f0d0286

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->sectionHeader:Landroid/widget/TextView;

    .line 121
    const v3, 0x7f0d0282

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 122
    const v3, 0x7f0d0285

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->summaryView:Landroid/widget/TextView;

    .line 123
    const v3, 0x7f0d0283

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->amountView:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f0d0284

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->statusView:Landroid/widget/TextView;

    .line 125
    const v3, 0x7f0d0281

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->profileView:Landroid/widget/ImageView;

    .line 126
    const v3, 0x7f0d0287

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->listDividerRight:Landroid/view/View;

    .line 128
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 164
    :goto_1
    return-object p2

    .line 130
    .end local v0    # "holder":Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;
    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->listItem:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->listDividerRight:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->listItem:Landroid/view/View;

    invoke-interface {v1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 141
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->amountView:Landroid/widget/TextView;

    invoke-interface {v1, v3}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureAmountView(Landroid/widget/TextView;)V

    .line 142
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->statusView:Landroid/widget/TextView;

    invoke-interface {v1, v3}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureStatusView(Landroid/widget/TextView;)V

    .line 143
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-interface {v1, v3}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureTitleView(Landroid/widget/TextView;)V

    .line 144
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->summaryView:Landroid/widget/TextView;

    invoke-interface {v1, v3}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureSummaryView(Landroid/widget/TextView;)V

    .line 145
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->profileView:Landroid/widget/ImageView;

    invoke-interface {v1, v3}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureProfileView(Landroid/widget/ImageView;)V

    .line 151
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 151
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->listItem:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->listDividerRight:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v3, v0, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->getSection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVault(Z)V
    .locals 0
    .param p1, "isVault"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/coinbase/android/transactions/TransactionsAdapter;->mIsVault:Z

    .line 40
    return-void
.end method
