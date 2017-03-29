.class public final enum Lcom/coinbase/android/quickstart/QuickstartManager$Type;
.super Ljava/lang/Enum;
.source "QuickstartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/quickstart/QuickstartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/quickstart/QuickstartManager$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$Type;

.field public static final enum BUYS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

.field public static final enum DEPOSITS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

.field public static final enum SELLS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

.field public static final enum WITHDRAWALS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    const-string v1, "BUYS"

    const-string v2, "buys"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->BUYS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    .line 55
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    const-string v1, "SELLS"

    const-string v2, "sells"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->SELLS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    .line 56
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    const-string v1, "DEPOSITS"

    const-string v2, "deposits"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->DEPOSITS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    .line 57
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    const-string v1, "WITHDRAWALS"

    const-string v2, "withdrawals"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->WITHDRAWALS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->BUYS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->SELLS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->DEPOSITS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->WITHDRAWALS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->_value:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/quickstart/QuickstartManager$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/quickstart/QuickstartManager$Type;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    invoke-virtual {v0}, [Lcom/coinbase/android/quickstart/QuickstartManager$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->_value:Ljava/lang/String;

    return-object v0
.end method
