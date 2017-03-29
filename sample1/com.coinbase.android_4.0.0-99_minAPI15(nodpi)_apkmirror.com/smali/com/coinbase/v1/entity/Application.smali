.class public Lcom/coinbase/v1/entity/Application;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7c9dafd0564810e7L


# instance fields
.field private _clientId:Ljava/lang/String;

.field private _clientSecret:Ljava/lang/String;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _id:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _numUsers:Ljava/lang/Integer;

.field private _redirectUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/coinbase/v1/entity/Application;->_clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/v1/entity/Application;->_clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/v1/entity/Application;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/v1/entity/Application;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/coinbase/v1/entity/Application;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumUsers()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/coinbase/v1/entity/Application;->_numUsers:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/coinbase/v1/entity/Application;->_redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/coinbase/v1/entity/Application;->_clientId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/coinbase/v1/entity/Application;->_clientSecret:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/v1/entity/Application;->_createdAt:Lorg/joda/time/DateTime;

    .line 34
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/coinbase/v1/entity/Application;->_id:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/coinbase/v1/entity/Application;->_name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNumUsers(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "numUsers"    # Ljava/lang/Integer;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/coinbase/v1/entity/Application;->_numUsers:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/v1/entity/Application;->_redirectUri:Ljava/lang/String;

    .line 50
    return-void
.end method
