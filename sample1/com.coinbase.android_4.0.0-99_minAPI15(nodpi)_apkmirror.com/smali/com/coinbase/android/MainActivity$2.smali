.class Lcom/coinbase/android/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/MainActivity;->startBarcodeScan()V
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
        "Lcom/coinbase/v2/models/address/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/MainActivity;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 607
    const-string v0, "CoinaseTesting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while loading receive address:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/address/Address;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/address/Address;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    invoke-static {p1, p2, v1}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 603
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    iget-object v1, v1, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 596
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    iget-object v1, v1, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    .line 597
    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/address/Address;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/address/Address;->getData()Lcom/coinbase/v2/models/address/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/address/Data;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v0, v2, v1}, Lcom/coinbase/android/db/AccountORM;->setReceiveAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    iget-object v1, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    iget-object v1, v1, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 601
    iget-object v1, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    iget-object v1, v1, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;

    invoke-direct {v2}, Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    iget-object v2, v2, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 601
    iget-object v2, p0, Lcom/coinbase/android/MainActivity$2;->this$0:Lcom/coinbase/android/MainActivity;

    iget-object v2, v2, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;

    invoke-direct {v3}, Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    throw v1
.end method
