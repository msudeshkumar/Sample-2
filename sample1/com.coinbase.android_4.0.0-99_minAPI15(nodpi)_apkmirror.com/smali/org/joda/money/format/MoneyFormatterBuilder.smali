.class public final Lorg/joda/money/format/MoneyFormatterBuilder;
.super Ljava/lang/Object;
.source "MoneyFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/money/format/MoneyFormatterBuilder$1;,
        Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;,
        Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;
    }
.end annotation


# instance fields
.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/format/MoneyParser;",
            ">;"
        }
    .end annotation
.end field

.field private final printers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/format/MoneyPrinter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->printers:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->parsers:Ljava/util/List;

    .line 50
    return-void
.end method

.method private appendInternal(Lorg/joda/money/format/MoneyPrinter;Lorg/joda/money/format/MoneyParser;)Lorg/joda/money/format/MoneyFormatterBuilder;
    .locals 1
    .param p1, "printer"    # Lorg/joda/money/format/MoneyPrinter;
    .param p2, "parser"    # Lorg/joda/money/format/MoneyParser;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->printers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->parsers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-object p0
.end method


# virtual methods
.method public appendAmount(Lorg/joda/money/format/MoneyAmountStyle;)Lorg/joda/money/format/MoneyFormatterBuilder;
    .locals 2
    .param p1, "style"    # Lorg/joda/money/format/MoneyAmountStyle;

    .prologue
    .line 93
    const-string v1, "MoneyAmountStyle must not be null"

    invoke-static {p1, v1}, Lorg/joda/money/format/MoneyFormatter;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lorg/joda/money/format/AmountPrinterParser;

    invoke-direct {v0, p1}, Lorg/joda/money/format/AmountPrinterParser;-><init>(Lorg/joda/money/format/MoneyAmountStyle;)V

    .line 95
    .local v0, "pp":Lorg/joda/money/format/AmountPrinterParser;
    invoke-direct {p0, v0, v0}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendInternal(Lorg/joda/money/format/MoneyPrinter;Lorg/joda/money/format/MoneyParser;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v1

    return-object v1
.end method

.method public appendAmountLocalized()Lorg/joda/money/format/MoneyFormatterBuilder;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lorg/joda/money/format/AmountPrinterParser;

    sget-object v1, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    invoke-direct {v0, v1}, Lorg/joda/money/format/AmountPrinterParser;-><init>(Lorg/joda/money/format/MoneyAmountStyle;)V

    .line 76
    .local v0, "pp":Lorg/joda/money/format/AmountPrinterParser;
    invoke-direct {p0, v0, v0}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendInternal(Lorg/joda/money/format/MoneyPrinter;Lorg/joda/money/format/MoneyParser;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v1

    return-object v1
.end method

.method public appendCurrencyCode()Lorg/joda/money/format/MoneyFormatterBuilder;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    sget-object v1, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    invoke-direct {p0, v0, v1}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendInternal(Lorg/joda/money/format/MoneyPrinter;Lorg/joda/money/format/MoneyParser;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendCurrencySymbolLocalized()Lorg/joda/money/format/MoneyFormatterBuilder;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;->LOCALIZED_SYMBOL:Lorg/joda/money/format/MoneyFormatterBuilder$SingletonPrinters;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendInternal(Lorg/joda/money/format/MoneyPrinter;Lorg/joda/money/format/MoneyParser;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendLiteral(Ljava/lang/CharSequence;)Lorg/joda/money/format/MoneyFormatterBuilder;
    .locals 2
    .param p1, "literal"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 161
    .end local p0    # "this":Lorg/joda/money/format/MoneyFormatterBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 160
    .restart local p0    # "this":Lorg/joda/money/format/MoneyFormatterBuilder;
    :cond_1
    new-instance v0, Lorg/joda/money/format/LiteralPrinterParser;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/joda/money/format/LiteralPrinterParser;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "pp":Lorg/joda/money/format/LiteralPrinterParser;
    invoke-direct {p0, v0, v0}, Lorg/joda/money/format/MoneyFormatterBuilder;->appendInternal(Lorg/joda/money/format/MoneyPrinter;Lorg/joda/money/format/MoneyParser;)Lorg/joda/money/format/MoneyFormatterBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public toFormatter()Lorg/joda/money/format/MoneyFormatter;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/money/format/MoneyFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/joda/money/format/MoneyFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Lorg/joda/money/format/MoneyFormatter;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 301
    const-string v2, "Locale must not be null"

    invoke-static {p1, v2}, Lorg/joda/money/format/MoneyFormatter;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->printers:Ljava/util/List;

    iget-object v3, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->printers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/joda/money/format/MoneyPrinter;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/joda/money/format/MoneyPrinter;

    move-object v1, v2

    check-cast v1, [Lorg/joda/money/format/MoneyPrinter;

    .line 303
    .local v1, "printersCopy":[Lorg/joda/money/format/MoneyPrinter;
    iget-object v2, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->parsers:Ljava/util/List;

    iget-object v3, p0, Lorg/joda/money/format/MoneyFormatterBuilder;->parsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/joda/money/format/MoneyParser;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/joda/money/format/MoneyParser;

    move-object v0, v2

    check-cast v0, [Lorg/joda/money/format/MoneyParser;

    .line 304
    .local v0, "parsersCopy":[Lorg/joda/money/format/MoneyParser;
    new-instance v2, Lorg/joda/money/format/MoneyFormatter;

    invoke-direct {v2, p1, v1, v0}, Lorg/joda/money/format/MoneyFormatter;-><init>(Ljava/util/Locale;[Lorg/joda/money/format/MoneyPrinter;[Lorg/joda/money/format/MoneyParser;)V

    return-object v2
.end method
