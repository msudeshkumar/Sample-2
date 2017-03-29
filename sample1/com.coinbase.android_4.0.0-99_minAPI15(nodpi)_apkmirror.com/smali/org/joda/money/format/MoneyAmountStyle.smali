.class public final Lorg/joda/money/format/MoneyAmountStyle;
.super Ljava/lang/Object;
.source "MoneyAmountStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASCII_DECIMAL_COMMA_GROUP3_DOT:Lorg/joda/money/format/MoneyAmountStyle;

.field public static final ASCII_DECIMAL_COMMA_GROUP3_SPACE:Lorg/joda/money/format/MoneyAmountStyle;

.field public static final ASCII_DECIMAL_COMMA_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

.field public static final ASCII_DECIMAL_POINT_GROUP3_COMMA:Lorg/joda/money/format/MoneyAmountStyle;

.field public static final ASCII_DECIMAL_POINT_GROUP3_SPACE:Lorg/joda/money/format/MoneyAmountStyle;

.field public static final ASCII_DECIMAL_POINT_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

.field private static final LOCALIZED_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/joda/money/format/MoneyAmountStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCALIZED_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

.field public static final LOCALIZED_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;


# instance fields
.field private final absValue:Z

.field private final decimalPointCharacter:I

.field private final extendedGroupingSize:I

.field private final forceDecimalPoint:Z

.field private final groupingCharacter:I

.field private final groupingSize:I

.field private final groupingStyle:Lorg/joda/money/format/GroupingStyle;

.field private final negativeCharacter:I

.field private final positiveCharacter:I

.field private final zeroCharacter:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 58
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2e

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    const/16 v6, 0x2c

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->ASCII_DECIMAL_POINT_GROUP3_COMMA:Lorg/joda/money/format/MoneyAmountStyle;

    .line 65
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2e

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    const/16 v6, 0x20

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->ASCII_DECIMAL_POINT_GROUP3_SPACE:Lorg/joda/money/format/MoneyAmountStyle;

    .line 72
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2e

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->NONE:Lorg/joda/money/format/GroupingStyle;

    const/16 v6, 0x2c

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->ASCII_DECIMAL_POINT_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    .line 79
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2c

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    const/16 v6, 0x2e

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->ASCII_DECIMAL_COMMA_GROUP3_DOT:Lorg/joda/money/format/MoneyAmountStyle;

    .line 86
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2c

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    const/16 v6, 0x20

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->ASCII_DECIMAL_COMMA_GROUP3_SPACE:Lorg/joda/money/format/MoneyAmountStyle;

    .line 93
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2c

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->NONE:Lorg/joda/money/format/GroupingStyle;

    const/16 v6, 0x2e

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->ASCII_DECIMAL_COMMA_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    .line 99
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    .line 105
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->NONE:Lorg/joda/money/format/GroupingStyle;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_NO_GROUPING:Lorg/joda/money/format/MoneyAmountStyle;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V
    .locals 0
    .param p1, "zeroCharacter"    # I
    .param p2, "positiveCharacter"    # I
    .param p3, "negativeCharacter"    # I
    .param p4, "decimalPointCharacter"    # I
    .param p5, "groupingStyle"    # Lorg/joda/money/format/GroupingStyle;
    .param p6, "groupingCharacter"    # I
    .param p7, "groupingSize"    # I
    .param p8, "extendedGroupingSize"    # I
    .param p9, "forceDecimalPoint"    # Z
    .param p10, "absValue"    # Z

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    .line 193
    iput p2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    .line 194
    iput p3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    .line 195
    iput p4, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    .line 196
    iput-object p5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    .line 197
    iput p6, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    .line 198
    iput p7, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    .line 199
    iput p8, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    .line 200
    iput-boolean p9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    .line 201
    iput-boolean p10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    .line 202
    return-void
.end method

