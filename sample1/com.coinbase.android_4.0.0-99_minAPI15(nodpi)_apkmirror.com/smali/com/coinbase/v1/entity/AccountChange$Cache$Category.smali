.class public final enum Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
.super Ljava/lang/Enum;
.source "AccountChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/AccountChange$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/AccountChange$Cache$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum CANCELED:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum DEPOSIT_WITHDRAWAL:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum INVOICE:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum MISPAYMENT_REFUND:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum ORDER:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum ORDER_REFUND:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum PAYMENT_REQUEST:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum REQUEST:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum TRANSACTION:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum TRANSFER:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum TRANSFER_MONEY:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field public static final enum VAULT_WITHDRAWAL:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;


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

    .line 23
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "TRANSFER"

    const-string v2, "transfer"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->TRANSFER:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 24
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "TRANSACTION"

    const-string v2, "tx"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->TRANSACTION:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 25
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "REQUEST"

    const-string v2, "request"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->REQUEST:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 26
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "INVOICE"

    const-string v2, "invoice"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->INVOICE:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 27
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "ORDER"

    const-string v2, "order"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->ORDER:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 28
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "DEPOSIT_WITHDRAWAL"

    const/4 v2, 0x5

    const-string v3, "deposit_withdraw"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->DEPOSIT_WITHDRAWAL:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 29
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "TRANSFER_MONEY"

    const/4 v2, 0x6

    const-string v3, "transfer_money"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->TRANSFER_MONEY:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 30
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "PAYMENT_REQUEST"

    const/4 v2, 0x7

    const-string v3, "payment_request"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->PAYMENT_REQUEST:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 31
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "ORDER_REFUND"

    const/16 v2, 0x8

    const-string v3, "order_refund"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->ORDER_REFUND:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 32
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "CANCELED"

    const/16 v2, 0x9

    const-string v3, "canceled"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->CANCELED:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 33
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "MISPAYMENT_REFUND"

    const/16 v2, 0xa

    const-string v3, "mispayment_refund"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->MISPAYMENT_REFUND:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 34
    new-instance v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    const-string v1, "VAULT_WITHDRAWAL"

    const/16 v2, 0xb

    const-string v3, "vault_withdrawal"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->VAULT_WITHDRAWAL:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    sget-object v1, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->TRANSFER:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->TRANSACTION:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->REQUEST:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->INVOICE:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->ORDER:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->DEPOSIT_WITHDRAWAL:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->TRANSFER_MONEY:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->PAYMENT_REQUEST:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->ORDER_REFUND:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->CANCELED:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->MISPAYMENT_REFUND:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->VAULT_WITHDRAWAL:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->$VALUES:[Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->values()[Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 45
    .local v0, "category":Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    .end local v0    # "category":Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    :goto_1
    return-object v0

    .line 44
    .restart local v0    # "category":Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "category":Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->$VALUES:[Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache$Category;->_value:Ljava/lang/String;

    return-object v0
.end method
