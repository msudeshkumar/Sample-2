.class public final enum Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;
.super Ljava/lang/Enum;
.source "PaymentMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IAVStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

.field public static final enum FAILED:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

.field public static final enum IN_PROGRESS:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

.field public static final enum MFA_REQUIRED:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

.field public static final enum READY:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

.field public static final enum UNAVAILABLE:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    const-string v1, "READY"

    const-string v2, "ready"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->READY:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    .line 104
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    const-string v1, "UNAVAILABLE"

    const-string v2, "unavailable"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->UNAVAILABLE:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    .line 105
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    const-string v1, "MFA_REQUIRED"

    const-string v2, "mfa_required"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->MFA_REQUIRED:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    .line 106
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    const-string v1, "IN_PROGRESS"

    const-string v2, "in_progress"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->IN_PROGRESS:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    .line 107
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    const-string v1, "FAILED"

    const-string v2, "failed"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->FAILED:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->READY:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->UNAVAILABLE:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->MFA_REQUIRED:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->IN_PROGRESS:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->FAILED:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->$VALUES:[Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput-object p3, p0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->_value:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/PaymentMethod$Type;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/coinbase/v1/entity/PaymentMethod$Type;->values()[Lcom/coinbase/v1/entity/PaymentMethod$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 124
    .local v0, "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/PaymentMethod$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    .end local v0    # "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    :goto_1
    return-object v0

    .line 123
    .restart local v0    # "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->$VALUES:[Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;->_value:Ljava/lang/String;

    return-object v0
.end method
