.class final Lorg/joda/money/format/LiteralPrinterParser;
.super Ljava/lang/Object;
.source "LiteralPrinterParser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/money/format/MoneyParser;
.implements Lorg/joda/money/format/MoneyPrinter;


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/joda/money/format/LiteralPrinterParser;->literal:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public print(Lorg/joda/money/format/MoneyPrintContext;Ljava/lang/Appendable;Lorg/joda/money/BigMoney;)V
    .locals 1
    .param p1, "context"    # Lorg/joda/money/format/MoneyPrintContext;
    .param p2, "appendable"    # Ljava/lang/Appendable;
    .param p3, "money"    # Lorg/joda/money/BigMoney;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/joda/money/format/LiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/money/format/LiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
