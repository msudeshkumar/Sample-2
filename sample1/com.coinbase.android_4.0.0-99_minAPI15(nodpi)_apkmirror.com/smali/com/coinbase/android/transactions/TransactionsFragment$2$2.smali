.class Lcom/coinbase/android/transactions/TransactionsFragment$2$2;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment$2;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

.field final synthetic val$response:Lretrofit/Response;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment$2;Lretrofit/Response;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/transactions/TransactionsFragment$2;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->val$response:Lretrofit/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 394
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v3, v3, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v3, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 396
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 398
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->val$response:Lretrofit/Response;

    invoke-virtual {v3}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/transactions/Transactions;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Transactions;->getData()Ljava/util/List;

    move-result-object v2

    .line 399
    .local v2, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    if-eqz v2, :cond_1

    .line 400
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/transactions/Data;

    .line 401
    .local v1, "transaction":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v4, v4, Lcom/coinbase/android/transactions/TransactionsFragment$2;->val$accountId:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/coinbase/android/db/TransactionORM;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/coinbase/v2/models/transactions/Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 407
    .end local v1    # "transaction":Lcom/coinbase/v2/models/transactions/Data;
    .end local v2    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 408
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v4, v4, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v4, v4, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 412
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v4, v4, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 414
    new-instance v4, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v6, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v6, v6, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v6}, Lcom/coinbase/android/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->execute()V

    :cond_0
    throw v3

    .line 405
    .restart local v2    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 408
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v3, v3, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v3, v3, Lcom/coinbase/android/transactions/TransactionsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 412
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v3, v3, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 414
    new-instance v3, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;

    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v4, v4, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionsFragment$2$2;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$2;

    iget-object v5, v5, Lcom/coinbase/android/transactions/TransactionsFragment$2;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v5}, Lcom/coinbase/android/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/coinbase/android/transactions/TransactionsFragment$RefreshExchangeRateTask;->execute()V

    .line 417
    :cond_2
    return-void
.end method
