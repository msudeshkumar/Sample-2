.class public Lcom/coinbase/v1/entity/AddressNode;
.super Ljava/lang/Object;
.source "AddressNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2e3aa22ab7ff24d3L


# instance fields
.field private _address:Lcom/coinbase/v1/entity/Address;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/coinbase/v1/entity/Address;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/coinbase/v1/entity/AddressNode;->_address:Lcom/coinbase/v1/entity/Address;

    return-object v0
.end method

.method public setAddress(Lcom/coinbase/v1/entity/Address;)V
    .locals 0
    .param p1, "address"    # Lcom/coinbase/v1/entity/Address;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/coinbase/v1/entity/AddressNode;->_address:Lcom/coinbase/v1/entity/Address;

    .line 19
    return-void
.end method
