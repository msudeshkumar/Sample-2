.class public Lcom/coinbase/android/db/TransactionORM;
.super Ljava/lang/Object;
.source "TransactionORM.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final COLUMN_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final COLUMN_AMOUNT_CURRENCY:Ljava/lang/String; = "amount_currency"

.field public static final COLUMN_AMOUNT_STRING:Ljava/lang/String; = "amount"

.field public static final COLUMN_CONFIRMATIONS:Ljava/lang/String; = "confirmations"

.field public static final COLUMN_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final COLUMN_DELAYED:Ljava/lang/String; = "delayed"

.field public static final COLUMN_DETAILS_SUBTITLE:Ljava/lang/String; = "details_subtitle"

.field public static final COLUMN_DETAILS_TITLE:Ljava/lang/String; = "details_title"

.field public static final COLUMN_NATIVE_AMOUNT_CURRENCY:Ljava/lang/String; = "native_amount_currency"

.field public static final COLUMN_NATIVE_AMOUNT_STRING:Ljava/lang/String; = "native_amount"

.field public static final COLUMN_NOTES:Ljava/lang/String; = "notes"

.field public static final COLUMN_PAYMENT_METHOD_ID:Ljava/lang/String; = "payment_method_id"

.field public static final COLUMN_RESOURCE:Ljava/lang/String; = "resource"

.field public static final COLUMN_RESOURCE_ADDRESS:Ljava/lang/String; = "resource_address"

.field public static final COLUMN_RESOURCE_EMAIL:Ljava/lang/String; = "resource_email"

.field public static final COLUMN_RESOURCE_ID:Ljava/lang/String; = "resource_id"

.field public static final COLUMN_RESOURCE_NAME:Ljava/lang/String; = "resource_name"

.field public static final COLUMN_RESOURCE_RESOURCE:Ljava/lang/String; = "resource_resource"

.field public static final COLUMN_RESOURCE_TYPE:Ljava/lang/String; = "resource_type"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final COMMA_SEP:Ljava/lang/String; = ", "

.field public static final INTEGER_TYPE:Ljava/lang/String; = " INTEGER"

.field public static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE Transactions (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, account_id TEXT, transaction_id TEXT, amount TEXT, amount_currency TEXT, native_amount TEXT, native_amount_currency TEXT, resource_type TEXT, resource_id TEXT, resource_name TEXT, resource_email TEXT, resource_address TEXT, resource_resource TEXT, payment_method_id TEXT, type TEXT, resource TEXT, confirmations INTEGER, status TEXT, notes TEXT, delayed INTEGER, details_title INTEGER, details_subtitle INTEGER, created_at TEXT)"

.field public static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS Transactions"

.field private static final TABLE_NAME:Ljava/lang/String; = "Transactions"

