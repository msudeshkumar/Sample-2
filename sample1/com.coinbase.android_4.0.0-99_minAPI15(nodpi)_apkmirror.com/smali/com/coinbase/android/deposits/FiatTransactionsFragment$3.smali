.class Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;
.super Landroid/widget/ArrayAdapter;
.source "FiatTransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/v2/models/paymentMethods/Data;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 368
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 398
    if-nez p2, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 400
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0300b8

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 403
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 405
    .local v3, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    const-string v1, ""

    .line 407
    .local v1, "balance":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 408
    iget-object v5, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/paymentMethods/FiatAccount;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/AccountORM;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v0

    .line 409
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 411
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v6

    iget-object v7, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 412
    invoke-interface {v7}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 413
    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 410
    invoke-static {v6, v7, v8}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "text":Ljava/lang/String;
    const v5, 0x7f0d009b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 372
    if-nez p2, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 374
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0300ba

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 377
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 379
    .local v3, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    const-string v1, ""

    .line 381
    .local v1, "balance":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 382
    iget-object v5, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v5, v5, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/paymentMethods/FiatAccount;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/AccountORM;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v0

    .line 383
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 385
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v6

    iget-object v7, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v7, v7, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 386
    invoke-interface {v7}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 387
    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 384
    invoke-static {v6, v7, v8}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "text":Ljava/lang/String;
    const v5, 0x7f0d009b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    return-object p2
.end method
