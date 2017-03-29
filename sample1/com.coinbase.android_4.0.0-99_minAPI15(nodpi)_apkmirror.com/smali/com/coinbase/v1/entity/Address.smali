.class public Lcom/coinbase/v1/entity/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1ebf3c0a0fa72fc8L


# instance fields
.field private _address:Ljava/lang/String;

.field private _callbackUrl:Ljava/lang/String;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/coinbase/v1/entity/Address;->_address:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/coinbase/v1/entity/Address;->_callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/v1/entity/Address;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/coinbase/v1/entity/Address;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/coinbase/v1/entity/Address;->_address:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/v1/entity/Address;->_callbackUrl:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/coinbase/v1/entity/Address;->_createdAt:Lorg/joda/time/DateTime;

    .line 48
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/coinbase/v1/entity/Address;->_label:Ljava/lang/String;

    .line 40
    return-void
.end method
