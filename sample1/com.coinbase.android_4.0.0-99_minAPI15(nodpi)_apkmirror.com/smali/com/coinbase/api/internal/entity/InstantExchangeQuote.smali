.class public Lcom/coinbase/api/internal/entity/InstantExchangeQuote;
.super Ljava/lang/Object;
.source "InstantExchangeQuote.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x65bc0218681a234cL


# instance fields
.field private _bitcoin:Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

.field private _fiat:Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

.field private _id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitcoin()Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->_bitcoin:Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    return-object v0
.end method

.method public getFiat()Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->_fiat:Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setBitcoin(Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;)V
    .locals 0
    .param p1, "bitcoin"    # Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->_bitcoin:Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    .line 37
    return-void
.end method

.method public setFiat(Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;)V
    .locals 0
    .param p1, "fiat"    # Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->_fiat:Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    .line 29
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->_id:Ljava/lang/String;

    .line 21
    return-void
.end method
