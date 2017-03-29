.class public Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;
.super Ljava/lang/Object;
.source "InstantExchangeQuoteRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7cf1ccf73dedbeefL


# instance fields
.field private _amount:Ljava/lang/String;

.field private _commit:Z

.field private _currency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->_currency:Ljava/lang/String;

    return-object v0
.end method

.method public isCommit()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->_commit:Z

    return v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->_amount:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCommit(Z)V
    .locals 0
    .param p1, "commit"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->_commit:Z

    .line 24
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->_currency:Ljava/lang/String;

    .line 40
    return-void
.end method
