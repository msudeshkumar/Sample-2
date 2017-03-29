.class abstract enum Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;
.super Ljava/lang/Enum;
.source "MoneyFormatterBuilder.java"

# interfaces
.implements Lorg/joda/money/format/MoneyParser;
.implements Lorg/joda/money/format/MoneyPrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/money/format/MoneyFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Singletons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;",
        ">;",
        "Lorg/joda/money/format/MoneyParser;",
        "Lorg/joda/money/format/MoneyPrinter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

.field public static final enum CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

.field public static final enum NUMERIC_3_CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

.field public static final enum NUMERIC_CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;


# instance fields
.field private final toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    new-instance v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons$1;

    const-string v1, "CODE"

    const-string v2, "${code}"

    invoke-direct {v0, v1, v3, v2}, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    .line 333
    new-instance v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons$2;

    const-string v1, "NUMERIC_3_CODE"

    const-string v2, "${numeric3Code}"

    invoke-direct {v0, v1, v4, v2}, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->NUMERIC_3_CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    .line 354
    new-instance v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons$3;

    const-string v1, "NUMERIC_CODE"

    const-string v2, "${numericCode}"

    invoke-direct {v0, v1, v5, v2}, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->NUMERIC_CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    .line 311
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    sget-object v1, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    aput-object v1, v0, v3

    sget-object v1, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->NUMERIC_3_CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    aput-object v1, v0, v4

    sget-object v1, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->NUMERIC_CODE:Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    aput-object v1, v0, v5

    sput-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->$VALUES:[Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "toString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 380
    iput-object p3, p0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->toString:Ljava/lang/String;

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/joda/money/format/MoneyFormatterBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/joda/money/format/MoneyFormatterBuilder$1;

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    const-class v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    return-object v0
.end method

.method public static values()[Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->$VALUES:[Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    invoke-virtual {v0}, [Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;->toString:Ljava/lang/String;

    return-object v0
.end method
