.class public Lcom/coinbase/v1/entity/OAuthCodeRequest;
.super Ljava/lang/Object;
.source "OAuthCodeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33953789c614a7fcL


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private meta:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;

.field private password:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field private referrerId:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->meta:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->referrerId:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->clientId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->clientSecret:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setMeta(Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;)V
    .locals 0
    .param p1, "meta"    # Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->meta:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;

    .line 154
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->password:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->redirectUri:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setReferrerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->referrerId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->scope:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->token:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest;->username:Ljava/lang/String;

    .line 114
    return-void
.end method
