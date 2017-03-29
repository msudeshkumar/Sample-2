.class public final enum Lcom/coinbase/v1/entity/Transfer$Status;
.super Ljava/lang/Enum;
.source "Transfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Transfer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Transfer$Status;

.field public static final enum CANCELED:Lcom/coinbase/v1/entity/Transfer$Status;

.field public static final enum COMPLETE:Lcom/coinbase/v1/entity/Transfer$Status;

.field public static final enum CREATED:Lcom/coinbase/v1/entity/Transfer$Status;

.field public static final enum PENDING:Lcom/coinbase/v1/entity/Transfer$Status;

.field public static final enum REVERSED:Lcom/coinbase/v1/entity/Transfer$Status;


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

    .line 37
    new-instance v0, Lcom/coinbase/v1/entity/Transfer$Status;

    const-string v1, "CREATED"

    const-string v2, "created"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/Transfer$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transfer$Status;->CREATED:Lcom/coinbase/v1/entity/Transfer$Status;

    .line 38
    new-instance v0, Lcom/coinbase/v1/entity/Transfer$Status;

    const-string v1, "PENDING"

    const-string v2, "Pending"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Transfer$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transfer$Status;->PENDING:Lcom/coinbase/v1/entity/Transfer$Status;

    .line 39
    new-instance v0, Lcom/coinbase/v1/entity/Transfer$Status;

    const-string v1, "COMPLETE"

    const-string v2, "Complete"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/Transfer$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transfer$Status;->COMPLETE:Lcom/coinbase/v1/entity/Transfer$Status;

    .line 40
    new-instance v0, Lcom/coinbase/v1/entity/Transfer$Status;

    const-string v1, "CANCELED"

    const-string v2, "Canceled"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/Transfer$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transfer$Status;->CANCELED:Lcom/coinbase/v1/entity/Transfer$Status;

    .line 41
    new-instance v0, Lcom/coinbase/v1/entity/Transfer$Status;

    const-string v1, "REVERSED"

    const-string v2, "Reversed"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/Transfer$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Transfer$Status;->REVERSED:Lcom/coinbase/v1/entity/Transfer$Status;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coinbase/v1/entity/Transfer$Status;

    sget-object v1, Lcom/coinbase/v1/entity/Transfer$Status;->CREATED:Lcom/coinbase/v1/entity/Transfer$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/Transfer$Status;->PENDING:Lcom/coinbase/v1/entity/Transfer$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/Transfer$Status;->COMPLETE:Lcom/coinbase/v1/entity/Transfer$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/Transfer$Status;->CANCELED:Lcom/coinbase/v1/entity/Transfer$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/Transfer$Status;->REVERSED:Lcom/coinbase/v1/entity/Transfer$Status;

    aput-object v1, v0, v7

    sput-object v0, Lcom/coinbase/v1/entity/Transfer$Status;->$VALUES:[Lcom/coinbase/v1/entity/Transfer$Status;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/Transfer$Status;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transfer$Status;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/coinbase/v1/entity/Transfer$Status;->values()[Lcom/coinbase/v1/entity/Transfer$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 52
    .local v0, "status":Lcom/coinbase/v1/entity/Transfer$Status;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Transfer$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    .end local v0    # "status":Lcom/coinbase/v1/entity/Transfer$Status;
    :goto_1
    return-object v0

    .line 51
    .restart local v0    # "status":Lcom/coinbase/v1/entity/Transfer$Status;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "status":Lcom/coinbase/v1/entity/Transfer$Status;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transfer$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/coinbase/v1/entity/Transfer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Transfer$Status;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Transfer$Status;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/coinbase/v1/entity/Transfer$Status;->$VALUES:[Lcom/coinbase/v1/entity/Transfer$Status;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Transfer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Transfer$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer$Status;->_value:Ljava/lang/String;

    return-object v0
.end method
