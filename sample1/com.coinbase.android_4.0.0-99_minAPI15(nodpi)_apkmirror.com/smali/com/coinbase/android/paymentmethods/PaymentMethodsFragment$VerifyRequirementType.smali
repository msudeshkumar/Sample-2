.class public final enum Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;
.super Ljava/lang/Enum;
.source "PaymentMethodsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifyRequirementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

.field public static final enum CARDS_CDV:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

.field public static final enum FULL_ADDRESS:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    const-string v1, "CARDS_CDV"

    const-string v2, "cdv"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->CARDS_CDV:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    .line 109
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    const-string v1, "FULL_ADDRESS"

    const-string v2, "full_address"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->FULL_ADDRESS:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->CARDS_CDV:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->FULL_ADDRESS:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->$VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-object p3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->_value:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->$VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    invoke-virtual {v0}, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->_value:Ljava/lang/String;

    return-object v0
.end method
