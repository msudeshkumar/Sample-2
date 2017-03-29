.class public final Lorg/joda/money/format/MoneyFormatter;
.super Ljava/lang/Object;
.source "MoneyFormatter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final printerParser:Lorg/joda/money/format/MultiPrinterParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/joda/money/format/MoneyFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/joda/money/format/MoneyFormatter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Locale;[Lorg/joda/money/format/MoneyPrinter;[Lorg/joda/money/format/MoneyParser;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "printers"    # [Lorg/joda/money/format/MoneyPrinter;
    .param p3, "parsers"    # [Lorg/joda/money/format/MoneyParser;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-boolean v0, Lorg/joda/money/format/MoneyFormatter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget-boolean v0, Lorg/joda/money/format/MoneyFormatter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_1
    sget-boolean v0, Lorg/joda/money/format/MoneyFormatter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_2
    sget-boolean v0, Lorg/joda/money/format/MoneyFormatter;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_3
    iput-object p1, p0, Lorg/joda/money/format/MoneyFormatter;->locale:Ljava/util/Locale;

    .line 78
    new-instance v0, Lorg/joda/money/format/MultiPrinterParser;

    invoke-direct {v0, p2, p3}, Lorg/joda/money/format/MultiPrinterParser;-><init>([Lorg/joda/money/format/MoneyPrinter;[Lorg/joda/money/format/MoneyParser;)V

    iput-object v0, p0, Lorg/joda/money/format/MoneyFormatter;->printerParser:Lorg/joda/money/format/MultiPrinterParser;

    .line 79
    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public isPrinter()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/joda/money/format/MoneyFormatter;->printerParser:Lorg/joda/money/format/MultiPrinterParser;

    invoke-virtual {v0}, Lorg/joda/money/format/MultiPrinterParser;->isPrinter()Z

    move-result v0

    return v0
.end method

.method public print(Lorg/joda/money/BigMoneyProvider;)Ljava/lang/String;
    .locals 2
    .param p1, "moneyProvider"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lorg/joda/money/format/MoneyFormatter;->print(Ljava/lang/Appendable;Lorg/joda/money/BigMoneyProvider;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public print(Ljava/lang/Appendable;Lorg/joda/money/BigMoneyProvider;)V
    .locals 3
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .param p2, "moneyProvider"    # Lorg/joda/money/BigMoneyProvider;

    .prologue
    .line 183
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/money/format/MoneyFormatter;->printIO(Ljava/lang/Appendable;Lorg/joda/money/BigMoneyProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/joda/money/format/MoneyFormatException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/joda/money/format/MoneyFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public printIO(Ljava/lang/Appendable;Lorg/joda/money/BigMoneyProvider;)V
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .param p2, "moneyProvider"    # Lorg/joda/money/BigMoneyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v2, "BigMoneyProvider must not be null"

    invoke-static {p2, v2}, Lorg/joda/money/format/MoneyFormatter;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lorg/joda/money/format/MoneyFormatter;->isPrinter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "MoneyFomatter has not been configured to be able to print"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_0
    invoke-static {p2}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/BigMoneyProvider;)Lorg/joda/money/BigMoney;

    move-result-object v1

    .line 210
    .local v1, "money":Lorg/joda/money/BigMoney;
    new-instance v0, Lorg/joda/money/format/MoneyPrintContext;

    iget-object v2, p0, Lorg/joda/money/format/MoneyFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v0, v2}, Lorg/joda/money/format/MoneyPrintContext;-><init>(Ljava/util/Locale;)V

    .line 211
    .local v0, "context":Lorg/joda/money/format/MoneyPrintContext;
    iget-object v2, p0, Lorg/joda/money/format/MoneyFormatter;->printerParser:Lorg/joda/money/format/MultiPrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Lorg/joda/money/format/MultiPrinterParser;->print(Lorg/joda/money/format/MoneyPrintContext;Ljava/lang/Appendable;Lorg/joda/money/BigMoney;)V

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/joda/money/format/MoneyFormatter;->printerParser:Lorg/joda/money/format/MultiPrinterParser;

    invoke-virtual {v0}, Lorg/joda/money/format/MultiPrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
