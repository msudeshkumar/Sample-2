.class public Lcom/coinbase/v1/entity/OrdersResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "OrdersResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x25c620106adae9bbL


# instance fields
.field private _orders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Order;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/v1/entity/OrdersResponse;->_orders:Ljava/util/List;

    return-object v0
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/OrdersLifter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Order;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/OrdersResponse;->_orders:Ljava/util/List;

    .line 22
    return-void
.end method
