.class public Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CreatePriceAlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;,
        Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;,
        Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPrice:D

.field private mIncrement:D

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IDD)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "viewWidth"    # I
    .param p4, "currentPrice"    # D
    .param p6, "increment"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IDD)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mItems:Ljava/util/List;

    .line 108
    iput p3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mViewWidth:I

    .line 109
    iput-wide p4, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mCurrentPrice:D

    .line 110
    iput-wide p6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mIncrement:D

    .line 111
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 142
    :cond_0
    sget-object v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->PLACEHOLDER:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    invoke-virtual {v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->ordinal()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->ITEM:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    invoke-virtual {v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 22
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 149
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;

    if-eqz v15, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "label":Ljava/lang/String;
    move-object/from16 v14, p1

    .line 151
    check-cast v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;

    .line 152
    .local v14, "viewHolderItem":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->priceLayout:Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_1

    .line 155
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFirst:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 156
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topSecond:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFirst:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 158
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomSecond:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 176
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 177
    .local v4, "itemValue":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mCurrentPrice:D

    move-wide/from16 v16, v0

    int-to-double v0, v4

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 178
    .local v2, "diff":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mIncrement:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    cmpg-double v15, v2, v16

    if-gez v15, :cond_4

    .line 179
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    if-nez v15, :cond_3

    .line 180
    new-instance v15, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    .line 181
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_1
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Lcom/coinbase/android/utils/Utils;->getPixels(Landroid/content/Context;I)I

    move-result v7

    .line 187
    .local v7, "markerPixelWidth":I
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090057

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-direct {v6, v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v6, "markerParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mCurrentPrice:D

    move-wide/from16 v16, v0

    int-to-double v0, v4

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mIncrement:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v12, v16, v18

    .line 193
    .local v12, "remainder":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mIncrement:D

    move-wide/from16 v16, v0

    div-double v10, v12, v16

    .line 195
    .local v10, "percentage":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090058

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    div-int/lit8 v15, v7, 0x2

    int-to-double v0, v15

    move-wide/from16 v18, v0

    sub-double v8, v16, v18

    .line 198
    .local v8, "offset":D
    double-to-int v15, v8

    iput v15, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    const/4 v15, 0x0

    iput v15, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 200
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v0, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .end local v2    # "diff":D
    .end local v4    # "itemValue":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "markerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "markerPixelWidth":I
    .end local v8    # "offset":D
    .end local v10    # "percentage":D
    .end local v12    # "remainder":D
    .end local v14    # "viewHolderItem":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;
    :cond_0
    :goto_2
    return-void

    .line 159
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v14    # "viewHolderItem":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->getItemCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    move/from16 v0, p2

    if-ne v0, v15, :cond_2

    .line 160
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topThird:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFourth:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomThird:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 163
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFourth:Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFirst:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topSecond:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topThird:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 168
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFourth:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFirst:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 170
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomSecond:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 171
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomThird:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFourth:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 183
    .restart local v2    # "diff":D
    .restart local v4    # "itemValue":I
    :cond_3
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v0, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 202
    :cond_4
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    if-eqz v15, :cond_0

    .line 203
    iget-object v15, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v0, v14, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->markerView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 115
    sget-object v3, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$1;->$SwitchMap$com$coinbase$android$notifications$priceAlerts$create$CreatePriceAlertAdapter$ViewType:[I

    invoke-static {p2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->valueOf(I)Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 136
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 117
    :pswitch_0
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "v":Landroid/view/View;
    iget v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mViewWidth:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 119
    .local v2, "viewWidth":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;Landroid/content/Context;Landroid/view/View;)V

    .line 122
    .local v1, "vh":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;
    goto :goto_0

    .line 126
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "vh":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;
    .end local v2    # "viewWidth":I
    :pswitch_1
    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03009e

    const/4 v5, 0x0

    .line 127
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .restart local v0    # "v":Landroid/view/View;
    new-instance v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;Landroid/content/Context;Landroid/view/View;)V

    .line 130
    .local v1, "vh":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;
    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
