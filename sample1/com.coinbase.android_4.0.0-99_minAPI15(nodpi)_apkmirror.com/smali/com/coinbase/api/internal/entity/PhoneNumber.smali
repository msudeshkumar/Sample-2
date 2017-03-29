.class public Lcom/coinbase/api/internal/entity/PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumber.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4439b2422756450fL


# instance fields
.field private _id:Ljava/lang/String;

.field private _number:Ljava/lang/String;

.field private _primary:Ljava/lang/Boolean;

.field private _verified:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_number:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_primary:Ljava/lang/Boolean;

    .line 28
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "verified"    # Ljava/lang/Boolean;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumber;->_verified:Ljava/lang/Boolean;

    .line 36
    return-void
.end method
