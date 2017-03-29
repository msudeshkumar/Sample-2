.class public final enum Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;
.super Ljava/lang/Enum;
.source "PaymentMethodsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequirementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

.field public static final enum JUMIO:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    const-string v1, "JUMIO"

    const-string v2, "jumio"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->JUMIO:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    sget-object v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->JUMIO:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->$VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->_value:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->$VALUES:[Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    invoke-virtual {v0}, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->_value:Ljava/lang/String;

    return-object v0
.end method
