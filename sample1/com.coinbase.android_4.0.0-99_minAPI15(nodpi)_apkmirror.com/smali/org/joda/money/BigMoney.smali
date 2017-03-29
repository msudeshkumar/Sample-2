.class public final Lorg/joda/money/BigMoney;
.super Ljava/lang/Object;
.source "BigMoney.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lorg/joda/money/BigMoneyProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/money/BigMoneyProvider;",
        ">;",
        "Lorg/joda/money/BigMoneyProvider;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PARSE_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final currency:Lorg/joda/money/CurrencyUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/joda/money/BigMoney;->$assertionsDisabled:Z

    .line 54
    const-string v0, "[+-]?[0-9]*[.]?[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/joda/money/BigMoney;->PARSE_REGEX:Ljava/util/regex/Pattern;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    .line 419
    iput-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    .line 420
    return-void
.end method

.method constructor <init>(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p2, "amount"    # Ljava/math/BigDecimal;

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    sget-boolean v0, Lorg/joda/money/BigMoney;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Joda-Money bug: Currency must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 430
    :cond_0
    sget-boolean v0, Lorg/joda/money/BigMoney;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Joda-Money bug: Amount must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 431
    :cond_1
    iput-object p1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    .line 432
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object p2

    .end local p2    # "amount":Ljava/math/BigDecimal;
    :cond_2
    iput-object p2, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    .line 433
    return-void
.end method

.method private checkCurrencyEqual(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;
    .locals 4
    .param p1, "moneyProvider"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 829
    invoke-static {p1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 830
    .local v0, "money":Lorg/joda/money/BigMoney;
    invoke-virtual {p0, v0}, Lorg/joda/money/BigMoney;->isSameCurrency(Lorg/joda/money/BigMoneyProvider;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    new-instance v1, Lorg/joda/money/CurrencyMismatchException;

    invoke-virtual {p0}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/joda/money/CurrencyMismatchException;-><init>(Lorg/joda/money/CurrencyUnit;Lorg/joda/money/CurrencyUnit;)V

    throw v1

    .line 833
    :cond_0
    return-object v0
.end method

.method public static of(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;
    .locals 2
    .param p0, "moneyProvider"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 258
    const-string v1, "BigMoneyProvider must not be null"

    invoke-static {p0, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 260
    .local v0, "money":Lorg/joda/money/BigMoney;
    const-string v1, "BigMoneyProvider must not return null"

    invoke-static {v0, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    return-object v0
.end method

.method public static of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/BigMoney;
    .locals 1
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amount"    # D

    .prologue
    .line 112
    const-string v0, "Currency must not be null"

    invoke-static {p0, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;
    .locals 5
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amount"    # Ljava/math/BigDecimal;

    .prologue
    .line 79
    const-string v3, "Currency must not be null"

    invoke-static {p0, v3}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const-string v3, "Amount must not be null"

    invoke-static {p1, v3}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/math/BigDecimal;

    if-eq v3, v4, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 83
    .local v1, "value":Ljava/math/BigInteger;
    if-nez v1, :cond_0

    .line 84
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal BigDecimal subclass"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/math/BigInteger;

    if-eq v3, v4, :cond_1

    .line 87
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .end local v1    # "value":Ljava/math/BigInteger;
    .local v2, "value":Ljava/math/BigInteger;
    move-object v1, v2

    .line 89
    .end local v2    # "value":Ljava/math/BigInteger;
    .restart local v1    # "value":Ljava/math/BigInteger;
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    invoke-direct {v0, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .end local p1    # "amount":Ljava/math/BigDecimal;
    .local v0, "amount":Ljava/math/BigDecimal;
    move-object p1, v0

    .line 91
    .end local v0    # "amount":Ljava/math/BigDecimal;
    .end local v1    # "value":Ljava/math/BigInteger;
    .restart local p1    # "amount":Ljava/math/BigDecimal;
    :cond_2
    new-instance v3, Lorg/joda/money/BigMoney;

    invoke-direct {v3, p0, p1}, Lorg/joda/money/BigMoney;-><init>(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)V

    return-object v3
.end method

.method public static ofMinor(Lorg/joda/money/CurrencyUnit;J)Lorg/joda/money/BigMoney;
    .locals 1
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amountMinor"    # J

    .prologue
    .line 214
    const-string v0, "CurrencyUnit must not be null"

    invoke-static {p0, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lorg/joda/money/CurrencyUnit;->getDecimalPlaces()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abs()Lorg/joda/money/BigMoney;
    .locals 1

    .prologue
    .line 1484
    invoke-virtual {p0}, Lorg/joda/money/BigMoney;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/money/BigMoney;->negated()Lorg/joda/money/BigMoney;

    move-result-object p0

    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/joda/money/BigMoneyProvider;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/joda/money/BigMoney;->compareTo(Lorg/joda/money/BigMoneyProvider;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/money/BigMoneyProvider;)I
    .locals 4
    .param p1, "other"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 1630
    invoke-static {p1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 1631
    .local v0, "otherMoney":Lorg/joda/money/BigMoney;
    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    iget-object v2, v0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v1, v2}, Lorg/joda/money/CurrencyUnit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1632
    new-instance v1, Lorg/joda/money/CurrencyMismatchException;

    invoke-virtual {p0}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/joda/money/CurrencyMismatchException;-><init>(Lorg/joda/money/CurrencyUnit;Lorg/joda/money/CurrencyUnit;)V

    throw v1

    .line 1634
    :cond_0
    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    iget-object v2, v0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    return v1
.end method

.method public convertedTo(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;
    .locals 3
    .param p1, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p2, "conversionMultipler"    # Ljava/math/BigDecimal;

    .prologue
    .line 1537
    const-string v1, "CurrencyUnit must not be null"

    invoke-static {p1, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1538
    const-string v1, "Multiplier must not be null"

    invoke-static {p2, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1539
    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    if-ne v1, p1, :cond_1

    .line 1540
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1549
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .line 1543
    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot convert to the same currency"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1545
    :cond_1
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_2

    .line 1546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot convert using a negative conversion multiplier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1548
    :cond_2
    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1549
    .local v0, "newAmount":Ljava/math/BigDecimal;
    invoke-static {p1, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method

.method public dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;
    .locals 2
    .param p1, "valueToDivideBy"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1398
    const-string v1, "Divisor must not be null"

    invoke-static {p1, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    const-string v1, "RoundingMode must not be null"

    invoke-static {p2, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1400
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1404
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .line 1403
    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1404
    .local v0, "newAmount":Ljava/math/BigDecimal;
    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v1, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1693
    if-ne p0, p1, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return v1

    .line 1696
    :cond_1
    instance-of v3, p1, Lorg/joda/money/BigMoney;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1697
    check-cast v0, Lorg/joda/money/BigMoney;

    .line 1698
    .local v0, "otherMoney":Lorg/joda/money/BigMoney;
    iget-object v3, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/joda/money/CurrencyUnit;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    iget-object v4, v0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "otherMoney":Lorg/joda/money/BigMoney;
    :cond_3
    move v1, v2

    .line 1701
    goto :goto_0
.end method

.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCurrencyUnit()Lorg/joda/money/CurrencyUnit;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isCurrencyScale()Z
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->getDecimalPlaces()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegative()Z
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegativeOrZero()Z
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPositive()Z
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPositiveOrZero()Z
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameCurrency(Lorg/joda/money/BigMoneyProvider;)Z
    .locals 2
    .param p1, "money"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 1616
    iget-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-static {p1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/money/CurrencyUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;
    .locals 2
    .param p1, "amountToSubtract"    # Ljava/math/BigDecimal;

    .prologue
    .line 1108
    const-string v1, "Amount must not be null"

    invoke-static {p1, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .line 1112
    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1113
    .local v0, "newAmount":Ljava/math/BigDecimal;
    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v1, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method

.method public minus(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;
    .locals 2
    .param p1, "moneyToSubtract"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lorg/joda/money/BigMoney;->checkCurrencyEqual(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 1090
    .local v0, "toSubtract":Lorg/joda/money/BigMoney;
    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/money/BigMoney;->minus(Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v1

    return-object v1
.end method

.method public multipliedBy(J)Lorg/joda/money/BigMoney;
    .locals 5
    .param p1, "valueToMultiplyBy"    # J

    .prologue
    .line 1321
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 1325
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .line 1324
    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1325
    .local v0, "newAmount":Ljava/math/BigDecimal;
    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v1, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method

.method public multipliedBy(Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;
    .locals 2
    .param p1, "valueToMultiplyBy"    # Ljava/math/BigDecimal;

    .prologue
    .line 1274
    const-string v1, "Multiplier must not be null"

    invoke-static {p1, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1275
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .line 1278
    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1279
    .local v0, "newAmount":Ljava/math/BigDecimal;
    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v1, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method

.method public negated()Lorg/joda/money/BigMoney;
    .locals 2

    .prologue
    .line 1470
    invoke-virtual {p0}, Lorg/joda/money/BigMoney;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    iget-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method

.method public plusRetainScale(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;
    .locals 2
    .param p1, "amountToAdd"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1011
    const-string v1, "Amount must not be null"

    invoke-static {p1, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .line 1015
    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1016
    .local v0, "newAmount":Ljava/math/BigDecimal;
    invoke-virtual {p0}, Lorg/joda/money/BigMoney;->getScale()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v1, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method

.method public toBigMoney()Lorg/joda/money/BigMoney;
    .locals 0

    .prologue
    .line 1583
    return-object p0
.end method

.method public toMoney(Ljava/math/RoundingMode;)Lorg/joda/money/Money;
    .locals 1
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1605
    invoke-static {p0, p1}, Lorg/joda/money/Money;->of(Lorg/joda/money/BigMoneyProvider;Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCurrencyScale()Lorg/joda/money/BigMoney;
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getDecimalPlaces()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Lorg/joda/money/BigMoney;->withScale(ILjava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    return-object v0
.end method

.method public withCurrencyScale(Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;
    .locals 1
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 607
    iget-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getDecimalPlaces()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/money/BigMoney;->withScale(ILjava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    return-object v0
.end method

.method public withScale(I)Lorg/joda/money/BigMoney;
    .locals 1
    .param p1, "scale"    # I

    .prologue
    .line 547
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Lorg/joda/money/BigMoney;->withScale(ILjava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    return-object v0
.end method

.method public withScale(ILjava/math/RoundingMode;)Lorg/joda/money/BigMoney;
    .locals 2
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 567
    const-string v0, "RoundingMode must not be null"

    invoke-static {p2, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 571
    .end local p0    # "this":Lorg/joda/money/BigMoney;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/joda/money/BigMoney;
    :cond_0
    iget-object v0, p0, Lorg/joda/money/BigMoney;->currency:Lorg/joda/money/CurrencyUnit;

    iget-object v1, p0, Lorg/joda/money/BigMoney;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    goto :goto_0
.end method
