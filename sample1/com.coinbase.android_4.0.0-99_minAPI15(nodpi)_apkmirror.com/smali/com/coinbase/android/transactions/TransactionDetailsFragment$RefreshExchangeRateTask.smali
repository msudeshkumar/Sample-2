.class Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;
.super Lcom/coinbase/android/transfers/FetchExchangeRatesTask;
.source "TransactionDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshExchangeRateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    .line 300
    invoke-direct {p0, p2}, Lcom/coinbase/android/transfers/FetchExchangeRatesTask;-><init>(Landroid/content/Context;)V

    .line 301
    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/math/BigDecimal;>;"
    :try_start_0
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v8, v8, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v8}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # getter for: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;
    invoke-static {v9}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$400(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/coinbase/android/db/AccountORM;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v0

    .line 308
    .local v0, "currentAccount":Lcom/coinbase/v2/models/account/Data;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "btc_to_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    iput-object v8, v9, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->exchangeRate:Ljava/math/BigDecimal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v8, v8, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v8}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 313
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v8, v8, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v9, "data"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v8, v8, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v9, "data"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 317
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 319
    const-string v8, "/transactions/"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "transactionId":Ljava/lang/String;
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getTransaction(Ljava/lang/String;)V
    invoke-static {v8, v4}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$500(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V

    .line 336
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "transactionId":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # getter for: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;
    invoke-static {v8}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$400(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 323
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 324
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v8, v8, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v9, "transaction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "txJson":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 326
    const-class v8, Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v1, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/transactions/Data;

    .line 327
    .local v5, "tx":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fillViewsForTransaction(Lcom/coinbase/v2/models/transactions/Data;)V
    invoke-static {v8, v5}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$300(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;)V

    goto :goto_0

    .line 329
    .end local v5    # "tx":Lcom/coinbase/v2/models/transactions/Data;
    :cond_2
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .restart local v4    # "transactionId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 331
    iget-object v8, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getTransaction(Ljava/lang/String;)V
    invoke-static {v8, v4}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$500(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0    # "currentAccount":Lcom/coinbase/v2/models/account/Data;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "transactionId":Ljava/lang/String;
    .end local v6    # "txJson":Ljava/lang/String;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v9, v9, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v9}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 313
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v9, v9, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v10, "data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 316
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v9, v9, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v10, "data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 317
    .restart local v7    # "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 318
    .restart local v3    # "path":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 319
    const-string v9, "/transactions/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    .restart local v4    # "transactionId":Ljava/lang/String;
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getTransaction(Ljava/lang/String;)V
    invoke-static {v9, v4}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$500(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V

    .line 334
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "transactionId":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    throw v8

    .line 322
    :cond_4
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # getter for: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;
    invoke-static {v9}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$400(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 323
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 324
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iget-object v9, v9, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v10, "transaction"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .restart local v6    # "txJson":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 326
    const-class v9, Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v1, v6, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/transactions/Data;

    .line 327
    .restart local v5    # "tx":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fillViewsForTransaction(Lcom/coinbase/v2/models/transactions/Data;)V
    invoke-static {v9, v5}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$300(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;)V

    goto :goto_1

    .line 329
    .end local v5    # "tx":Lcom/coinbase/v2/models/transactions/Data;
    :cond_5
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-virtual {v9}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .restart local v4    # "transactionId":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 331
    iget-object v9, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getTransaction(Ljava/lang/String;)V
    invoke-static {v9, v4}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$500(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
