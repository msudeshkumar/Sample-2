.class public Lcom/coinbase/android/pricechart/ChartsFragment;
.super Lroboguice/fragment/RoboFragment;
.source "ChartsFragment.java"

# interfaces
.implements Lcom/coinbase/android/CoinbaseFragment;


# static fields
.field private static final ACCOUNT_ITEM_HEIGHT:I = 0x5a


# instance fields
.field protected bus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field chartAccountLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d019c
    .end annotation
.end field

.field chartLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d019d
    .end annotation
.end field

.field protected dbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field frameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d019a
    .end annotation
.end field

.field mBuyButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d019e
    .end annotation
.end field

.field mSellButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d019f
    .end annotation
.end field

.field priceChartFragment:Lcom/coinbase/android/pricechart/PriceChartFragment;

.field scrollView:Lcom/coinbase/android/pricechart/LockableScrollView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d019b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/pricechart/ChartsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/ChartsFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->hideRateNotice()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/pricechart/ChartsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/ChartsFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->addEmptyView()V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/pricechart/ChartsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/ChartsFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->updateAccounts()V

    return-void
.end method

.method private addEmptyView()V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030063

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private hideRateNotice()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v1, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 210
    sget-object v1, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_DISMISSED:Lcom/coinbase/android/Constants$RateNoticeState;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/android/pricechart/ChartsFragment;->setRateNoticeState(Lcom/coinbase/android/Constants$RateNoticeState;Z)V

    .line 211
    return-void
.end method

