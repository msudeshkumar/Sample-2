.class public Lcom/coinbase/v1/entity/OAuthTokensResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "OAuthTokensResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x59403d9492fc3e92L


# instance fields
.field private _accessToken:Ljava/lang/String;

.field private _expireIn:Ljava/lang/Integer;

.field private _refreshToken:Ljava/lang/String;

.field private _scope:Ljava/lang/String;

.field private _tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireIn()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_expireIn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_scope:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_accessToken:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setExpireIn(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "expireIn"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_expireIn:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_refreshToken:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_scope:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenType"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthTokensResponse;->_tokenType:Ljava/lang/String;

    .line 34
    return-void
.end method
