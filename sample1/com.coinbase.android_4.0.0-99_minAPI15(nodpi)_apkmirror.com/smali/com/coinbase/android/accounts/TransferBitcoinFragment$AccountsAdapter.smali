.class Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TransferBitcoinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/accounts/TransferBitcoinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/v2/models/account/Data;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .prologue
    .line 253
    iput-object p1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    .line 254
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 255
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 277
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030091

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 280
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 281
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v1

    .line 282
    .local v1, "balance":Lorg/joda/money/Money;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/joda/money/Money;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v6, v6, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 283
    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$Options;->INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 284
    invoke-static {v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    .line 282
    invoke-static {v5, v6, v7}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "text":Ljava/lang/String;
    const v4, 0x7f0d0293

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 261
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030060

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 264
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 265
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v1

    .line 266
    .local v1, "balance":Lorg/joda/money/Money;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/joda/money/Money;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v6, v6, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 267
    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$Options;->INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 268
    invoke-static {v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    .line 266
    invoke-static {v5, v6, v7}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "text":Ljava/lang/String;
    move-object v4, p2

    .line 269
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-object p2
.end method