.method private static getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 15
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v8, 0x0

    .line 268
    sget-object v1, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/money/format/MoneyAmountStyle;

    .line 269
    .local v0, "protoStyle":Lorg/joda/money/format/MoneyAmountStyle;
    if-nez v0, :cond_0

    .line 272
    :try_start_0
    const-class v1, Ljava/text/DecimalFormatSymbols;

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Locale;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 273
    .local v13, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v13, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .local v14, "symbols":Ljava/text/DecimalFormatSymbols;
    :goto_0
    invoke-static {p0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    .line 278
    .local v12, "format":Ljava/text/NumberFormat;
    instance-of v1, v12, Ljava/text/DecimalFormat;

    if-eqz v1, :cond_1

    check-cast v12, Ljava/text/DecimalFormat;

    .end local v12    # "format":Ljava/text/NumberFormat;
    invoke-virtual {v12}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v7

    .line 279
    .local v7, "size":I
    :goto_1
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    .end local v0    # "protoStyle":Lorg/joda/money/format/MoneyAmountStyle;
    invoke-virtual {v14}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    const/16 v2, 0x2b

    invoke-virtual {v14}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    invoke-virtual {v14}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v4

    sget-object v5, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    invoke-virtual {v14}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    .line 284
    .restart local v0    # "protoStyle":Lorg/joda/money/format/MoneyAmountStyle;
    sget-object v1, Lorg/joda/money/format/MoneyAmountStyle;->LOCALIZED_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v7    # "size":I
    .end local v14    # "symbols":Ljava/text/DecimalFormatSymbols;
    :cond_0
    return-object v0

    .line 274
    :catch_0
    move-exception v11

    .line 275
    .local v11, "ex":Ljava/lang/Exception;
    new-instance v14, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v14, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .restart local v14    # "symbols":Ljava/text/DecimalFormatSymbols;
    goto :goto_0

    .line 278
    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v12    # "format":Ljava/text/NumberFormat;
    :cond_1
    const/4 v7, 0x3

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    if-ne p1, p0, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v1

    .line 625
    :cond_1
    instance-of v3, p1, Lorg/joda/money/format/MoneyAmountStyle;

    if-nez v3, :cond_2

    move v1, v2

    .line 626
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 628
    check-cast v0, Lorg/joda/money/format/MoneyAmountStyle;

    .line 629
    .local v0, "otherStyle":Lorg/joda/money/format/MoneyAmountStyle;
    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    iget v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    iget v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    iget v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    iget v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget-object v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    iget v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    iget v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    iget-boolean v4, v0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDecimalPointCharacter()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtendedGroupingSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupingCharacter()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupingSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupingStyle()Lorg/joda/money/format/GroupingStyle;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    return-object v0
.end method

.method public getNegativeSignCharacter()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositiveSignCharacter()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public getZeroCharacter()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 647
    const/16 v0, 0xd

    .line 648
    .local v0, "hash":I
    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 649
    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 650
    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 651
    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 652
    iget-object v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    invoke-virtual {v1}, Lorg/joda/money/format/GroupingStyle;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 653
    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 654
    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 655
    iget-boolean v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    .line 656
    iget-boolean v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :goto_1
    add-int/2addr v0, v1

    .line 657
    return v0

    .line 655
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 656
    :cond_1
    const/16 v1, 0x9

    goto :goto_1
.end method

.method public isAbsValue()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    return v0
.end method

.method public isForcedDecimalPoint()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    return v0
.end method

.method public localize(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 220
    const-string v2, "Locale must not be null"

    invoke-static {p1, v2}, Lorg/joda/money/format/MoneyFormatter;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    move-object v1, p0

    .line 222
    .local v1, "result":Lorg/joda/money/format/MoneyAmountStyle;
    const/4 v0, 0x0

    .line 223
    .local v0, "protoStyle":Lorg/joda/money/format/MoneyAmountStyle;
    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    if-gez v2, :cond_0

    .line 224
    invoke-static {p1}, Lorg/joda/money/format/MoneyAmountStyle;->getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyAmountStyle;->getZeroCharacter()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/money/format/MoneyAmountStyle;->withZeroCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 227
    :cond_0
    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    if-gez v2, :cond_1

    .line 228
    invoke-static {p1}, Lorg/joda/money/format/MoneyAmountStyle;->getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyAmountStyle;->getPositiveSignCharacter()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/money/format/MoneyAmountStyle;->withPositiveSignCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 231
    :cond_1
    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    if-gez v2, :cond_2

    .line 232
    invoke-static {p1}, Lorg/joda/money/format/MoneyAmountStyle;->getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyAmountStyle;->getNegativeSignCharacter()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/money/format/MoneyAmountStyle;->withNegativeSignCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 235
    :cond_2
    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    if-gez v2, :cond_4

    .line 236
    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/joda/money/format/MoneyAmountStyle;->getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v0

    .line 237
    :cond_3
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyAmountStyle;->getDecimalPointCharacter()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/money/format/MoneyAmountStyle;->withDecimalPointCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 239
    :cond_4
    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    if-gez v2, :cond_6

    .line 240
    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/joda/money/format/MoneyAmountStyle;->getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v0

    .line 241
    :cond_5
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingCharacter()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/money/format/MoneyAmountStyle;->withGroupingCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 243
    :cond_6
    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    if-gez v2, :cond_8

    .line 244
    if-nez v0, :cond_7

    invoke-static {p1}, Lorg/joda/money/format/MoneyAmountStyle;->getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v0

    .line 245
    :cond_7
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/money/format/MoneyAmountStyle;->withGroupingSize(Ljava/lang/Integer;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 247
    :cond_8
    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    if-gez v2, :cond_a

    .line 248
    if-nez v0, :cond_9

    invoke-static {p1}, Lorg/joda/money/format/MoneyAmountStyle;->getLocalizedStyle(Ljava/util/Locale;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v0

    .line 249
    :cond_9
    invoke-virtual {v0}, Lorg/joda/money/format/MoneyAmountStyle;->getExtendedGroupingSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/money/format/MoneyAmountStyle;->withExtendedGroupingSize(Ljava/lang/Integer;)Lorg/joda/money/format/MoneyAmountStyle;

    move-result-object v1

    .line 251
    :cond_a
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoneyAmountStyle[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->getZeroCharacter()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->getPositiveSignCharacter()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->getNegativeSignCharacter()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->getDecimalPointCharacter()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingStyle()Lorg/joda/money/format/GroupingStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingCharacter()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->getGroupingSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->isForcedDecimalPoint()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/money/format/MoneyAmountStyle;->isAbsValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecimalPointCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 11
    .param p1, "decimalPointCharacter"    # Ljava/lang/Character;

    .prologue
    .line 411
    if-nez p1, :cond_0

    const/4 v4, -0x1

    .line 412
    .local v4, "dpVal":I
    :goto_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    if-ne v4, v0, :cond_1

    .line 415
    .end local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :goto_1
    return-object p0

    .line 411
    .end local v4    # "dpVal":I
    .restart local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    goto :goto_0

    .line 415
    .restart local v4    # "dpVal":I
    :cond_1
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    iget-object v5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget v6, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    iget v7, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    iget v8, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    iget-boolean v9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withExtendedGroupingSize(Ljava/lang/Integer;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 11
    .param p1, "extendedGroupingSize"    # Ljava/lang/Integer;

    .prologue
    .line 509
    if-nez p1, :cond_0

    const/4 v8, -0x1

    .line 510
    .local v8, "sizeVal":I
    :goto_0
    if-eqz p1, :cond_1

    if-gez v8, :cond_1

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extended grouping size must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    .end local v8    # "sizeVal":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_0

    .line 513
    .restart local v8    # "sizeVal":I
    :cond_1
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    if-ne v8, v0, :cond_2

    .line 516
    .end local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :cond_2
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    iget v4, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    iget-object v5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget v6, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    iget v7, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    iget-boolean v9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withGroupingCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 11
    .param p1, "groupingCharacter"    # Ljava/lang/Character;

    .prologue
    .line 441
    if-nez p1, :cond_0

    const/4 v6, -0x1

    .line 442
    .local v6, "groupingVal":I
    :goto_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    if-ne v6, v0, :cond_1

    .line 445
    .end local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :goto_1
    return-object p0

    .line 441
    .end local v6    # "groupingVal":I
    .restart local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v6

    goto :goto_0

    .line 445
    .restart local v6    # "groupingVal":I
    :cond_1
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    iget v4, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    iget-object v5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget v7, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    iget v8, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    iget-boolean v9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withGroupingSize(Ljava/lang/Integer;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 11
    .param p1, "groupingSize"    # Ljava/lang/Integer;

    .prologue
    .line 471
    if-nez p1, :cond_0

    const/4 v7, -0x1

    .line 472
    .local v7, "sizeVal":I
    :goto_0
    if-eqz p1, :cond_1

    if-gtz v7, :cond_1

    .line 473
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grouping size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    .end local v7    # "sizeVal":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 475
    .restart local v7    # "sizeVal":I
    :cond_1
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    if-ne v7, v0, :cond_2

    .line 478
    .end local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :cond_2
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    iget v4, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    iget-object v5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget v6, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    iget v8, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    iget-boolean v9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withNegativeSignCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 11
    .param p1, "negativeCharacter"    # Ljava/lang/Character;

    .prologue
    .line 381
    if-nez p1, :cond_0

    const/4 v3, -0x1

    .line 382
    .local v3, "negativeVal":I
    :goto_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    if-ne v3, v0, :cond_1

    .line 385
    .end local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :goto_1
    return-object p0

    .line 381
    .end local v3    # "negativeVal":I
    .restart local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v3

    goto :goto_0

    .line 385
    .restart local v3    # "negativeVal":I
    :cond_1
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    iget v4, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    iget-object v5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget v6, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    iget v7, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    iget v8, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    iget-boolean v9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withPositiveSignCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 11
    .param p1, "positiveCharacter"    # Ljava/lang/Character;

    .prologue
    .line 349
    if-nez p1, :cond_0

    const/4 v2, -0x1

    .line 350
    .local v2, "positiveVal":I
    :goto_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    if-ne v2, v0, :cond_1

    .line 353
    .end local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :goto_1
    return-object p0

    .line 349
    .end local v2    # "positiveVal":I
    .restart local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    goto :goto_0

    .line 353
    .restart local v2    # "positiveVal":I
    :cond_1
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    iget v1, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    iget v4, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    iget-object v5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget v6, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    iget v7, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    iget v8, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    iget-boolean v9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withZeroCharacter(Ljava/lang/Character;)Lorg/joda/money/format/MoneyAmountStyle;
    .locals 11
    .param p1, "zeroCharacter"    # Ljava/lang/Character;

    .prologue
    .line 317
    if-nez p1, :cond_0

    const/4 v1, -0x1

    .line 318
    .local v1, "zeroVal":I
    :goto_0
    iget v0, p0, Lorg/joda/money/format/MoneyAmountStyle;->zeroCharacter:I

    if-ne v1, v0, :cond_1

    .line 321
    .end local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :goto_1
    return-object p0

    .line 317
    .end local v1    # "zeroVal":I
    .restart local p0    # "this":Lorg/joda/money/format/MoneyAmountStyle;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0

    .line 321
    .restart local v1    # "zeroVal":I
    :cond_1
    new-instance v0, Lorg/joda/money/format/MoneyAmountStyle;

    iget v2, p0, Lorg/joda/money/format/MoneyAmountStyle;->positiveCharacter:I

    iget v3, p0, Lorg/joda/money/format/MoneyAmountStyle;->negativeCharacter:I

    iget v4, p0, Lorg/joda/money/format/MoneyAmountStyle;->decimalPointCharacter:I

    iget-object v5, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingStyle:Lorg/joda/money/format/GroupingStyle;

    iget v6, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingCharacter:I

    iget v7, p0, Lorg/joda/money/format/MoneyAmountStyle;->groupingSize:I

    iget v8, p0, Lorg/joda/money/format/MoneyAmountStyle;->extendedGroupingSize:I

    iget-boolean v9, p0, Lorg/joda/money/format/MoneyAmountStyle;->forceDecimalPoint:Z

    iget-boolean v10, p0, Lorg/joda/money/format/MoneyAmountStyle;->absValue:Z

    invoke-direct/range {v0 .. v10}, Lorg/joda/money/format/MoneyAmountStyle;-><init>(IIIILorg/joda/money/format/GroupingStyle;IIIZZ)V

    move-object p0, v0

    goto :goto_1
.end method
