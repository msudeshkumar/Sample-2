.class public final enum Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Transaction$DetailedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field public static final enum CANCELED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field public static final enum COMPLETED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field public static final enum EXPIRED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field public static final enum FAILED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field public static final enum PENDING:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field public static final enum WAITING_FOR_CLEARING:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field public static final enum WAITING_FOR_SIGNATURE:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    const-string v1, "COMPLETED"

    const-string v2, "completed"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->COMPLETED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 41
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    const-string v1, "FAILED"

    const-string v2, "failed"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->FAILED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 42
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    const-string v1, "EXPIRED"

    const-string v2, "expired"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->EXPIRED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 43
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    const-string v1, "WAITING_FOR_SIGNATURE"

    const-string v2, "waiting_for_signature"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->WAITING_FOR_SIGNATURE:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 44
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    const-string v1, "WAITING_FOR_CLEARING"

    const-string v2, "waiting_for_clearing"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->WAITING_FOR_CLEARING:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 45
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    const-string v3, "canceled"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->CANCELED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 46
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x6

    const-string v3, "pending"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->PENDING:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    sget-object v1, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->COMPLETED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->FAILED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->EXPIRED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->WAITING_FOR_SIGNATURE:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->WAITING_FOR_CLEARING:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->CANCELED:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->PENDING:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->$VALUES:[Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->values()[Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 57
    .local v0, "status":Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    .end local v0    # "status":Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    :goto_1
    return-object v0

    .line 56
    .restart local v0    # "status":Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "status":Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->$VALUES:[Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction$DetailedStatus;->_value:Ljava/lang/String;

    return-object v0
.end method
