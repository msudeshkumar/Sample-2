.class public final enum Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
.super Ljava/lang/Enum;
.source "FiatTransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

.field public static final enum DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

.field public static final enum WITHDRAW:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    const-string v1, "DEPOSIT"

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    .line 73
    new-instance v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    const-string v1, "WITHDRAW"

    invoke-direct {v0, v1, v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->WITHDRAW:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->WITHDRAW:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->$VALUES:[Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->$VALUES:[Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    invoke-virtual {v0}, [Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    return-object v0
.end method
