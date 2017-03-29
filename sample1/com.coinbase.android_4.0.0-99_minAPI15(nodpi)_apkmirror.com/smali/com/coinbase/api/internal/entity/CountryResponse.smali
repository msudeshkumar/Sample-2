.class public Lcom/coinbase/api/internal/entity/CountryResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "CountryResponse.java"


# instance fields
.field private _data:Lcom/coinbase/api/internal/entity/CountryInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/api/internal/entity/CountryInfo;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/CountryResponse;->_data:Lcom/coinbase/api/internal/entity/CountryInfo;

    return-object v0
.end method

.method public setData(Lcom/coinbase/api/internal/entity/CountryInfo;)V
    .locals 0
    .param p1, "_data"    # Lcom/coinbase/api/internal/entity/CountryInfo;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/CountryResponse;->_data:Lcom/coinbase/api/internal/entity/CountryInfo;

    .line 12
    return-void
.end method
