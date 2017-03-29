.class public Lcom/coinbase/api/internal/entity/CountryInfo;
.super Ljava/lang/Object;
.source "CountryInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/CountryInfo;->_currency:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/CountryInfo;->_currency:Ljava/lang/String;

    .line 17
    return-void
.end method
