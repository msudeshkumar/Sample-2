.class public Lcom/coinbase/android/utils/MoneyUtils;
.super Ljava/lang/Object;
.source "MoneyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/utils/MoneyUtils$Options;,
        Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    }
.end annotation


# static fields
.field public static final BITS:Ljava/lang/String; = "bits"

.field public static final BTC:Ljava/lang/String; = "BTC"

.field public static final BTC_BITS:Ljava/math/BigDecimal;

.field public static final ETH:Ljava/lang/String; = "ETH"

.field public static FIVE:I = 0x0

.field public static ONE_HUNDRED:I = 0x0

.field public static final USD:Ljava/lang/String; = "USD"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    .line 22
    const/16 v0, 0x64

    sput v0, Lcom/coinbase/android/utils/MoneyUtils;->ONE_HUNDRED:I

    .line 23
    const/4 v0, 0x5

    sput v0, Lcom/coinbase/android/utils/MoneyUtils;->FIVE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currencyType(Ljava/lang/String;)Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    .locals 2
    .param p0, "currency"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    .line 58
    .local v0, "currencyType":Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    const-string v1, "BTC"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    sget-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BTC:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "ETH"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    sget-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    goto :goto_0

    .line 62
    :cond_2
    const-string v1, "bits"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BITS:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    goto :goto_0
.end method

