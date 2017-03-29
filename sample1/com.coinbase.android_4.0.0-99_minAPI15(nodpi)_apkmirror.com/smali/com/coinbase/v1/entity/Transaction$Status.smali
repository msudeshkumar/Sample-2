.class public final enum Lcom/coinbase/v1/entity/Transaction$Status;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Transaction$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Transaction$Status;

.field public static final enum COMPLETE:Lcom/coinbase/v1/entity/Transaction$Status;

.field public static final enum PENDING:Lcom/coinbase/v1/entity/Transaction$Status;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$Status;

    const-string v1, "PENDING"

    const-string v2, "pending"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/Transaction$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$Status;->PENDING:Lcom/coinbase/v1/entity/Transaction$Status;

    .line 20
    new-instance v0, Lcom/coinbase/v1/entity/Transaction$Status;

    const-string v1, "COMPLETE"

    const-string v2, "complete"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Transaction$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$Status;->COMPLETE:Lcom/coinbase/v1/entity/Transaction$Status;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/v1/entity/Transaction$Status;

    sget-object v1, Lcom/coinbase/v1/entity/Transaction$Status;->PENDING:Lcom/coinbase/v1/entity/Transaction$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/Transaction$Status;->COMPLETE:Lcom/coinbase/v1/entity/Transaction$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/v1/entity/Transaction$Status;->$VALUES:[Lcom/coinbase/v1/entity/Transaction$Status;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/Transaction$Status;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction$Status;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/coinbase/v1/entity/Transaction$Status;->values()[Lcom/coinbase/v1/entity/Transaction$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 31
    .local v0, "status":Lcom/coinbase/v1/entity/Transaction$Status;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Transaction$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    .end local v0    # "status":Lcom/coinbase/v1/entity/Transaction$Status;
    :goto_1
    return-object v0

    .line 30
    .restart local v0    # "status":Lcom/coinbase/v1/entity/Transaction$Status;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "status":Lcom/coinbase/v1/entity/Transaction$Status;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/coinbase/v1/entity/Transaction$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Transaction$Status;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Transaction$Status;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/coinbase/v1/entity/Transaction$Status;->$VALUES:[Lcom/coinbase/v1/entity/Transaction$Status;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Transaction$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Transaction$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction$Status;->_value:Ljava/lang/String;

    return-object v0
.end method
