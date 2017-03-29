.class public final enum Lcom/coinbase/android/pin/PINManager$AccessType;
.super Ljava/lang/Enum;
.source "PINManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pin/PINManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/pin/PINManager$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/pin/PINManager$AccessType;

.field public static final enum APP_OPEN:Lcom/coinbase/android/pin/PINManager$AccessType;

.field public static final enum BUY:Lcom/coinbase/android/pin/PINManager$AccessType;

.field public static final enum SELL:Lcom/coinbase/android/pin/PINManager$AccessType;

.field public static final enum SEND_MONEY:Lcom/coinbase/android/pin/PINManager$AccessType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/coinbase/android/pin/PINManager$AccessType;

    const-string v1, "APP_OPEN"

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/pin/PINManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/pin/PINManager$AccessType;->APP_OPEN:Lcom/coinbase/android/pin/PINManager$AccessType;

    .line 29
    new-instance v0, Lcom/coinbase/android/pin/PINManager$AccessType;

    const-string v1, "SEND_MONEY"

    invoke-direct {v0, v1, v3}, Lcom/coinbase/android/pin/PINManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/pin/PINManager$AccessType;->SEND_MONEY:Lcom/coinbase/android/pin/PINManager$AccessType;

    .line 30
    new-instance v0, Lcom/coinbase/android/pin/PINManager$AccessType;

    const-string v1, "BUY"

    invoke-direct {v0, v1, v4}, Lcom/coinbase/android/pin/PINManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/pin/PINManager$AccessType;->BUY:Lcom/coinbase/android/pin/PINManager$AccessType;

    .line 31
    new-instance v0, Lcom/coinbase/android/pin/PINManager$AccessType;

    const-string v1, "SELL"

    invoke-direct {v0, v1, v5}, Lcom/coinbase/android/pin/PINManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/pin/PINManager$AccessType;->SELL:Lcom/coinbase/android/pin/PINManager$AccessType;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coinbase/android/pin/PINManager$AccessType;

    sget-object v1, Lcom/coinbase/android/pin/PINManager$AccessType;->APP_OPEN:Lcom/coinbase/android/pin/PINManager$AccessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coinbase/android/pin/PINManager$AccessType;->SEND_MONEY:Lcom/coinbase/android/pin/PINManager$AccessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/pin/PINManager$AccessType;->BUY:Lcom/coinbase/android/pin/PINManager$AccessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/pin/PINManager$AccessType;->SELL:Lcom/coinbase/android/pin/PINManager$AccessType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/coinbase/android/pin/PINManager$AccessType;->$VALUES:[Lcom/coinbase/android/pin/PINManager$AccessType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/pin/PINManager$AccessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/coinbase/android/pin/PINManager$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/pin/PINManager$AccessType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/pin/PINManager$AccessType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/coinbase/android/pin/PINManager$AccessType;->$VALUES:[Lcom/coinbase/android/pin/PINManager$AccessType;

    invoke-virtual {v0}, [Lcom/coinbase/android/pin/PINManager$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/pin/PINManager$AccessType;

    return-object v0
.end method
