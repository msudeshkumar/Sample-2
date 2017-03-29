.class public final enum Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
.super Ljava/lang/Enum;
.source "MoneyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/utils/MoneyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrencyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

.field public static final enum BITS:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

.field public static final enum BTC:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

.field public static final enum ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

.field public static final enum TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    const-string v1, "ETH"

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    .line 27
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    const-string v1, "BTC"

    invoke-direct {v0, v1, v3}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BTC:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    .line 28
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    const-string v1, "BITS"

    invoke-direct {v0, v1, v4}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BITS:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    .line 29
    new-instance v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    const-string v1, "TRADITIONAL"

    invoke-direct {v0, v1, v5}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BTC:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->BITS:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->$VALUES:[Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->$VALUES:[Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-virtual {v0}, [Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    return-object v0
.end method
