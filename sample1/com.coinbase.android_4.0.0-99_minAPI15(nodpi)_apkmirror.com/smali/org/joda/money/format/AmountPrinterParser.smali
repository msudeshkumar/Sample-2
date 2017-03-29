.class final Lorg/joda/money/format/AmountPrinterParser;
.super Ljava/lang/Object;
.source "AmountPrinterParser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/money/format/MoneyParser;
.implements Lorg/joda/money/format/MoneyPrinter;


# instance fields
.field private final style:Lorg/joda/money/format/MoneyAmountStyle;


# direct methods
.method constructor <init>(Lorg/joda/money/format/MoneyAmountStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/joda/money/format/MoneyAmountStyle;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/joda/money/format/AmountPrinterParser;->style:Lorg/joda/money/format/MoneyAmountStyle;

    .line 43
    return-void
.end method

.method private isPostGroupingPoint(IIII)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "post"    # I
    .param p3, "groupingSize"    # I
    .param p4, "extendedGroupingSize"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    add-int/lit8 v3, p1, 0x1

    if-lt v3, p2, :cond_1

    move v0, v1

    .line 121
    .local v0, "atEnd":Z
    :goto_0
    if-le p1, p3, :cond_3

    .line 122
    sub-int v3, p1, p3

    rem-int/2addr v3, p4

    add-int/lit8 v4, p4, -0x1

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_2

    .line 124
    :cond_0
    :goto_1
    return v1

    .end local v0    # "atEnd":Z
    :cond_1
    move v0, v2

    .line 120
    goto :goto_0

    .restart local v0    # "atEnd":Z
    :cond_2
    move v1, v2

    .line 122
    goto :goto_1

    .line 124
    :cond_3
    rem-int v3, p1, p3

    add-int/lit8 v4, p3, -0x1

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private isPreGroupingPoint(III)Z
    .locals 3
    .param p1, "remaining"    # I
    .param p2, "groupingSize"    # I
    .param p3, "extendedGroupingSize"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    add-int v2, p2, p3

    if-lt p1, v2, :cond_2

    .line 114
    sub-int v2, p1, p2

    rem-int/2addr v2, p3

    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    rem-int v2, p1, p2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public print(Lorg/joda/money/format/MoneyPrintContext;Ljava/lang/Appendable;Lorg/joda/money/BigMoney;)V
    .locals 17
    .param p1, "context"    # Lorg/joda/money/format/MoneyPrintContext;
    .param p2, "appendable"    # Ljava/lang/Appendable;
    .param p3, "money"    # Lorg/joda/money/BigMoney;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/joda/money/format/AmountPrinterParser;->style:Lorg/joda/money/format/MoneyAmountStyle;

    invoke-virtual/range {p1 .. p1}, Lorg/joda/money/format/MoneyPrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/joda/money/format/MoneyAmountStyle;->localize(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 49
    .local v1, "activeStyle":Lorg/joda/money/format/MoneyAmountStyle;
    invoke-virtual/range {p3 .. p3}, Lorg/joda/money/BigMoney;->isNegative()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 50
    invoke-virtual/range {p3 .. p3}, Lorg/joda/money/BigMoney;->negated()Lorg/joda/money/BigMoney;

    move-result-object p3

    .line 51
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->isAbsValue()Z

    move-result v15

    if-nez v15, :cond_0

    .line 52
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getNegativeSignCharacter()Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Character;->charValue()C

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 55
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v12

    .line 56
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getZeroCharacter()Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Character;->charValue()C

    move-result v13

    .line 57
    .local v13, "zeroChar":C
    const/16 v15, 0x30

    if-eq v13, v15, :cond_3

    .line 58
    add-int/lit8 v5, v13, -0x30

    .line 59
    .local v5, "diff":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .local v14, "zeroConvert":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_2

    .line 61
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 62
    .local v3, "ch":C
    const/16 v15, 0x30

    if-lt v3, v15, :cond_1

    const/16 v15, 0x39

    if-gt v3, v15, :cond_1

    .line 63
    add-int v15, v3, v5

    int-to-char v15, v15

    invoke-virtual {v14, v9, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 60
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "ch":C
    :cond_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 68
    .end local v5    # "diff":I
    .end local v9    # "i":I
    .end local v14    # "zeroConvert":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v15, 0x2e

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 69
    .local v4, "decPoint":I
    add-int/lit8 v2, v4, 0x1

    .line 70
    .local v2, "afterDecPoint":I
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingStyle()Lorg/joda/money/format/GroupingStyle;

    move-result-object v15

    sget-object v16, Lorg/joda/money/format/GroupingStyle;->NONE:Lorg/joda/money/format/GroupingStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 71
    if-gez v4, :cond_5

    .line 72
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 73
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->isForcedDecimalPoint()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 74
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getDecimalPointCharacter()Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Character;->charValue()C

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 110
    :cond_4
    :goto_1
    return-void

    .line 77
    :cond_5
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v15

    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getDecimalPointCharacter()Ljava/lang/Character;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Character;->charValue()C

    move-result v16

    invoke-interface/range {v15 .. v16}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v15

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 81
    :cond_6
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingSize()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 82
    .local v8, "groupingSize":I
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getExtendedGroupingSize()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 83
    .local v6, "extendedGroupingSize":I
    if-nez v6, :cond_7

    move v6, v8

    .line 84
    :cond_7
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingCharacter()Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Character;->charValue()C

    move-result v7

    .line 85
    .local v7, "groupingChar":C
    if-gez v4, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 86
    .local v11, "pre":I
    :goto_2
    if-gez v4, :cond_a

    const/4 v10, 0x0

    .line 87
    .local v10, "post":I
    :goto_3
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 88
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v11, :cond_b

    .line 89
    sub-int v15, v11, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v6}, Lorg/joda/money/format/AmountPrinterParser;->isPreGroupingPoint(III)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 90
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 92
    :cond_8
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 88
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v9    # "i":I
    .end local v10    # "post":I
    .end local v11    # "pre":I
    :cond_9
    move v11, v4

    .line 85
    goto :goto_2

    .line 86
    .restart local v11    # "pre":I
    :cond_a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v4

    add-int/lit8 v10, v15, -0x1

    goto :goto_3

    .line 94
    .restart local v9    # "i":I
    .restart local v10    # "post":I
    :cond_b
    if-gez v4, :cond_c

    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->isForcedDecimalPoint()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 95
    :cond_c
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getDecimalPointCharacter()Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Character;->charValue()C

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 97
    :cond_d
    invoke-virtual {v1}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingStyle()Lorg/joda/money/format/GroupingStyle;

    move-result-object v15

    sget-object v16, Lorg/joda/money/format/GroupingStyle;->BEFORE_DECIMAL_POINT:Lorg/joda/money/format/GroupingStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 98
    if-ltz v4, :cond_4

    .line 99
    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_1

    .line 102
    :cond_e
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_4

    .line 103
    add-int v15, v9, v2

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v8, v6}, Lorg/joda/money/format/AmountPrinterParser;->isPostGroupingPoint(IIII)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 105
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 102
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "${amount}"

    return-object v0
.end method
