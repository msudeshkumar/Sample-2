.class public Lcom/coinbase/v1/entity/OAuthTokensRequest;
.super Ljava/lang/Object;
.source "OAuthTokensRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x119584ec277c8b13L


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private grantType:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

.field private redirectUri:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->grantType:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->clientId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->clientSecret:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->code:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setGrantType(Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;)V
    .locals 0
    .param p1, "grantType"    # Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->grantType:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    .line 62
    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->redirectUri:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest;->refreshToken:Ljava/lang/String;

    .line 70
    return-void
.end method
