.class public Lcom/coinbase/android/transfers/DelayedTxSenderService;
.super Lroboguice/service/RoboService;
.source "DelayedTxSenderService.java"


# static fields
.field static final GROUP_DELAYED_NOTIFICATION:Ljava/lang/String; = "group_key_emails"

.field private static NOTIF_ID:I


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field successCount:I

.field threadRunning:Z

.field transactionsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->NOTIF_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->threadRunning:Z

    .line 59
    iput v0, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->transactionsCount:I

    .line 60
    iput v0, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->successCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/transfers/DelayedTxSenderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/DelayedTxSenderService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->tryToSendAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/transfers/DelayedTxSenderService;Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/DelayedTxSenderService;
    .param p1, "x1"    # Lcom/coinbase/v2/models/transactions/Data;
    .param p2, "x2"    # Lcom/coinbase/v2/models/transactions/Data;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->handleRequestSuccess(Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/transfers/DelayedTxSenderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/DelayedTxSenderService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->checkCompletion()V

    return-void
.end method

.method private checkCompletion()V
    .locals 4

    .prologue
    .line 187
    iget v2, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->successCount:I

    iget v3, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->transactionsCount:I

    if-lt v2, v3, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 189
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/coinbase/android/transfers/ConnectivityChangeReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v0, "br":Landroid/content/ComponentName;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 192
    .end local v0    # "br":Landroid/content/ComponentName;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method private handleRequestSuccess(Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;)V
    .locals 2
    .param p1, "newTransaction"    # Lcom/coinbase/v2/models/transactions/Data;
    .param p2, "transaction"    # Lcom/coinbase/v2/models/transactions/Data;
    .param p3, "accountId"    # Ljava/lang/String;

    .prologue
    .line 174
    iget v1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->successCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->successCount:I

    .line 176
    iget-object v1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 178
    invoke-static {v0, p2}, Lcom/coinbase/android/db/TransactionORM;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/transactions/Data;)J

    .line 179
    invoke-static {v0, p3, p1}, Lcom/coinbase/android/db/TransactionORM;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/coinbase/v2/models/transactions/Data;)V

    .line 180
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    iget-object v1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 183
    return-void
.end method

