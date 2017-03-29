.class public Lcom/coinbase/CoinbaseBuilder;
.super Ljava/lang/Object;
.source "CoinbaseBuilder.java"


# instance fields
.field access_token:Ljava/lang/String;

.field acct_id:Ljava/lang/String;

.field api_key:Ljava/lang/String;

.field api_secret:Ljava/lang/String;

.field base_api_url:Ljava/net/URL;

.field base_oauth_url:Ljava/net/URL;

.field callback_verifier:Lcom/coinbase/CallbackVerifier;

.field ssl_context:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/coinbase/Coinbase;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/coinbase/Coinbase;

    invoke-direct {v0, p0}, Lcom/coinbase/Coinbase;-><init>(Lcom/coinbase/CoinbaseBuilder;)V

    return-object v0
.end method

.method public withAccessToken(Ljava/lang/String;)Lcom/coinbase/CoinbaseBuilder;
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/coinbase/CoinbaseBuilder;->access_token:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/coinbase/CoinbaseBuilder;
    .locals 0
    .param p1, "acct_id"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/coinbase/CoinbaseBuilder;->acct_id:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public withApiKey(Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/CoinbaseBuilder;
    .locals 0
    .param p1, "api_key"    # Ljava/lang/String;
    .param p2, "api_secret"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/coinbase/CoinbaseBuilder;->api_key:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/coinbase/CoinbaseBuilder;->api_secret:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public withBaseApiURL(Ljava/net/URL;)Lcom/coinbase/CoinbaseBuilder;
    .locals 0
    .param p1, "base_api_url"    # Ljava/net/URL;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/coinbase/CoinbaseBuilder;->base_api_url:Ljava/net/URL;

    .line 105
    return-object p0
.end method

.method public withBaseOAuthURL(Ljava/net/URL;)Lcom/coinbase/CoinbaseBuilder;
    .locals 0
    .param p1, "base_oauth_url"    # Ljava/net/URL;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/coinbase/CoinbaseBuilder;->base_oauth_url:Ljava/net/URL;

    .line 119
    return-object p0
.end method

.method public withCallbackVerifier(Lcom/coinbase/CallbackVerifier;)Lcom/coinbase/CoinbaseBuilder;
    .locals 0
    .param p1, "callback_verifier"    # Lcom/coinbase/CallbackVerifier;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/coinbase/CoinbaseBuilder;->callback_verifier:Lcom/coinbase/CallbackVerifier;

    .line 79
    return-object p0
.end method

.method public withSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/coinbase/CoinbaseBuilder;
    .locals 0
    .param p1, "ssl_context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/CoinbaseBuilder;->ssl_context:Ljavax/net/ssl/SSLContext;

    .line 91
    return-object p0
.end method
