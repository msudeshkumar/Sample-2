.class Lcom/coinbase/api/ProductionLoginManager$1;
.super Ljava/lang/Object;
.source "ProductionLoginManager.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/api/ProductionLoginManager;->updateAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/coinbase/v2/models/account/Accounts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/api/ProductionLoginManager;

.field final synthetic val$e:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/coinbase/api/ProductionLoginManager;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/api/ProductionLoginManager;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    iput-object p2, p0, Lcom/coinbase/api/ProductionLoginManager$1;->val$e:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    const/4 v1, 0x1

    # setter for: Lcom/coinbase/api/ProductionLoginManager;->failedToUpdateAccount:Z
    invoke-static {v0, v1}, Lcom/coinbase/api/ProductionLoginManager;->access$202(Lcom/coinbase/api/ProductionLoginManager;Z)Z

    .line 321
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 9
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/account/Accounts;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/account/Accounts;>;"
    const/4 v6, 0x0

    .line 274
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 277
    .local v4, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/coinbase/api/ProductionLoginManager$1$1;

    invoke-direct {v5, p0}, Lcom/coinbase/api/ProductionLoginManager$1$1;-><init>(Lcom/coinbase/api/ProductionLoginManager$1;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    iget-object v5, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    const/4 v6, 0x1

    # setter for: Lcom/coinbase/api/ProductionLoginManager;->failedToUpdateAccount:Z
    invoke-static {v5, v6}, Lcom/coinbase/api/ProductionLoginManager;->access$202(Lcom/coinbase/api/ProductionLoginManager;Z)Z

    .line 316
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v5, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    # setter for: Lcom/coinbase/api/ProductionLoginManager;->retryCount:I
    invoke-static {v5, v6}, Lcom/coinbase/api/ProductionLoginManager;->access$002(Lcom/coinbase/api/ProductionLoginManager;I)I

    .line 291
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/account/Accounts;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Accounts;->getData()Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iget-object v5, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    iget-object v5, v5, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 295
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 296
    .local v3, "foundPrimaryAccount":Z
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 297
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getActive()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 298
    invoke-static {v2, v0}, Lcom/coinbase/android/db/AccountORM;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)J

    .line 299
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getPrimary()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    iget-object v6, p0, Lcom/coinbase/api/ProductionLoginManager$1;->val$e:Landroid/content/SharedPreferences$Editor;

    const-string v7, "active_account_id"

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    iget-object v6, p0, Lcom/coinbase/api/ProductionLoginManager$1;->val$e:Landroid/content/SharedPreferences$Editor;

    const-string v7, "active_account_name"

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    iget-object v6, p0, Lcom/coinbase/api/ProductionLoginManager$1;->val$e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    const/4 v3, 0x1

    goto :goto_1

    .line 308
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_2
    if-nez v3, :cond_3

    .line 311
    :cond_3
    iget-object v5, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    const/4 v6, 0x0

    # setter for: Lcom/coinbase/api/ProductionLoginManager;->failedToUpdateAccount:Z
    invoke-static {v5, v6}, Lcom/coinbase/api/ProductionLoginManager;->access$202(Lcom/coinbase/api/ProductionLoginManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v5, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    iget-object v5, v5, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    iget-object v6, v6, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v5
.end method
