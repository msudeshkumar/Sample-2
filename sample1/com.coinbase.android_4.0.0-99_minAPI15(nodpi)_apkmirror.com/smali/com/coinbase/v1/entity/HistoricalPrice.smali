.class public Lcom/coinbase/v1/entity/HistoricalPrice;
.super Ljava/lang/Object;
.source "HistoricalPrice.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x61836c78db12213bL


# instance fields
.field private _spotPrice:Lorg/joda/money/Money;

.field private _time:Lorg/joda/time/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpotPrice()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/v1/entity/HistoricalPrice;->_spotPrice:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getTime()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/coinbase/v1/entity/HistoricalPrice;->_time:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public setSpotPrice(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "spotPrice"    # Lorg/joda/money/Money;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/coinbase/v1/entity/HistoricalPrice;->_spotPrice:Lorg/joda/money/Money;

    .line 30
    return-void
.end method

.method public setTime(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "time"    # Lorg/joda/time/DateTime;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/coinbase/v1/entity/HistoricalPrice;->_time:Lorg/joda/time/DateTime;

    .line 22
    return-void
.end method
