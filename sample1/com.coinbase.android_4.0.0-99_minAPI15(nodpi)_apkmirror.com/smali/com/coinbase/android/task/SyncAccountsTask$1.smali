.class Lcom/coinbase/android/task/SyncAccountsTask$1;
.super Ljava/lang/Object;
.source "SyncAccountsTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V
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
.field final synthetic this$0:Lcom/coinbase/android/task/SyncAccountsTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/task/SyncAccountsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/task/SyncAccountsTask;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v0}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v0}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;->onException()V

    .line 150
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 12
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
    .line 76
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/account/Accounts;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v9

    if-nez v9, :cond_1

    .line 77
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v9}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 78
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v9}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v9

    invoke-interface {v9}, Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;->onException()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v9, v9, Lcom/coinbase/android/task/SyncAccountsTask;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 83
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 85
    .local v3, "e":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coinbase/v2/models/account/Accounts;

    invoke-virtual {v9}, Lcom/coinbase/v2/models/account/Accounts;->getData()Ljava/util/List;

    move-result-object v7

    .line 86
    .local v7, "responseAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v9, v9, Lcom/coinbase/android/task/SyncAccountsTask;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v9}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v8

    .line 87
    .local v8, "savedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v9, v9, Lcom/coinbase/android/task/SyncAccountsTask;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v9}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 88
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 91
    .local v1, "activeAccount":Lcom/coinbase/v2/models/account/Data;
    const/4 v4, 0x0

    .line 93
    .local v4, "foundPrimaryAccount":Z
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 95
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    iget-object v10, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/coinbase/android/task/SyncAccountsTask;->popAccountInList(Ljava/util/List;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    invoke-static {v10, v7, v11}, Lcom/coinbase/android/task/SyncAccountsTask;->access$100(Lcom/coinbase/android/task/SyncAccountsTask;Ljava/util/List;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v6

    .line 96
    .local v6, "remoteAccount":Lcom/coinbase/v2/models/account/Data;
    if-eqz v6, :cond_3

    .line 97
    invoke-static {v2, v6}, Lcom/coinbase/android/db/AccountORM;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)V

    .line 98
    invoke-virtual {v6}, Lcom/coinbase/v2/models/account/Data;->getPrimary()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 99
    move-object v1, v6

    .line 100
    const-string v10, "active_account_id"

    invoke-virtual {v6}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v10, "account_native_currency"

    .line 102
    invoke-virtual {v6}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v11

    invoke-virtual {v11}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v11

    .line 101
    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v10, "account_valid"

    const/4 v11, 0x1

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    const/4 v4, 0x1

    goto :goto_1

    .line 108
    :cond_3
    invoke-static {v2, v0}, Lcom/coinbase/android/db/AccountORM;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v6    # "remoteAccount":Lcom/coinbase/v2/models/account/Data;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v10, v10, Lcom/coinbase/android/task/SyncAccountsTask;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v10}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 138
    iget-object v10, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v10}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 139
    iget-object v10, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v10}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;->onFinally()V

    .line 141
    :cond_4
    iget-object v10, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v10, v10, Lcom/coinbase/android/task/SyncAccountsTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v11, Lcom/coinbase/android/event/AccountsUpdatedEvent;

    invoke-direct {v11, v1}, Lcom/coinbase/android/event/AccountsUpdatedEvent;-><init>(Lcom/coinbase/v2/models/account/Data;)V

    invoke-virtual {v10, v11}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    throw v9

    .line 114
    :cond_5
    if-nez v7, :cond_7

    .line 137
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v9, v9, Lcom/coinbase/android/task/SyncAccountsTask;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v9}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 138
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v9}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 139
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v9}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v9

    invoke-interface {v9}, Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;->onFinally()V

    .line 141
    :cond_6
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v9, v9, Lcom/coinbase/android/task/SyncAccountsTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v10, Lcom/coinbase/android/event/AccountsUpdatedEvent;

    invoke-direct {v10, v1}, Lcom/coinbase/android/event/AccountsUpdatedEvent;-><init>(Lcom/coinbase/v2/models/account/Data;)V

    invoke-virtual {v9, v10}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 120
    :cond_7
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 121
    .restart local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    invoke-static {v2, v0}, Lcom/coinbase/android/db/AccountORM;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)J

    .line 122
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getPrimary()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 123
    move-object v1, v0

    .line 124
    const-string v10, "active_account_id"

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v10, "account_native_currency"

    .line 126
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v11

    invoke-virtual {v11}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    const/4 v4, 0x1

    goto :goto_2

    .line 132
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_9
    if-nez v4, :cond_a

    .line 133
    const-string v9, "SyncAccountsTask"

    const-string v10, "Could not find primary account"

    invoke-static {v9, v10}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_a
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v9, v9, Lcom/coinbase/android/task/SyncAccountsTask;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v9}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 138
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v9}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 139
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    # getter for: Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    invoke-static {v9}, Lcom/coinbase/android/task/SyncAccountsTask;->access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    move-result-object v9

    invoke-interface {v9}, Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;->onFinally()V

    .line 141
    :cond_b
    iget-object v9, p0, Lcom/coinbase/android/task/SyncAccountsTask$1;->this$0:Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v9, v9, Lcom/coinbase/android/task/SyncAccountsTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v10, Lcom/coinbase/android/event/AccountsUpdatedEvent;

    invoke-direct {v10, v1}, Lcom/coinbase/android/event/AccountsUpdatedEvent;-><init>(Lcom/coinbase/v2/models/account/Data;)V

    invoke-virtual {v9, v10}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
