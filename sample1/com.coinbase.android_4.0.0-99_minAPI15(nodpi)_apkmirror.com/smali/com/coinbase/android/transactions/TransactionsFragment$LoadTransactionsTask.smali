.class Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;
.super Lroboguice/util/RoboAsyncTask;
.source "TransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTransactionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/RoboAsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/coinbase/android/transactions/TransactionListDisplayItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    .line 1470
    invoke-direct {p0, p2}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 1471
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/transactions/TransactionListDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1475
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/transactions/TransactionListDisplayItem;>;"
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1479
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/coinbase/android/db/TransactionORM;->getTransactions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1480
    .local v10, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coinbase/v2/models/transactions/Data;

    .line 1481
    .local v4, "tx":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->getPaymentMethodName(Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$1200(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;

    move-result-object v5

    .line 1482
    .local v5, "paymentMethodName":Ljava/lang/String;
    new-instance v0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v3, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    iget-object v6, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    .line 1487
    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->isVault()Z
    invoke-static {v6}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$1300(Lcom/coinbase/android/transactions/TransactionsFragment;)Z

    move-result v6

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->exchangeRate:Ljava/math/BigDecimal;

    invoke-direct/range {v0 .. v7}, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;-><init>(Landroid/content/Context;Lcom/coinbase/api/LoginManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;ZLjava/math/BigDecimal;)V

    .line 1482
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1493
    .end local v4    # "tx":Lcom/coinbase/v2/models/transactions/Data;
    .end local v5    # "paymentMethodName":Ljava/lang/String;
    .end local v10    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v0

    .restart local v10    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    return-object v9
.end method

.method public onFinally()V
    .locals 0

    .prologue
    .line 1540
    return-void
.end method

.method protected onPreExecute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1465
    invoke-super {p0}, Lroboguice/util/RoboAsyncTask;->onPreExecute()V

    .line 1466
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1467
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1456
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 10
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
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/transactions/TransactionListDisplayItem;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1499
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iput-object p1, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mItems:Ljava/util/List;

    .line 1501
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v7}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v7}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_0

    .line 1507
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v7}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .line 1509
    .local v1, "isFirstLoad":Z
    :goto_1
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v8, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mListFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->canLoadMorePages()Z
    invoke-static {v7}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$1400(Lcom/coinbase/android/transactions/TransactionsFragment;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v6

    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v7}, Lcom/coinbase/android/transactions/TransactionsAdapter;->clear()V

    .line 1512
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v8, v8, Lcom/coinbase/android/transactions/TransactionsFragment;->mItems:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/coinbase/android/transactions/TransactionsAdapter;->addAll(Ljava/util/List;)V

    .line 1515
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    const-string v8, "account_rate_notice_state"

    sget-object v9, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_NOT_YET_SHOWN:Lcom/coinbase/android/Constants$RateNoticeState;

    .line 1518
    invoke-virtual {v9}, Lcom/coinbase/android/Constants$RateNoticeState;->name()Ljava/lang/String;

    move-result-object v9

    .line 1516
    invoke-static {v7, v8, v9}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1515
    invoke-static {v7}, Lcom/coinbase/android/Constants$RateNoticeState;->valueOf(Ljava/lang/String;)Lcom/coinbase/android/Constants$RateNoticeState;

    move-result-object v3

    .line 1519
    .local v3, "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    sget-object v7, Lcom/coinbase/android/Constants$RateNoticeState;->SHOULD_SHOW_NOTICE:Lcom/coinbase/android/Constants$RateNoticeState;

    if-ne v3, v7, :cond_5

    move v4, v5

    .line 1521
    .local v4, "showRateNotice":Z
    :goto_3
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mWrappedAdapter:Lcom/coinbase/android/utils/InsertedItemListAdapter;

    invoke-virtual {v7, v4}, Lcom/coinbase/android/utils/InsertedItemListAdapter;->setInsertedViewVisible(Z)V

    .line 1523
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v7}, Lcom/commonsware/cwac/merge/MergeAdapter;->notifyDataSetChanged()V

    .line 1525
    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v7}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getCount()I

    move-result v7

    if-gtz v7, :cond_2

    iget-object v7, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/transactions/TransactionsFragment;->transactionsCall:Lretrofit/Call;

    if-eqz v7, :cond_6

    :cond_2
    move v0, v5

    .line 1526
    .local v0, "hasTransactions":Z
    :goto_4
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->updateEmptyView()V
    invoke-static {v5}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$1500(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 1528
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z
    invoke-static {v5}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$700(Lcom/coinbase/android/transactions/TransactionsFragment;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1531
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransactionsAdapter:Lcom/coinbase/android/transactions/TransactionsAdapter;

    invoke-virtual {v5}, Lcom/coinbase/android/transactions/TransactionsAdapter;->getFirstTransactionItemPosition()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 1532
    .local v2, "position":I
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/coinbase/android/transactions/TransactionsFragment$LoadTransactionsTask;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v6, v6, Lcom/coinbase/android/transactions/TransactionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v2, v8, v9}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    .end local v0    # "hasTransactions":Z
    .end local v1    # "isFirstLoad":Z
    .end local v2    # "position":I
    .end local v3    # "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    .end local v4    # "showRateNotice":Z
    :cond_3
    move v1, v6

    .line 1507
    goto/16 :goto_1

    .line 1509
    .restart local v1    # "isFirstLoad":Z
    :cond_4
    const/16 v7, 0x8

    goto :goto_2

    .restart local v3    # "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    :cond_5
    move v4, v6

    .line 1519
    goto :goto_3

    .restart local v4    # "showRateNotice":Z
    :cond_6
    move v0, v6

    .line 1525
    goto :goto_4
.end method
