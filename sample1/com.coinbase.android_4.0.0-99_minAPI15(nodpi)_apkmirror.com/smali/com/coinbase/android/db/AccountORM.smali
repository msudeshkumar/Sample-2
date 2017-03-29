.class public Lcom/coinbase/android/db/AccountORM;
.super Ljava/lang/Object;
.source "AccountORM.java"


# static fields
.field public static final COLUMN_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final COLUMN_BALANCE:Ljava/lang/String; = "balance"

.field public static final COLUMN_CURRENCY:Ljava/lang/String; = "currency"

.field public static final COLUMN_NAME:Ljava/lang/String; = "account_name"

.field public static final COLUMN_NATIVE_BALANCE:Ljava/lang/String; = "native_balance"

.field public static final COLUMN_NATIVE_CURRENCY:Ljava/lang/String; = "native_currency"

.field public static final COLUMN_RECEIVE_ADDRESS:Ljava/lang/String; = "receive_address"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "account_type"

.field private static final COMMA_SEP:Ljava/lang/String; = ", "

.field public static final INTEGER_TYPE:Ljava/lang/String; = " INTEGER"

.field public static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE Accounts (account_id TEXT NOT NULL, account_name TEXT NOT NULL, receive_address TEXT, balance TEXT, native_balance TEXT, native_currency TEXT, account_type TEXT, currency TEXT)"

.field public static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS Accounts"

.field private static final TABLE_NAME:Ljava/lang/String; = "Accounts"

.field public static final TEXT_TYPE:Ljava/lang/String; = " TEXT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 200
    const-string v0, "Accounts"

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "account_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "Accounts"

    const-string v2, "account_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 127
    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 124
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public static find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string v1, "Accounts"

    const-string v3, "account_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v7, "account_id DESC"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 192
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {v8}, Lcom/coinbase/android/db/AccountORM;->fromCursor(Landroid/database/Cursor;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    .line 195
    :cond_0
    return-object v2
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/coinbase/v2/models/account/Data;
    .locals 8
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 47
    new-instance v5, Lcom/coinbase/v2/models/account/Data;

    invoke-direct {v5}, Lcom/coinbase/v2/models/account/Data;-><init>()V

    .line 49
    .local v5, "result":Lcom/coinbase/v2/models/account/Data;
    const-string v7, "account_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/coinbase/v2/models/account/Data;->setId(Ljava/lang/String;)V

    .line 50
    const-string v7, "account_name"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/coinbase/v2/models/account/Data;->setName(Ljava/lang/String;)V

    .line 51
    const-string v7, "currency"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/coinbase/v2/models/account/Data;->setCurrency(Ljava/lang/String;)V

    .line 53
    const-string v7, "balance"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "balanceString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Lcom/coinbase/v2/models/account/Balance;

    invoke-direct {v0}, Lcom/coinbase/v2/models/account/Balance;-><init>()V

    .line 56
    .local v0, "balance":Lcom/coinbase/v2/models/account/Balance;
    const-string v7, "balance"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/coinbase/v2/models/account/Balance;->setAmount(Ljava/lang/String;)V

    .line 57
    const-string v7, "currency"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/coinbase/v2/models/account/Balance;->setCurrency(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5, v0}, Lcom/coinbase/v2/models/account/Data;->setBalance(Lcom/coinbase/v2/models/account/Balance;)V

    .line 61
    .end local v0    # "balance":Lcom/coinbase/v2/models/account/Balance;
    :cond_0
    const-string v7, "native_balance"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "nativeBalanceString":Ljava/lang/String;
    const-string v7, "native_currency"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "nativeBalanceCurrency":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 64
    new-instance v2, Lcom/coinbase/v2/models/account/NativeBalance;

    invoke-direct {v2}, Lcom/coinbase/v2/models/account/NativeBalance;-><init>()V

    .line 65
    .local v2, "nativeBalance":Lcom/coinbase/v2/models/account/NativeBalance;
    invoke-virtual {v2, v4}, Lcom/coinbase/v2/models/account/NativeBalance;->setAmount(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, v3}, Lcom/coinbase/v2/models/account/NativeBalance;->setCurrency(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5, v2}, Lcom/coinbase/v2/models/account/Data;->setNativeBalance(Lcom/coinbase/v2/models/account/NativeBalance;)V

    .line 70
    .end local v2    # "nativeBalance":Lcom/coinbase/v2/models/account/NativeBalance;
    :cond_1
    const-string v7, "account_type"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "typeString":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 72
    invoke-virtual {v5, v6}, Lcom/coinbase/v2/models/account/Data;->setType(Ljava/lang/String;)V

    .line 73
    :cond_2
    return-object v5
.end method

.method public static getCachedReceiveAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 131
    const-string v1, "Accounts"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "receive_address"

    aput-object v0, v2, v6

    const-string v3, "account_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 141
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "receive_address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 144
    :cond_0
    return-object v5
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)J
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 77
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "account_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "account_name"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "balance"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Balance;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "native_balance"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/NativeBalance;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "native_currency"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "account_type"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "currency"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "Accounts"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static list(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    const-string v1, "Accounts"

    const-string v7, "account_id DESC"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 171
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/v2/models/account/Data;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-static {v8}, Lcom/coinbase/android/db/AccountORM;->fromCursor(Landroid/database/Cursor;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 178
    :cond_0
    return-object v9
.end method

.method public static setReceiveAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "receiveAddress"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "receive_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "Accounts"

    const-string v2, "account_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public static update(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "account_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "account_name"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "balance"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Balance;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "native_balance"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/NativeBalance;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "native_currency"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "account_type"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "currency"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "Accounts"

    const-string v2, "account_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 112
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public static updateOrInsert(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/account/Data;)J
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "account_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "account_name"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "balance"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Balance;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "native_balance"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/NativeBalance;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "native_currency"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "account_type"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "currency"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "Accounts"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    return-wide v2
.end method
