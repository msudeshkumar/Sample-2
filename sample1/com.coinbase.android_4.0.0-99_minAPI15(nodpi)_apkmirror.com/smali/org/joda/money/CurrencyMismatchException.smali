.class public Lorg/joda/money/CurrencyMismatchException;
.super Ljava/lang/IllegalArgumentException;
.source "CurrencyMismatchException.java"


# instance fields
.field private final firstCurrency:Lorg/joda/money/CurrencyUnit;

.field private final secondCurrency:Lorg/joda/money/CurrencyUnit;


# direct methods
.method public constructor <init>(Lorg/joda/money/CurrencyUnit;Lorg/joda/money/CurrencyUnit;)V
    .locals 2
    .param p1, "firstCurrency"    # Lorg/joda/money/CurrencyUnit;
    .param p2, "secondCurrency"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currencies differ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lorg/joda/money/CurrencyMismatchException;->firstCurrency:Lorg/joda/money/CurrencyUnit;

    .line 47
    iput-object p2, p0, Lorg/joda/money/CurrencyMismatchException;->secondCurrency:Lorg/joda/money/CurrencyUnit;

    .line 48
    return-void

    .line 43
    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method
