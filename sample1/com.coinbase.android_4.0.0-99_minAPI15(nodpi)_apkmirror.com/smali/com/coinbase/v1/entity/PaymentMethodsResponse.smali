.class public Lcom/coinbase/v1/entity/PaymentMethodsResponse;
.super Lcom/coinbase/v1/entity/ResponseV2;
.source "PaymentMethodsResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x41f5a443e5d2c545L


# instance fields
.field private _defaultBuy:Ljava/lang/String;

.field private _defaultSell:Ljava/lang/String;

.field private _paymentMethods:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/coinbase/v1/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultBuy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethodsResponse;->_defaultBuy:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethodsResponse;->_defaultSell:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethodsResponse;->_paymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public setDefaultBuy(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultBuy"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethodsResponse;->_defaultBuy:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setDefaultSell(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultSell"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethodsResponse;->_defaultSell:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setPaymentMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/PaymentMethod;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethodsResponse;->_paymentMethods:Ljava/util/List;

    .line 40
    return-void
.end method
