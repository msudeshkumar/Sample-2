.class public Lcom/coinbase/api/internal/entity/PhoneNumberRequest;
.super Ljava/lang/Object;
.source "PhoneNumberRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _country:Ljava/lang/String;

.field private _number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumberRequest;->_country:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumberRequest;->_number:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumberRequest;->_country:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumberRequest;->_number:Ljava/lang/String;

    .line 23
    return-void
.end method
