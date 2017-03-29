.class public final enum Lcom/coinbase/v1/entity/PaymentMethod$Type;
.super Ljava/lang/Enum;
.source "PaymentMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/PaymentMethod$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum ACH_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum BANK_WIRE:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum COINBASE_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum COINBASE_FIAT_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum CREDIT_CARD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum DEBIT_CARD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum FIAT_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum FUTURE_MERCHANT_PAYOUT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum PAYPAL_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum SEPA_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field public static final enum SEPA_PAYMENT_METHOD:Lcom/coinbase/v1/entity/PaymentMethod$Type;


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

    .line 11
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "ACH_BANK_ACCOUNT"

    const-string v2, "ach_bank_account"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->ACH_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 12
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "CREDIT_CARD"

    const-string v2, "credit_card"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->CREDIT_CARD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 13
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "DEBIT_CARD"

    const-string v2, "debit_card"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->DEBIT_CARD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 14
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "SEPA_BANK_ACCOUNT"

    const-string v2, "sepa_bank_account"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->SEPA_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 15
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "FIAT_ACCOUNT"

    const-string v2, "fiat_account"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->FIAT_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 16
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "BANK_WIRE"

    const/4 v2, 0x5

    const-string v3, "bank_wire"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->BANK_WIRE:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 17
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "BANK_ACCOUNT"

    const/4 v2, 0x6

    const-string v3, "bank_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 18
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "COINBASE_ACCOUNT"

    const/4 v2, 0x7

    const-string v3, "coinbase_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->COINBASE_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 19
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "COINBASE_FIAT_ACCOUNT"

    const/16 v2, 0x8

    const-string v3, "coinbase_fiat_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->COINBASE_FIAT_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 20
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "FUTURE_MERCHANT_PAYOUT"

    const/16 v2, 0x9

    const-string v3, "future_merchant_payout"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->FUTURE_MERCHANT_PAYOUT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 21
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "SEPA_PAYMENT_METHOD"

    const/16 v2, 0xa

    const-string v3, "sepa_payment_method"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->SEPA_PAYMENT_METHOD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 22
    new-instance v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    const-string v1, "PAYPAL_ACCOUNT"

    const/16 v2, 0xb

    const-string v3, "paypal_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->PAYPAL_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 10
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/coinbase/v1/entity/PaymentMethod$Type;

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$Type;->ACH_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$Type;->CREDIT_CARD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$Type;->DEBIT_CARD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$Type;->SEPA_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/v1/entity/PaymentMethod$Type;->FIAT_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/v1/entity/PaymentMethod$Type;->BANK_WIRE:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/v1/entity/PaymentMethod$Type;->BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/v1/entity/PaymentMethod$Type;->COINBASE_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/v1/entity/PaymentMethod$Type;->COINBASE_FIAT_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/coinbase/v1/entity/PaymentMethod$Type;->FUTURE_MERCHANT_PAYOUT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/coinbase/v1/entity/PaymentMethod$Type;->SEPA_PAYMENT_METHOD:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/coinbase/v1/entity/PaymentMethod$Type;->PAYPAL_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->$VALUES:[Lcom/coinbase/v1/entity/PaymentMethod$Type;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->_value:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/PaymentMethod$Type;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/coinbase/v1/entity/PaymentMethod$Type;->values()[Lcom/coinbase/v1/entity/PaymentMethod$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 39
    .local v0, "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/PaymentMethod$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    .end local v0    # "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    :goto_1
    return-object v0

    .line 38
    .restart local v0    # "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "type":Lcom/coinbase/v1/entity/PaymentMethod$Type;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/PaymentMethod$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/PaymentMethod$Type;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->$VALUES:[Lcom/coinbase/v1/entity/PaymentMethod$Type;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/PaymentMethod$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/PaymentMethod$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod$Type;->_value:Ljava/lang/String;

    return-object v0
.end method
