.class final enum Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;
.super Ljava/lang/Enum;
.source "MoneyFormatterBuilder.java"

# interfaces
.implements Lorg/joda/money/format/MoneyPrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/money/format/MoneyFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SingletonPrinters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;",
        ">;",
        "Lorg/joda/money/format/MoneyPrinter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

.field public static final enum LOCALIZED_SYMBOL:Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    new-instance v0, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    const-string v1, "LOCALIZED_SYMBOL"

    invoke-direct {v0, v1, v2}, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;->LOCALIZED_SYMBOL:Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    .line 392
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    sget-object v1, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;->LOCALIZED_SYMBOL:Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    aput-object v1, v0, v2

    sput-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;->$VALUES:[Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 392
    const-class v0, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    return-object v0
.end method

.method public static values()[Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;->$VALUES:[Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    invoke-virtual {v0}, [Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    return-object v0
.end method


# virtual methods
.method public print(Lorg/joda/money/format/MoneyPrintContext;Ljava/lang/Appendable;Lorg/joda/money/BigMoney;)V
    .locals 2
    .param p1, "context"    # Lorg/joda/money/format/MoneyPrintContext;
    .param p2, "appendable"    # Ljava/lang/Appendable;
    .param p3, "money"    # Lorg/joda/money/BigMoney;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p3}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/money/format/MoneyPrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/money/CurrencyUnit;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 397
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const-string v0, "${symbolLocalized}"

    return-object v0
.end method