.method private handleTransactionRequest(Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/account/Data;)V
    .locals 7
    .param p1, "tx"    # Lcom/coinbase/v2/models/transactions/Data;
    .param p2, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 107
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 109
    .local v3, "toId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    .line 116
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 117
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 119
    const-string v4, "Error"

    const-string v5, "Send delayed transaction error: to parameter is missing or invalid, deleting transaction"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {v0, p1}, Lcom/coinbase/android/db/TransactionORM;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/coinbase/v2/models/transactions/Data;)J

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 123
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 171
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "toId":Ljava/lang/String;
    :goto_1
    return-void

    .line 111
    .restart local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "toId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 127
    :cond_3
    const-string v4, "to"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v4, "amount"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transactions/Amount;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v4, "currency"

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transactions/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    if-nez v4, :cond_4

    .line 132
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v4

    invoke-virtual {p2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/coinbase/android/transfers/DelayedTxSenderService$2;-><init>(Lcom/coinbase/android/transfers/DelayedTxSenderService;Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/account/Data;)V

    invoke-virtual {v4, v5, v2, v6}, Lcom/coinbase/api/internal/CoinbaseInternal;->requestMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "toId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "DelayedTxSenderService"

    const-string v5, "Failed to ic_send delayed tx"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 150
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "toId":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v4

    invoke-virtual {p2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/coinbase/android/transfers/DelayedTxSenderService$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/coinbase/android/transfers/DelayedTxSenderService$3;-><init>(Lcom/coinbase/android/transfers/DelayedTxSenderService;Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/account/Data;)V

    invoke-virtual {v4, v5, v2, v6}, Lcom/coinbase/api/internal/CoinbaseInternal;->sendMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showNotification(Ljava/lang/String;Lcom/coinbase/v2/models/transactions/Data;)V
    .locals 13
    .param p1, "errors"    # Ljava/lang/String;
    .param p2, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 196
    invoke-virtual {p2}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v11

    if-nez v11, :cond_1

    move v2, v9

    .line 198
    .local v2, "isRequest":Z
    :goto_0
    if-nez p1, :cond_3

    .line 199
    if-eqz v2, :cond_2

    .line 200
    const v11, 0x7f0700e2

    invoke-virtual {p0, v11}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "title":Ljava/lang/String;
    :goto_1
    const v11, 0x7f0700e4

    invoke-virtual {p0, v11}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "description":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "otherUser":Ljava/lang/String;
    :goto_3
    invoke-virtual {p2}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v11

    invoke-static {v11}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromAmount(Lcom/coinbase/v2/models/transactions/Amount;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 216
    .local v0, "amount":Lorg/joda/money/BigMoney;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v10

    iget-object v12, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v12}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 218
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v11, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0200fa

    .line 220
    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 221
    invoke-virtual {v11, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const-string v12, "group_key_emails"

    .line 222
    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 223
    invoke-virtual {v11, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 224
    invoke-virtual {v11, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 225
    .local v3, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/coinbase/android/MainActivity;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v6, "resultIntent":Landroid/content/Intent;
    invoke-static {p0, v10, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 227
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 229
    const-string v9, "notification"

    .line 230
    invoke-virtual {p0, v9}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 231
    .local v4, "mNotificationManager":Landroid/app/NotificationManager;
    sget v9, Lcom/coinbase/android/transfers/DelayedTxSenderService;->NOTIF_ID:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 232
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    sput v9, Lcom/coinbase/android/transfers/DelayedTxSenderService;->NOTIF_ID:I

    .line 235
    :cond_0
    sget v9, Lcom/coinbase/android/transfers/DelayedTxSenderService;->NOTIF_ID:I

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    return-void

    .end local v0    # "amount":Lorg/joda/money/BigMoney;
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "isRequest":Z
    .end local v3    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v5    # "otherUser":Ljava/lang/String;
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "title":Ljava/lang/String;
    :cond_1
    move v2, v10

    .line 196
    goto/16 :goto_0

    .line 202
    .restart local v2    # "isRequest":Z
    :cond_2
    const v11, 0x7f0700e3

    invoke-virtual {p0, v11}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 206
    .end local v8    # "title":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 207
    const v11, 0x7f0700e0

    invoke-virtual {p0, v11}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 211
    .restart local v8    # "title":Ljava/lang/String;
    :goto_4
    move-object v1, p1

    .restart local v1    # "description":Ljava/lang/String;
    goto/16 :goto_2

    .line 209
    .end local v1    # "description":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_4
    const v11, 0x7f0700e1

    invoke-virtual {p0, v11}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "title":Ljava/lang/String;
    goto :goto_4

    .line 214
    .restart local v1    # "description":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method

.method private tryToSendAll()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 77
    iget-object v6, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 78
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/coinbase/android/db/AccountORM;->list(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iput v7, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->successCount:I

    .line 81
    iput v7, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->transactionsCount:I

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 86
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/coinbase/android/db/TransactionORM;->getDelayedTransactions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "tmpTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    iget v7, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->transactionsCount:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->transactionsCount:I

    goto :goto_0

    .line 89
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v3    # "tmpTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    :cond_0
    iget-object v6, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 92
    .restart local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    iget-object v7, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v7}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 93
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/coinbase/android/db/TransactionORM;->getDelayedTransactions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 94
    .local v4, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    iget-object v7, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v7}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 96
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/transactions/Data;

    .line 97
    .local v5, "tx":Lcom/coinbase/v2/models/transactions/Data;
    invoke-direct {p0, v5, v0}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->handleTransactionRequest(Lcom/coinbase/v2/models/transactions/Data;Lcom/coinbase/v2/models/account/Data;)V

    goto :goto_1

    .line 103
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v4    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    .end local v5    # "tx":Lcom/coinbase/v2/models/transactions/Data;
    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService;->threadRunning:Z

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coinbase/android/transfers/DelayedTxSenderService$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/transfers/DelayedTxSenderService$1;-><init>(Lcom/coinbase/android/transfers/DelayedTxSenderService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    :cond_0
    const/4 v0, 0x2

    return v0
.end method
