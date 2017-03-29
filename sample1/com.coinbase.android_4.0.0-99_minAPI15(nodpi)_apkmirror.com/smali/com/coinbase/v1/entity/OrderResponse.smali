.class public Lcom/coinbase/v1/entity/OrderResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "OrderResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x10e6d48f160831e0L


# instance fields
.field private _order:Lcom/coinbase/v1/entity/Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder()Lcom/coinbase/v1/entity/Order;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/OrderResponse;->_order:Lcom/coinbase/v1/entity/Order;

    return-object v0
.end method

.method public setOrder(Lcom/coinbase/v1/entity/Order;)V
    .locals 0
    .param p1, "order"    # Lcom/coinbase/v1/entity/Order;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/OrderResponse;->_order:Lcom/coinbase/v1/entity/Order;

    .line 16
    return-void
.end method
