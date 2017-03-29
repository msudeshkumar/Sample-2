.class public interface abstract Lcom/coinbase/api/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# virtual methods
.method public abstract createUser(Lcom/coinbase/v1/entity/User;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveAccountId()Ljava/lang/String;
.end method

.method public abstract getActiveAccountName()Ljava/lang/String;
.end method

.method public abstract getActiveAccountUuId()Ljava/lang/String;
.end method

.method public abstract getActiveUserCountryCode()Ljava/lang/String;
.end method

.method public abstract getActiveUserEmail()Ljava/lang/String;
.end method

.method public abstract getActiveUserId()Ljava/lang/String;
.end method

.method public abstract getActiveUserReferrerId()Ljava/lang/String;
.end method

.method public abstract getAllowedPaymentMethods()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBitcoinUnits()Ljava/lang/String;
.end method

.method public abstract getClient()Lcom/coinbase/api/internal/CoinbaseInternal;
.end method

.method public abstract getFeatureFlags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;
.end method

.method public abstract getReceiveAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRedirectUri()Ljava/lang/String;
.end method

.method public abstract getTokens(Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isAllowedPaymentMethodSepa()Z
.end method

.method public abstract isInstantExchangeFlag()Z
.end method

.method public abstract isNewVerificationsPageFlag()Z
.end method

.method public abstract isSignedIn()Z
.end method

.method public abstract needToRefreshAccessToken()Z
.end method

.method public abstract refreshAccessToken()V
.end method

.method public abstract refreshUser()Z
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract signin(Lcom/coinbase/v1/entity/OAuthTokensResponse;)V
.end method

.method public abstract signout()Z
.end method
