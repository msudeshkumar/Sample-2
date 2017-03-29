.class public final Lorg/joda/money/CurrencyUnit;
.super Ljava/lang/Object;
.source "CurrencyUnit.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/money/CurrencyUnit;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final AUD:Lorg/joda/money/CurrencyUnit;

.field public static final CAD:Lorg/joda/money/CurrencyUnit;

.field public static final CHF:Lorg/joda/money/CurrencyUnit;

.field private static final CODE:Ljava/util/regex/Pattern;

.field public static final EUR:Lorg/joda/money/CurrencyUnit;

.field public static final GBP:Lorg/joda/money/CurrencyUnit;

.field public static final JPY:Lorg/joda/money/CurrencyUnit;

.field public static final USD:Lorg/joda/money/CurrencyUnit;

.field private static final currenciesByCode:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/CurrencyUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final currenciesByCountry:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/CurrencyUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final currenciesByNumericCode:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/joda/money/CurrencyUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:Ljava/lang/String;

.field private final decimalPlaces:S

.field private final numericCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    const-class v3, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Lorg/joda/money/CurrencyUnit;->$assertionsDisabled:Z

    .line 58
    const-string v3, "[A-Z][A-Z][A-Z]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->CODE:Ljava/util/regex/Pattern;

    .line 62
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCode:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByNumericCode:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCountry:Ljava/util/concurrent/ConcurrentMap;

    .line 75
    :try_start_0
    const-string v3, "org.joda.money.CurrencyUnitDataProvider"

    const-string v4, "org.joda.money.DefaultCurrencyUnitDataProvider"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "clsName":Ljava/lang/String;
    const-class v3, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/joda/money/CurrencyUnitDataProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/joda/money/CurrencyUnitDataProvider;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/joda/money/CurrencyUnitDataProvider;

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnitDataProvider;->registerCurrencies()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/joda/money/CurrencyUnitDataProvider;>;"
    :goto_1
    const-string v3, "USD"

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->USD:Lorg/joda/money/CurrencyUnit;

    .line 98
    const-string v3, "EUR"

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->EUR:Lorg/joda/money/CurrencyUnit;

    .line 102
    const-string v3, "JPY"

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->JPY:Lorg/joda/money/CurrencyUnit;

    .line 106
    const-string v3, "GBP"

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->GBP:Lorg/joda/money/CurrencyUnit;

    .line 110
    const-string v3, "CHF"

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->CHF:Lorg/joda/money/CurrencyUnit;

    .line 114
    const-string v3, "AUD"

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->AUD:Lorg/joda/money/CurrencyUnit;

    .line 118
    const-string v3, "CAD"

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    sput-object v3, Lorg/joda/money/CurrencyUnit;->CAD:Lorg/joda/money/CurrencyUnit;

    return-void

    .line 49
    .end local v1    # "clsName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 80
    .restart local v1    # "clsName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v3, Lorg/joda/money/DefaultCurrencyUnitDataProvider;

    invoke-direct {v3}, Lorg/joda/money/DefaultCurrencyUnitDataProvider;-><init>()V

    invoke-virtual {v3}, Lorg/joda/money/DefaultCurrencyUnitDataProvider;->registerCurrencies()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 83
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 84
    .local v2, "ex":Ljava/lang/RuntimeException;
    throw v2

    .line 85
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 86
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method constructor <init>(Ljava/lang/String;SS)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "numericCode"    # S
    .param p3, "decimalPlaces"    # S

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    sget-boolean v0, Lorg/joda/money/CurrencyUnit;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Joda-Money bug: Currency code must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 401
    :cond_0
    iput-object p1, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    .line 402
    iput-short p2, p0, Lorg/joda/money/CurrencyUnit;->numericCode:S

    .line 403
    iput-short p3, p0, Lorg/joda/money/CurrencyUnit;->decimalPlaces:S

    .line 404
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;
    .locals 1
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-static {p0}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;
    .locals 4
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v1, "Currency code must not be null"

    invoke-static {p0, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    sget-object v1, Lorg/joda/money/CurrencyUnit;->currenciesByCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/money/CurrencyUnit;

    .line 277
    .local v0, "currency":Lorg/joda/money/CurrencyUnit;
    if-nez v0, :cond_0

    .line 278
    new-instance v1, Lorg/joda/money/IllegalCurrencyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown currency \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/joda/money/IllegalCurrencyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized registerCurrency(Ljava/lang/String;IILjava/util/List;)Lorg/joda/money/CurrencyUnit;
    .locals 2
    .param p0, "currencyCode"    # Ljava/lang/String;
    .param p1, "numericCurrencyCode"    # I
    .param p2, "decimalPlaces"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/joda/money/CurrencyUnit;"
        }
    .end annotation

    .prologue
    .line 158
    .local p3, "countryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lorg/joda/money/CurrencyUnit;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lorg/joda/money/CurrencyUnit;->registerCurrency(Ljava/lang/String;IILjava/util/List;Z)Lorg/joda/money/CurrencyUnit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized registerCurrency(Ljava/lang/String;IILjava/util/List;Z)Lorg/joda/money/CurrencyUnit;
    .locals 7
    .param p0, "currencyCode"    # Ljava/lang/String;
    .param p1, "numericCurrencyCode"    # I
    .param p2, "decimalPlaces"    # I
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/joda/money/CurrencyUnit;"
        }
    .end annotation

    .prologue
    .local p3, "countryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 191
    const-class v4, Lorg/joda/money/CurrencyUnit;

    monitor-enter v4

    :try_start_0
    const-string v3, "Currency code must not be null"

    invoke-static {p0, v3}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    .line 193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid string code, must be length 3"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 195
    :cond_0
    :try_start_1
    sget-object v3, Lorg/joda/money/CurrencyUnit;->CODE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid string code, must be ASCII upper-case letters"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_1
    if-lt p1, v6, :cond_2

    const/16 v3, 0x3e7

    if-le p1, v3, :cond_3

    .line 199
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid numeric code"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_3
    if-lt p2, v6, :cond_4

    const/16 v3, 0x9

    if-le p2, v3, :cond_5

    .line 202
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of decimal places"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    :cond_5
    const-string v3, "Country codes must not be null"

    invoke-static {p3, v3}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lorg/joda/money/CurrencyUnit;

    int-to-short v3, p1

    int-to-short v5, p2

    invoke-direct {v1, p0, v3, v5}, Lorg/joda/money/CurrencyUnit;-><init>(Ljava/lang/String;SS)V

    .line 207
    .local v1, "currency":Lorg/joda/money/CurrencyUnit;
    if-eqz p4, :cond_6

    .line 208
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByNumericCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, "countryCode":Ljava/lang/String;
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCountry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByNumericCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 215
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currency already registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .restart local v0    # "countryCode":Ljava/lang/String;
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCountry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 219
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currency already registered for country: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_a
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    if-ltz p1, :cond_b

    .line 225
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByNumericCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_b
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .restart local v0    # "countryCode":Ljava/lang/String;
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCountry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 230
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_c
    sget-object v3, Lorg/joda/money/CurrencyUnit;->currenciesByCode:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/joda/money/CurrencyUnit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v3
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lorg/joda/money/CurrencyUnit;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/joda/money/CurrencyUnit;->compareTo(Lorg/joda/money/CurrencyUnit;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/money/CurrencyUnit;)I
    .locals 2
    .param p1, "other"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 603
    iget-object v0, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    iget-object v1, p1, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 616
    if-ne p1, p0, :cond_0

    .line 617
    const/4 v0, 0x1

    .line 622
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 619
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/joda/money/CurrencyUnit;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    check-cast p1, Lorg/joda/money/CurrencyUnit;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 622
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalPlaces()I
    .locals 1

    .prologue
    .line 502
    iget-short v0, p0, Lorg/joda/money/CurrencyUnit;->decimalPlaces:S

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lorg/joda/money/CurrencyUnit;->decimalPlaces:S

    goto :goto_0
.end method

.method public getDefaultFractionDigits()I
    .locals 1

    .prologue
    .line 539
    iget-short v0, p0, Lorg/joda/money/CurrencyUnit;->decimalPlaces:S

    return v0
.end method

.method public getNumeric3Code()Ljava/lang/String;
    .locals 3

    .prologue
    .line 457
    iget-short v1, p0, Lorg/joda/money/CurrencyUnit;->numericCode:S

    if-gez v1, :cond_1

    .line 458
    const-string v0, ""

    .line 467
    :cond_0
    :goto_0
    return-object v0

    .line 460
    :cond_1
    iget-short v1, p0, Lorg/joda/money/CurrencyUnit;->numericCode:S

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumericCode()I
    .locals 1

    .prologue
    .line 445
    iget-short v0, p0, Lorg/joda/money/CurrencyUnit;->numericCode:S

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 573
    const-string v1, "Locale must not be null"

    invoke-static {p1, v1}, Lorg/joda/money/MoneyUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    :try_start_0
    iget-object v1, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 577
    :goto_0
    return-object v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lorg/joda/money/CurrencyUnit;->code:Ljava/lang/String;

    return-object v0
.end method
