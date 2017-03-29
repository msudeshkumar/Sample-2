.class public Lcom/coinbase/v1/entity/TransactionResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "TransactionResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x7a20aaf9fd536e09L


# instance fields
.field private _transaction:Lcom/coinbase/v1/entity/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransaction()Lcom/coinbase/v1/entity/Transaction;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransactionResponse;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    return-object v0
.end method

.method public setTransaction(Lcom/coinbase/v1/entity/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v1/entity/Transaction;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransactionResponse;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    .line 16
    return-void
.end method
