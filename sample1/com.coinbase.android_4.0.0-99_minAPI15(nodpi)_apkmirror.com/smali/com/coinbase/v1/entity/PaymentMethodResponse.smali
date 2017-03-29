.class public Lcom/coinbase/v1/entity/PaymentMethodResponse;
.super Lcom/coinbase/v1/entity/ResponseV2;
.source "PaymentMethodResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x7e2e11cf17a1de94L


# instance fields
.field private _paymentMethod:Lcom/coinbase/v1/entity/PaymentMethod;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/coinbase/v1/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentMethod()Lcom/coinbase/v1/entity/PaymentMethod;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethodResponse;->_paymentMethod:Lcom/coinbase/v1/entity/PaymentMethod;

    return-object v0
.end method

.method public setPaymentMethod(Lcom/coinbase/v1/entity/PaymentMethod;)V
    .locals 0
    .param p1, "paymentMethod"    # Lcom/coinbase/v1/entity/PaymentMethod;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethodResponse;->_paymentMethod:Lcom/coinbase/v1/entity/PaymentMethod;

    .line 18
    return-void
.end method
