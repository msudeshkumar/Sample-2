.class public final enum Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
.super Ljava/lang/Enum;
.source "PaymentMethodsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentMethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum ACH_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum BANK_WIRE:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum CREDIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum DEBIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum EFT_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum FIAT_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum IDEAL_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum INTERAC:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum SECURE3D_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum SEPA_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

.field public static final enum XFERS_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;


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

    .line 56
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "ACH_BANK_ACCOUNT"

    const-string v2, "ach_bank_account"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->ACH_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 57
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "BANK_WIRE"

    const-string v2, "bank_wire"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->BANK_WIRE:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 58
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "CREDIT_CARD"

    const-string v2, "credit_card"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->CREDIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 59
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "DEBIT_CARD"

    const-string v2, "debit_card"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->DEBIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 60
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "SECURE3D_CARD"

    const-string v2, "secure3d_card"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->SECURE3D_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 61
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "SEPA_BANK_ACCOUNT"

    const/4 v2, 0x5

    const-string v3, "sepa_bank_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->SEPA_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 62
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "FIAT_ACCOUNT"

    const/4 v2, 0x6

    const-string v3, "fiat_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->FIAT_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 63
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "IDEAL_BANK_ACCOUNT"

    const/4 v2, 0x7

    const-string v3, "ideal_bank_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->IDEAL_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 64
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "EFT_BANK_ACCOUNT"

    const/16 v2, 0x8

    const-string v3, "eft_bank_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->EFT_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 65
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "INTERAC"

    const/16 v2, 0x9

    const-string v3, "interac"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->INTERAC:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 66
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    const-string v1, "XFERS_ACCOUNT"

    const/16 v2, 0xa

    const-string v3, "xfers_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->XFERS_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    .line 54
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->ACH_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->BANK_WIRE:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->CREDIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->DEBIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->SECURE3D_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->SEPA_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->FIAT_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->IDEAL_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->EFT_BANK_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->INTERAC:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->XFERS_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->$VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->_value:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p0, :cond_1

    .line 81
    invoke-static {}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->values()[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 82
    .local v0, "str":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    .end local v0    # "str":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    :goto_1
    return-object v0

    .line 81
    .restart local v0    # "str":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "str":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    :cond_1
    sget-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->FIAT_ACCOUNT:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->$VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    invoke-virtual {v0}, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->_value:Ljava/lang/String;

    return-object v0
.end method
