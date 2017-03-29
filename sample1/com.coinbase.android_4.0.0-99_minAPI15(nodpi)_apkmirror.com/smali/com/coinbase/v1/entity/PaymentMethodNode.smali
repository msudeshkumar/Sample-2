.class public Lcom/coinbase/v1/entity/PaymentMethodNode;
.super Ljava/lang/Object;
.source "PaymentMethodNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x301ef79126fe5f06L


# instance fields
.field private _paymentMethod:Lcom/coinbase/v1/entity/PaymentMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentMethod()Lcom/coinbase/v1/entity/PaymentMethod;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethodNode;->_paymentMethod:Lcom/coinbase/v1/entity/PaymentMethod;

    return-object v0
.end method

.method public setPaymentMethod(Lcom/coinbase/v1/entity/PaymentMethod;)V
    .locals 0
    .param p1, "paymentMethod"    # Lcom/coinbase/v1/entity/PaymentMethod;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethodNode;->_paymentMethod:Lcom/coinbase/v1/entity/PaymentMethod;

    .line 18
    return-void
.end method
