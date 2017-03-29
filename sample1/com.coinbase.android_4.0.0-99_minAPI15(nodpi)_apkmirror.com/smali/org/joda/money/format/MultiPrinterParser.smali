.class final Lorg/joda/money/format/MultiPrinterParser;
.super Ljava/lang/Object;
.source "MultiPrinterParser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/money/format/MoneyParser;
.implements Lorg/joda/money/format/MoneyPrinter;


# instance fields
.field private final parsers:[Lorg/joda/money/format/MoneyParser;

.field private final printers:[Lorg/joda/money/format/MoneyPrinter;


# direct methods
.method constructor <init>([Lorg/joda/money/format/MoneyPrinter;[Lorg/joda/money/format/MoneyParser;)V
    .locals 0
    .param p1, "printers"    # [Lorg/joda/money/format/MoneyPrinter;
    .param p2, "parsers"    # [Lorg/joda/money/format/MoneyParser;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/joda/money/format/MultiPrinterParser;->printers:[Lorg/joda/money/format/MoneyPrinter;

    .line 49
    iput-object p2, p0, Lorg/joda/money/format/MultiPrinterParser;->parsers:[Lorg/joda/money/format/MoneyParser;

    .line 50
    return-void
.end method


# virtual methods
.method isParser()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/joda/money/format/MultiPrinterParser;->parsers:[Lorg/joda/money/format/MoneyParser;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrinter()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/joda/money/format/MultiPrinterParser;->printers:[Lorg/joda/money/format/MoneyPrinter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Lorg/joda/money/format/MoneyPrintContext;Ljava/lang/Appendable;Lorg/joda/money/BigMoney;)V
    .locals 4
    .param p1, "context"    # Lorg/joda/money/format/MoneyPrintContext;
    .param p2, "appendable"    # Ljava/lang/Appendable;
    .param p3, "money"    # Lorg/joda/money/BigMoney;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/joda/money/format/MultiPrinterParser;->printers:[Lorg/joda/money/format/MoneyPrinter;

    .local v0, "arr$":[Lorg/joda/money/format/MoneyPrinter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 71
    .local v3, "printer":Lorg/joda/money/format/MoneyPrinter;
    invoke-interface {v3, p1, p2, p3}, Lorg/joda/money/format/MoneyPrinter;->print(Lorg/joda/money/format/MoneyPrintContext;Ljava/lang/Appendable;Lorg/joda/money/BigMoney;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "printer":Lorg/joda/money/format/MoneyPrinter;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "buf1":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/joda/money/format/MultiPrinterParser;->isPrinter()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    iget-object v0, p0, Lorg/joda/money/format/MultiPrinterParser;->printers:[Lorg/joda/money/format/MoneyPrinter;

    .local v0, "arr$":[Lorg/joda/money/format/MoneyPrinter;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 90
    .local v6, "printer":Lorg/joda/money/format/MoneyPrinter;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "arr$":[Lorg/joda/money/format/MoneyPrinter;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "printer":Lorg/joda/money/format/MoneyPrinter;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v2, "buf2":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/joda/money/format/MultiPrinterParser;->isParser()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 95
    iget-object v0, p0, Lorg/joda/money/format/MultiPrinterParser;->parsers:[Lorg/joda/money/format/MoneyParser;

    .local v0, "arr$":[Lorg/joda/money/format/MoneyParser;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 96
    .local v5, "parser":Lorg/joda/money/format/MoneyParser;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "arr$":[Lorg/joda/money/format/MoneyParser;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "parser":Lorg/joda/money/format/MoneyParser;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "str1":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "str2":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/joda/money/format/MultiPrinterParser;->isPrinter()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lorg/joda/money/format/MultiPrinterParser;->isParser()Z

    move-result v9

    if-nez v9, :cond_3

    .line 108
    .end local v7    # "str1":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v7

    .line 103
    .restart local v7    # "str1":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lorg/joda/money/format/MultiPrinterParser;->isParser()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lorg/joda/money/format/MultiPrinterParser;->isPrinter()Z

    move-result v9

    if-nez v9, :cond_4

    move-object v7, v8

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method
