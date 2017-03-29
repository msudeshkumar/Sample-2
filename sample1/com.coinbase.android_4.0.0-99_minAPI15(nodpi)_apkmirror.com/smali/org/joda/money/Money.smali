.class public final Lorg/joda/money/Money;
.super Ljava/lang/Object;
.source "Money.java"

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


# instance fields
.field private final money:Lorg/joda/money/BigMoney;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/joda/money/Money;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/joda/money/Money;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    .line 374
    return-void
.end method

.method constructor <init>(Lorg/joda/money/BigMoney;)V
    .locals 2
    .param p1, "money"    # Lorg/joda/money/BigMoney;

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    sget-boolean v0, Lorg/joda/money/Money;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Joda-Money bug: BigMoney must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 383
    :cond_0
    sget-boolean v0, Lorg/joda/money/Money;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/joda/money/BigMoney;->isCurrencyScale()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Joda-Money bug: Only currency scale is valid for Money"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 384
    :cond_1
    iput-object p1, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    .line 385
    return-void
.end method

.method public static nonNull(Lorg/joda/money/Money;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/Money;
    .locals 2
    .param p0, "money"    # Lorg/joda/money/Money;
    .param p1, "currency"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 357
    if-nez p0, :cond_1

    .line 358
    invoke-static {p1}, Lorg/joda/money/Money;->zero(Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/Money;

    move-result-object p0

    .line 364
    .end local p0    # "money":Lorg/joda/money/Money;
    :cond_0
    return-object p0

    .line 360
    .restart local p0    # "money":Lorg/joda/money/Money;
    :cond_1
    invoke-virtual {p0}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/money/CurrencyUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const-string v0, "Currency must not be null"

    invoke-static {p1, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    new-instance v0, Lorg/joda/money/CurrencyMismatchException;

    invoke-virtual {p0}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/joda/money/CurrencyMismatchException;-><init>(Lorg/joda/money/CurrencyUnit;Lorg/joda/money/CurrencyUnit;)V

    throw v0
.end method

.method public static of(Lorg/joda/money/BigMoneyProvider;Ljava/math/RoundingMode;)Lorg/joda/money/Money;
    .locals 2
    .param p0, "moneyProvider"    # Lorg/joda/money/BigMoneyProvider;
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 228
    const-string v0, "BigMoneyProvider must not be null"

    invoke-static {p0, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    const-string v0, "RoundingMode must not be null"

    invoke-static {p1, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lorg/joda/money/Money;

    invoke-static {p0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/joda/money/BigMoney;->withCurrencyScale(Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/joda/money/Money;-><init>(Lorg/joda/money/BigMoney;)V

    return-object v0
.end method

.method public static of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/Money;
    .locals 1
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amount"    # D

    .prologue
    .line 122
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/joda/money/CurrencyUnit;DLjava/math/RoundingMode;)Lorg/joda/money/Money;
    .locals 1
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amount"    # D
    .param p3, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 146
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/Money;
    .locals 3
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amount"    # Ljava/math/BigDecimal;

    .prologue
    .line 72
    const-string v0, "Currency must not be null"

    invoke-static {p0, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v0, "Amount must not be null"

    invoke-static {p1, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/money/CurrencyUnit;->getDecimalPlaces()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale of amount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than the scale of the currency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p0, p1, v0}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/Money;
    .locals 2
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amount"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 94
    const-string v0, "CurrencyUnit must not be null"

    invoke-static {p0, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const-string v0, "Amount must not be null"

    invoke-static {p1, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const-string v0, "RoundingMode must not be null"

    invoke-static {p2, v0}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/joda/money/CurrencyUnit;->getDecimalPlaces()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 98
    new-instance v0, Lorg/joda/money/Money;

    invoke-static {p0, p1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/joda/money/Money;-><init>(Lorg/joda/money/BigMoney;)V

    return-object v0
.end method

.method public static ofMinor(Lorg/joda/money/CurrencyUnit;J)Lorg/joda/money/Money;
    .locals 3
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;
    .param p1, "amountMinor"    # J

    .prologue
    .line 180
    new-instance v0, Lorg/joda/money/Money;

    invoke-static {p0, p1, p2}, Lorg/joda/money/BigMoney;->ofMinor(Lorg/joda/money/CurrencyUnit;J)Lorg/joda/money/BigMoney;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/joda/money/Money;-><init>(Lorg/joda/money/BigMoney;)V

    return-object v0
.end method

.method private with(Lorg/joda/money/BigMoney;)Lorg/joda/money/Money;
    .locals 1
    .param p1, "newInstance"    # Lorg/joda/money/BigMoney;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0, p1}, Lorg/joda/money/BigMoney;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    .end local p0    # "this":Lorg/joda/money/Money;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/joda/money/Money;
    :cond_0
    new-instance p0, Lorg/joda/money/Money;

    .end local p0    # "this":Lorg/joda/money/Money;
    invoke-direct {p0, p1}, Lorg/joda/money/Money;-><init>(Lorg/joda/money/BigMoney;)V

    goto :goto_0
.end method

.method public static zero(Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/Money;
    .locals 4
    .param p0, "currency"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 193
    const-string v1, "Currency must not be null"

    invoke-static {p0, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/joda/money/CurrencyUnit;->getDecimalPlaces()I

    move-result v1

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 195
    .local v0, "bd":Ljava/math/BigDecimal;
    new-instance v1, Lorg/joda/money/Money;

    invoke-static {p0, v0}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/joda/money/Money;-><init>(Lorg/joda/money/BigMoney;)V

    return-object v1
.end method


# virtual methods
.method public abs()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 1164
    invoke-virtual {p0}, Lorg/joda/money/Money;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/money/Money;->negated()Lorg/joda/money/Money;

    move-result-object p0

    .end local p0    # "this":Lorg/joda/money/Money;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lorg/joda/money/BigMoneyProvider;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/joda/money/Money;->compareTo(Lorg/joda/money/BigMoneyProvider;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/money/BigMoneyProvider;)I
    .locals 1
    .param p1, "other"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0, p1}, Lorg/joda/money/BigMoney;->compareTo(Lorg/joda/money/BigMoneyProvider;)I

    move-result v0

    return v0
.end method

.method public dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/Money;
    .locals 1
    .param p1, "valueToDivideBy"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0, p1, p2}, Lorg/joda/money/BigMoney;->dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/money/Money;->with(Lorg/joda/money/BigMoney;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 1311
    if-ne p0, p1, :cond_0

    .line 1312
    const/4 v1, 0x1

    .line 1318
    :goto_0
    return v1

    .line 1314
    :cond_0
    instance-of v1, p1, Lorg/joda/money/Money;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1315
    check-cast v0, Lorg/joda/money/Money;

    .line 1316
    .local v0, "otherMoney":Lorg/joda/money/Money;
    iget-object v1, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    iget-object v2, v0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v1, v2}, Lorg/joda/money/BigMoney;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1318
    .end local v0    # "otherMoney":Lorg/joda/money/Money;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyUnit()Lorg/joda/money/CurrencyUnit;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->isNegative()Z

    move-result v0

    return v0
.end method

.method public isNegativeOrZero()Z
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->isNegativeOrZero()Z

    move-result v0

    return v0
.end method

.method public isPositive()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->isPositive()Z

    move-result v0

    return v0
.end method

.method public isPositiveOrZero()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->isPositiveOrZero()Z

    move-result v0

    return v0
.end method

.method public minus(Lorg/joda/money/Money;)Lorg/joda/money/Money;
    .locals 1
    .param p1, "moneyToSubtract"    # Lorg/joda/money/Money;

    .prologue
    .line 915
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0, p1}, Lorg/joda/money/BigMoney;->minus(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/money/Money;->with(Lorg/joda/money/BigMoney;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public multipliedBy(J)Lorg/joda/money/Money;
    .locals 1
    .param p1, "valueToMultiplyBy"    # J

    .prologue
    .line 1080
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0, p1, p2}, Lorg/joda/money/BigMoney;->multipliedBy(J)Lorg/joda/money/BigMoney;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/money/Money;->with(Lorg/joda/money/BigMoney;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->negated()Lorg/joda/money/BigMoney;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/money/Money;->with(Lorg/joda/money/BigMoney;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public plus(Ljava/math/BigDecimal;)Lorg/joda/money/Money;
    .locals 1
    .param p1, "amountToAdd"    # Ljava/math/BigDecimal;

    .prologue
    .line 785
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Lorg/joda/money/Money;->plus(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public plus(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/Money;
    .locals 1
    .param p1, "amountToAdd"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 802
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0, p1, p2}, Lorg/joda/money/BigMoney;->plusRetainScale(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/money/Money;->with(Lorg/joda/money/BigMoney;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public toBigMoney()Lorg/joda/money/BigMoney;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lorg/joda/money/Money;->money:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
