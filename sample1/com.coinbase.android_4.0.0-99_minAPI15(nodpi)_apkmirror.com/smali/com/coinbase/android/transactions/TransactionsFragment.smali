.class public Lcom/coinbase/android/transactions/TransactionsFragment;
.super Lroboguice/fragment/RoboListFragment;
.source "TransactionsFragment.java"

# interfaces
.implements Lcom/coinbase/android/CoinbaseFragment;
.implements Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;,
        Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;,
        Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;,
        Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;,
        Lcom/coinbase/android/transactions/TransactionsFragment$Listener;
    }
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "TransactionsFragment_Account"

.field private static final QUICKSTART_ITEM_HEIGHT:I = 0x50


# instance fields
.field accountsUpdateObserver:Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;

.field exchangeRate:Ljava/math/BigDecimal;

.field fuzzy:Z

.field isInForeground:Z

.field mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field mAnimationPlaying:Z

.field mBalanceBtc:Lorg/joda/money/Money;

.field mBalanceHome:Landroid/widget/TextView;

.field mBalanceLoading:Z

.field mBalanceNative:Lorg/joda/money/Money;

.field mBalanceText:Landroid/widget/TextView;

.field mBaseView:Landroid/view/ViewGroup;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mDepositButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field mDetailsOverlay:Landroid/view/View;

.field mEmptyView:Landroid/widget/TextView;

.field mInnerAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/transactions/TransactionListDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field mListFooter:Landroid/view/View;

.field mListHeader:Landroid/view/ViewGroup;

.field mListView:Landroid/widget/ListView;

.field mListener:Lcom/coinbase/android/transactions/TransactionsFragment$Listener;

.field mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mMainView:Landroid/view/ViewGroup;

.field mOverlay:Landroid/view/View;

.field private mOverlayClickListener:Landroid/view/View$OnClickListener;

.field mParentActivity:Landroid/app/Activity;

.field mPaymentMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/coinbase/v2/models/paymentMethods/Data;",
            ">;"
        }
    .end annotation
.end field

.field mPullToRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field mQuickstartLayout:Landroid/widget/RelativeLayout;

.field mQuickstartList:Landroid/widget/ListView;

.field mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mRateNotice:Landroid/view/View;

.field mRequestButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

.field mSelectedTransactionItem:Lcom/coinbase/android/transactions/TransactionListDisplayItem;

.field mSendButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field mSyncErrorView:Landroid/widget/TextView;

.field mTransactionDetailsContainer:Landroid/view/View;

.field mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

.field mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

.field mWithdrawButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field mWrappedAdapter:Lcom/coinbase/android/utils/InsertedItemListAdapter;

.field retryCount:I

.field startingAfterId:Ljava/lang/String;

