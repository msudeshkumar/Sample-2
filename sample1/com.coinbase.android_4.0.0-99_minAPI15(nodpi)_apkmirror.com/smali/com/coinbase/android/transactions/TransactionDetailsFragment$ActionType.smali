.class final enum Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;
.super Ljava/lang/Enum;
.source "TransactionDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

.field public static final enum CANCEL:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

.field public static final enum COMPLETE:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

.field public static final enum RESEND:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    const-string v1, "RESEND"

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->RESEND:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    .line 77
    new-instance v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->COMPLETE:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    .line 78
    new-instance v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->CANCEL:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    sget-object v1, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->RESEND:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->COMPLETE:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->CANCEL:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->$VALUES:[Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->$VALUES:[Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    invoke-virtual {v0}, [Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    return-object v0
.end method
