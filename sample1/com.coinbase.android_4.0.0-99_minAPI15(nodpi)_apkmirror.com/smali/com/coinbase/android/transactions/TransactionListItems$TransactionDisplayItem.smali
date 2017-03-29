.class public Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;
.super Lcom/coinbase/android/transactions/AbstractTransactionListItem;
.source "TransactionListItems.java"

# interfaces
.implements Lcom/coinbase/android/transactions/TransactionListDisplayItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionListItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionDisplayItem"
.end annotation


# instance fields
.field protected exchangeRate:Ljava/math/BigDecimal;

.field protected mTransaction:Lcom/coinbase/v2/models/transactions/Data;

.field protected paymentMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coinbase/api/LoginManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/transactions/Data;Ljava/lang/String;ZLjava/math/BigDecimal;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginManager"    # Lcom/coinbase/api/LoginManager;
    .param p3, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;
    .param p4, "transaction"    # Lcom/coinbase/v2/models/transactions/Data;
    .param p5, "paymentMethodName"    # Ljava/lang/String;
    .param p6, "vault"    # Z
    .param p7, "exchangeRate"    # Ljava/math/BigDecimal;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/coinbase/android/transactions/AbstractTransactionListItem;-><init>(Landroid/content/Context;Lcom/coinbase/api/LoginManager;Lcom/coinbase/v2/models/account/Data;Z)V

    .line 90
    iput-object p4, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    .line 91
    iput-object p5, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->paymentMethodName:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->exchangeRate:Ljava/math/BigDecimal;

    .line 93
    return-void
.end method


# virtual methods
.method public configureAmountView(Landroid/widget/TextView;)V
    .locals 8
    .param p1, "amountView"    # Landroid/widget/TextView;

    .prologue
    .line 123
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromAmount(Lcom/coinbase/v2/models/transactions/Amount;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 124
    .local v0, "amount":Lorg/joda/money/BigMoney;
    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->isPositive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :goto_0
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-static {v4}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v3

    .line 131
    .local v3, "type":Lcom/coinbase/v2/models/account/Data$Type;
    sget-object v4, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v3, v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Data;->getNativeAmount()Lcom/coinbase/v2/models/transactions/NativeAmount;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromNativeAmount(Lcom/coinbase/v2/models/transactions/NativeAmount;)Lorg/joda/money/BigMoney;

    move-result-object v2

    .line 133
    .local v2, "nativeAmount":Lorg/joda/money/BigMoney;
    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v5, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 135
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 133
    invoke-static {v2, v4, v5}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "fiatAmount":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v1    # "fiatAmount":Ljava/lang/String;
    .end local v2    # "nativeAmount":Lorg/joda/money/BigMoney;
    :goto_1
    return-void

    .line 127
    .end local v3    # "type":Lcom/coinbase/v2/models/account/Data$Type;
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 138
    .restart local v3    # "type":Lcom/coinbase/v2/models/account/Data$Type;
    :cond_1
    iget-object v4, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 139
    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/coinbase/android/utils/MoneyUtils$Options;->STRIP_TRAILING_ZEROS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v6, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v7, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 140
    invoke-static {v5, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 138
    invoke-static {v0, v4, v5}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public configureProfileView(Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "profileView"    # Landroid/widget/ImageView;

    .prologue
    .line 148
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getActiveUserId()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "currentUserId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 150
    .local v2, "email":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v3

    .line 151
    .local v3, "recipient":Lcom/coinbase/v2/models/transactions/Entity;
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v4

    .line 152
    .local v4, "sender":Lcom/coinbase/v2/models/transactions/Entity;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-static {v5}, Lcom/coinbase/android/utils/TransactionUtils;->generateTransactionIcon(Lcom/coinbase/v2/models/transactions/Data;)I

    move-result v1

    .line 158
    .local v1, "defaultIcon":I
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    return-void

    .line 154
    .end local v1    # "defaultIcon":I
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    invoke-virtual {v4}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public configureStatusView(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "statusView"    # Landroid/widget/TextView;

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "readable":Ljava/lang/String;
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pending"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mContext:Landroid/content/Context;

    const v4, 0x7f07022f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_0
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-static {v3}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v3

    sget-object v4, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v3, v4, :cond_2

    .line 101
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Data;->getNativeAmount()Lcom/coinbase/v2/models/transactions/NativeAmount;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromNativeAmount(Lcom/coinbase/v2/models/transactions/NativeAmount;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 102
    .local v0, "amount":Lorg/joda/money/BigMoney;
    if-eqz v0, :cond_1

    .line 103
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 105
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 103
    invoke-static {v0, v3, v4}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "fiatAmount":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v0    # "amount":Lorg/joda/money/BigMoney;
    .end local v1    # "fiatAmount":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public configureSummaryView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "summaryView"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Data;->getDetails()Lcom/coinbase/v2/models/transactions/Details;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Details;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public configureTitleView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Data;->getDetails()Lcom/coinbase/v2/models/transactions/Details;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Details;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public getSection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-static {v1}, Lcom/coinbase/android/utils/TransactionUtils;->createdAtDateFromTransaction(Lcom/coinbase/v2/models/transactions/Data;)Lorg/joda/time/LocalDate;

    move-result-object v1

    # invokes: Lcom/coinbase/android/transactions/TransactionListItems;->formatDate(Landroid/content/Context;Lorg/joda/time/LocalDate;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/coinbase/android/transactions/TransactionListItems;->access$000(Landroid/content/Context;Lorg/joda/time/LocalDate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/coinbase/v2/models/transactions/Data;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Data;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDelayed()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method