.method private updateAccounts()V
    .locals 31

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 114
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v13}, Lcom/coinbase/android/db/AccountORM;->list(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v4

    .line 115
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v9, "balances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v18, "nativeBalances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual/range {v25 .. v25}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v19

    .line 119
    .local v19, "nativeUnit":Lorg/joda/money/CurrencyUnit;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/account/Data;

    .line 120
    .local v3, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-static {v3}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v7

    .line 121
    .local v7, "balance":Lorg/joda/money/Money;
    invoke-static {v3}, Lcom/coinbase/android/utils/AccountUtils;->getAccountNativeBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v17

    .line 122
    .local v17, "nativeBalance":Lorg/joda/money/Money;
    invoke-virtual {v7}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v12

    .line 124
    .local v12, "currency":Lorg/joda/money/CurrencyUnit;
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 125
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/math/BigDecimal;

    invoke-virtual {v7}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 126
    .local v5, "amount":Ljava/math/BigDecimal;
    invoke-interface {v9, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/math/BigDecimal;

    invoke-virtual/range {v17 .. v17}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    .end local v3    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .end local v5    # "amount":Ljava/math/BigDecimal;
    .end local v7    # "balance":Lorg/joda/money/Money;
    .end local v9    # "balances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .end local v12    # "currency":Lorg/joda/money/CurrencyUnit;
    .end local v17    # "nativeBalance":Lorg/joda/money/Money;
    .end local v18    # "nativeBalances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .end local v19    # "nativeUnit":Lorg/joda/money/CurrencyUnit;
    :catch_0
    move-exception v14

    .line 193
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->addEmptyView()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 197
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 130
    .restart local v3    # "account":Lcom/coinbase/v2/models/account/Data;
    .restart local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .restart local v7    # "balance":Lorg/joda/money/Money;
    .restart local v9    # "balances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .restart local v12    # "currency":Lorg/joda/money/CurrencyUnit;
    .restart local v17    # "nativeBalance":Lorg/joda/money/Money;
    .restart local v18    # "nativeBalances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .restart local v19    # "nativeUnit":Lorg/joda/money/CurrencyUnit;
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v9, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual/range {v17 .. v17}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 195
    .end local v3    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .end local v7    # "balance":Lorg/joda/money/Money;
    .end local v9    # "balances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .end local v12    # "currency":Lorg/joda/money/CurrencyUnit;
    .end local v17    # "nativeBalance":Lorg/joda/money/Money;
    .end local v18    # "nativeBalances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .end local v19    # "nativeUnit":Lorg/joda/money/CurrencyUnit;
    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v25

    .line 135
    .restart local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .restart local v9    # "balances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .restart local v18    # "nativeBalances":Ljava/util/Map;, "Ljava/util/Map<Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;>;"
    .restart local v19    # "nativeUnit":Lorg/joda/money/CurrencyUnit;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    .line 136
    .local v10, "count":I
    :goto_2
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v10, v0, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    add-int/lit8 v26, v10, -0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 138
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 141
    :cond_2
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Lorg/joda/money/CurrencyUnit;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/joda/money/CurrencyUnit;

    .line 142
    .local v11, "currencies":[Lorg/joda/money/CurrencyUnit;
    array-length v0, v11

    move/from16 v25, v0

    if-gtz v25, :cond_6

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->addEmptyView()V

    .line 173
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/coinbase/android/utils/Utils;->getRateNoticeState(Landroid/content/Context;)Lcom/coinbase/android/Constants$RateNoticeState;

    move-result-object v21

    .line 174
    .local v21, "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    const-string v26, "account_app_usage"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 175
    .local v6, "appUsageCount":I
    const/16 v25, 0x5

    move/from16 v0, v25

    if-le v6, v0, :cond_5

    sget-object v25, Lcom/coinbase/android/Constants$RateNoticeState;->SHOULD_SHOW_NOTICE:Lcom/coinbase/android/Constants$RateNoticeState;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_4

    sget-object v25, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_NOT_YET_SHOWN:Lcom/coinbase/android/Constants$RateNoticeState;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 178
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    const/16 v26, 0x1

    new-instance v27, Lcom/coinbase/android/pricechart/ChartsFragment$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/coinbase/android/pricechart/ChartsFragment$4;-><init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    new-instance v28, Lcom/coinbase/android/pricechart/ChartsFragment$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/coinbase/android/pricechart/ChartsFragment$5;-><init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    invoke-static/range {v25 .. v28}, Lcom/coinbase/android/utils/Utils;->getRateNotice(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v20

    .line 189
    .local v20, "rateNotice":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    .end local v20    # "rateNotice":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    goto/16 :goto_1

    .line 145
    .end local v6    # "appUsageCount":I
    .end local v21    # "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    :cond_6
    :try_start_4
    array-length v0, v11

    move/from16 v27, v0

    const/16 v25, 0x0

    move/from16 v26, v25

    :goto_3
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    aget-object v23, v11, v26

    .line 146
    .local v23, "unit":Lorg/joda/money/CurrencyUnit;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    const v28, 0x7f030064

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 148
    .local v24, "view":Landroid/view/View;
    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v7

    .line 149
    .local v7, "balance":Lorg/joda/money/BigMoney;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/math/BigDecimal;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v15

    .line 151
    .local v15, "fiat":Lorg/joda/money/BigMoney;
    const v25, 0x7f0d01a3

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 152
    .local v22, "title":Landroid/widget/TextView;
    const v25, 0x7f0700bb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/coinbase/android/pricechart/ChartsFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v23 .. v23}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v25, 0x7f0d01a4

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 155
    .local v8, "balanceAmount":Landroid/widget/TextView;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/joda/money/CurrencyUnit;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 156
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_4
    const v25, 0x7f0d01a2

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 163
    .local v16, "fiatAmount":Landroid/widget/TextView;
    const/16 v25, 0x0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual/range {v23 .. v23}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v25

    const v28, 0x7f070097

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/coinbase/android/pricechart/ChartsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 145
    :goto_5
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    goto/16 :goto_3

    .line 158
    .end local v16    # "fiatAmount":Landroid/widget/TextView;
    :cond_7
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    const/16 v25, 0x0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 168
    .restart local v16    # "fiatAmount":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/pricechart/ChartsFragment;->chartAccountLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method


# virtual methods
.method public getTitle()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const v1, 0x7f0702ee

    invoke-virtual {p0, v1}, Lcom/coinbase/android/pricechart/ChartsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030062

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/pricechart/PriceChartFragment;

    iput-object v1, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->priceChartFragment:Lcom/coinbase/android/pricechart/PriceChartFragment;

    .line 82
    return-object v0
.end method

.method public onPINPromptSuccessfulReturn()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 266
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->priceChartFragment:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->reloadCharts()V

    .line 267
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public onSwitchedTo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    new-instance v1, Lcom/coinbase/android/task/SyncAccountsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/pricechart/ChartsFragment$6;

    invoke-direct {v3, p0}, Lcom/coinbase/android/pricechart/ChartsFragment$6;-><init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/task/SyncAccountsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V

    .line 240
    .local v1, "task":Lcom/coinbase/android/task/SyncAccountsTask;
    invoke-virtual {v1}, Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V

    .line 242
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "account_app_usage"

    invoke-static {v2, v3, v4}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "appUsageCount":I
    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 244
    sget-object v2, Lcom/coinbase/android/Constants$RateNoticeState;->SHOULD_SHOW_NOTICE:Lcom/coinbase/android/Constants$RateNoticeState;

    invoke-virtual {p0, v2, v4}, Lcom/coinbase/android/pricechart/ChartsFragment;->setRateNoticeState(Lcom/coinbase/android/Constants$RateNoticeState;Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->mBuyButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/pricechart/ChartsFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/pricechart/ChartsFragment$1;-><init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->mSellButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/pricechart/ChartsFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/pricechart/ChartsFragment$2;-><init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/coinbase/android/pricechart/ChartsFragment$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/pricechart/ChartsFragment$3;-><init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public scrollOccurred(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "scrollBegan"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 278
    iget-object v1, p0, Lcom/coinbase/android/pricechart/ChartsFragment;->scrollView:Lcom/coinbase/android/pricechart/LockableScrollView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/coinbase/android/pricechart/LockableScrollView;->setScrollingEnabled(Z)V

    .line 279
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRateNoticeState(Lcom/coinbase/android/Constants$RateNoticeState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/coinbase/android/Constants$RateNoticeState;
    .param p2, "force"    # Z

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->getRateNoticeState(Landroid/content/Context;)Lcom/coinbase/android/Constants$RateNoticeState;

    move-result-object v0

    .line 215
    .local v0, "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    sget-object v1, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_DISMISSED:Lcom/coinbase/android/Constants$RateNoticeState;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "account_rate_notice_state"

    invoke-virtual {p1}, Lcom/coinbase/android/Constants$RateNoticeState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public shouldShowKeyboard()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method
