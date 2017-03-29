.class public final enum Lcom/coinbase/v1/entity/Report$Status;
.super Ljava/lang/Enum;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Report$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Report$Status;

.field public static final enum ACTIVE:Lcom/coinbase/v1/entity/Report$Status;

.field public static final enum COMPLETED:Lcom/coinbase/v1/entity/Report$Status;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/coinbase/v1/entity/Report$Status;

    const-string v1, "ACTIVE"

    const-string v2, "active"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/Report$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Status;->ACTIVE:Lcom/coinbase/v1/entity/Report$Status;

    .line 36
    new-instance v0, Lcom/coinbase/v1/entity/Report$Status;

    const-string v1, "COMPLETED"

    const-string v2, "completed"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Report$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Status;->COMPLETED:Lcom/coinbase/v1/entity/Report$Status;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/v1/entity/Report$Status;

    sget-object v1, Lcom/coinbase/v1/entity/Report$Status;->ACTIVE:Lcom/coinbase/v1/entity/Report$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/Report$Status;->COMPLETED:Lcom/coinbase/v1/entity/Report$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/v1/entity/Report$Status;->$VALUES:[Lcom/coinbase/v1/entity/Report$Status;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/Report$Status;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Report$Status;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/coinbase/v1/entity/Report$Status;->values()[Lcom/coinbase/v1/entity/Report$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 47
    .local v0, "status":Lcom/coinbase/v1/entity/Report$Status;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Report$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    .end local v0    # "status":Lcom/coinbase/v1/entity/Report$Status;
    :goto_1
    return-object v0

    .line 46
    .restart local v0    # "status":Lcom/coinbase/v1/entity/Report$Status;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "status":Lcom/coinbase/v1/entity/Report$Status;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Report$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/coinbase/v1/entity/Report$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Report$Status;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Report$Status;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/coinbase/v1/entity/Report$Status;->$VALUES:[Lcom/coinbase/v1/entity/Report$Status;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Report$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Report$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report$Status;->_value:Ljava/lang/String;

    return-object v0
.end method
