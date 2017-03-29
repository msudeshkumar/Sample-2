.class public Lcom/coinbase/android/utils/TransactionUtils;
.super Ljava/lang/Object;
.source "TransactionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amountFromMoney(Lorg/joda/money/Money;)Lcom/coinbase/v2/models/transactions/Amount;
    .locals 2
    .param p0, "money"    # Lorg/joda/money/Money;

    .prologue
    .line 106
    new-instance v0, Lcom/coinbase/v2/models/transactions/Amount;

    invoke-direct {v0}, Lcom/coinbase/v2/models/transactions/Amount;-><init>()V

    .line 107
    .local v0, "amount":Lcom/coinbase/v2/models/transactions/Amount;
    invoke-virtual {p0}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/v2/models/transactions/Amount;->setCurrency(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/v2/models/transactions/Amount;->setAmount(Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method public static calculateFee(Lorg/joda/money/BigMoney;Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)Lorg/joda/money/Money;
    .locals 6
    .param p0, "amount"    # Lorg/joda/money/BigMoney;
    .param p1, "quote"    # Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    .line 51
    :cond_1
    sget-object v5, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v5}, Lorg/joda/money/BigMoney;->toMoney(Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v4

    .line 52
    .local v4, "roundedAmount":Lorg/joda/money/Money;
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->getFiat()Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    .line 53
    .local v0, "cu":Lorg/joda/money/CurrencyUnit;
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->getFiat()Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 54
    .local v2, "fiatAmount":D
    invoke-static {v0, v2, v3}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/Money;

    move-result-object v1

    .line 55
    .local v1, "fee":Lorg/joda/money/Money;
    invoke-virtual {v1, v4}, Lorg/joda/money/Money;->minus(Lorg/joda/money/Money;)Lorg/joda/money/Money;

    move-result-object v1

    .line 57
    goto :goto_0
.end method

.method public static createdAtDateFromTransaction(Lcom/coinbase/v2/models/transactions/Data;)Lorg/joda/time/LocalDate;
    .locals 3
    .param p0, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 115
    :try_start_0
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {v2}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    .line 116
    .local v1, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lorg/joda/time/LocalDate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 118
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_0
    return-object v2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/joda/time/LocalDate;

    invoke-direct {v2}, Lorg/joda/time/LocalDate;-><init>()V

    goto :goto_0
.end method

.method public static entityIdentifier(Landroid/content/Context;Lcom/coinbase/v2/models/transactions/Entity;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/coinbase/v2/models/transactions/Entity;

    .prologue
    const v2, 0x7f07024e

    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getResource()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "resource":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_1
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 34
    :cond_3
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_4
    const-string v1, "bitcoin_network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 37
    const v1, 0x7f07022b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_5
    const-string v1, "bitcoin_address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ethereum_address"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40
    :cond_6
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transactions/Entity;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_7
    const-string v1, "ethereum_network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 42
    const v1, 0x7f0702f1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_8
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static generateTransactionIcon(Lcom/coinbase/v2/models/transactions/Data;)I
    .locals 8
    .param p0, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getType()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "type":Ljava/lang/String;
    const-string v3, "buy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const v3, 0x7f0200ea

    .line 142
    :goto_0
    return v3

    .line 127
    :cond_0
    const-string v3, "sell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const v3, 0x7f020108

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transactions/Amount;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .line 131
    .local v1, "senderMe":Z
    :goto_1
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "completed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    .local v0, "completed":Z
    if-eqz v0, :cond_4

    .line 134
    if-eqz v1, :cond_3

    .line 135
    const v3, 0x7f020106

    goto :goto_0

    .line 130
    .end local v0    # "completed":Z
    .end local v1    # "senderMe":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 137
    .restart local v0    # "completed":Z
    .restart local v1    # "senderMe":Z
    :cond_3
    const v3, 0x7f020103

    goto :goto_0

    .line 139
    :cond_4
    if-eqz v1, :cond_5

    .line 140
    const v3, 0x7f020110

    goto :goto_0

    .line 142
    :cond_5
    const v3, 0x7f02010a

    goto :goto_0
.end method

.method public static moneyFromAmount(Lcom/coinbase/v2/models/transactions/Amount;)Lorg/joda/money/BigMoney;
    .locals 4
    .param p0, "amount"    # Lcom/coinbase/v2/models/transactions/Amount;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Amount;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 89
    invoke-static {v1, v2, v3}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 92
    .local v0, "money":Lorg/joda/money/BigMoney;
    return-object v0
.end method

.method public static moneyFromNativeAmount(Lcom/coinbase/v2/models/transactions/NativeAmount;)Lorg/joda/money/BigMoney;
    .locals 4
    .param p0, "amount"    # Lcom/coinbase/v2/models/transactions/NativeAmount;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/NativeAmount;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/NativeAmount;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 99
    invoke-static {v1, v2, v3}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 102
    .local v0, "money":Lorg/joda/money/BigMoney;
    goto :goto_0
.end method

.method public static paymentMethodIdentifier(Lcom/coinbase/v2/models/transactions/Data;)Ljava/lang/String;
    .locals 2
    .param p0, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    const/4 v0, 0x0

    .line 61
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getBuy()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getBuy()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getBuy()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getSell()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getSell()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getSell()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getRequest()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getRequest()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getRequest()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getSend()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getSend()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 71
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getSend()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getTransfer()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getTransfer()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 73
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getTransfer()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getFiatDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getFiatDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 75
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getFiatDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 76
    :cond_7
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getFiatWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getFiatWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 77
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getFiatWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 78
    :cond_8
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 79
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 80
    :cond_9
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :cond_a
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getVaultWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getVaultWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transactions/Data;->getVaultWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/Trade;->getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transactions/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
