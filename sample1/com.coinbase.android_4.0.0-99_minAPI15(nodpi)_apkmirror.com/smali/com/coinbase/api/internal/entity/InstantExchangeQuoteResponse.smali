.class public Lcom/coinbase/api/internal/entity/InstantExchangeQuoteResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "InstantExchangeQuoteResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x4b832a40cdd23e4bL


# instance fields
.field private _data:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/api/internal/entity/InstantExchangeQuote;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteResponse;->_data:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    return-object v0
.end method

.method public setData(Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)V
    .locals 0
    .param p1, "instantExchangeQuote"    # Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteResponse;->_data:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    .line 17
    return-void
.end method
