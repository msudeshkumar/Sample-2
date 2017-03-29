.class public Lcom/coinbase/Coinbase;
.super Ljava/lang/Object;
.source "Coinbase.java"


# static fields
.field protected static _instance:Lcom/coinbase/Coinbase;

.field protected static final objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field protected _accessToken:Ljava/lang/String;

.field protected _accountId:Ljava/lang/String;

.field protected _apiKey:Ljava/lang/String;

.field protected _apiSecret:Ljava/lang/String;

.field protected _baseApiUrl:Ljava/net/URL;

.field protected _baseOAuthUrl:Ljava/net/URL;

.field protected _baseV2ApiUrl:Ljava/net/URL;

.field protected _callbackVerifier:Lcom/coinbase/CallbackVerifier;

.field protected _client:Lcom/squareup/okhttp/OkHttpClient;

.field protected _context:Landroid/content/Context;

.field protected _socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field protected _sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/coinbase/ObjectMapperProvider;->createDefaultMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    sput-object v0, Lcom/coinbase/Coinbase;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/coinbase/Coinbase;->_instance:Lcom/coinbase/Coinbase;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1e

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://coinbase.com/api/v1/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    .line 131
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.coinbase.com/oauth/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    .line 132
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/coinbase/ApiConstants;->BASE_URL_PRODUCTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/coinbase/ApiConstants;->SERVER_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseV2ApiUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    invoke-static {}, Lcom/coinbase/CoinbaseSSL;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    .line 138
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 139
    new-instance v1, Lcom/coinbase/CallbackVerifierImpl;

    invoke-direct {v1}, Lcom/coinbase/CallbackVerifierImpl;-><init>()V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_callbackVerifier:Lcom/coinbase/CallbackVerifier;

    .line 141
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    .line 144
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 147
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 149
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 150
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 152
    :cond_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/coinbase/CoinbaseBuilder;)V
    .locals 5
    .param p1, "builder"    # Lcom/coinbase/CoinbaseBuilder;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->base_api_url:Ljava/net/URL;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    .line 183
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->base_oauth_url:Ljava/net/URL;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    .line 184
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->api_key:Ljava/lang/String;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_apiKey:Ljava/lang/String;

    .line 185
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->api_secret:Ljava/lang/String;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_apiSecret:Ljava/lang/String;

    .line 186
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->access_token:Ljava/lang/String;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    .line 187
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->acct_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    .line 188
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->ssl_context:Ljavax/net/ssl/SSLContext;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    .line 189
    iget-object v1, p1, Lcom/coinbase/CoinbaseBuilder;->callback_verifier:Lcom/coinbase/CallbackVerifier;

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_callbackVerifier:Lcom/coinbase/CallbackVerifier;

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://coinbase.com/api/v1/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    if-nez v1, :cond_1

    .line 196
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.coinbase.com/oauth/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_baseV2ApiUrl:Ljava/net/URL;

    if-nez v1, :cond_2

    .line 199
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://api.coinbase.com/v2/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_baseV2ApiUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_2
    :try_start_1
    const-string v1, "BTC"

    const/4 v2, -0x1

    const/16 v3, 0x8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lorg/joda/money/CurrencyUnit;->registerCurrency(Ljava/lang/String;IILjava/util/List;)Lorg/joda/money/CurrencyUnit;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_callbackVerifier:Lcom/coinbase/CallbackVerifier;

    if-nez v1, :cond_3

    .line 219
    new-instance v1, Lcom/coinbase/CallbackVerifierImpl;

    invoke-direct {v1}, Lcom/coinbase/CallbackVerifierImpl;-><init>()V

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_callbackVerifier:Lcom/coinbase/CallbackVerifier;

    .line 221
    :cond_3
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 214
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/coinbase/CoinbaseSSL;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    .line 215
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/Coinbase;->_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    .line 208
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/coinbase/Coinbase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/Coinbase;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/coinbase/Coinbase;->getPackageVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1453
    .local p1, "typeReference":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;"
    sget-object v0, Lcom/coinbase/Coinbase;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1449
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/coinbase/Coinbase;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/coinbase/Coinbase;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/coinbase/Coinbase;->_instance:Lcom/coinbase/Coinbase;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/coinbase/Coinbase;

    invoke-direct {v0}, Lcom/coinbase/Coinbase;-><init>()V

    sput-object v0, Lcom/coinbase/Coinbase;->_instance:Lcom/coinbase/Coinbase;

    .line 177
    :cond_0
    sget-object v0, Lcom/coinbase/Coinbase;->_instance:Lcom/coinbase/Coinbase;

    return-object v0
.end method

.method private getPackageVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1568
    const-string v0, ""

    .line 1569
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ""

    .line 1571
    .local v1, "versionName":Ljava/lang/String;
    iget-object v2, p0, Lcom/coinbase/Coinbase;->_context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/coinbase/Coinbase;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1576
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/coinbase/Coinbase;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1577
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected static handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1477
    .local p0, "response":Lcom/coinbase/v1/entity/Response;, "TT;"
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/Response;->getErrors()Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "errors":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1479
    const-string v1, "device_confirmation_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1480
    new-instance v1, Lcom/coinbase/v1/exception/UnauthorizedDeviceException;

    invoke-direct {v1}, Lcom/coinbase/v1/exception/UnauthorizedDeviceException;-><init>()V

    throw v1

    .line 1481
    :cond_0
    const-string v1, "2fa_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1482
    new-instance v1, Lcom/coinbase/v1/exception/TwoFactorRequiredException;

    invoke-direct {v1}, Lcom/coinbase/v1/exception/TwoFactorRequiredException;-><init>()V

    throw v1

    .line 1483
    :cond_1
    const-string v1, "2fa_incorrect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1484
    new-instance v1, Lcom/coinbase/v1/exception/TwoFactorIncorrectException;

    invoke-direct {v1}, Lcom/coinbase/v1/exception/TwoFactorIncorrectException;-><init>()V

    throw v1

    .line 1485
    :cond_2
    const-string v1, "incorrect_credentials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1486
    new-instance v1, Lcom/coinbase/v1/exception/CredentialsIncorrectException;

    invoke-direct {v1}, Lcom/coinbase/v1/exception/CredentialsIncorrectException;-><init>()V

    throw v1

    .line 1488
    :cond_3
    new-instance v1, Lcom/coinbase/v1/exception/CoinbaseException;

    invoke-virtual {p0}, Lcom/coinbase/v1/entity/Response;->getErrors()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1491
    :cond_4
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/Response;->isSuccess()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/coinbase/v1/entity/Response;->isSuccess()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1492
    new-instance v1, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v2, "Unknown error"

    invoke-direct {v1, v2}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1495
    :cond_5
    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v0

    iput-object p1, v0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v0

    iput-object p0, v0, Lcom/coinbase/Coinbase;->_context:Landroid/content/Context;

    .line 164
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "apiSecret"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v0

    iput-object p1, v0, Lcom/coinbase/Coinbase;->_apiKey:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v0

    iput-object p2, v0, Lcom/coinbase/Coinbase;->_apiSecret:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v0

    iput-object p0, v0, Lcom/coinbase/Coinbase;->_context:Landroid/content/Context;

    .line 158
    return-void
.end method


# virtual methods
.method protected buildHmacAuthInterceptor()Lcom/squareup/okhttp/Interceptor;
    .locals 1

    .prologue
    .line 1529
    new-instance v0, Lcom/coinbase/Coinbase$4;

    invoke-direct {v0, p0}, Lcom/coinbase/Coinbase$4;-><init>(Lcom/coinbase/Coinbase;)V

    return-object v0
.end method

.method protected buildOAuthInterceptor()Lcom/squareup/okhttp/Interceptor;
    .locals 1

    .prologue
    .line 1515
    new-instance v0, Lcom/coinbase/Coinbase$3;

    invoke-direct {v0, p0}, Lcom/coinbase/Coinbase$3;-><init>(Lcom/coinbase/Coinbase;)V

    return-object v0
.end method

.method protected buildVersionInterceptor()Lcom/squareup/okhttp/Interceptor;
    .locals 1

    .prologue
    .line 1586
    new-instance v0, Lcom/coinbase/Coinbase$5;

    invoke-direct {v0, p0}, Lcom/coinbase/Coinbase$5;-><init>(Lcom/coinbase/Coinbase;)V

    return-object v0
