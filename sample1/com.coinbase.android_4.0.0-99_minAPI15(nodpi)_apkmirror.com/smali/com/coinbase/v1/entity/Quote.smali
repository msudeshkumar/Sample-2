.class public Lcom/coinbase/v1/entity/Quote;
.super Ljava/lang/Object;
.source "Quote.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4295bae0304f3537L


# instance fields
.field private _btc:Lorg/joda/money/Money;

.field private _fees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;"
        }
    .end annotation
.end field

.field private _payout_date:Lorg/joda/time/DateTime;

.field private _subtotal:Lorg/joda/money/Money;

.field private _total:Lorg/joda/money/Money;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtc()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/v1/entity/Quote;->_btc:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getFees()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/v1/entity/Quote;->_fees:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPayoutDate()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/coinbase/v1/entity/Quote;->_payout_date:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getSubtotal()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/coinbase/v1/entity/Quote;->_subtotal:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getTotal()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/coinbase/v1/entity/Quote;->_total:Lorg/joda/money/Money;

    return-object v0
.end method

.method public setBtc(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "btc"    # Lorg/joda/money/Money;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/coinbase/v1/entity/Quote;->_btc:Lorg/joda/money/Money;

    .line 30
    return-void
.end method

.method public setFees(Ljava/util/HashMap;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/FeesCollector;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "fees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/joda/money/Money;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/Quote;->_fees:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public setPayoutDate(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "payout_date"    # Lorg/joda/time/DateTime;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/coinbase/v1/entity/Quote;->_payout_date:Lorg/joda/time/DateTime;

    .line 63
    return-void
.end method

.method public setSubtotal(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "subtotal"    # Lorg/joda/money/Money;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/coinbase/v1/entity/Quote;->_subtotal:Lorg/joda/money/Money;

    .line 38
    return-void
.end method

.method public setTotal(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "total"    # Lorg/joda/money/Money;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/coinbase/v1/entity/Quote;->_total:Lorg/joda/money/Money;

    .line 46
    return-void
.end method
