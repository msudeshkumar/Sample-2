.class public Lcom/coinbase/v1/entity/ResidentialAddress;
.super Ljava/lang/Object;
.source "ResidentialAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x612d440645994742L


# instance fields
.field _address1:Ljava/lang/String;

.field _address2:Ljava/lang/String;

.field _address3:Ljava/lang/String;

.field _city:Ljava/lang/String;

.field _postalCode:Ljava/lang/String;

.field _state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_address3:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_city:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_state:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "address1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_address1:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "address2"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_address2:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setAddress3(Ljava/lang/String;)V
    .locals 0
    .param p1, "address3"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_address3:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_city:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_postalCode:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResidentialAddress;->_state:Ljava/lang/String;

    .line 54
    return-void
.end method