.field public static final TEXT_TYPE:Ljava/lang/String; = " TEXT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "Transactions"

    const-string v1, "account_id = ? AND delayed = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/transactions/Data;)J
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 315
    const-string v0, "Transactions"

    const-string v1, "transaction_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/transactions/Data;
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 297
    const-string v1, "Transactions"

    const-string v3, "transaction_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v7, "created_at DESC"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 307
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {v8}, Lcom/coinbase/android/db/TransactionORM;->fromCursor(Landroid/database/Cursor;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v2

    .line 310
    :cond_0
    return-object v2
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/coinbase/v2/models/transactions/Data;
    .locals 14
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 178
    new-instance v10, Lcom/coinbase/v2/models/transactions/Data;

    invoke-direct {v10}, Lcom/coinbase/v2/models/transactions/Data;-><init>()V

    .line 180
    .local v10, "result":Lcom/coinbase/v2/models/transactions/Data;
    const-string v12, "transaction_id"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/coinbase/v2/models/transactions/Data;->setId(Ljava/lang/String;)V

    .line 182
    const-string v12, "resource_type"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "resourceType":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 184
    const-string v12, "to"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "from"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 185
    :cond_0
    new-instance v6, Lcom/coinbase/v2/models/transactions/Entity;

    invoke-direct {v6}, Lcom/coinbase/v2/models/transactions/Entity;-><init>()V

    .line 186
    .local v6, "entity":Lcom/coinbase/v2/models/transactions/Entity;
    const-string v12, "resource_id"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/coinbase/v2/models/transactions/Entity;->setId(Ljava/lang/String;)V

    .line 187
    const-string v12, "resource_name"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/coinbase/v2/models/transactions/Entity;->setName(Ljava/lang/String;)V

    .line 188
    const-string v12, "resource_email"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/coinbase/v2/models/transactions/Entity;->setEmail(Ljava/lang/String;)V

    .line 189
    const-string v12, "resource_address"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/coinbase/v2/models/transactions/Entity;->setAddress(Ljava/lang/String;)V

    .line 190
    const-string v12, "resource_resource"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/coinbase/v2/models/transactions/Entity;->setResource(Ljava/lang/String;)V

    .line 191
    const-string v12, "to"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 192
    invoke-virtual {v10, v6}, Lcom/coinbase/v2/models/transactions/Data;->setTo(Lcom/coinbase/v2/models/transactions/Entity;)V

    .line 248
    .end local v6    # "entity":Lcom/coinbase/v2/models/transactions/Entity;
    :cond_1
    :goto_0
    const-string v12, "created_at"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/coinbase/v2/models/transactions/Data;->setCreatedAt(Ljava/lang/String;)V

    .line 250
    const-string v12, "amount_currency"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "currencyCode":Ljava/lang/String;
    const-string v12, "amount"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "amountString":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 253
    new-instance v2, Lcom/coinbase/v2/models/transactions/Amount;

    invoke-direct {v2}, Lcom/coinbase/v2/models/transactions/Amount;-><init>()V

    .line 254
    .local v2, "amount":Lcom/coinbase/v2/models/transactions/Amount;
    invoke-virtual {v2, v3}, Lcom/coinbase/v2/models/transactions/Amount;->setAmount(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2, v4}, Lcom/coinbase/v2/models/transactions/Amount;->setCurrency(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v10, v2}, Lcom/coinbase/v2/models/transactions/Data;->setAmount(Lcom/coinbase/v2/models/transactions/Amount;)V

    .line 259
    .end local v2    # "amount":Lcom/coinbase/v2/models/transactions/Amount;
    :cond_2
    const-string v12, "native_amount_currency"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "NativeCurrencyCode":Ljava/lang/String;
    const-string v12, "native_amount"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "NativeAmountString":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 262
    new-instance v7, Lcom/coinbase/v2/models/transactions/NativeAmount;

    invoke-direct {v7}, Lcom/coinbase/v2/models/transactions/NativeAmount;-><init>()V

    .line 263
    .local v7, "nativeAmount":Lcom/coinbase/v2/models/transactions/NativeAmount;
    invoke-virtual {v7, v0}, Lcom/coinbase/v2/models/transactions/NativeAmount;->setAmount(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v7, v1}, Lcom/coinbase/v2/models/transactions/NativeAmount;->setCurrency(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v10, v7}, Lcom/coinbase/v2/models/transactions/Data;->setNativeAmount(Lcom/coinbase/v2/models/transactions/NativeAmount;)V

    .line 268
    .end local v7    # "nativeAmount":Lcom/coinbase/v2/models/transactions/NativeAmount;
    :cond_3
    const-string v12, "resource"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/coinbase/v2/models/transactions/Data;->setResource(Ljava/lang/String;)V

    .line 269
    const-string v12, "notes"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/coinbase/v2/models/transactions/Data;->setDescription(Ljava/lang/String;)V

    .line 270
    const-string v12, "type"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/coinbase/v2/models/transactions/Data;->setType(Ljava/lang/String;)V

    .line 271
    const-string v12, "status"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/coinbase/v2/models/transactions/Data;->setStatus(Ljava/lang/String;)V

    .line 272
    const-string v12, "delayed"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/coinbase/v2/models/transactions/Data;->setDelayed(Ljava/lang/Boolean;)V

    .line 274
    new-instance v5, Lcom/coinbase/v2/models/transactions/Details;

    invoke-direct {v5}, Lcom/coinbase/v2/models/transactions/Details;-><init>()V

    .line 275
    .local v5, "details":Lcom/coinbase/v2/models/transactions/Details;
    const-string v12, "details_title"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/coinbase/v2/models/transactions/Details;->setTitle(Ljava/lang/String;)V

    .line 276
    const-string v12, "details_subtitle"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/coinbase/v2/models/transactions/Details;->setSubtitle(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v10, v5}, Lcom/coinbase/v2/models/transactions/Data;->setDetails(Lcom/coinbase/v2/models/transactions/Details;)V

    .line 279
    return-object v10

    .line 194
    .end local v0    # "NativeAmountString":Ljava/lang/String;
    .end local v1    # "NativeCurrencyCode":Ljava/lang/String;
    .end local v3    # "amountString":Ljava/lang/String;
    .end local v4    # "currencyCode":Ljava/lang/String;
    .end local v5    # "details":Lcom/coinbase/v2/models/transactions/Details;
    .restart local v6    # "entity":Lcom/coinbase/v2/models/transactions/Entity;
    :cond_4
    invoke-virtual {v10, v6}, Lcom/coinbase/v2/models/transactions/Data;->setFrom(Lcom/coinbase/v2/models/transactions/Entity;)V

    goto/16 :goto_0

    .line 195
    .end local v6    # "entity":Lcom/coinbase/v2/models/transactions/Entity;
    :cond_5
    const-string v12, "buy"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "sell"

    .line 196
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "request"

    .line 197
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "send"

    .line 198
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "transfer"

    .line 199
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "fiat_deposit"

    .line 200
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "fiat_withdrawal"

    .line 201
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "exchange_deposit"

    .line 202
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "exchange_withdrawal"

    .line 203
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "vault_withdrawal"

    .line 204
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 205
    :cond_6
    new-instance v11, Lcom/coinbase/v2/models/transactions/Trade;

    invoke-direct {v11}, Lcom/coinbase/v2/models/transactions/Trade;-><init>()V

    .line 206
    .local v11, "trade":Lcom/coinbase/v2/models/transactions/Trade;
    const-string v12, "resource_id"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/coinbase/v2/models/transactions/Trade;->setId(Ljava/lang/String;)V

    .line 207
    const-string v12, "resource_resource"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/coinbase/v2/models/transactions/Trade;->setResource(Ljava/lang/String;)V

    .line 208
    new-instance v8, Lcom/coinbase/v2/models/transactions/PaymentMethod;

    invoke-direct {v8}, Lcom/coinbase/v2/models/transactions/PaymentMethod;-><init>()V

    .line 209
    .local v8, "paymentMethod":Lcom/coinbase/v2/models/transactions/PaymentMethod;
    const-string v12, "payment_method_id"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->setId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v11, v8}, Lcom/coinbase/v2/models/transactions/Trade;->setPaymentMethod(Lcom/coinbase/v2/models/transactions/PaymentMethod;)V

    .line 211
    const/4 v12, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_7
    :goto_2
    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    .line 213
    :pswitch_0
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setBuy(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 211
    :sswitch_0
    const-string v13, "buy"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x0

    goto :goto_2

    :sswitch_1
    const-string v13, "sell"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x1

    goto :goto_2

    :sswitch_2
    const-string v13, "request"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_3
    const-string v13, "send"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x3

    goto :goto_2

    :sswitch_4
    const-string v13, "transfer"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x4

    goto :goto_2

    :sswitch_5
    const-string v13, "fiat_deposit"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x5

    goto :goto_2

    :sswitch_6
    const-string v13, "fiat_withdrawal"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x6

    goto :goto_2

    :sswitch_7
    const-string v13, "exchange_deposit"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x7

    goto :goto_2

    :sswitch_8
    const-string v13, "exchange_withdrawal"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v12, 0x8

    goto :goto_2

    :sswitch_9
    const-string v13, "vault_withdrawal"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v12, 0x9

    goto :goto_2

    .line 216
    :pswitch_1
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setSell(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setRequest(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 222
    :pswitch_3
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setSend(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 225
    :pswitch_4
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setTransfer(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 228
    :pswitch_5
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setFiatDeposit(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 231
    :pswitch_6
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setFiatWithdrawal(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 234
    :pswitch_7
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setExchangeDeposit(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 237
    :pswitch_8
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setExchangeWithdrawal(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 240
    :pswitch_9
    invoke-virtual {v10, v11}, Lcom/coinbase/v2/models/transactions/Data;->setVaultWithdrawal(Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 272
    .end local v8    # "paymentMethod":Lcom/coinbase/v2/models/transactions/PaymentMethod;
    .end local v11    # "trade":Lcom/coinbase/v2/models/transactions/Trade;
    .restart local v0    # "NativeAmountString":Ljava/lang/String;
    .restart local v1    # "NativeCurrencyCode":Ljava/lang/String;
    .restart local v3    # "amountString":Ljava/lang/String;
    .restart local v4    # "currencyCode":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x355de46b -> :sswitch_5
        -0xe42877e -> :sswitch_7
        0x17e86 -> :sswitch_0
        0x35cf52 -> :sswitch_1
        0x35cf88 -> :sswitch_3
        0x16882051 -> :sswitch_8
        0x2d45405e -> :sswitch_6
        0x3b3f2ce2 -> :sswitch_9
        0x414ef28f -> :sswitch_2
        0x4c58b7eb -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getDelayedTransactions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Data;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 324
    const-string v1, "Transactions"

    const-string v3, "account_id = ? AND delayed = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    const-string v5, "1"

    aput-object v5, v4, v0

    const-string v7, "created_at DESC"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 334
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/v2/models/transactions/Data;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 336
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-static {v8}, Lcom/coinbase/android/db/TransactionORM;->fromCursor(Landroid/database/Cursor;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 341
    :cond_0
    return-object v9
.end method

.method public static getTransactions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Data;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 345
    const-string v1, "Transactions"

    const-string v3, "account_id = ? AND delayed = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    const-string v5, "0"

    aput-object v5, v4, v0

    const-string v7, "created_at DESC"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 355
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/v2/models/transactions/Data;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 357
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-static {v8}, Lcom/coinbase/android/db/TransactionORM;->fromCursor(Landroid/database/Cursor;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 362
    :cond_0
    return-object v9
.end method

.method public static insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/coinbase/v2/models/transactions/Data;)V
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 283
    const-string v2, "Transactions"

    const-string v3, "transaction_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 286
    invoke-virtual {p2}, Lcom/coinbase/v2/models/transactions/Data;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 283
    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    const-string v2, "Transactions"

    const-string v3, "_id"

    .line 292
    invoke-static {p1, p2}, Lcom/coinbase/android/db/TransactionORM;->toContentValues(Ljava/lang/String;Lcom/coinbase/v2/models/transactions/Data;)Landroid/content/ContentValues;

    move-result-object v4

    .line 289
    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 294
    .local v0, "result":J
    return-void
.end method

.method private static setEntityValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Entity;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "entity"    # Lcom/coinbase/v2/models/transactions/Entity;

    .prologue
    .line 163
    const-string v0, "resource_resource"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "resource_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "resource_email"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "resource_name"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "resource_address"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private static setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "trade"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 171
    const-string v0, "resource_resource"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Trade;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "resource_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Trade;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "payment_method_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public static toContentValues(Ljava/lang/String;Lcom/coinbase/v2/models/transactions/Data;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 83
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "account_id"

    invoke-virtual {v5, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v6, "transaction_id"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v0

    .line 88
    .local v0, "amount":Lcom/coinbase/v2/models/transactions/Amount;
    if-eqz v0, :cond_0

    .line 89
    const-string v6, "amount"

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Amount;->getAmount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v6, "amount_currency"

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getNativeAmount()Lcom/coinbase/v2/models/transactions/NativeAmount;

    move-result-object v2

    .line 93
    .local v2, "nativeAmount":Lcom/coinbase/v2/models/transactions/NativeAmount;
    if-eqz v2, :cond_1

    .line 94
    const-string v6, "native_amount"

    invoke-virtual {v2}, Lcom/coinbase/v2/models/transactions/NativeAmount;->getAmount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v6, "native_amount_currency"

    invoke-virtual {v2}, Lcom/coinbase/v2/models/transactions/NativeAmount;->getCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    const-string v6, "notes"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v6, "created_at"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getCreatedAt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 102
    const-string v6, "resource_type"

    const-string v7, "to"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setEntityValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Entity;)V

    .line 139
    :cond_2
    :goto_0
    const-string v6, "resource"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getResource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getType()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "type":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 143
    const-string v4, "none"

    .line 144
    :cond_3
    const-string v6, "type"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "status":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 148
    const-string v3, "pending"

    .line 149
    :cond_4
    const-string v6, "status"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getDelayed()Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_11

    const/4 v1, 0x0

    .line 152
    .local v1, "delayed":Z
    :goto_1
    const-string v6, "delayed"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 154
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getDetails()Lcom/coinbase/v2/models/transactions/Details;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 155
    const-string v6, "details_title"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getDetails()Lcom/coinbase/v2/models/transactions/Details;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coinbase/v2/models/transactions/Details;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v6, "details_subtitle"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getDetails()Lcom/coinbase/v2/models/transactions/Details;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coinbase/v2/models/transactions/Details;->getSubtitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_5
    return-object v5

    .line 104
    .end local v1    # "delayed":Z
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 105
    const-string v6, "resource_type"

    const-string v7, "from"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setEntityValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Entity;)V

    goto :goto_0

    .line 107
    :cond_7
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getBuy()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 108
    const-string v6, "resource_type"

    const-string v7, "buy"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getBuy()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto :goto_0

    .line 110
    :cond_8
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getSell()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 111
    const-string v6, "resource_type"

    const-string v7, "sell"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getSell()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 113
    :cond_9
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getRequest()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 114
    const-string v6, "resource_type"

    const-string v7, "request"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getRequest()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 116
    :cond_a
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getSend()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 117
    const-string v6, "resource_type"

    const-string v7, "send"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getSend()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 119
    :cond_b
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTransfer()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 120
    const-string v6, "resource_type"

    const-string v7, "transfer"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTransfer()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 122
    :cond_c
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getFiatDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 123
    const-string v6, "resource_type"

    const-string v7, "fiat_deposit"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getFiatDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 125
    :cond_d
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getFiatWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 126
    const-string v6, "resource_type"

    const-string v7, "fiat_withdrawal"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getFiatWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 128
    :cond_e
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 129
    const-string v6, "resource_type"

    const-string v7, "exchange_deposit"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 131
    :cond_f
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 132
    const-string v6, "resource_type"

    const-string v7, "exchange_withdrawal"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 134
    :cond_10
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getVaultWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 135
    const-string v6, "resource_type"

    const-string v7, "vault_withdrawal"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getVaultWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/TransactionORM;->setTradeValues(Landroid/content/ContentValues;Lcom/coinbase/v2/models/transactions/Trade;)V

    goto/16 :goto_0

    .line 151
    .restart local v3    # "status":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getDelayed()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_1
.end method
