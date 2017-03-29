.class public Lcom/coinbase/v1/entity/UserResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "UserResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x7ac9547779c11ecdL


# instance fields
.field private _oauth:Lcom/coinbase/v1/entity/OAuthTokensResponse;

.field private _user:Lcom/coinbase/v1/entity/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getOauth()Lcom/coinbase/v1/entity/OAuthTokensResponse;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/coinbase/v1/entity/UserResponse;->_oauth:Lcom/coinbase/v1/entity/OAuthTokensResponse;

    return-object v0
.end method

.method public getUser()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/coinbase/v1/entity/UserResponse;->_user:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public setOauth(Lcom/coinbase/v1/entity/OAuthTokensResponse;)V
    .locals 0
    .param p1, "oauth"    # Lcom/coinbase/v1/entity/OAuthTokensResponse;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/coinbase/v1/entity/UserResponse;->_oauth:Lcom/coinbase/v1/entity/OAuthTokensResponse;

    .line 25
    return-void
.end method

.method public setUser(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/coinbase/v1/entity/UserResponse;->_user:Lcom/coinbase/v1/entity/User;

    .line 17
    return-void
.end method