.method public static formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "amount"    # Ljava/lang/String;
    .param p1, "currency"    # Ljava/lang/String;
    .param p2, "currencySymbolType"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p1, p0}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v0

    .line 200
    .local v0, "money":Lorg/joda/money/Money;
    invoke-static {v0, p2}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;
    .locals 1
    .param p0, "money"    # Lorg/joda/money/BigMoneyProvider;
    .param p1, "currencySymbolType"    # Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .param p0, "money"    # Lorg/joda/money/BigMoneyProvider;
    .param p1, "currencySymbolType"    # Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/money/BigMoneyProvider;",
            "Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;",
            "Ljava/util/Set",
            "<",
            "Lcom/coinbase/android/utils/MoneyUtils$Options;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<Lcom/coinbase/android/utils/MoneyUtils$Options;>;"
    if-nez p2, :cond_0

    .line 177
    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils$Options;->NONE:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    .line 179
    :cond_0
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "currencyCode":Ljava/lang/String;
    const-string v4, "BTC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BITS:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    if-ne p1, v4, :cond_1

    .line 181
    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils$Options;->MULTIPLY_BTC_BITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/coinbase/android/utils/MoneyUtils;->generateFormatter(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Lorg/joda/money/format/MoneyFormatter;

    move-result-object v2

    .line 187
    .local v2, "formatter":Lorg/joda/money/format/MoneyFormatter;
    invoke-static {p0, p2}, Lcom/coinbase/android/utils/MoneyUtils;->generateMoney(Lorg/joda/money/BigMoneyProvider;Ljava/util/Set;)Lorg/joda/money/BigMoneyProvider;

    move-result-object p0

    .line 189
    const-string v3, ""

    .line 191
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0}, Lorg/joda/money/format/MoneyFormatter;->print(Lorg/joda/money/BigMoneyProvider;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 195
    :goto_0
    return-object v3

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "money"    # Lorg/joda/money/BigMoneyProvider;
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p0, "money"    # Lorg/joda/money/BigMoneyProvider;
    .param p1, "currency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/money/BigMoneyProvider;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/coinbase/android/utils/MoneyUtils$Options;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<Lcom/coinbase/android/utils/MoneyUtils$Options;>;"
    invoke-static {p1}, Lcom/coinbase/android/utils/MoneyUtils;->currencyType(Ljava/lang/String;)Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateFormatter(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Lorg/joda/money/format/MoneyFormatter;
    .locals 5
    .param p0, "money"    # Lorg/joda/money/BigMoneyProvider;
    .param p1, "currencyType"    # Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/money/BigMoneyProvider;",
            "Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;",
            "Ljava/util/Set",
            "<",
            "Lcom/coinbase/android/utils/MoneyUtils$Options;",
            ">;)",
            "Lorg/joda/money/format/MoneyFormatter;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<Lcom/coinbase/android/utils/MoneyUtils$Options;>;"
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "currencyCode":Ljava/lang/String;
    new-instance v0, Lorg/joda/money/format/MoneyFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/money/format/MoneyFormatterBuilder;-><init>()V

    .line 124
    .local v0, "builder":Lorg/joda/money/format/MoneyFormatterBuilder;
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const-string v3, "("

    invoke-virtual {v0, v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendLiteral(Ljava/lang/CharSequence;)Lorg/joda/money/format/MoneyFormatterBuilder;

    .line 128
    :cond_0
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v3, "-"

    invoke-virtual {v0, v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendLiteral(Ljava/lang/CharSequence;)Lorg/joda/money/format/MoneyFormatterBuilder;

    .line 134
    :cond_1
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 135
    const-string v3, "ETH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "BTC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    :cond_2
    sget-object v3, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    invoke-virtual {v0, v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendAmount(Lorg/joda/money/format/MoneyAmountStyle;)Lorg/joda/money/format/MoneyFormatterBuilder;

    .line 155
    :goto_0
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    const-string v3, ")"

    invoke-virtual {v0, v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendLiteral(Ljava/lang/CharSequence;)Lorg/joda/money/format/MoneyFormatterBuilder;

    .line 159
    :cond_3
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyFormatterBuilder;->toFormatter()Lorg/joda/money/format/MoneyFormatter;

    move-result-object v2

    .line 160
    .local v2, "formatter":Lorg/joda/money/format/MoneyFormatter;
    return-object v2

    .line 138
    .end local v2    # "formatter":Lorg/joda/money/format/MoneyFormatter;
    :cond_4
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendAmountLocalized()Lorg/joda/money/format/MoneyFormatterBuilder;

    goto :goto_0

    .line 141
    :cond_5
    const-string v3, "BTC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BITS:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    if-ne p1, v3, :cond_6

    .line 143
    sget-object v3, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    invoke-virtual {v0, v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendAmount(Lorg/joda/money/format/MoneyAmountStyle;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v3

    const-string v4, " bits"

    .line 144
    invoke-virtual {v3, v4}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendLiteral(Ljava/lang/CharSequence;)Lorg/joda/money/format/MoneyFormatterBuilder;

    goto :goto_0

    .line 145
    :cond_6
    const-string v3, "ETH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "BTC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    :cond_7
    sget-object v3, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    invoke-virtual {v0, v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendAmount(Lorg/joda/money/format/MoneyAmountStyle;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v3

    const-string v4, " "

    .line 147
    invoke-virtual {v3, v4}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendLiteral(Ljava/lang/CharSequence;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendCurrencyCode()Lorg/joda/money/format/MoneyFormatterBuilder;

    goto :goto_0

    .line 150
    :cond_8
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendCurrencySymbolLocalized()Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendAmountLocalized()Lorg/joda/money/format/MoneyFormatterBuilder;

    goto :goto_0
.end method

.method private static generateMoney(Lorg/joda/money/BigMoneyProvider;Ljava/util/Set;)Lorg/joda/money/BigMoneyProvider;
    .locals 5
    .param p0, "money"    # Lorg/joda/money/BigMoneyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/money/BigMoneyProvider;",
            "Ljava/util/Set",
            "<",
            "Lcom/coinbase/android/utils/MoneyUtils$Options;",
            ">;)",
            "Lorg/joda/money/BigMoneyProvider;"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Lcom/coinbase/android/utils/MoneyUtils$Options;>;"
    const/4 v4, 0x2

    .line 69
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getScale()I

    move-result v2

    .line 71
    .local v2, "scale":I
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    const/4 v2, 0x0

    .line 81
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "currencyCode":Ljava/lang/String;
    const-string v3, "ETH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BTC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 84
    :cond_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    const/4 v2, 0x4

    .line 100
    :cond_2
    :goto_1
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->MULTIPLY_BTC_BITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 101
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    .line 108
    .local v1, "displayAmount":Ljava/math/BigDecimal;
    :goto_2
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {v1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v1

    .line 112
    :cond_3
    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 114
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    .line 113
    invoke-static {v3, v1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object p0

    .line 117
    return-object p0

    .line 73
    .end local v0    # "currencyCode":Ljava/lang/String;
    .end local v1    # "displayAmount":Ljava/math/BigDecimal;
    :cond_4
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_2_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    const/4 v2, 0x2

    goto :goto_0

    .line 75
    :cond_5
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    const/4 v2, 0x4

    goto :goto_0

    .line 77
    :cond_6
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_8_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/16 v2, 0x8

    goto :goto_0

    .line 89
    .restart local v0    # "currencyCode":Ljava/lang/String;
    :cond_7
    if-ge v2, v4, :cond_8

    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 90
    const/4 v2, 0x2

    .line 94
    :cond_8
    if-le v2, v4, :cond_2

    .line 95
    const/4 v2, 0x2

    goto :goto_1

    .line 102
    :cond_9
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$Options;->STRIP_TRAILING_ZEROS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 103
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    .restart local v1    # "displayAmount":Ljava/math/BigDecimal;
    goto :goto_2

    .line 105
    .end local v1    # "displayAmount":Ljava/math/BigDecimal;
    :cond_a
    invoke-interface {p0}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    .restart local v1    # "displayAmount":Ljava/math/BigDecimal;
    goto :goto_2
.end method

.method public static moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;
    .locals 6
    .param p0, "currency"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 207
    .local v2, "money":Lorg/joda/money/Money;
    :try_start_0
    invoke-static {p0}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    .line 208
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 207
    invoke-static {v3, v4, v5}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/Money;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 213
    :goto_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 214
    .local v0, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 216
    .local v1, "longValue":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 217
    invoke-static {p0}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    .line 218
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    .line 217
    invoke-static {v3, v4}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/Money;

    move-result-object v2

    .line 221
    :cond_0
    return-object v2

    .line 209
    .end local v0    # "doubleValue":Ljava/lang/Double;
    .end local v1    # "longValue":Ljava/lang/Long;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
