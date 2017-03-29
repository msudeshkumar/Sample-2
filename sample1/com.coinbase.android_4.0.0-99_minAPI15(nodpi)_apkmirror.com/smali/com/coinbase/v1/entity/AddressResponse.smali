.class public Lcom/coinbase/v1/entity/AddressResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "AddressResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x15a126d61a3a70faL


# instance fields
.field private _address:Ljava/lang/String;

.field private _callbackUrl:Ljava/lang/String;

.field private _label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/AddressResponse;->_address:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/v1/entity/AddressResponse;->_callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/v1/entity/AddressResponse;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/AddressResponse;->_address:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/coinbase/v1/entity/AddressResponse;->_callbackUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/v1/entity/AddressResponse;->_label:Ljava/lang/String;

    .line 34
    return-void
.end method
