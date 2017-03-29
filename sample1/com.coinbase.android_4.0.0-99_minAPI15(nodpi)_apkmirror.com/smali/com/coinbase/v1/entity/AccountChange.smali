.class public Lcom/coinbase/v1/entity/AccountChange;
.super Ljava/lang/Object;
.source "AccountChange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/AccountChange$Cache;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7420e103a3a28b77L


# instance fields
.field private _amount:Lorg/joda/money/Money;

.field private _cache:Lcom/coinbase/v1/entity/AccountChange$Cache;

.field private _confirmed:Ljava/lang/Boolean;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _id:Ljava/lang/String;

.field private _transaction_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange;->_amount:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getCache()Lcom/coinbase/v1/entity/AccountChange$Cache;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange;->_cache:Lcom/coinbase/v1/entity/AccountChange$Cache;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange;->_transaction_id:Ljava/lang/String;

    return-object v0
.end method

.method public isConfirmed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange;->_confirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAmount(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "amount"    # Lorg/joda/money/Money;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/coinbase/v1/deserializer/MoneyDeserializer;
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange;->_amount:Lorg/joda/money/Money;

    .line 168
    return-void
.end method

.method public setCache(Lcom/coinbase/v1/entity/AccountChange$Cache;)V
    .locals 0
    .param p1, "cache"    # Lcom/coinbase/v1/entity/AccountChange$Cache;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange;->_cache:Lcom/coinbase/v1/entity/AccountChange$Cache;

    .line 135
    return-void
.end method

.method public setConfirmed(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "confirmed"    # Ljava/lang/Boolean;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange;->_confirmed:Ljava/lang/Boolean;

    .line 143
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange;->_createdAt:Lorg/joda/time/DateTime;

    .line 159
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange;->_id:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction_id"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange;->_transaction_id:Ljava/lang/String;

    .line 176
    return-void
.end method
