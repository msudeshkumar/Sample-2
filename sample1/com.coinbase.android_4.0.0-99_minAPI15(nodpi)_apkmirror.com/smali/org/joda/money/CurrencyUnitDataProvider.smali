.class public abstract Lorg/joda/money/CurrencyUnitDataProvider;
.super Ljava/lang/Object;
.source "CurrencyUnitDataProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract registerCurrencies()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final registerCurrency(Ljava/lang/String;IILjava/util/List;)V
    .locals 1
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "numericCurrencyCode"    # I
    .param p3, "decimalPlaces"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, "countryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lorg/joda/money/CurrencyUnit;->registerCurrency(Ljava/lang/String;IILjava/util/List;Z)Lorg/joda/money/CurrencyUnit;

    .line 46
    return-void
.end method
