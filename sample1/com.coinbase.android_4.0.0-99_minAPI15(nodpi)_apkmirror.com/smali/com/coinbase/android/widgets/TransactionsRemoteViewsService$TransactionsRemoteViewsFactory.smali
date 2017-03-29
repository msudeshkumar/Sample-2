.class public Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;
.super Ljava/lang/Object;
.source "TransactionsRemoteViewsService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransactionsRemoteViewsFactory"
.end annotation


# instance fields
.field isVault:Z

.field mAccount:Lcom/coinbase/v2/models/account/Data;

.field mAccountId:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;

.field transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accountId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->this$0:Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    .line 61
    invoke-static {p2}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private query()V
    .locals 4

    .prologue
    .line 75
    const-string v1, "Coinbase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filtering account changes for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getActiveAccountId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coinbase/android/db/TransactionORM;->getTransactions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->transactions:Ljava/util/List;

    .line 88
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coinbase/android/db/AccountORM;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccount:Lcom/coinbase/v2/models/account/Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13
    .param p1, "position"    # I

    .prologue
    const v12, 0x7f0d0283

    .line 111
    iget-object v9, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->transactions:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coinbase/v2/models/transactions/Data;

    .line 113
    .local v8, "transaction":Lcom/coinbase/v2/models/transactions/Data;
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0300c2

    invoke-direct {v6, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v6, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v8}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v9

    invoke-static {v9}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromAmount(Lcom/coinbase/v2/models/transactions/Amount;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 117
    .local v0, "amount":Lorg/joda/money/BigMoney;
    iget-object v9, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 118
    invoke-interface {v9}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v11, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 119
    invoke-static {v10, v11}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    .line 117
    invoke-static {v0, v9, v10}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "amountString":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->isPositive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 123
    const v2, 0x7f0c008b

    .line 128
    .local v2, "color":I
    :goto_0
    invoke-virtual {v6, v12, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 129
    iget-object v9, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v12, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 132
    const v9, 0x7f0d0282

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transactions/Data;->getDetails()Lcom/coinbase/v2/models/transactions/Details;

    move-result-object v10

    invoke-virtual {v10}, Lcom/coinbase/v2/models/transactions/Details;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 135
    const-string v5, ""

    .line 136
    .local v5, "readable":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pending"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    iget-object v9, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->this$0:Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;

    const v10, 0x7f07022f

    invoke-virtual {v9, v10}, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    :cond_0
    const v9, 0x7f0d0284

    invoke-virtual {v6, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v8}, Lcom/coinbase/v2/models/transactions/Data;->getDetails()Lcom/coinbase/v2/models/transactions/Details;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transactions/Details;->getSubtitle()Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "summary":Ljava/lang/CharSequence;
    const v9, 0x7f0d0285

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 146
    invoke-static {v8}, Lcom/coinbase/android/utils/TransactionUtils;->generateTransactionIcon(Lcom/coinbase/v2/models/transactions/Data;)I

    move-result v3

    .line 147
    .local v3, "defaultIcon":I
    const v9, 0x7f0d0281

    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 149
    invoke-virtual {v8}, Lcom/coinbase/v2/models/transactions/Data;->getId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 150
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "id"

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transactions/Data;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v9, "accountId"

    iget-object v10, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const v9, 0x7f0d0280

    invoke-virtual {v6, v9, v4}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 156
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    return-object v6

    .line 125
    .end local v2    # "color":I
    .end local v3    # "defaultIcon":I
    .end local v5    # "readable":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const v2, 0x7f0c008a

    .restart local v2    # "color":I
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->query()V

    .line 67
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccount:Lcom/coinbase/v2/models/account/Data;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-static {v1}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    .line 69
    .local v0, "type":Lcom/coinbase/v2/models/account/Data$Type;
    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->VAULT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->MULTISIG_VAULT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->isVault:Z

    .line 72
    .end local v0    # "type":Lcom/coinbase/v2/models/account/Data$Type;
    :cond_1
    return-void

    .line 69
    .restart local v0    # "type":Lcom/coinbase/v2/models/account/Data$Type;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;->query()V

    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method
