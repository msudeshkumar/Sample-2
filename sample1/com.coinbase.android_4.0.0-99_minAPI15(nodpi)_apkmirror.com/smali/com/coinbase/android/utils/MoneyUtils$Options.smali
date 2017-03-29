.class public final enum Lcom/coinbase/android/utils/MoneyUtils$Options;
.super Ljava/lang/Enum;
.source "MoneyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/utils/MoneyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/utils/MoneyUtils$Options;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum MULTIPLY_BTC_BITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum NONE:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum ROUND_2_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum ROUND_8_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

.field public static final enum STRIP_TRAILING_ZEROS:Lcom/coinbase/android/utils/MoneyUtils$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->NONE:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 36
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "EXCLUDE_CURRENCY_SYMBOL"

    invoke-direct {v0, v1, v4}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 38
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "INCLUDE_PARENTHESIS"

    invoke-direct {v0, v1, v5}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 40
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "PREFIX_SIGNED"

    invoke-direct {v0, v1, v6}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 42
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "ROUND_0_DIGITS"

    invoke-direct {v0, v1, v7}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 44
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "ROUND_2_DIGITS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_2_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 46
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "ROUND_4_DIGITS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 48
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "ROUND_8_DIGITS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_8_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 50
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "MULTIPLY_BTC_BITS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->MULTIPLY_BTC_BITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 52
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    const-string v1, "STRIP_TRAILING_ZEROS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/utils/MoneyUtils$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->STRIP_TRAILING_ZEROS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$Options;->NONE:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$Options;->INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$Options;->PREFIX_SIGNED:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_2_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_8_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/android/utils/MoneyUtils$Options;->MULTIPLY_BTC_BITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/coinbase/android/utils/MoneyUtils$Options;->STRIP_TRAILING_ZEROS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->$VALUES:[Lcom/coinbase/android/utils/MoneyUtils$Options;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/utils/MoneyUtils$Options;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/utils/MoneyUtils$Options;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/utils/MoneyUtils$Options;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/coinbase/android/utils/MoneyUtils$Options;->$VALUES:[Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-virtual {v0}, [Lcom/coinbase/android/utils/MoneyUtils$Options;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/utils/MoneyUtils$Options;

    return-object v0
.end method
