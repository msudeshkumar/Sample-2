.class public Lcom/coinbase/android/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private mClientCacheDatabase:Lcom/coinbase/android/db/ClientCacheDatabase;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/app/Application;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    new-instance v0, Lcom/coinbase/android/db/ClientCacheDatabase;

    invoke-direct {v0, p1}, Lcom/coinbase/android/db/ClientCacheDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mClientCacheDatabase:Lcom/coinbase/android/db/ClientCacheDatabase;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDatabaseOpen()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mClientCacheDatabase:Lcom/coinbase/android/db/ClientCacheDatabase;

    invoke-virtual {v0}, Lcom/coinbase/android/db/ClientCacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
