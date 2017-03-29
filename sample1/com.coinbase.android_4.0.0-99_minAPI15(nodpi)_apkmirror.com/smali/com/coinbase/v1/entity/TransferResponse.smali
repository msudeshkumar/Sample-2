.class public Lcom/coinbase/v1/entity/TransferResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "TransferResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x4c277c122d262664L


# instance fields
.field private _transfer:Lcom/coinbase/v1/entity/Transfer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransfer()Lcom/coinbase/v1/entity/Transfer;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransferResponse;->_transfer:Lcom/coinbase/v1/entity/Transfer;

    return-object v0
.end method

.method public setTransfer(Lcom/coinbase/v1/entity/Transfer;)V
    .locals 0
    .param p1, "transfer"    # Lcom/coinbase/v1/entity/Transfer;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransferResponse;->_transfer:Lcom/coinbase/v1/entity/Transfer;

    .line 16
    return-void
.end method
