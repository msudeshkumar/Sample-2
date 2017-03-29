.class public final enum Lcom/coinbase/v1/entity/User$Flag;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/User$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/User$Flag;

.field public static final enum INSTANT_EXCHANGE:Lcom/coinbase/v1/entity/User$Flag;

.field public static final enum NEW_VERIFICATIONS_PAGE:Lcom/coinbase/v1/entity/User$Flag;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/coinbase/v1/entity/User$Flag;

    const-string v1, "INSTANT_EXCHANGE"

    const-string v2, "instant_exchange"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/User$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/User$Flag;->INSTANT_EXCHANGE:Lcom/coinbase/v1/entity/User$Flag;

    .line 17
    new-instance v0, Lcom/coinbase/v1/entity/User$Flag;

    const-string v1, "NEW_VERIFICATIONS_PAGE"

    const-string v2, "new_verifications_page"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/User$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/User$Flag;->NEW_VERIFICATIONS_PAGE:Lcom/coinbase/v1/entity/User$Flag;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/v1/entity/User$Flag;

    sget-object v1, Lcom/coinbase/v1/entity/User$Flag;->INSTANT_EXCHANGE:Lcom/coinbase/v1/entity/User$Flag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/User$Flag;->NEW_VERIFICATIONS_PAGE:Lcom/coinbase/v1/entity/User$Flag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/v1/entity/User$Flag;->$VALUES:[Lcom/coinbase/v1/entity/User$Flag;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/coinbase/v1/entity/User$Flag;->_value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/User$Flag;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/coinbase/v1/entity/User$Flag;->values()[Lcom/coinbase/v1/entity/User$Flag;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 34
    .local v0, "type":Lcom/coinbase/v1/entity/User$Flag;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/User$Flag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    .end local v0    # "type":Lcom/coinbase/v1/entity/User$Flag;
    :goto_1
    return-object v0

    .line 33
    .restart local v0    # "type":Lcom/coinbase/v1/entity/User$Flag;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "type":Lcom/coinbase/v1/entity/User$Flag;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/User$Flag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/coinbase/v1/entity/User$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/User$Flag;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/User$Flag;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/coinbase/v1/entity/User$Flag;->$VALUES:[Lcom/coinbase/v1/entity/User$Flag;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/User$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/User$Flag;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/coinbase/v1/entity/User$Flag;->_value:Ljava/lang/String;

    return-object v0
.end method
