.class public Lcom/coinbase/v1/entity/OrderNode;
.super Ljava/lang/Object;
.source "OrderNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7ee3e726bc5bb39aL


# instance fields
.field private _order:Lcom/coinbase/v1/entity/Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder()Lcom/coinbase/v1/entity/Order;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/OrderNode;->_order:Lcom/coinbase/v1/entity/Order;

    return-object v0
.end method

.method public setOrder(Lcom/coinbase/v1/entity/Order;)V
    .locals 0
    .param p1, "order"    # Lcom/coinbase/v1/entity/Order;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/OrderNode;->_order:Lcom/coinbase/v1/entity/Order;

    .line 18
    return-void
.end method
