.class public Lcom/coinbase/OAuth;
.super Ljava/lang/Object;
.source "OAuth.java"


# static fields
.field private static final KEY_COINBASE_PREFERENCES:Ljava/lang/String; = "com.coinbase.android.sdk"

.field private static final KEY_LOGIN_CSRF_TOKEN:Ljava/lang/String; = "com.coinbase.android.sdk.login_csrf_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginAuthorization(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "redirectUri"    # Ljava/lang/String;
    .param p4, "meta"    # Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v3, Lcom/coinbase/v1/entity/OAuthCodeRequest;

    invoke-direct {v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest;-><init>()V

    .line 26
    .local v3, "request":Lcom/coinbase/v1/entity/OAuthCodeRequest;
    invoke-virtual {v3, p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setClientId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3, p2}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setScope(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p3}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setRedirectUri(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, p4}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setMeta(Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;)V

    .line 31
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/coinbase/Coinbase;->getAuthorizationUri(Lcom/coinbase/v1/entity/OAuthCodeRequest;)Landroid/net/Uri;

    move-result-object v1

    .line 33
    .local v1, "authorizationUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    .local v0, "androidUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "state"

    invoke-static {p0}, Lcom/coinbase/OAuth;->getLoginCSRFToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public static completeAuthorization(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/coinbase/v1/entity/OAuthTokensResponse;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "redirectUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/UnauthorizedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v5, "state"

    invoke-virtual {p3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "csrfToken":Ljava/lang/String;
    const-string v5, "code"

    invoke-virtual {p3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "authCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/coinbase/OAuth;->getLoginCSRFToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 47
    :cond_0
    new-instance v5, Lcom/coinbase/v1/exception/UnauthorizedException;

    const-string v6, "CSRF Detected!"

    invoke-direct {v5, v6}, Lcom/coinbase/v1/exception/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    :cond_1
    if-nez v0, :cond_2

    .line 49
    const-string v5, "error_description"

    invoke-virtual {p3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "errorDescription":Ljava/lang/String;
    new-instance v5, Lcom/coinbase/v1/exception/UnauthorizedException;

    invoke-direct {v5, v2}, Lcom/coinbase/v1/exception/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    .end local v2    # "errorDescription":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 54
    .local v4, "redirectUriWithoutQuery":Landroid/net/Uri;
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v0, v6}, Lcom/coinbase/Coinbase;->getTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;
    :try_end_0
    .catch Lcom/coinbase/v1/exception/CoinbaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 55
    .end local v4    # "redirectUriWithoutQuery":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 56
    .local v3, "ex":Lcom/coinbase/v1/exception/CoinbaseException;
    new-instance v5, Lcom/coinbase/v1/exception/UnauthorizedException;

    invoke-virtual {v3}, Lcom/coinbase/v1/exception/CoinbaseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/coinbase/v1/exception/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getLoginCSRFToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 62
    const-string v3, "com.coinbase.android.sdk"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "com.coinbase.android.sdk.login_csrf_token"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 66
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 67
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.coinbase.android.sdk.login_csrf_token"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
