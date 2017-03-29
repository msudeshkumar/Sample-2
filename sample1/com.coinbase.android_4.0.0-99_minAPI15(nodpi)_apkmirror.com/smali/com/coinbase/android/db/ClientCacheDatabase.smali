.class public Lcom/coinbase/android/db/ClientCacheDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClientCacheDatabase.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "coinbase_client_cache"

.field public static final DATABASE_VERSION:I = 0x15


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v0, "coinbase_client_cache"

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 19
    const-string v0, "CREATE TABLE Transactions (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, account_id TEXT, transaction_id TEXT, amount TEXT, amount_currency TEXT, native_amount TEXT, native_amount_currency TEXT, resource_type TEXT, resource_id TEXT, resource_name TEXT, resource_email TEXT, resource_address TEXT, resource_resource TEXT, payment_method_id TEXT, type TEXT, resource TEXT, confirmations INTEGER, status TEXT, notes TEXT, delayed INTEGER, details_title INTEGER, details_subtitle INTEGER, created_at TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    const-string v0, "CREATE TABLE Accounts (account_id TEXT NOT NULL, account_name TEXT NOT NULL, receive_address TEXT, balance TEXT, native_balance TEXT, native_currency TEXT, account_type TEXT, currency TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/coinbase/android/db/ClientCacheDatabase;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 25
    const-string v0, "DROP TABLE IF EXISTS Transactions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    const-string v0, "DROP TABLE IF EXISTS Accounts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    const-string v0, "DROP TABLE IF EXISTS AccountChanges"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    const-string v0, "DROP TABLE IF EXISTS DelayedTransactions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string v0, "CREATE TABLE Transactions (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, account_id TEXT, transaction_id TEXT, amount TEXT, amount_currency TEXT, native_amount TEXT, native_amount_currency TEXT, resource_type TEXT, resource_id TEXT, resource_name TEXT, resource_email TEXT, resource_address TEXT, resource_resource TEXT, payment_method_id TEXT, type TEXT, resource TEXT, confirmations INTEGER, status TEXT, notes TEXT, delayed INTEGER, details_title INTEGER, details_subtitle INTEGER, created_at TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v0, "CREATE TABLE Accounts (account_id TEXT NOT NULL, account_name TEXT NOT NULL, receive_address TEXT, balance TEXT, native_balance TEXT, native_currency TEXT, account_type TEXT, currency TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method