.field transactionsCall:Lretrofit/Call;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lroboguice/fragment/RoboListFragment;-><init>()V

    .line 161
    iput-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->startingAfterId:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->fuzzy:Z

    .line 170
    new-instance v0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/android/transactions/TransactionsFragment$1;)V

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->accountsUpdateObserver:Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;

    .line 736
    new-instance v0, Lcom/coinbase/android/transactions/TransactionsFragment$12;

    invoke-direct {v0, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$12;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private _insertTransactionAnimated(ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V
    .locals 30
    .param p1, "insertAtIndex"    # I
    .param p2, "item"    # Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mItems:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1042
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getView()Landroid/view/View;

    move-result-object v27

    .line 1043
    .local v27, "view":Landroid/view/View;
    if-nez v27, :cond_1

    const/4 v4, 0x0

    .line 1045
    .local v4, "root":Landroid/widget/FrameLayout;
    :goto_1
    const/4 v13, 0x0

    .local v13, "height":I
    const/4 v14, 0x0

    .line 1046
    .local v14, "heightToCropOff":I
    const/4 v9, 0x1

    .line 1049
    .local v9, "animateListView":Z
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1050
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1051
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 1052
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, p1

    if-gt v15, v0, :cond_2

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v14, v2

    .line 1052
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1043
    .end local v4    # "root":Landroid/widget/FrameLayout;
    .end local v9    # "animateListView":Z
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v13    # "height":I
    .end local v14    # "heightToCropOff":I
    .end local v15    # "i":I
    :cond_1
    const v2, 0x7f0d026b

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v4, v2

    goto :goto_1

    .line 1055
    .restart local v4    # "root":Landroid/widget/FrameLayout;
    .restart local v9    # "animateListView":Z
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "canvas":Landroid/graphics/Canvas;
    .restart local v13    # "height":I
    .restart local v14    # "heightToCropOff":I
    .restart local v15    # "i":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int v13, v2, v14

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 1058
    .local v21, "metrics":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v6, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1059
    .local v6, "fakeListView":Landroid/widget/ImageView;
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1061
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 1062
    .local v20, "m":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    neg-int v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1063
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1064
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1066
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1067
    .local v23, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v2, v14

    move-object/from16 v0, v23

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1068
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    const v3, 0x7f03008d

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 1074
    .local v22, "newListItem":Landroid/view/View;
    const v2, 0x7f0d0282

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1075
    .local v26, "titleView":Landroid/widget/TextView;
    const v2, 0x7f0d0283

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1076
    .local v8, "amountView":Landroid/widget/TextView;
    const v2, 0x7f0d0284

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1078
    .local v25, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureAmountView(Landroid/widget/TextView;)V

    .line 1079
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureStatusView(Landroid/widget/TextView;)V

    .line 1080
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->configureTitleView(Landroid/widget/TextView;)V

    .line 1082
    const/4 v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1084
    const/high16 v2, 0x428c0000    # 70.0f

    move-object/from16 v0, v21

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 1085
    .local v17, "itemHeight":I
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1086
    .local v18, "itemParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v2, v14

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1087
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    new-instance v7, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v7, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1091
    .local v7, "background":Landroid/view/View;
    if-eqz v9, :cond_5

    const-string v2, "#eeeeee"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :goto_3
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1092
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v10, v2, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1093
    .local v10, "bgParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v14, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1094
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    if-eqz v4, :cond_4

    .line 1097
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v4, v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1099
    if-eqz v9, :cond_3

    .line 1100
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v4, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1102
    :cond_3
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1107
    :cond_4
    new-instance v24, Landroid/animation/AnimatorSet;

    invoke-direct/range {v24 .. v24}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1109
    .local v24, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1110
    const-string v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/16 v28, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    aput v29, v3, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aput v29, v3, v28

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 1111
    .local v16, "itemAnimation":Landroid/animation/ObjectAnimator;
    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v3, v28

    const/16 v28, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    aput v29, v3, v28

    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 1114
    .local v19, "listAnimation":Landroid/animation/ObjectAnimator;
    if-eqz v9, :cond_6

    .line 1115
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    const/4 v3, 0x1

    aput-object v16, v2, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1119
    :goto_4
    const-wide/16 v2, 0x12c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1120
    move-object/from16 v5, v22

    .line 1121
    .local v5, "_newListItem":Landroid/view/View;
    new-instance v2, Lcom/coinbase/android/transactions/TransactionsFragment$18;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/coinbase/android/transactions/TransactionsFragment$18;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1148
    invoke-virtual/range {v24 .. v24}, Landroid/animation/AnimatorSet;->start()V

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mItems:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/transactions/TransactionsAdapter;->notifyDataSetChanged()V

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    goto/16 :goto_0

    .line 1091
    .end local v5    # "_newListItem":Landroid/view/View;
    .end local v10    # "bgParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "itemAnimation":Landroid/animation/ObjectAnimator;
    .end local v19    # "listAnimation":Landroid/animation/ObjectAnimator;
    .end local v24    # "set":Landroid/animation/AnimatorSet;
    :cond_5
    const/4 v2, -0x1

    goto/16 :goto_3

    .line 1117
    .restart local v10    # "bgParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "itemAnimation":Landroid/animation/ObjectAnimator;
    .restart local v19    # "listAnimation":Landroid/animation/ObjectAnimator;
    .restart local v24    # "set":Landroid/animation/AnimatorSet;
    :cond_6
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4
.end method

.method static synthetic access$100(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->handleErrorResponse()V

    return-void
.end method

.method static synthetic access$1000(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->updateSetupViews()V

    return-void
.end method

.method static synthetic access$1100(Lcom/coinbase/android/transactions/TransactionsFragment;ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/transactions/TransactionsFragment;->_insertTransactionAnimated(ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p1, "x1"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getPaymentMethodName(Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/coinbase/android/transactions/TransactionsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isVault()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/coinbase/android/transactions/TransactionsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->canLoadMorePages()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refreshComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->updateWidgets()V

    return-void
.end method

.method static synthetic access$400(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/v2/models/account/Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p1, "x1"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment;->updateBalance(Lcom/coinbase/v2/models/account/Data;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coinbase/android/transactions/TransactionsFragment;Ljava/lang/String;)Lretrofit/Call;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getTransactions(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/coinbase/android/transactions/TransactionsFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coinbase/android/transactions/TransactionsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/coinbase/android/transactions/TransactionsFragment;Lorg/joda/money/Money;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p1, "x1"    # Lorg/joda/money/Money;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment;->setBalance(Lorg/joda/money/Money;)V

    return-void
.end method

.method private canLoadMorePages()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->startingAfterId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTransactionsCall(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 1270
    new-instance v0, Lcom/coinbase/android/transactions/TransactionsFragment$19;

    invoke-direct {v0, p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment$19;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Ljava/lang/Runnable;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1281
    return-void
.end method

.method private checkAccountSetupStatus()V
    .locals 3

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v0, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->BUYS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    invoke-virtual {v1}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/transactions/TransactionsFragment$20;

    invoke-direct {v2, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$20;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/quickstart/QuickstartManager;->updateQuickstartItems(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private clearDatabase(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 219
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 220
    invoke-static {v0, p1}, Lcom/coinbase/android/db/TransactionORM;->clear(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 224
    return-void
.end method

.method private clearViews()V
    .locals 2

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->setBalance(Lorg/joda/money/Money;)V

    .line 810
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsAdapter;->clear()V

    .line 811
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsAdapter;->notifyDataSetChanged()V

    .line 812
    new-instance v0, Lcom/coinbase/android/transactions/TransactionsFragment$14;

    invoke-direct {v0, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$14;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-direct {p0, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->cancelTransactionsCall(Ljava/lang/Runnable;)V

    .line 819
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionDetailsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionDetailsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 823
    :cond_0
    return-void
.end method

.method private getAdapter(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1168
    .local p1, "adapterType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1169
    .local v0, "adapter":Landroid/widget/Adapter;
    :goto_0
    instance-of v1, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    check-cast v0, Landroid/widget/WrapperListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    goto :goto_0

    .line 1172
    :cond_0
    return-object v0
.end method

.method private getPaymentMethodName(Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;
    .locals 4
    .param p1, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 1443
    const/4 v2, 0x0

    .line 1444
    .local v2, "paymentMethodName":Ljava/lang/String;
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPaymentMethods:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 1445
    invoke-static {p1}, Lcom/coinbase/android/utils/TransactionUtils;->paymentMethodIdentifier(Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "paymentMethodId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1447
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPaymentMethods:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 1448
    .local v0, "paymentMethod":Lcom/coinbase/v2/models/paymentMethods/Data;
    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1453
    .end local v0    # "paymentMethod":Lcom/coinbase/v2/models/paymentMethods/Data;
    .end local v1    # "paymentMethodId":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getRateNotice()Landroid/view/View;
    .locals 5

    .prologue
    .line 922
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mRateNotice:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mRateNotice:Landroid/view/View;

    .line 941
    :goto_0
    return-object v0

    .line 926
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-instance v3, Lcom/coinbase/android/transactions/TransactionsFragment$15;

    invoke-direct {v3, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$15;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    new-instance v4, Lcom/coinbase/android/transactions/TransactionsFragment$16;

    invoke-direct {v4, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$16;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-static {v1, v2, v3, v4}, Lcom/coinbase/android/utils/Utils;->getRateNotice(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    .line 940
    .local v0, "rateNotice":Landroid/view/View;
    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mRateNotice:Landroid/view/View;

    goto :goto_0
.end method

.method private getTransactions(Ljava/lang/String;)Lretrofit/Call;
    .locals 8
    .param p1, "startingAfterId"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 317
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListener:Lcom/coinbase/android/transactions/TransactionsFragment$Listener;

    invoke-interface {v3}, Lcom/coinbase/android/transactions/TransactionsFragment$Listener;->onStartTransactionsSync()V

    .line 318
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPullToRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v3, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 320
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceNative:Lorg/joda/money/Money;

    iput-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceBtc:Lorg/joda/money/Money;

    .line 322
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSyncErrorView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSyncErrorView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "accountId":Ljava/lang/String;
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/transactions/TransactionsFragment$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$1;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->getAccount(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 346
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "from"

    aput-object v5, v3, v4

    const-string v4, "to"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "buy"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "sell"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "request"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "send"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "transfer"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "fiat_deposit"

    aput-object v5, v3, v4

    const-string v4, "fiat_withdrawal"

    aput-object v4, v3, v7

    const/16 v4, 0x9

    const-string v5, "exchange_deposit"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "exchange_withdrawal"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "vault_withdrawal"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 359
    .local v1, "expandOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v2, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "starting_after"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/transactions/TransactionsFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/coinbase/android/transactions/TransactionsFragment$2;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->getTransactions(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Lretrofit/Callback;)Lretrofit/Call;

    move-result-object v3

    return-object v3
.end method

.method private handleErrorResponse()V
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refreshComplete()V

    .line 444
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSyncErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSyncErrorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coinbase/android/utils/Utils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSyncErrorView:Landroid/widget/TextView;

    const v1, 0x7f070262

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSyncErrorView:Landroid/widget/TextView;

    const v1, 0x7f070260

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private isAccountPrimary()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getActiveAccountId()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v2, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v1

    .line 748
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLandscapeTablet()Z
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionDetailsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVault()Z
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 1265
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->VAULT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 1266
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->MULTISIG_VAULT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/android/transactions/TransactionsFragment;
    .locals 6
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 195
    new-instance v1, Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;-><init>()V

    .line 196
    .local v1, "f":Lcom/coinbase/android/transactions/TransactionsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 198
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "TransactionsFragment_Account"

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 200
    const-string v3, "TransactionsFragmentTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object v1
.end method

.method private populateViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 826
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v2, v4}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->setEnabled(Z)V

    .line 859
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isVault()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coinbase/android/transactions/TransactionsAdapter;->setVault(Z)V

    .line 834
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Balance;->getCurrency()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 835
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Balance;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-static {v2, v3}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v0

    .line 837
    .local v0, "oldBalance":Lorg/joda/money/Money;
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 838
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/NativeBalance;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 837
    invoke-static {v2, v3}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v1

    .line 840
    .local v1, "oldNativeBalance":Lorg/joda/money/Money;
    if-eqz v0, :cond_1

    .line 841
    invoke-direct {p0, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->setBalance(Lorg/joda/money/Money;)V

    .line 844
    :cond_1
    if-eqz v1, :cond_2

    .line 845
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceHome:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->loadTransactionsList()V

    .line 850
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->updateFloatingButtons()V

    .line 852
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/v2/models/account/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v2

    sget-object v3, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v2, v3, :cond_3

    .line 853
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 858
    :goto_1
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->updateTheme()V

    goto :goto_0

    .line 855
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceHome:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshComplete()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPullToRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1006
    return-void
.end method

.method private setBalance(Lorg/joda/money/Money;)V
    .locals 4
    .param p1, "balance"    # Lorg/joda/money/Money;

    .prologue
    .line 903
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "bitcoinUnits":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 905
    const-string v0, ""

    .line 916
    .local v0, "balanceString":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceText:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 918
    return-void

    .line 908
    .end local v0    # "balanceString":Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->fuzzy:Z

    if-eqz v3, :cond_1

    .line 909
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 914
    .local v2, "set":Ljava/util/EnumSet;
    :goto_1
    invoke-static {p1, v1, v2}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "balanceString":Ljava/lang/String;
    goto :goto_0

    .line 911
    .end local v0    # "balanceString":Ljava/lang/String;
    .end local v2    # "set":Ljava/util/EnumSet;
    :cond_1
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_8_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .restart local v2    # "set":Ljava/util/EnumSet;
    goto :goto_1
.end method

.method private showDetails(Lcom/coinbase/android/transactions/TransactionListDisplayItem;Z)V
    .locals 11
    .param p1, "item"    # Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    .param p2, "delayed"    # Z

    .prologue
    .line 1190
    invoke-interface {p1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->getTransaction()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v8

    invoke-static {v8}, Lcom/coinbase/android/utils/TransactionUtils;->paymentMethodIdentifier(Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;

    move-result-object v6

    .line 1191
    .local v6, "paymentMethodId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1192
    .local v7, "paymentMethodName":Ljava/lang/String;
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPaymentMethods:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 1193
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPaymentMethods:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 1194
    .local v5, "paymentMethod":Lcom/coinbase/v2/models/paymentMethods/Data;
    if-eqz v5, :cond_0

    .line 1195
    invoke-virtual {v5}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1198
    .end local v5    # "paymentMethod":Lcom/coinbase/v2/models/paymentMethods/Data;
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1199
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-interface {p1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->getTransaction()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1201
    .local v4, "json":Ljava/lang/String;
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1203
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionDetailsContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1206
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "transaction"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v8, "id"

    invoke-interface {p1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v8, "accountId"

    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v9}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v8, "paymentMethodName"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    new-instance v1, Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;-><init>()V

    .line 1211
    .local v1, "fragment":Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1212
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    .line 1213
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f0d0275

    .line 1214
    invoke-virtual {v8, v9, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    .line 1215
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1225
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    :goto_0
    return-void

    .line 1217
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/coinbase/android/transactions/TransactionDetailsActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1218
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "transaction"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    const-string v8, "id"

    invoke-interface {p1}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string v8, "accountId"

    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v9}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    const-string v8, "paymentMethodName"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    invoke-virtual {p0, v3}, Lcom/coinbase/android/transactions/TransactionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1223
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f04000a

    const v10, 0x7f04001c

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private updateBalance(Lcom/coinbase/v2/models/account/Data;)V
    .locals 5
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 956
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceBtc:Lorg/joda/money/Money;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceLoading:Z

    .line 964
    :try_start_0
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 966
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-static {v0, p1}, Lcom/coinbase/android/db/AccountORM;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    :try_start_2
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 972
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceBtc:Lorg/joda/money/Money;

    invoke-direct {p0, v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->setBalance(Lorg/joda/money/Money;)V

    .line 974
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceHome:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceNative:Lorg/joda/money/Money;

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/MainActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/MainActivity;->updateTitle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 981
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 968
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private updateEmptyView()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 704
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v4}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    if-eqz v4, :cond_4

    :cond_0
    move v2, v6

    .line 705
    .local v2, "hasTransactions":Z
    :goto_0
    const/4 v3, 0x0

    .line 707
    .local v3, "showEmptyView":Z
    if-nez v2, :cond_5

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    invoke-virtual {v4}, Lcom/coinbase/android/quickstart/QuickstartManager;->getCachedQuickstartItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isAccountPrimary()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 708
    const/4 v3, 0x1

    .line 713
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    const v4, 0x7f07025f

    invoke-virtual {p0, v4}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "emptyStringFormat":Ljava/lang/String;
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isVault()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 718
    const v4, 0x7f070263

    invoke-virtual {p0, v4}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    .line 721
    :cond_2
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v4, :cond_7

    .line 722
    new-array v4, v6, [Ljava/lang/Object;

    const v6, 0x7f0702d7

    invoke-virtual {p0, v6}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "emptyString":Ljava/lang/String;
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    return-void

    .end local v0    # "emptyString":Ljava/lang/String;
    .end local v1    # "emptyStringFormat":Ljava/lang/String;
    .end local v2    # "hasTransactions":Z
    .end local v3    # "showEmptyView":Z
    :cond_4
    move v2, v5

    .line 704
    goto :goto_0

    .line 709
    .restart local v2    # "hasTransactions":Z
    .restart local v3    # "showEmptyView":Z
    :cond_5
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isAccountPrimary()Z

    move-result v4

    if-nez v4, :cond_1

    .line 710
    const/4 v3, 0x1

    goto :goto_1

    .line 713
    :cond_6
    const/16 v4, 0x8

    goto :goto_2

    .line 724
    .restart local v1    # "emptyStringFormat":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0702d9

    invoke-virtual {p0, v7}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 725
    new-array v4, v6, [Ljava/lang/Object;

    const v6, 0x7f0702dc

    invoke-virtual {p0, v6}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .restart local v0    # "emptyString":Ljava/lang/String;
    :goto_4
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/v2/models/account/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v4

    sget-object v5, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v4, v5, :cond_3

    .line 730
    const v4, 0x7f0702f2

    invoke-virtual {p0, v4}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 727
    .end local v0    # "emptyString":Ljava/lang/String;
    :cond_8
    new-array v4, v6, [Ljava/lang/Object;

    const v6, 0x7f0702c5

    invoke-virtual {p0, v6}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "emptyString":Ljava/lang/String;
    goto :goto_4
.end method

.method private updateFloatingButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 862
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/v2/models/account/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 863
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/v2/models/account/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->WALLET:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v0, v1, :cond_2

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSendButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIcon(I)V

    .line 865
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSendButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f07017d

    invoke-virtual {p0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mRequestButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIcon(I)V

    .line 867
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mRequestButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f07017b

    invoke-virtual {p0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/v2/models/account/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v0, v1, :cond_1

    .line 869
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDepositButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIcon(I)V

    .line 870
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDepositButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0700ef

    invoke-virtual {p0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWithdrawButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIcon(I)V

    .line 872
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWithdrawButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0702a8

    invoke-virtual {p0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDepositButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWithdrawButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v0, v2}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->setVisibility(I)V

    .line 883
    :goto_1
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDepositButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWithdrawButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    goto :goto_0

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSetupViews()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 657
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    invoke-virtual {v4}, Lcom/coinbase/android/quickstart/QuickstartManager;->getCachedQuickstartItems()Ljava/util/List;

    move-result-object v1

    .line 659
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isAccountPrimary()Z

    move-result v4

    if-nez v4, :cond_1

    .line 660
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 665
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 672
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 673
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x51

    add-int/lit8 v0, v4, -0x1

    .line 674
    .local v0, "dp":I
    const/4 v4, 0x1

    int-to-float v5, v0

    invoke-static {v4, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 675
    .local v3, "px":F
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, v3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 677
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartList:Landroid/widget/ListView;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$11;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0300a8

    invoke-direct {v5, p0, v6, v7, v1}, Lcom/coinbase/android/transactions/TransactionsFragment$11;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 696
    sget-object v4, Lcom/coinbase/android/quickstart/QuickstartItem;->COMPLETE_CDV:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v4

    const-string v5, "Event - M cdv shown on transaction list"

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateWidgets()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 431
    invoke-static {}, Lcom/coinbase/android/utils/PlatformUtils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 433
    .local v0, "widgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    const-class v3, Lcom/coinbase/android/TransactionsAppWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const v2, 0x7f0d030a

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 437
    .end local v0    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public animateBuySell(Lcom/coinbase/android/event/BuySellMadeEvent;)V
    .locals 0
    .param p1, "transfer"    # Lcom/coinbase/android/event/BuySellMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    .line 1369
    return-void
.end method

.method public animateTransaction(Lcom/coinbase/android/event/TransferMadeEvent;)V
    .locals 9
    .param p1, "transfer"    # Lcom/coinbase/android/event/TransferMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1355
    const/4 v8, 0x0

    new-instance v0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;

    .line 1356
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    iget-object v4, p1, Lcom/coinbase/android/event/TransferMadeEvent;->transaction:Lcom/coinbase/v2/models/transactions/Data;

    iget-object v5, p1, Lcom/coinbase/android/event/TransferMadeEvent;->transaction:Lcom/coinbase/v2/models/transactions/Data;

    .line 1360
    invoke-direct {p0, v5}, Lcom/coinbase/android/transactions/TransactionsFragment;->getPaymentMethodName(Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;

    move-result-object v5

    .line 1361
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isVault()Z

    move-result v6

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->exchangeRate:Ljava/math/BigDecimal;

    invoke-direct/range {v0 .. v7}, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;-><init>(Landroid/content/Context;Lcom/coinbase/api/LoginManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;ZLjava/math/BigDecimal;)V

    .line 1355
    invoke-virtual {p0, v8, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->insertTransactionAnimated(ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V

    .line 1363
    return-void
.end method

.method public clearDetails()V
    .locals 6

    .prologue
    .line 1413
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getFirstTransactionItemPosition()I

    move-result v1

    .line 1414
    .local v1, "position":I
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 1416
    .local v0, "currentSelection":I
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1417
    if-eq v1, v0, :cond_1

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v2, v1}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getItem(I)Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    move-result-object v2

    instance-of v2, v2, Lcom/coinbase/android/transactions/TransactionListItems$TransactionHeaderItem;

    if-nez v2, :cond_1

    .line 1418
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1419
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1425
    :cond_0
    return-void

    .line 1423
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAccount()Lcom/coinbase/v2/models/account/Data;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    return-object v0
.end method

.method public getCallerFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 1588
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Landroid/text/SpannableStringBuilder;
    .locals 9

    .prologue
    const/16 v8, 0x21

    .line 1318
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-eqz v4, :cond_3

    .line 1319
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceNative:Lorg/joda/money/Money;

    if-eqz v4, :cond_2

    .line 1320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 1322
    invoke-static {v5}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 1323
    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 1324
    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    .line 1321
    invoke-static {v5, v6, v7}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    .local v2, "title":Ljava/lang/String;
    const-string v1, ""

    .line 1326
    .local v1, "nativeBal":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-static {v4}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v3

    .line 1327
    .local v3, "type":Lcom/coinbase/v2/models/account/Data$Type;
    sget-object v4, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v3, v4, :cond_0

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceNative:Lorg/joda/money/Money;

    iget-object v6, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 1331
    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    .line 1329
    invoke-static {v5, v6}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1334
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1335
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1336
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    sget-object v4, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v3, v4, :cond_1

    .line 1337
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0xe

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 1338
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 1337
    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1341
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1342
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 1341
    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1350
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "nativeBal":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "type":Lcom/coinbase/v2/models/account/Data$Type;
    :cond_1
    :goto_0
    return-object v0

    .line 1348
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1350
    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const v4, 0x7f070087

    invoke-virtual {p0, v4}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public insertTransactionAnimated(ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V
    .locals 2
    .param p1, "insertAtIndex"    # I
    .param p2, "item"    # Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    .prologue
    const/4 v1, 0x0

    .line 1009
    if-nez p2, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-static {}, Lcom/coinbase/android/utils/PlatformUtils;->hasHoneycomb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1014
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    goto :goto_0

    .line 1018
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAnimationPlaying:Z

    .line 1019
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1020
    sget-object v0, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_NOT_YET_SHOWN:Lcom/coinbase/android/Constants$RateNoticeState;

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->setRateNoticeState(Lcom/coinbase/android/Constants$RateNoticeState;Z)V

    .line 1021
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/transactions/TransactionsFragment$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/coinbase/android/transactions/TransactionsFragment$17;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;ILcom/coinbase/android/transactions/TransactionListDisplayItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 1598
    iget-boolean v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->isInForeground:Z

    return v0
.end method

.method public loadTransactionsList()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->cancel(Z)Z

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    .line 1163
    :cond_0
    new-instance v0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    .line 1164
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->execute()V

    .line 1165
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 757
    invoke-super {p0, p1}, Lroboguice/fragment/RoboListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 758
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v2, :cond_0

    .line 759
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPullToRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionDetailsContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 765
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionDetailsContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 768
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v2}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->collapse()V

    .line 770
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 771
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 772
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TransactionsFragment_Account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/account/Data;

    iput-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 774
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    .line 803
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :goto_0
    return-void

    .line 775
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 776
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/account/Data;

    iput-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 777
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    goto :goto_0

    .line 781
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->accountsUpdateObserver:Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 783
    new-instance v1, Lcom/coinbase/android/task/SyncAccountsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/transactions/TransactionsFragment$13;

    invoke-direct {v3, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$13;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/task/SyncAccountsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V

    .line 800
    .local v1, "task":Lcom/coinbase/android/task/SyncAccountsTask;
    invoke-virtual {v1}, Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lroboguice/fragment/RoboListFragment;->onAttach(Landroid/app/Activity;)V

    .line 190
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    .line 191
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/coinbase/android/transactions/TransactionsFragment$Listener;

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListener:Lcom/coinbase/android/transactions/TransactionsFragment$Listener;

    .line 192
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->toggle()V

    .line 1230
    const/4 v0, 0x1

    .line 1233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBanksUpdated(Lcom/coinbase/android/event/BankAccountsUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/BankAccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->checkAccountSetupStatus()V

    .line 1386
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 898
    invoke-super {p0, p1}, Lroboguice/fragment/RoboListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 899
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lroboguice/fragment/RoboListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 468
    const v4, 0x7f03008a

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    .line 469
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d026c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mMainView:Landroid/view/ViewGroup;

    .line 471
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    .line 472
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mEmptyView:Landroid/widget/TextView;

    .line 474
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d0274

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionDetailsContainer:Landroid/view/View;

    .line 476
    new-instance v4, Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isVault()Z

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/coinbase/android/transactions/TransactionsAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    .line 477
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getRateNotice()Landroid/view/View;

    move-result-object v3

    .line 478
    .local v3, "rateNotice":Landroid/view/View;
    new-instance v4, Lcom/coinbase/android/utils/InsertedItemListAdapter;

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v3, v6}, Lcom/coinbase/android/utils/InsertedItemListAdapter;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;I)V

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWrappedAdapter:Lcom/coinbase/android/utils/InsertedItemListAdapter;

    .line 480
    new-instance v4, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v4}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 481
    new-instance v4, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v4}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mInnerAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 484
    const v4, 0x7f03008c

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    .line 487
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0d0278

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 492
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWrappedAdapter:Lcom/coinbase/android/utils/InsertedItemListAdapter;

    invoke-virtual {v4, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 495
    const v4, 0x7f03008b

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 496
    .local v1, "listFooterParent":Landroid/view/ViewGroup;
    const v4, 0x7f0d0277

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListFooter:Landroid/view/View;

    .line 497
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 499
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 501
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d026f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    .line 502
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d026e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    .line 503
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d0276

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    .line 506
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d0273

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSendButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 507
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSendButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$3;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$3;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d0272

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mRequestButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 519
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mRequestButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$4;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$4;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d0271

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDepositButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 531
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mDepositButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$5;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$5;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d0270

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWithdrawButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 543
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWithdrawButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$6;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$6;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$7;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$7;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->addOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/coinbase/android/transactions/TransactionsFragment$TransactionsInfiniteScrollListener;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/android/transactions/TransactionsFragment$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 614
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0d027a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceText:Landroid/widget/TextView;

    .line 615
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0d027b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceHome:Landroid/widget/TextView;

    .line 616
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0d027c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSyncErrorView:Landroid/widget/TextView;

    .line 618
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0d01aa

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartLayout:Landroid/widget/RelativeLayout;

    .line 619
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0d027e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartList:Landroid/widget/ListView;

    .line 620
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartList:Landroid/widget/ListView;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$8;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$8;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 631
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceText:Landroid/widget/TextView;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$9;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$9;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    const v5, 0x7f0d026d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPullToRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 642
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPullToRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v5, Lcom/coinbase/android/transactions/TransactionsFragment$10;

    invoke-direct {v5, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$10;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 649
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x19

    invoke-static {v4, v5}, Lcom/coinbase/android/utils/Utils;->convertDpToPixels(Landroid/content/res/Resources;I)F

    move-result v4

    float-to-int v2, v4

    .line 650
    .local v2, "offset":I
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lcom/coinbase/android/utils/Utils;->convertDpToPixels(Landroid/content/res/Resources;I)F

    move-result v4

    float-to-int v0, v4

    .line 651
    .local v0, "distance":I
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mPullToRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    add-int v5, v2, v0

    invoke-virtual {v4, v7, v2, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 653
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBaseView:Landroid/view/ViewGroup;

    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lroboguice/fragment/RoboListFragment;->onDestroy()V

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->cancelTransactionsCall(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1177
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 1178
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    if-eqz v2, :cond_1

    .line 1179
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    .line 1180
    .local v0, "i":Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->setSelected(Z)V

    .line 1181
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedTransactionItem:Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    if-eqz v2, :cond_0

    .line 1182
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedTransactionItem:Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->setSelected(Z)V

    .line 1184
    :cond_0
    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedTransactionItem:Lcom/coinbase/android/transactions/TransactionListDisplayItem;

    .line 1185
    invoke-interface {v0}, Lcom/coinbase/android/transactions/TransactionListDisplayItem;->isDelayed()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->showDetails(Lcom/coinbase/android/transactions/TransactionListDisplayItem;Z)V

    .line 1187
    .end local v0    # "i":Lcom/coinbase/android/transactions/TransactionListDisplayItem;
    :cond_1
    return-void
.end method

.method public onPINPromptSuccessfulReturn()V
    .locals 0

    .prologue
    .line 1314
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1303
    invoke-super {p0}, Lroboguice/fragment/RoboListFragment;->onPause()V

    .line 1304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->isInForeground:Z

    .line 1306
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->cancel(Z)Z

    .line 1308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoadTransactionsTask:Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;

    .line 1310
    :cond_0
    return-void
.end method

.method public onPaymentMethodsUpdated(Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->checkAccountSetupStatus()V

    .line 1391
    return-void
.end method

.method public onPhoneNumbersUpdated(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->checkAccountSetupStatus()V

    .line 1380
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/Utils;->processPhoneNumbersUpdatedEvent(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;Landroid/content/Context;)V

    .line 1381
    return-void
.end method

.method public onRefreshRequested(Lcom/coinbase/android/event/RefreshRequestedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/RefreshRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    .line 1374
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1295
    invoke-super {p0}, Lroboguice/fragment/RoboListFragment;->onResume()V

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->isInForeground:Z

    .line 1299
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1395
    invoke-super {p0}, Lroboguice/fragment/RoboListFragment;->onStart()V

    .line 1396
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1400
    invoke-super {p0}, Lroboguice/fragment/RoboListFragment;->onStop()V

    .line 1401
    return-void
.end method

.method public onSwitchedTo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1285
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    const-string v2, "account_app_usage"

    invoke-static {v1, v2, v3}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1286
    .local v0, "appUsageCount":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAnimationPlaying:Z

    if-nez v1, :cond_0

    .line 1287
    sget-object v1, Lcom/coinbase/android/Constants$RateNoticeState;->SHOULD_SHOW_NOTICE:Lcom/coinbase/android/Constants$RateNoticeState;

    invoke-virtual {p0, v1, v3}, Lcom/coinbase/android/transactions/TransactionsFragment;->setRateNoticeState(Lcom/coinbase/android/Constants$RateNoticeState;Z)V

    .line 1290
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    .line 1291
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->clearDatabase(Ljava/lang/String;)V

    .line 994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceLoading:Z

    .line 997
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    if-nez v0, :cond_1

    .line 998
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getTransactions(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    .line 1001
    :cond_1
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->checkAccountSetupStatus()V

    goto :goto_0
.end method

.method public setAccount(Lcom/coinbase/v2/models/account/Data;)V
    .locals 0
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 887
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->clearViews()V

    .line 888
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->populateViews()V

    .line 889
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->checkAccountSetupStatus()V

    .line 890
    return-void
.end method

.method public setRateNoticeState(Lcom/coinbase/android/Constants$RateNoticeState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/coinbase/android/Constants$RateNoticeState;
    .param p2, "force"    # Z

    .prologue
    .line 945
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->getRateNoticeState(Landroid/content/Context;)Lcom/coinbase/android/Constants$RateNoticeState;

    move-result-object v0

    .line 946
    .local v0, "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    sget-object v1, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_DISMISSED:Lcom/coinbase/android/Constants$RateNoticeState;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 953
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    const-string v2, "account_rate_notice_state"

    invoke-virtual {p1}, Lcom/coinbase/android/Constants$RateNoticeState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 951
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mWrappedAdapter:Lcom/coinbase/android/utils/InsertedItemListAdapter;

    sget-object v1, Lcom/coinbase/android/Constants$RateNoticeState;->SHOULD_SHOW_NOTICE:Lcom/coinbase/android/Constants$RateNoticeState;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->setInsertedViewVisible(Z)V

    .line 952
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 951
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public shouldShowKeyboard()Z
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    return v0
.end method

.method public updateTheme()V
    .locals 7

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1239
    .local v2, "themeColor":I
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1240
    .local v3, "themeDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1241
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1242
    .local v1, "currentapiVersion":I
    const/16 v5, 0x13

    if-lt v1, v5, :cond_0

    .line 1243
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0d0278

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 1246
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1249
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    .line 1250
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1252
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1254
    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 1256
    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1258
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1261
    .end local v4    # "window":Landroid/view/Window;
    :cond_2
    return-void
.end method
