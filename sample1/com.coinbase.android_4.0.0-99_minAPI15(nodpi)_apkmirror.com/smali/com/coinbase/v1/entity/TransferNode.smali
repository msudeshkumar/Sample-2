.class public Lcom/coinbase/v1/entity/TransferNode;
.super Ljava/lang/Object;
.source "TransferNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8e1e8b9dce05e00L


# instance fields
.field private _transfer:Lcom/coinbase/v1/entity/Transfer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransfer()Lcom/coinbase/v1/entity/Transfer;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransferNode;->_transfer:Lcom/coinbase/v1/entity/Transfer;

    return-object v0
.end method

.method public setTransfer(Lcom/coinbase/v1/entity/Transfer;)V
    .locals 0
    .param p1, "transfer"    # Lcom/coinbase/v1/entity/Transfer;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransferNode;->_transfer:Lcom/coinbase/v1/entity/Transfer;

    .line 19
    return-void
.end method
