.class public Lcom/coinbase/v1/entity/TransactionNode;
.super Ljava/lang/Object;
.source "TransactionNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62d7f187aaa36c3cL


# instance fields
.field private _transaction:Lcom/coinbase/v1/entity/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransaction()Lcom/coinbase/v1/entity/Transaction;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransactionNode;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    return-object v0
.end method

.method public setTransaction(Lcom/coinbase/v1/entity/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v1/entity/Transaction;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransactionNode;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    .line 19
    return-void
.end method
