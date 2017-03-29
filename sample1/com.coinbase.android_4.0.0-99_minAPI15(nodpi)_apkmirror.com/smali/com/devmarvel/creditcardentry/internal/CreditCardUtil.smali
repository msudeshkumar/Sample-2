.class public Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;
.super Ljava/lang/Object;
.source "CreditCardUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devmarvel/creditcardentry/internal/CreditCardUtil$1;
    }
.end annotation


# static fields
.field private static simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 23
    sget-object v0, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method private static cleanNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findCardType(Ljava/lang/String;)Lcom/devmarvel/creditcardentry/library/CardType;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 33
    sget-object v5, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 48
    :cond_0
    :goto_0
    return-object v5

    .line 36
    :cond_1
    invoke-static {}, Lcom/devmarvel/creditcardentry/library/CardType;->values()[Lcom/devmarvel/creditcardentry/library/CardType;

    move-result-object v0

    .local v0, "arr$":[Lcom/devmarvel/creditcardentry/library/CardType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 37
    .local v5, "type":Lcom/devmarvel/creditcardentry/library/CardType;
    iget-object v6, v5, Lcom/devmarvel/creditcardentry/library/CardType;->typeRegex:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 38
    iget-object v6, v5, Lcom/devmarvel/creditcardentry/library/CardType;->typeRegex:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 39
    .local v4, "pattern":Ljava/util/regex/Pattern;
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 42
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 36
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    .end local v5    # "type":Lcom/devmarvel/creditcardentry/library/CardType;
    :cond_3
    sget-object v5, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    goto :goto_0
.end method

.method public static formatExpirationDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x1

    const/4 v12, 0x2

    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_0

    .line 205
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 216
    .end local p0    # "text":Ljava/lang/String;
    .local v4, "e":Ljava/text/ParseException;
    :cond_0
    :goto_0
    return-object p0

    .line 158
    .end local v4    # "e":Ljava/text/ParseException;
    .restart local p0    # "text":Ljava/lang/String;
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 160
    .local v3, "digit":I
    if-lt v3, v12, :cond_0

    .line 163
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 166
    .end local v3    # "digit":I
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 167
    .local v6, "month":I
    const/16 v11, 0xc

    if-gt v6, v11, :cond_1

    if-ge v6, v13, :cond_2

    .line 169
    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 174
    .end local v6    # "month":I
    :pswitch_2
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    :pswitch_3
    invoke-static {}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->getCurrentExpDate()Ljava/util/Calendar;

    move-result-object v7

    .line 181
    .local v7, "now":Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "currentYearStr":Ljava/lang/String;
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 184
    .local v9, "yearDigit":I
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "currentYearDigit":I
    if-ge v9, v0, :cond_0

    .line 187
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 193
    .end local v0    # "currentYearDigit":I
    .end local v1    # "currentYearStr":Ljava/lang/String;
    .end local v7    # "now":Ljava/util/Calendar;
    .end local v9    # "yearDigit":I
    :pswitch_4
    invoke-static {}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->getCurrentExpDate()Ljava/util/Calendar;

    move-result-object v8

    .line 194
    .local v8, "now2":Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "currentYearStr2":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x5

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "yearStr":Ljava/lang/String;
    sget-object v11, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 197
    .local v5, "expiry":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 199
    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 211
    .end local v2    # "currentYearStr2":Ljava/lang/String;
    .end local v5    # "expiry":Ljava/util/Date;
    .end local v8    # "now2":Ljava/util/Calendar;
    .end local v10    # "yearStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 213
    .restart local v4    # "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 216
    const-string p0, ""

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static formatForViewing(Ljava/lang/String;Lcom/devmarvel/creditcardentry/library/CardType;)Ljava/lang/String;
    .locals 15
    .param p0, "enteredNumber"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/devmarvel/creditcardentry/library/CardType;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->cleanNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cleaned":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 86
    .local v3, "len":I
    const/4 v11, 0x4

    if-gt v3, v11, :cond_0

    .line 132
    .end local v0    # "cleaned":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "cleaned":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "gaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x3

    new-array v9, v11, [I

    fill-array-data v9, :array_0

    .line 93
    .local v9, "segmentLengths":[I
    sget-object v11, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil$1;->$SwitchMap$com$devmarvel$creditcardentry$library$CardType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/devmarvel/creditcardentry/library/CardType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    move-object v0, p0

    .line 113
    goto :goto_0

    .line 97
    :pswitch_0
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v11, 0x0

    const/4 v12, 0x4

    aput v12, v9, v11

    .line 99
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const/4 v11, 0x1

    const/4 v12, 0x4

    aput v12, v9, v11

    .line 101
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v11, 0x2

    const/4 v12, 0x4

    aput v12, v9, v11

    .line 116
    :goto_1
    const/4 v1, 0x4

    .line 118
    .local v1, "end":I
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "segment1":Ljava/lang/String;
    move v10, v1

    .line 120
    .local v10, "start":I
    const/4 v11, 0x0

    aget v11, v9, v11

    add-int/2addr v11, v1

    if-le v11, v3, :cond_1

    move v1, v3

    .line 121
    :goto_2
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "segment2":Ljava/lang/String;
    move v10, v1

    .line 123
    const/4 v11, 0x1

    aget v11, v9, v11

    add-int/2addr v11, v1

    if-le v11, v3, :cond_2

    move v1, v3

    .line 124
    :goto_3
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "segment3":Ljava/lang/String;
    move v10, v1

    .line 126
    const/4 v11, 0x2

    aget v11, v9, v11

    add-int/2addr v11, v1

    if-le v11, v3, :cond_3

    move v1, v3

    .line 127
    :goto_4
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "segment4":Ljava/lang/String;
    const-string v11, "%s%s%s%s%s%s%s"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v6, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    aput-object v7, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "ret":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 105
    .end local v1    # "end":I
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "segment1":Ljava/lang/String;
    .end local v6    # "segment2":Ljava/lang/String;
    .end local v7    # "segment3":Ljava/lang/String;
    .end local v8    # "segment4":Ljava/lang/String;
    .end local v10    # "start":I
    :pswitch_1
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const/4 v11, 0x0

    const/4 v12, 0x6

    aput v12, v9, v11

    .line 107
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v11, 0x1

    const/4 v12, 0x5

    aput v12, v9, v11

    .line 109
    const-string v11, ""

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v9, v11

    goto :goto_1

    .line 120
    .restart local v1    # "end":I
    .restart local v5    # "segment1":Ljava/lang/String;
    .restart local v10    # "start":I
    :cond_1
    const/4 v11, 0x0

    aget v11, v9, v11

    add-int/2addr v1, v11

    goto :goto_2

    .line 123
    .restart local v6    # "segment2":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    aget v11, v9, v11

    add-int/2addr v1, v11

    goto :goto_3

    .line 126
    .restart local v7    # "segment3":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x2

    aget v11, v9, v11

    add-int/2addr v1, v11

    goto :goto_4

    .line 91
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getCurrentExpDate()Ljava/util/Calendar;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 221
    .local v0, "now":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 222
    return-object v0
.end method

.method public static isValidNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-static {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->cleanNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "cleaned":Ljava/lang/String;
    invoke-static {v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->findCardType(Ljava/lang/String;)Lcom/devmarvel/creditcardentry/library/CardType;

    move-result-object v0

    .line 54
    .local v0, "cardType":Lcom/devmarvel/creditcardentry/library/CardType;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/devmarvel/creditcardentry/library/CardType;->fullRegex:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v4

    .line 56
    :cond_1
    iget-object v5, v0, Lcom/devmarvel/creditcardentry/library/CardType;->fullRegex:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 57
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 59
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->validateCardNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static lengthOfFormattedStringForType(Lcom/devmarvel/creditcardentry/library/CardType;)I
    .locals 3
    .param p0, "type"    # Lcom/devmarvel/creditcardentry/library/CardType;

    .prologue
    .line 138
    sget-object v1, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil$1;->$SwitchMap$com$devmarvel$creditcardentry$library$CardType:[I

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/library/CardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 148
    const/4 v0, 0x0

    .line 151
    .local v0, "idx":I
    :goto_0
    return v0

    .line 142
    .end local v0    # "idx":I
    :pswitch_0
    const/16 v0, 0x13

    .line 143
    .restart local v0    # "idx":I
    goto :goto_0

    .line 145
    .end local v0    # "idx":I
    :pswitch_1
    const/16 v0, 0x11

    .line 146
    .restart local v0    # "idx":I
    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static securityCodeValid(Lcom/devmarvel/creditcardentry/library/CardType;)I
    .locals 3
    .param p0, "type"    # Lcom/devmarvel/creditcardentry/library/CardType;

    .prologue
    const/4 v0, 0x3

    .line 226
    if-nez p0, :cond_0

    .line 235
    :goto_0
    return v0

    .line 227
    :cond_0
    sget-object v1, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil$1;->$SwitchMap$com$devmarvel$creditcardentry$library$CardType:[I

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/library/CardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private static validateCardNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "cardNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, "sum":I
    const/4 v2, 0x0

    .line 66
    .local v2, "doubled":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 67
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "digit":I
    if-eqz v2, :cond_1

    .line 69
    mul-int/lit8 v0, v1, 0x2

    .line 70
    .local v0, "addend":I
    const/16 v7, 0x9

    if-le v0, v7, :cond_0

    .line 71
    add-int/lit8 v0, v0, -0x9

    .line 76
    :cond_0
    :goto_1
    add-int/2addr v4, v0

    .line 77
    if-nez v2, :cond_2

    move v2, v5

    .line 66
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 74
    .end local v0    # "addend":I
    :cond_1
    move v0, v1

    .restart local v0    # "addend":I
    goto :goto_1

    :cond_2
    move v2, v6

    .line 77
    goto :goto_2

    .line 79
    .end local v0    # "addend":I
    .end local v1    # "digit":I
    :cond_3
    rem-int/lit8 v7, v4, 0xa

    if-nez v7, :cond_4

    :goto_3
    return v5

    :cond_4
    move v5, v6

    goto :goto_3
.end method