.end method

.method public buy(Lorg/joda/money/Money;)Lcom/coinbase/v1/entity/Transfer;
    .locals 1
    .param p1, "amount"    # Lorg/joda/money/Money;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coinbase/Coinbase;->buy(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Transfer;

    move-result-object v0

    return-object v0
.end method

.method public buy(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Transfer;
    .locals 1
    .param p1, "amount"    # Lorg/joda/money/Money;
    .param p2, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coinbase/Coinbase;->buy(Lorg/joda/money/Money;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/coinbase/v1/entity/Transfer;

    move-result-object v0

    return-object v0
.end method

.method public buy(Lorg/joda/money/Money;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/coinbase/v1/entity/Transfer;
    .locals 6
    .param p1, "amount"    # Lorg/joda/money/Money;
    .param p2, "paymentMethodId"    # Ljava/lang/String;
    .param p3, "commit"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "buys"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .local v0, "buysUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v2

    .line 621
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coinbase/v1/entity/Request;->setQty(Ljava/lang/Double;)V

    .line 622
    invoke-virtual {v2, p2}, Lcom/coinbase/v1/entity/Request;->setPaymentMethodId(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coinbase/v1/entity/Request;->setCurrency(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v2, p3}, Lcom/coinbase/v1/entity/Request;->setCommit(Ljava/lang/Boolean;)V

    .line 626
    const-class v3, Lcom/coinbase/v1/entity/TransferResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/TransferResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/TransferResponse;->getTransfer()Lcom/coinbase/v1/entity/Transfer;

    move-result-object v3

    return-object v3

    .line 616
    .end local v0    # "buysUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v1

    .line 617
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public buyBitcoin(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2121
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2122
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->buyBitcoin(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2123
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$23;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$23;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2137
    return-object v1
.end method

.method public cancelRequest(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2005
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2006
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->cancelRequest(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 2007
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$19;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$19;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2021
    return-object v1
.end method

.method public commitBuyBitcoin(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "buyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2151
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2152
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->commitBuyBitcoin(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 2154
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$24;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$24;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2168
    return-object v1
.end method

.method public commitDeposit(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "depositId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2330
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2331
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->commitDeposit(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 2333
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$30;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$30;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2347
    return-object v1
.end method

.method public commitSellBitcoin(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "sellId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2211
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2212
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->commitSellBitcoin(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 2214
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$26;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$26;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2228
    return-object v1
.end method

.method public commitTransfer(Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/Transfer;
    .locals 6
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transfers/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/commit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .local v0, "commitUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 639
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setAccountId(Ljava/lang/String;)V

    .line 641
    const-class v3, Lcom/coinbase/v1/entity/TransferResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/TransferResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/TransferResponse;->getTransfer()Lcom/coinbase/v1/entity/Transfer;

    move-result-object v3

    return-object v3

    .line 634
    .end local v0    # "commitUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v1

    .line 635
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "Invalid transaction id"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public commitWithdraw(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "withdrawId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2390
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2391
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->commitWithdraw(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 2393
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$32;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$32;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2407
    return-object v1
.end method

.method public completeRequest(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transactions/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/complete_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .local v0, "completeRequestUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v2

    const-class v3, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->put(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/TransactionResponse;->getTransaction()Lcom/coinbase/v1/entity/Transaction;

    move-result-object v2

    return-object v2

    .line 509
    .end local v0    # "completeRequestUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 510
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid transaction id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public completeRequest(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1947
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1948
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->completeRequest(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 1949
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$17;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$17;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1963
    return-object v1
.end method

.method public createAccount(Lcom/coinbase/v1/entity/Account;)Lcom/coinbase/v1/entity/Account;
    .locals 5
    .param p1, "account"    # Lcom/coinbase/v1/entity/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "accounts"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .local v0, "accountsUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 346
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setAccount(Lcom/coinbase/v1/entity/Account;)V

    .line 348
    const-class v3, Lcom/coinbase/v1/entity/AccountResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/AccountResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/AccountResponse;->getAccount()Lcom/coinbase/v1/entity/Account;

    move-result-object v3

    return-object v3

    .line 341
    .end local v0    # "accountsUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createAccount(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/account/Account;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/account/Account;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1773
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->createAccount(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1774
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$11;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$11;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1788
    return-object v1
.end method

.method public createApplication(Lcom/coinbase/v1/entity/Application;)Lcom/coinbase/v1/entity/Application;
    .locals 5
    .param p1, "applicationParams"    # Lcom/coinbase/v1/entity/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "oauth/applications"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    .local v0, "applicationsUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 1084
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setApplication(Lcom/coinbase/v1/entity/Application;)V

    .line 1086
    const-class v3, Lcom/coinbase/v1/entity/ApplicationResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/ApplicationResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/ApplicationResponse;->getApplication()Lcom/coinbase/v1/entity/Application;

    move-result-object v3

    return-object v3

    .line 1079
    .end local v0    # "applicationsUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createButton(Lcom/coinbase/v1/entity/Button;)Lcom/coinbase/v1/entity/Button;
    .locals 5
    .param p1, "button"    # Lcom/coinbase/v1/entity/Button;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "buttons"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .local v0, "buttonsUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v2

    .line 825
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setButton(Lcom/coinbase/v1/entity/Button;)V

    .line 827
    const-class v3, Lcom/coinbase/v1/entity/ButtonResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/ButtonResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/ButtonResponse;->getButton()Lcom/coinbase/v1/entity/Button;

    move-result-object v3

    return-object v3

    .line 820
    .end local v0    # "buttonsUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v1

    .line 821
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createOrder(Lcom/coinbase/v1/entity/Button;)Lcom/coinbase/v1/entity/Order;
    .locals 5
    .param p1, "button"    # Lcom/coinbase/v1/entity/Button;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "orders"

    invoke-direct {v1, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .local v1, "ordersUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v2

    .line 840
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setButton(Lcom/coinbase/v1/entity/Button;)V

    .line 842
    const-class v3, Lcom/coinbase/v1/entity/OrderResponse;

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/OrderResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OrderResponse;->getOrder()Lcom/coinbase/v1/entity/Order;

    move-result-object v3

    return-object v3

    .line 835
    .end local v1    # "ordersUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v0

    .line 836
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createOrderForButton(Ljava/lang/String;)Lcom/coinbase/v1/entity/Order;
    .locals 5
    .param p1, "buttonCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buttons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/create_order"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .local v0, "createOrderForButtonUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    const-class v3, Lcom/coinbase/v1/entity/OrderResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/OrderResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/OrderResponse;->getOrder()Lcom/coinbase/v1/entity/Order;

    move-result-object v2

    return-object v2

    .line 850
    .end local v0    # "createOrderForButtonUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 851
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid button code"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createReport(Lcom/coinbase/v1/entity/Report;)Lcom/coinbase/v1/entity/Report;
    .locals 5
    .param p1, "reportParams"    # Lcom/coinbase/v1/entity/Report;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1115
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "reports"

    invoke-direct {v1, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    .local v1, "reportsUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v2

    .line 1121
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setReport(Lcom/coinbase/v1/entity/Report;)V

    .line 1123
    const-class v3, Lcom/coinbase/v1/entity/ReportResponse;

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/ReportResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/ReportResponse;->getReport()Lcom/coinbase/v1/entity/Report;

    move-result-object v3

    return-object v3

    .line 1116
    .end local v1    # "reportsUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createToken()Lcom/coinbase/v1/entity/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1051
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v3, "tokens"

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    .local v1, "tokensUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    const-class v3, Lcom/coinbase/v1/entity/TokenResponse;

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/TokenResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/TokenResponse;->getToken()Lcom/coinbase/v1/entity/Token;

    move-result-object v2

    return-object v2

    .line 1052
    .end local v1    # "tokensUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public createUser(Lcom/coinbase/v1/entity/User;)Lcom/coinbase/v1/entity/User;
    .locals 5
    .param p1, "userParams"    # Lcom/coinbase/v1/entity/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    .local v2, "usersUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 993
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/Request;->setUser(Lcom/coinbase/v1/entity/User;)V

    .line 995
    const-class v3, Lcom/coinbase/v1/entity/UserResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/UserResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/UserResponse;->getUser()Lcom/coinbase/v1/entity/User;

    move-result-object v3

    return-object v3

    .line 988
    .end local v1    # "request":Lcom/coinbase/v1/entity/Request;
    .end local v2    # "usersUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 989
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createUser(Lcom/coinbase/v1/entity/User;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/User;
    .locals 5
    .param p1, "userParams"    # Lcom/coinbase/v1/entity/User;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .local v2, "usersUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 1008
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/Request;->setUser(Lcom/coinbase/v1/entity/User;)V

    .line 1009
    invoke-virtual {v1, p3}, Lcom/coinbase/v1/entity/Request;->setScopes(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v1, p2}, Lcom/coinbase/v1/entity/Request;->setClientId(Ljava/lang/String;)V

    .line 1012
    const-class v3, Lcom/coinbase/v1/entity/UserResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/UserResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/UserResponse;->getUser()Lcom/coinbase/v1/entity/User;

    move-result-object v3

    return-object v3

    .line 1003
    .end local v1    # "request":Lcom/coinbase/v1/entity/Request;
    .end local v2    # "usersUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createUserWithOAuth(Lcom/coinbase/v1/entity/User;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/UserResponse;
    .locals 5
    .param p1, "userParams"    # Lcom/coinbase/v1/entity/User;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    .local v2, "usersUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 1025
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/Request;->setUser(Lcom/coinbase/v1/entity/User;)V

    .line 1026
    invoke-virtual {v1, p3}, Lcom/coinbase/v1/entity/Request;->setScopes(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v1, p2}, Lcom/coinbase/v1/entity/Request;->setClientId(Ljava/lang/String;)V

    .line 1029
    const-class v3, Lcom/coinbase/v1/entity/UserResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/UserResponse;

    return-object v3

    .line 1020
    .end local v1    # "request":Lcom/coinbase/v1/entity/Request;
    .end local v2    # "usersUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected delete(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    .local p2, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "DELETE"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Response;

    invoke-static {v0}, Lcom/coinbase/Coinbase;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method

.method public deleteAccount(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1854
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1855
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->deleteAccount(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 1856
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$14;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$14;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1870
    return-object v1
.end method

.method public deleteAccount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->deleteAccount(Ljava/lang/String;)V

    .line 325
    return-void

    .line 323
    :cond_0
    new-instance v0, Lcom/coinbase/v1/exception/UnspecifiedAccount;

    invoke-direct {v0}, Lcom/coinbase/v1/exception/UnspecifiedAccount;-><init>()V

    throw v0
.end method

.method public deleteAccount(Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .local v0, "accountUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->delete(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 307
    return-void

    .line 303
    .end local v0    # "accountUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deletePaymentMethod(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseV2ApiUrl:Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "payment-methods/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .local v0, "deleteURL":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v2

    .line 897
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "DELETE"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;

    .line 898
    return-void

    .line 891
    .end local v0    # "deleteURL":Ljava/net/URL;
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 892
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public deleteRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transactions/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cancel_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .local v0, "cancelRequestUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->delete(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 502
    return-void

    .line 498
    .end local v0    # "cancelRequestUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 499
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid transaction id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public depositFunds(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2300
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2301
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->depositFunds(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2302
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$29;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$29;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2316
    return-object v1
.end method

.method protected doAccessTokenAuthentication(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 3
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 1359
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method protected doHmacAuthentication(Ljava/net/URL;Ljava/lang/String;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1341
    .local v2, "nonce":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_0

    .end local p2    # "body":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1345
    .local v0, "mac":Ljavax/crypto/Mac;
    :try_start_0
    const-string v5, "HmacSHA256"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1346
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Lcom/coinbase/Coinbase;->_apiSecret:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "HmacSHA256"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    .line 1353
    .local v3, "signature":Ljava/lang/String;
    const-string v5, "ACCESS_KEY"

    iget-object v6, p0, Lcom/coinbase/Coinbase;->_apiKey:Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v5, "ACCESS_SIGNATURE"

    invoke-virtual {p3, v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v5, "ACCESS_NONCE"

    invoke-virtual {p3, v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    return-void

    .line 1341
    .end local v0    # "mac":Ljavax/crypto/Mac;
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "signature":Ljava/lang/String;
    .restart local p2    # "body":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 1347
    .end local p2    # "body":Ljava/lang/String;
    .restart local v0    # "mac":Ljavax/crypto/Mac;
    .restart local v1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1348
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 17
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1367
    .local p4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    .line 1368
    .local v14, "urlConnection":Ljava/net/URLConnection;
    instance-of v15, v14, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v15, :cond_0

    .line 1369
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Custom Base URL must return javax.net.ssl.HttpsURLConnection on openConnection."

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    move-object v4, v14

    .line 1372
    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 1373
    .local v4, "conn":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/Coinbase;->_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v4, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1374
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1376
    const/4 v2, 0x0

    .line 1377
    .local v2, "body":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 1378
    sget-object v15, Lcom/coinbase/Coinbase;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1379
    const-string v15, "Content-Type"

    const-string v16, "application/json"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 1383
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/coinbase/Coinbase;->doAccessTokenAuthentication(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 1388
    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    .line 1389
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1390
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v4, v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1384
    .end local v11    # "key":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/Coinbase;->_apiKey:Ljava/lang/String;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/Coinbase;->_apiSecret:Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 1385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/coinbase/Coinbase;->doHmacAuthentication(Ljava/net/URL;Ljava/lang/String;Ljavax/net/ssl/HttpsURLConnection;)V

    goto :goto_0

    .line 1394
    :cond_4
    if-eqz v2, :cond_5

    .line 1395
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 1396
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 1398
    .local v12, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    const-string v15, "UTF-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 1404
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    const/4 v10, 0x0

    .line 1405
    .local v10, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1407
    .local v7, "es":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1408
    const-string v15, "UTF-8"

    invoke-static {v10, v15}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 1437
    .local v13, "str":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 1438
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1441
    :cond_6
    if-eqz v7, :cond_7

    .line 1442
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7
    return-object v13

    .line 1400
    .end local v7    # "es":Ljava/io/InputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "str":Ljava/lang/String;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v15

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    throw v15

    .line 1410
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "es":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 1411
    .local v5, "e":Ljava/io/IOException;
    const/16 v15, 0x192

    :try_start_2
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1412
    new-instance v15, Lcom/coinbase/v1/exception/TwoFactorRequiredException;

    invoke-direct {v15}, Lcom/coinbase/v1/exception/TwoFactorRequiredException;-><init>()V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1437
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    if-eqz v10, :cond_8

    .line 1438
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1441
    :cond_8
    if-eqz v7, :cond_9

    .line 1442
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v15

    .line 1414
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_3
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1415
    const/4 v6, 0x0

    .line 1416
    .local v6, "errorBody":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 1417
    const-string v15, "UTF-8"

    invoke-static {v7, v15}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1418
    if-eqz v6, :cond_b

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "json"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v15

    if-eqz v15, :cond_b

    .line 1421
    :try_start_4
    const-class v15, Lcom/coinbase/v1/entity/ResponseV1;

    invoke-static {v6, v15}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/Response;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1429
    .local v3, "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    :goto_2
    :try_start_5
    invoke-static {v3}, Lcom/coinbase/Coinbase;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    .line 1432
    .end local v3    # "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    :cond_b
    const/16 v15, 0x191

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 1433
    new-instance v15, Lcom/coinbase/v1/exception/UnauthorizedException;

    invoke-direct {v15, v6}, Lcom/coinbase/v1/exception/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1422
    :catch_1
    move-exception v8

    .line 1424
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_6
    const-class v15, Lcom/coinbase/v1/entity/ResponseV2;

    invoke-static {v6, v15}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/Response;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v3    # "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    goto :goto_2

    .line 1425
    .end local v3    # "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    :catch_2
    move-exception v9

    .line 1426
    .local v9, "ex1":Ljava/lang/Exception;
    :try_start_7
    new-instance v15, Lcom/coinbase/v1/exception/CoinbaseException;

    invoke-direct {v15, v6}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1435
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v9    # "ex1":Ljava/lang/Exception;
    :cond_c
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public generateAddress(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/address/Address;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2272
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/address/Address;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2273
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->generateAddress(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 2274
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$28;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$28;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2287
    return-object v1
.end method

.method public generateReceiveAddress()Lcom/coinbase/v1/entity/AddressResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->generateReceiveAddress(Lcom/coinbase/v1/entity/Address;)Lcom/coinbase/v1/entity/AddressResponse;

    move-result-object v0

    return-object v0
.end method

.method public generateReceiveAddress(Lcom/coinbase/v1/entity/Address;)Lcom/coinbase/v1/entity/AddressResponse;
    .locals 5
    .param p1, "addressParams"    # Lcom/coinbase/v1/entity/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "account/generate_receive_address"

    invoke-direct {v1, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    .local v1, "generateAddressUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v2

    .line 973
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setAddress(Lcom/coinbase/v1/entity/Address;)V

    .line 975
    const-class v3, Lcom/coinbase/v1/entity/AddressResponse;

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/AddressResponse;

    return-object v3

    .line 968
    .end local v1    # "generateAddressUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v0

    .line 969
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1457
    .local p2, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1461
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Response;

    invoke-static {v0}, Lcom/coinbase/Coinbase;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method

.method public getAccount(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/account/Account;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1715
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/account/Account;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1716
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->getAccount(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 1717
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$9;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$9;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1731
    return-object v1
.end method

.method public getAccountChanges()Lcom/coinbase/v1/entity/AccountChangesResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getAccountChanges(I)Lcom/coinbase/v1/entity/AccountChangesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAccountChanges(I)Lcom/coinbase/v1/entity/AccountChangesResponse;
    .locals 6
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1165
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_changes?page="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    .local v0, "accountChangesUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/AccountChangesResponse;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/AccountChangesResponse;

    return-object v2

    .line 1165
    .end local v0    # "accountChangesUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v1

    .line 1171
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAccounts()Lcom/coinbase/v1/entity/AccountsResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x1

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/coinbase/Coinbase;->getAccounts(IIZ)Lcom/coinbase/v1/entity/AccountsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts(I)Lcom/coinbase/v1/entity/AccountsResponse;
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 241
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/coinbase/Coinbase;->getAccounts(IIZ)Lcom/coinbase/v1/entity/AccountsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts(II)Lcom/coinbase/v1/entity/AccountsResponse;
    .locals 1
    .param p1, "page"    # I
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coinbase/Coinbase;->getAccounts(IIZ)Lcom/coinbase/v1/entity/AccountsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts(IIZ)Lcom/coinbase/v1/entity/AccountsResponse;
    .locals 5
    .param p1, "page"    # I
    .param p2, "limit"    # I
    .param p3, "includeInactive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts?&page="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&limit="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&all_accounts="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, "accountsUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/AccountsResponse;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/AccountsResponse;

    return-object v2

    .line 253
    .end local v0    # "accountsUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, "false"
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getAccounts(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/account/Accounts;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1743
    .local p1, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/account/Accounts;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1745
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->getAccounts(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v1

    .line 1746
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$10;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$10;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1760
    return-object v1
.end method

.method public getAddresses()Lcom/coinbase/v1/entity/AddressesResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 692
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getAddresses(I)Lcom/coinbase/v1/entity/AddressesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAddresses(I)Lcom/coinbase/v1/entity/AddressesResponse;
    .locals 6
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 679
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addresses?page="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .local v0, "addressesUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/AddressesResponse;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/AddressesResponse;

    return-object v2

    .line 679
    .end local v0    # "addressesUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getApiService()Lcom/coinbase/ApiInterface;
    .locals 5

    .prologue
    .line 1615
    iget-object v3, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1617
    iget-object v3, p0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1618
    iget-object v3, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->buildOAuthInterceptor()Lcom/squareup/okhttp/Interceptor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    :cond_0
    iget-object v3, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->buildVersionInterceptor()Lcom/squareup/okhttp/Interceptor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/coinbase/ApiConstants;->BASE_URL_PRODUCTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/coinbase/ApiConstants;->SERVER_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1623
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lretrofit/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit/Retrofit$Builder;-><init>()V

    .line 1624
    invoke-virtual {v3, v2}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/Coinbase;->_client:Lcom/squareup/okhttp/OkHttpClient;

    .line 1625
    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 1626
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 1627
    invoke-virtual {v3}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v0

    .line 1629
    .local v0, "retrofit":Lretrofit/Retrofit;
    const-class v3, Lcom/coinbase/ApiInterface;

    invoke-virtual {v0, v3}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/ApiInterface;

    .line 1631
    .local v1, "service":Lcom/coinbase/ApiInterface;
    return-object v1
.end method

.method public getApplication(Ljava/lang/String;)Lcom/coinbase/v1/entity/Application;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1104
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oauth/applications/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    .local v0, "applicationUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/ApplicationResponse;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/ApplicationResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/ApplicationResponse;->getApplication()Lcom/coinbase/v1/entity/Application;

    move-result-object v2

    return-object v2

    .line 1105
    .end local v0    # "applicationUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1106
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid application id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplications()Lcom/coinbase/v1/entity/ApplicationsResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1093
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v3, "oauth/applications"

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    .local v0, "applicationsUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/ApplicationsResponse;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/ApplicationsResponse;

    return-object v2

    .line 1094
    .end local v0    # "applicationsUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1095
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getAuthCode(Lcom/coinbase/v1/entity/OAuthCodeRequest;)Ljava/lang/String;
    .locals 4
    .param p1, "request"    # Lcom/coinbase/v1/entity/OAuthCodeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1187
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    const-string v3, "authorize/with_credentials"

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .local v0, "credentialsAuthorizationUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/OAuthCodeResponse;

    invoke-virtual {p0, v0, p1, v2}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/OAuthCodeResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/OAuthCodeResponse;->getCode()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1188
    .end local v0    # "credentialsAuthorizationUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1189
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getAuthorizationUri(Lcom/coinbase/v1/entity/OAuthCodeRequest;)Landroid/net/Uri;
    .locals 8
    .param p1, "params"    # Lcom/coinbase/v1/entity/OAuthCodeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1285
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v6, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    const-string v7, "authorize"

    invoke-direct {v0, v6, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1286
    .local v0, "authorizeURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1287
    .local v1, "builtUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1294
    .local v5, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v6, "response_type"

    const-string v7, "code"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1296
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getClientId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1297
    const-string v6, "client_id"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1302
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1303
    const-string v6, "redirect_uri"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1308
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getScope()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1309
    const-string v6, "scope"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1314
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getMeta()Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1315
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->getMeta()Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;

    move-result-object v3

    .line 1317
    .local v3, "meta":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1318
    const-string v6, "meta[name]"

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1320
    :cond_0
    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->getSendLimitAmount()Lorg/joda/money/Money;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1321
    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->getSendLimitAmount()Lorg/joda/money/Money;

    move-result-object v4

    .line 1322
    .local v4, "sendLimit":Lorg/joda/money/Money;
    const-string v6, "meta[send_limit_amount]"

    invoke-virtual {v4}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1323
    const-string v6, "meta[send_limit_currency]"

    invoke-virtual {v4}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v7

    invoke-virtual {v7}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1324
    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->getSendLimitPeriod()Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1325
    const-string v6, "meta[send_limit_period]"

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->getSendLimitPeriod()Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1330
    .end local v3    # "meta":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
    .end local v4    # "sendLimit":Lorg/joda/money/Money;
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    return-object v6

    .line 1288
    .end local v0    # "authorizeURL":Ljava/net/URL;
    .end local v1    # "builtUri":Landroid/net/Uri;
    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v2

    .line 1289
    .local v2, "ex":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1290
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v2

    .line 1291
    .local v2, "ex":Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1299
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    .restart local v0    # "authorizeURL":Ljava/net/URL;
    .restart local v1    # "builtUri":Landroid/net/Uri;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_2
    new-instance v6, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v7, "client_id is required"

    invoke-direct {v6, v7}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1305
    :cond_3
    new-instance v6, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v7, "redirect_uri is required"

    invoke-direct {v6, v7}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1311
    :cond_4
    new-instance v6, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v7, "scope is required"

    invoke-direct {v6, v7}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getBalance()Lorg/joda/money/Money;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getBalance(Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Lcom/coinbase/v1/exception/UnspecifiedAccount;

    invoke-direct {v0}, Lcom/coinbase/v1/exception/UnspecifiedAccount;-><init>()V

    throw v0
.end method

.method public getBalance(Ljava/lang/String;)Lorg/joda/money/Money;
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/balance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v0, "accountBalanceUrl":Ljava/net/URL;
    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/joda/money/Money;

    invoke-static {v2, v3}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/money/Money;

    return-object v2

    .line 281
    .end local v0    # "accountBalanceUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBuyQuote(Lorg/joda/money/Money;)Lcom/coinbase/v1/entity/Quote;
    .locals 1
    .param p1, "amount"    # Lorg/joda/money/Money;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coinbase/Coinbase;->getBuyQuote(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Quote;

    move-result-object v0

    return-object v0
.end method

.method public getBuyQuote(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Quote;
    .locals 7
    .param p1, "amount"    # Lorg/joda/money/Money;
    .param p2, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    const-string v2, "qty"

    .line 392
    .local v2, "qtyParam":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prices/buy?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 394
    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&account_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&payment_method_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .local v0, "buyPriceUrl":Ljava/net/URL;
    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/coinbase/v1/entity/Quote;

    invoke-static {v3, v4}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/Quote;

    return-object v3

    .line 387
    .end local v0    # "buyPriceUrl":Ljava/net/URL;
    .end local v2    # "qtyParam":Ljava/lang/String;
    :cond_0
    const-string v2, "native_qty"

    .restart local v2    # "qtyParam":Ljava/lang/String;
    goto :goto_0

    .line 394
    :cond_1
    :try_start_1
    const-string v3, ""

    goto :goto_1

    :cond_2
    const-string v3, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getContacts()Lcom/coinbase/v1/entity/ContactsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 712
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getContacts(I)Lcom/coinbase/v1/entity/ContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getContacts(I)Lcom/coinbase/v1/entity/ContactsResponse;
    .locals 5
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 699
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contacts?page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .local v0, "contactsUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/ContactsResponse;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/ContactsResponse;

    return-object v2

    .line 703
    .end local v0    # "contactsUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 704
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getContacts(Ljava/lang/String;)Lcom/coinbase/v1/entity/ContactsResponse;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coinbase/Coinbase;->getContacts(Ljava/lang/String;I)Lcom/coinbase/v1/entity/ContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getContacts(Ljava/lang/String;I)Lcom/coinbase/v1/entity/ContactsResponse;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 719
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contacts?page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&query="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 722
    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .local v0, "contactsUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/ContactsResponse;

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/ContactsResponse;

    return-object v2

    .line 724
    .end local v0    # "contactsUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 725
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getExchangeRates()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 740
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v3, "currencies/exchange_rates"

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .local v1, "ratesUrl":Ljava/net/URL;
    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coinbase/Coinbase$1;

    invoke-direct {v3, p0}, Lcom/coinbase/Coinbase$1;-><init>(Lcom/coinbase/Coinbase;)V

    invoke-static {v2, v3}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    return-object v2

    .line 741
    .end local v1    # "ratesUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getHistoricalPrices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/HistoricalPrice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getHistoricalPrices(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoricalPrices(I)Ljava/util/List;
    .locals 11
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/HistoricalPrice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v8, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prices/historical?page="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 784
    .local v2, "historicalPricesUrl":Ljava/net/URL;
    const-string v8, "GET"

    const/4 v9, 0x0

    invoke-virtual {p0, v2, v8, v9}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 786
    .local v6, "responseBody":Ljava/lang/String;
    new-instance v5, Lau/com/bytecode/opencsv/CSVReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 788
    .local v5, "reader":Lau/com/bytecode/opencsv/CSVReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/v1/entity/HistoricalPrice;>;"
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v4

    .local v4, "nextLine":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 793
    new-instance v3, Lcom/coinbase/v1/entity/HistoricalPrice;

    invoke-direct {v3}, Lcom/coinbase/v1/entity/HistoricalPrice;-><init>()V

    .line 794
    .local v3, "hp":Lcom/coinbase/v1/entity/HistoricalPrice;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-static {v8}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/coinbase/v1/entity/HistoricalPrice;->setTime(Lorg/joda/time/DateTime;)V

    .line 795
    sget-object v8, Lorg/joda/money/CurrencyUnit;->USD:Lorg/joda/money/CurrencyUnit;

    new-instance v9, Ljava/math/BigDecimal;

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-direct {v9, v10}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/Money;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/coinbase/v1/entity/HistoricalPrice;->setSpotPrice(Lorg/joda/money/Money;)V

    .line 796
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 798
    .end local v3    # "hp":Lcom/coinbase/v1/entity/HistoricalPrice;
    .end local v4    # "nextLine":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v9, "Error parsing csv response"

    invoke-direct {v8, v9}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 801
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 802
    :try_start_3
    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 804
    :goto_1
    throw v8

    .line 780
    .end local v2    # "historicalPricesUrl":Ljava/net/URL;
    .end local v5    # "reader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v6    # "responseBody":Ljava/lang/String;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/v1/entity/HistoricalPrice;>;"
    :catch_1
    move-exception v1

    .line 781
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 802
    .end local v1    # "ex":Ljava/net/MalformedURLException;
    .restart local v2    # "historicalPricesUrl":Ljava/net/URL;
    .restart local v4    # "nextLine":[Ljava/lang/String;
    .restart local v5    # "reader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v6    # "responseBody":Ljava/lang/String;
    .restart local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/v1/entity/HistoricalPrice;>;"
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 807
    :goto_2
    return-object v7

    .line 803
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v4    # "nextLine":[Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_1
.end method

.method public getOrder(Ljava/lang/String;)Lcom/coinbase/v1/entity/Order;
    .locals 5
    .param p1, "idOrCustom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 648
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "orders/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .local v1, "orderUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/OrderResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/OrderResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/OrderResponse;->getOrder()Lcom/coinbase/v1/entity/Order;

    move-result-object v2

    return-object v2

    .line 649
    .end local v1    # "orderUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid order id/custom"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOrders()Lcom/coinbase/v1/entity/OrdersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getOrders(I)Lcom/coinbase/v1/entity/OrdersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getOrders(I)Lcom/coinbase/v1/entity/OrdersResponse;
    .locals 6
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 659
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "orders?page="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .local v1, "ordersUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/OrdersResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/OrdersResponse;

    return-object v2

    .line 659
    .end local v1    # "ordersUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid  account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPaymentMethod(Ljava/lang/String;)Lcom/coinbase/v1/entity/PaymentMethodResponse;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseV2ApiUrl:Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "payment-methods/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .local v2, "paymentMethodURL":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v1

    .line 882
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/coinbase/v1/entity/PaymentMethodResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/PaymentMethodResponse;

    return-object v3

    .line 876
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "paymentMethodURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 877
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getPaymentMethod(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2419
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2420
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->getPaymentMethod(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 2421
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$33;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$33;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2435
    return-object v1
.end method

.method public getPaymentMethods()Lcom/coinbase/v1/entity/PaymentMethodsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 861
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseV2ApiUrl:Ljava/net/URL;

    const-string v4, "payment-methods"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .local v2, "paymentMethodsUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v1

    .line 868
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/coinbase/v1/entity/PaymentMethodsResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/PaymentMethodsResponse;

    return-object v3

    .line 862
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "paymentMethodsUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 863
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getPaymentMethods(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2447
    .local p1, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2449
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->getPaymentMethods(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2450
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$34;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$34;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2464
    return-object v1
.end method

.method public getRecurringPayment(Ljava/lang/String;)Lcom/coinbase/v1/entity/RecurringPayment;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recurring_payments/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .local v1, "recurringPaymentUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/RecurringPaymentResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/RecurringPaymentResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/RecurringPaymentResponse;->getRecurringPayment()Lcom/coinbase/v1/entity/RecurringPayment;

    move-result-object v2

    return-object v2

    .line 944
    .end local v1    # "recurringPaymentUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 945
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid payment id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRecurringPayments()Lcom/coinbase/v1/entity/RecurringPaymentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getRecurringPayments(I)Lcom/coinbase/v1/entity/RecurringPaymentsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRecurringPayments(I)Lcom/coinbase/v1/entity/RecurringPaymentsResponse;
    .locals 5
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 924
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recurring_payments?page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .local v1, "recurringPaymentsUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/RecurringPaymentsResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/RecurringPaymentsResponse;

    return-object v2

    .line 928
    .end local v1    # "recurringPaymentsUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 929
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getReport(Ljava/lang/String;)Lcom/coinbase/v1/entity/Report;
    .locals 6
    .param p1, "reportId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1130
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reports/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    .local v1, "reportUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/ReportResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/ReportResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/ReportResponse;->getReport()Lcom/coinbase/v1/entity/Report;

    move-result-object v2

    return-object v2

    .line 1130
    .end local v1    # "reportUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid report id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getReports()Lcom/coinbase/v1/entity/ReportsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getReports(I)Lcom/coinbase/v1/entity/ReportsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getReports(I)Lcom/coinbase/v1/entity/ReportsResponse;
    .locals 6
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 1145
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reports?page="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .local v1, "reportsUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/ReportsResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/ReportsResponse;

    return-object v2

    .line 1145
    .end local v1    # "reportsUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSellQuote(Lorg/joda/money/Money;)Lcom/coinbase/v1/entity/Quote;
    .locals 1
    .param p1, "amount"    # Lorg/joda/money/Money;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coinbase/Coinbase;->getSellQuote(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Quote;

    move-result-object v0

    return-object v0
.end method

.method public getSellQuote(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Quote;
    .locals 7
    .param p1, "amount"    # Lorg/joda/money/Money;
    .param p2, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    const-string v1, "qty"

    .line 420
    .local v1, "qtyParam":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prices/sell?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&account_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&payment_method_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .local v2, "sellPriceUrl":Ljava/net/URL;
    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/coinbase/v1/entity/Quote;

    invoke-static {v3, v4}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/Quote;

    return-object v3

    .line 415
    .end local v1    # "qtyParam":Ljava/lang/String;
    .end local v2    # "sellPriceUrl":Ljava/net/URL;
    :cond_0
    const-string v1, "native_qty"

    .restart local v1    # "qtyParam":Ljava/lang/String;
    goto :goto_0

    .line 422
    :cond_1
    :try_start_1
    const-string v3, ""

    goto :goto_1

    :cond_2
    const-string v3, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getSpotPrice(Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/Money;
    .locals 6
    .param p1, "currency"    # Lorg/joda/money/CurrencyUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 369
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prices/spot_rate?currency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .local v1, "spotPriceUrl":Ljava/net/URL;
    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/joda/money/Money;

    invoke-static {v2, v3}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/money/Money;

    return-object v2

    .line 370
    .end local v1    # "spotPriceUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "baseCurrency"    # Ljava/lang/String;
    .param p2, "fiatCurrency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/spotPrice/SpotPrice;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2243
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/spotPrice/SpotPrice;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2244
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2, p3}, Lcom/coinbase/ApiInterface;->getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2245
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$27;

    invoke-direct {v2, p0, p4}, Lcom/coinbase/Coinbase$27;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2259
    return-object v1
.end method

.method public getSubscriber(Ljava/lang/String;)Lcom/coinbase/v1/entity/RecurringPayment;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 955
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribers/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .local v1, "subscriberUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/RecurringPaymentResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/RecurringPaymentResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/RecurringPaymentResponse;->getRecurringPayment()Lcom/coinbase/v1/entity/RecurringPayment;

    move-result-object v2

    return-object v2

    .line 956
    .end local v1    # "subscriberUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 957
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid subscriber id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSubscribers()Lcom/coinbase/v1/entity/RecurringPaymentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getSubscribers(I)Lcom/coinbase/v1/entity/RecurringPaymentsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSubscribers(I)Lcom/coinbase/v1/entity/RecurringPaymentsResponse;
    .locals 5
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 904
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribers?page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .local v1, "subscribersUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/RecurringPaymentsResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/RecurringPaymentsResponse;

    return-object v2

    .line 908
    .end local v1    # "subscribersUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 909
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getSupportedCurrencies()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/CurrencyUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 752
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v6, "currencies"

    invoke-direct {v0, v5, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    .local v0, "currenciesUrl":Ljava/net/URL;
    const-string v5, "GET"

    const/4 v6, 0x0

    .line 758
    invoke-virtual {p0, v0, v5, v6}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/coinbase/Coinbase$2;

    invoke-direct {v6, p0}, Lcom/coinbase/Coinbase$2;-><init>(Lcom/coinbase/Coinbase;)V

    invoke-static {v5, v6}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 761
    .local v3, "rawResponse":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 764
    .local v1, "currency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    :try_start_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/joda/money/IllegalCurrencyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v5

    goto :goto_0

    .line 753
    .end local v0    # "currenciesUrl":Ljava/net/URL;
    .end local v1    # "currency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rawResponse":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    :catch_1
    move-exception v2

    .line 754
    .local v2, "ex":Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 769
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    .restart local v0    # "currenciesUrl":Ljava/net/URL;
    .restart local v3    # "rawResponse":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    :cond_0
    return-object v4
.end method

.method public getTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;
    .param p4, "redirectUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/UnauthorizedDeviceException;,
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1201
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    const-string v4, "token"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .local v2, "tokenUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/OAuthTokensRequest;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/OAuthTokensRequest;-><init>()V

    .line 1207
    .local v1, "request":Lcom/coinbase/v1/entity/OAuthTokensRequest;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setClientId(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v1, p2}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setClientSecret(Ljava/lang/String;)V

    .line 1209
    sget-object v3, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->AUTHORIZATION_CODE:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    invoke-virtual {v1, v3}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setGrantType(Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;)V

    .line 1210
    invoke-virtual {v1, p3}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setCode(Ljava/lang/String;)V

    .line 1211
    if-eqz p4, :cond_0

    .end local p4    # "redirectUri":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, p4}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setRedirectUri(Ljava/lang/String;)V

    .line 1213
    const-class v3, Lcom/coinbase/v1/entity/OAuthTokensResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/OAuthTokensResponse;

    return-object v3

    .line 1202
    .end local v1    # "request":Lcom/coinbase/v1/entity/OAuthTokensRequest;
    .end local v2    # "tokenUrl":Ljava/net/URL;
    .restart local p4    # "redirectUri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1211
    .end local v0    # "ex":Ljava/net/MalformedURLException;
    .restart local v1    # "request":Lcom/coinbase/v1/entity/OAuthTokensRequest;
    .restart local v2    # "tokenUrl":Ljava/net/URL;
    :cond_0
    const-string p4, "2_legged"

    goto :goto_0
.end method

.method public getTransaction(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 456
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transactions/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .local v1, "transactionUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/TransactionResponse;->getTransaction()Lcom/coinbase/v1/entity/Transaction;

    move-result-object v2

    return-object v2

    .line 457
    .end local v1    # "transactionUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid transaction id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTransaction(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 6
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1917
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1918
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "from"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "to"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "buy"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "sell"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1919
    .local v2, "expandOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2, v2}, Lcom/coinbase/ApiInterface;->getTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lretrofit/Call;

    move-result-object v1

    .line 1920
    .local v1, "call":Lretrofit/Call;
    new-instance v3, Lcom/coinbase/Coinbase$16;

    invoke-direct {v3, p0, p3}, Lcom/coinbase/Coinbase$16;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1934
    return-object v1
.end method

.method public getTransactions()Lcom/coinbase/v1/entity/TransactionsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getTransactions(I)Lcom/coinbase/v1/entity/TransactionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getTransactions(I)Lcom/coinbase/v1/entity/TransactionsResponse;
    .locals 6
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 436
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transactions?page="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .local v1, "transactionsUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/TransactionsResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/TransactionsResponse;

    return-object v2

    .line 436
    .end local v1    # "transactionsUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTransactions(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transactions;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1887
    .local p2, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "expandOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transactions/Transactions;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1889
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p3, p2}, Lcom/coinbase/ApiInterface;->getTransactions(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lretrofit/Call;

    move-result-object v1

    .line 1890
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$15;

    invoke-direct {v2, p0, p4}, Lcom/coinbase/Coinbase$15;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1904
    return-object v1
.end method

.method public getTransfers()Lcom/coinbase/v1/entity/TransfersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->getTransfers(I)Lcom/coinbase/v1/entity/TransfersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getTransfers(I)Lcom/coinbase/v1/entity/TransfersResponse;
    .locals 6
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 538
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transfers?page="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .local v1, "transfersUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/TransfersResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/TransfersResponse;

    return-object v2

    .line 538
    .end local v1    # "transfersUrl":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getUser()Lcom/coinbase/v1/entity/User;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .local v1, "usersUrl":Ljava/net/URL;
    const-class v2, Lcom/coinbase/v1/entity/UsersResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/Coinbase;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/UsersResponse;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/UsersResponse;->getUsers()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v1/entity/UserNode;

    invoke-virtual {v2}, Lcom/coinbase/v1/entity/UserNode;->getUser()Lcom/coinbase/v1/entity/User;

    move-result-object v2

    return-object v2

    .line 228
    .end local v1    # "usersUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getUser(Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/user/User;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1643
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/user/User;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1644
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0}, Lcom/coinbase/ApiInterface;->getUser()Lretrofit/Call;

    move-result-object v1

    .line 1645
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$7;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/Coinbase$7;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1659
    return-object v1
.end method

.method protected getV2VersionHeaders()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1508
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "CB-VERSION"

    const-string v2, "2015-03-20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string v1, "USER-AGENT"

    invoke-direct {p0}, Lcom/coinbase/Coinbase;->getPackageVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    return-object v0
.end method

.method protected languageInterceptor()Lcom/squareup/okhttp/Interceptor;
    .locals 1

    .prologue
    .line 1601
    new-instance v0, Lcom/coinbase/Coinbase$6;

    invoke-direct {v0, p0}, Lcom/coinbase/Coinbase$6;-><init>(Lcom/coinbase/Coinbase;)V

    return-object v0
.end method

.method protected newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;
    .locals 2

    .prologue
    .line 1499
    new-instance v0, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v0}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 1500
    .local v0, "request":Lcom/coinbase/v1/entity/Request;
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1501
    iget-object v1, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/v1/entity/Request;->setAccountId(Ljava/lang/String;)V

    .line 1503
    :cond_0
    return-object v0
.end method

.method protected post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1465
    .local p3, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "POST"

    invoke-virtual {p0, p1, v0, p2}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Response;

    invoke-static {v0}, Lcom/coinbase/Coinbase;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method

.method protected put(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1469
    .local p3, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "PUT"

    invoke-virtual {p0, p1, v0, p2}, Lcom/coinbase/Coinbase;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/coinbase/Coinbase;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Response;

    invoke-static {v0}, Lcom/coinbase/Coinbase;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method

.method public redeemToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "tokenId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "tokens/redeem"

    invoke-direct {v1, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .local v1, "redeemTokenUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 1069
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Request;->setTokenId(Ljava/lang/String;)V

    .line 1071
    const-class v3, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 1072
    return-void

    .line 1064
    .end local v1    # "redeemTokenUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public refreshTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1245
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    const-string v4, "token"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .local v2, "tokenUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/OAuthTokensRequest;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/OAuthTokensRequest;-><init>()V

    .line 1251
    .local v1, "request":Lcom/coinbase/v1/entity/OAuthTokensRequest;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setClientId(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v1, p2}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setClientSecret(Ljava/lang/String;)V

    .line 1253
    sget-object v3, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->REFRESH_TOKEN:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    invoke-virtual {v1, v3}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setGrantType(Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;)V

    .line 1254
    invoke-virtual {v1, p3}, Lcom/coinbase/v1/entity/OAuthTokensRequest;->setRefreshToken(Ljava/lang/String;)V

    .line 1256
    const-class v3, Lcom/coinbase/v1/entity/OAuthTokensResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/OAuthTokensResponse;

    return-object v3

    .line 1246
    .end local v1    # "request":Lcom/coinbase/v1/entity/OAuthTokensRequest;
    .end local v2    # "tokenUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public requestMoney(Lcom/coinbase/v1/entity/Transaction;)Lcom/coinbase/v1/entity/Transaction;
    .locals 5
    .param p1, "transaction"    # Lcom/coinbase/v1/entity/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "transactions/request_money"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .local v2, "requestMoneyUrl":Ljava/net/URL;
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/Transaction;->getAmount()Lorg/joda/money/Money;

    move-result-object v3

    if-nez v3, :cond_0

    .line 473
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "Amount is a required field"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    .end local v2    # "requestMoneyUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 469
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 476
    .end local v0    # "ex":Ljava/net/MalformedURLException;
    .restart local v2    # "requestMoneyUrl":Ljava/net/URL;
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v1

    .line 477
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/Request;->setTransaction(Lcom/coinbase/v1/entity/Transaction;)V

    .line 479
    const-class v3, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/TransactionResponse;->getTransaction()Lcom/coinbase/v1/entity/Transaction;

    move-result-object v3

    return-object v3
.end method

.method public requestMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2062
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    const-string v2, "type"

    const-string v3, "request"

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2064
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->requestMoney(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2065
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$21;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$21;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2079
    return-object v1
.end method

.method public resendRequest(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1976
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1977
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->resendRequest(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 1978
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$18;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$18;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1992
    return-object v1
.end method

.method public resendRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transactions/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/resend_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .local v1, "resendRequestUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v2

    const-class v3, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->put(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 491
    return-void

    .line 487
    .end local v1    # "resendRequestUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid transaction id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public revokeToken()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1219
    iget-object v3, p0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1220
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "This client must have been initialized with an access token in order to call revokeToken()"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1227
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    const-string v4, "revoke"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    .local v2, "revokeTokenUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/RevokeTokenRequest;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/RevokeTokenRequest;-><init>()V

    .line 1233
    .local v1, "request":Lcom/coinbase/v1/entity/RevokeTokenRequest;
    iget-object v3, p0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/coinbase/v1/entity/RevokeTokenRequest;->setToken(Ljava/lang/String;)V

    .line 1235
    const-class v3, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 1236
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/coinbase/Coinbase;->_accessToken:Ljava/lang/String;

    .line 1237
    return-void

    .line 1228
    .end local v1    # "request":Lcom/coinbase/v1/entity/RevokeTokenRequest;
    .end local v2    # "revokeTokenUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public sell(Lorg/joda/money/Money;)Lcom/coinbase/v1/entity/Transfer;
    .locals 1
    .param p1, "amount"    # Lorg/joda/money/Money;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coinbase/Coinbase;->sell(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Transfer;

    move-result-object v0

    return-object v0
.end method

.method public sell(Lorg/joda/money/Money;Ljava/lang/String;)Lcom/coinbase/v1/entity/Transfer;
    .locals 1
    .param p1, "amount"    # Lorg/joda/money/Money;
    .param p2, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coinbase/Coinbase;->sell(Lorg/joda/money/Money;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/coinbase/v1/entity/Transfer;

    move-result-object v0

    return-object v0
.end method

.method public sell(Lorg/joda/money/Money;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/coinbase/v1/entity/Transfer;
    .locals 6
    .param p1, "amount"    # Lorg/joda/money/Money;
    .param p2, "paymentMethodId"    # Ljava/lang/String;
    .param p3, "commit"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "sells"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .local v2, "sellsUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v1

    .line 593
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coinbase/v1/entity/Request;->setQty(Ljava/lang/Double;)V

    .line 594
    invoke-virtual {v1, p2}, Lcom/coinbase/v1/entity/Request;->setPaymentMethodId(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coinbase/v1/entity/Request;->setCurrency(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v1, p3}, Lcom/coinbase/v1/entity/Request;->setCommit(Ljava/lang/Boolean;)V

    .line 598
    const-class v3, Lcom/coinbase/v1/entity/TransferResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/TransferResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/TransferResponse;->getTransfer()Lcom/coinbase/v1/entity/Transfer;

    move-result-object v3

    return-object v3

    .line 588
    .end local v1    # "request":Lcom/coinbase/v1/entity/Request;
    .end local v2    # "sellsUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 589
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public sellBitcoin(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2181
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2182
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->sellBitcoin(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2183
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$25;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$25;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2197
    return-object v1
.end method

.method public sendMoney(Lcom/coinbase/v1/entity/Transaction;)Lcom/coinbase/v1/entity/Transaction;
    .locals 5
    .param p1, "transaction"    # Lcom/coinbase/v1/entity/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "transactions/send_money"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .local v2, "sendMoneyUrl":Ljava/net/URL;
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/Transaction;->getAmount()Lorg/joda/money/Money;

    move-result-object v3

    if-nez v3, :cond_0

    .line 525
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "Amount is a required field"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 520
    .end local v2    # "sendMoneyUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 528
    .end local v0    # "ex":Ljava/net/MalformedURLException;
    .restart local v2    # "sendMoneyUrl":Ljava/net/URL;
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v1

    .line 529
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/Request;->setTransaction(Lcom/coinbase/v1/entity/Transaction;)V

    .line 531
    const-class v3, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/TransactionResponse;->getTransaction()Lcom/coinbase/v1/entity/Transaction;

    move-result-object v3

    return-object v3
.end method

.method public sendMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2033
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    const-string v2, "type"

    const-string v3, "send"

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2035
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->sendMoney(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2036
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$20;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$20;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2050
    return-object v1
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1264
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseOAuthUrl:Ljava/net/URL;

    const-string v4, "authorize/with_credentials/sms_token"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    .local v2, "smsUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/OAuthCodeRequest;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;-><init>()V

    .line 1270
    .local v1, "request":Lcom/coinbase/v1/entity/OAuthCodeRequest;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setClientId(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v1, p2}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setClientSecret(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v1, p3}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setUsername(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v1, p4}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setPassword(Ljava/lang/String;)V

    .line 1275
    const-class v3, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 1276
    return-void

    .line 1265
    .end local v1    # "request":Lcom/coinbase/v1/entity/OAuthCodeRequest;
    .end local v2    # "smsUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public setAccountPrimary(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1799
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1800
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/ApiInterface;->setAccountPrimary(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 1801
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$12;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/Coinbase$12;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1815
    return-object v1
.end method

.method public setPrimaryAccount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coinbase/Coinbase;->setPrimaryAccount(Ljava/lang/String;)V

    .line 316
    return-void

    .line 314
    :cond_0
    new-instance v0, Lcom/coinbase/v1/exception/UnspecifiedAccount;

    invoke-direct {v0}, Lcom/coinbase/v1/exception/UnspecifiedAccount;-><init>()V

    throw v0
.end method

.method public setPrimaryAccount(Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/primary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .local v1, "setPrimaryUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    const-class v3, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v1, v2, v3}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 296
    return-void

    .line 292
    .end local v1    # "setPrimaryUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid account id"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public transferMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2091
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    const-string v2, "type"

    const-string v3, "transfer"

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2093
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->transferMoney(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2094
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$22;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$22;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2108
    return-object v1
.end method

.method public transferMoneyBetweenAccounts(Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction;
    .locals 6
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "toAccountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    const-string v5, "transactions/transfer_money"

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .local v3, "transferMoneyURL":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Transaction;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Transaction;-><init>()V

    .line 564
    .local v2, "transaction":Lcom/coinbase/v1/entity/Transaction;
    invoke-virtual {v2, p2}, Lcom/coinbase/v1/entity/Transaction;->setTo(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/Transaction;->setTransferBitcoinAmountString(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->newAccountSpecificRequest()Lcom/coinbase/v1/entity/Request;

    move-result-object v1

    .line 568
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v1, v2}, Lcom/coinbase/v1/entity/Request;->setTransaction(Lcom/coinbase/v1/entity/Transaction;)V

    .line 570
    const-class v4, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {p0, v3, v1, v4}, Lcom/coinbase/Coinbase;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v4

    check-cast v4, Lcom/coinbase/v1/entity/TransactionResponse;

    invoke-virtual {v4}, Lcom/coinbase/v1/entity/TransactionResponse;->getTransaction()Lcom/coinbase/v1/entity/Transaction;

    move-result-object v4

    return-object v4

    .line 559
    .end local v1    # "request":Lcom/coinbase/v1/entity/Request;
    .end local v2    # "transaction":Lcom/coinbase/v1/entity/Transaction;
    .end local v3    # "transferMoneyURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public updateAccount(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/account/Account;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1827
    .local p2, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/account/Account;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1828
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->updateAccount(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1829
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$13;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$13;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1843
    return-object v1
.end method

.method public updateAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/coinbase/v1/entity/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/UnspecifiedAccount;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_accountId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/coinbase/Coinbase;->updateAccount(Ljava/lang/String;Lcom/coinbase/v1/entity/Account;)V

    .line 334
    return-void

    .line 332
    :cond_0
    new-instance v0, Lcom/coinbase/v1/exception/UnspecifiedAccount;

    invoke-direct {v0}, Lcom/coinbase/v1/exception/UnspecifiedAccount;-><init>()V

    throw v0
.end method

.method public updateAccount(Ljava/lang/String;Lcom/coinbase/v1/entity/Account;)V
    .locals 6
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/coinbase/v1/entity/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accounts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v0, "accountUrl":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 361
    .local v2, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v2, p2}, Lcom/coinbase/v1/entity/Request;->setAccount(Lcom/coinbase/v1/entity/Account;)V

    .line 362
    const-class v3, Lcom/coinbase/v1/entity/Response;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/Coinbase;->put(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 363
    return-void

    .line 356
    .end local v0    # "accountUrl":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/v1/entity/Request;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "Invalid account id"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public updateUser(Ljava/lang/String;Lcom/coinbase/v1/entity/User;)Lcom/coinbase/v1/entity/User;
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userParams"    # Lcom/coinbase/v1/entity/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/Coinbase;->_baseApiUrl:Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    .local v2, "userUrl":Ljava/net/URL;
    new-instance v1, Lcom/coinbase/v1/entity/Request;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/Request;-><init>()V

    .line 1042
    .local v1, "request":Lcom/coinbase/v1/entity/Request;
    invoke-virtual {v1, p2}, Lcom/coinbase/v1/entity/Request;->setUser(Lcom/coinbase/v1/entity/User;)V

    .line 1044
    const-class v3, Lcom/coinbase/v1/entity/UserResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/Coinbase;->put(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/UserResponse;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/UserResponse;->getUser()Lcom/coinbase/v1/entity/User;

    move-result-object v3

    return-object v3

    .line 1037
    .end local v1    # "request":Lcom/coinbase/v1/entity/Request;
    .end local v2    # "userUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "Invalid user id"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/lang/String;
    .param p3, "nativeCurrency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/user/User;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1676
    .local p4, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/user/User;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1678
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 1679
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    :cond_0
    if-eqz p2, :cond_1

    .line 1682
    const-string v3, "time_zone"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    :cond_1
    if-eqz p3, :cond_2

    .line 1685
    const-string v3, "native_currency"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 1688
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, v2}, Lcom/coinbase/ApiInterface;->updateUser(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1689
    .local v1, "call":Lretrofit/Call;
    new-instance v3, Lcom/coinbase/Coinbase$8;

    invoke-direct {v3, p0, p4}, Lcom/coinbase/Coinbase$8;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1703
    return-object v1
.end method

.method public verifyCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/coinbase/Coinbase;->_callbackVerifier:Lcom/coinbase/CallbackVerifier;

    invoke-interface {v0, p1, p2}, Lcom/coinbase/CallbackVerifier;->verifyCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public withdrawFunds(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 2360
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p0}, Lcom/coinbase/Coinbase;->getApiService()Lcom/coinbase/ApiInterface;

    move-result-object v0

    .line 2361
    .local v0, "apiInterface":Lcom/coinbase/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/ApiInterface;->withdrawFunds(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 2362
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/Coinbase$31;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/Coinbase$31;-><init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 2376
    return-object v1
.end method
