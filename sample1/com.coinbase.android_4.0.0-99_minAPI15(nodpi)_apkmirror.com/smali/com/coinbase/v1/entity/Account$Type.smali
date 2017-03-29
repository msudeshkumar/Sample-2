.class public final enum Lcom/coinbase/v1/entity/Account$Type;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Account$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Account$Type;

.field public static final enum FIAT:Lcom/coinbase/v1/entity/Account$Type;

.field public static final enum MULTISIG_VAULT:Lcom/coinbase/v1/entity/Account$Type;

.field public static final enum MULTISIG_WALLET:Lcom/coinbase/v1/entity/Account$Type;

.field public static final enum VAULT:Lcom/coinbase/v1/entity/Account$Type;

.field public static final enum WALLET:Lcom/coinbase/v1/entity/Account$Type;


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

    .line 14
    new-instance v0, Lcom/coinbase/v1/entity/Account$Type;

    const-string v1, "WALLET"

    const-string v2, "wallet"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/Account$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Account$Type;->WALLET:Lcom/coinbase/v1/entity/Account$Type;

    .line 15
    new-instance v0, Lcom/coinbase/v1/entity/Account$Type;

    const-string v1, "VAULT"

    const-string v2, "vault"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Account$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Account$Type;->VAULT:Lcom/coinbase/v1/entity/Account$Type;

    .line 16
    new-instance v0, Lcom/coinbase/v1/entity/Account$Type;

    const-string v1, "MULTISIG_VAULT"

    const-string v2, "multisig_vault"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/Account$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Account$Type;->MULTISIG_VAULT:Lcom/coinbase/v1/entity/Account$Type;

    .line 17
    new-instance v0, Lcom/coinbase/v1/entity/Account$Type;

    const-string v1, "MULTISIG_WALLET"

    const-string v2, "multisig_wallet"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/Account$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Account$Type;->MULTISIG_WALLET:Lcom/coinbase/v1/entity/Account$Type;

    .line 18
    new-instance v0, Lcom/coinbase/v1/entity/Account$Type;

    const-string v1, "FIAT"

    const-string v2, "fiat"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/Account$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Account$Type;->FIAT:Lcom/coinbase/v1/entity/Account$Type;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coinbase/v1/entity/Account$Type;

    sget-object v1, Lcom/coinbase/v1/entity/Account$Type;->WALLET:Lcom/coinbase/v1/entity/Account$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/Account$Type;->VAULT:Lcom/coinbase/v1/entity/Account$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/Account$Type;->MULTISIG_VAULT:Lcom/coinbase/v1/entity/Account$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/Account$Type;->MULTISIG_WALLET:Lcom/coinbase/v1/entity/Account$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/Account$Type;->FIAT:Lcom/coinbase/v1/entity/Account$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/coinbase/v1/entity/Account$Type;->$VALUES:[Lcom/coinbase/v1/entity/Account$Type;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/coinbase/v1/entity/Account$Type;->_value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Account$Type;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/coinbase/v1/entity/Account$Type;->values()[Lcom/coinbase/v1/entity/Account$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 35
    .local v0, "type":Lcom/coinbase/v1/entity/Account$Type;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Account$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    .end local v0    # "type":Lcom/coinbase/v1/entity/Account$Type;
    :goto_1
    return-object v0

    .line 34
    .restart local v0    # "type":Lcom/coinbase/v1/entity/Account$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "type":Lcom/coinbase/v1/entity/Account$Type;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Account$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/coinbase/v1/entity/Account$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Account$Type;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Account$Type;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/coinbase/v1/entity/Account$Type;->$VALUES:[Lcom/coinbase/v1/entity/Account$Type;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Account$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Account$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account$Type;->_value:Ljava/lang/String;

    return-object v0
.end method
