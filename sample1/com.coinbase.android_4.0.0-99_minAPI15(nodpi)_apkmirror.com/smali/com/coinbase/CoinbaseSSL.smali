.class public Lcom/coinbase/CoinbaseSSL;
.super Ljava/lang/Object;
.source "CoinbaseSSL.java"


# static fields
.field private static sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/coinbase/CoinbaseSSL;->sslContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 9

    .prologue
    .line 16
    const-class v6, Lcom/coinbase/CoinbaseSSL;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/coinbase/CoinbaseSSL;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v5, :cond_0

    .line 17
    sget-object v5, Lcom/coinbase/CoinbaseSSL;->sslContext:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .local v3, "trustStore":Ljava/security/KeyStore;
    .local v4, "trustStoreInputStream":Ljava/io/InputStream;
    :goto_0
    monitor-exit v6

    return-object v5

    .line 20
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v3    # "trustStore":Ljava/security/KeyStore;
    .end local v4    # "trustStoreInputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    .line 21
    .restart local v3    # "trustStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    .line 24
    .restart local v4    # "trustStoreInputStream":Ljava/io/InputStream;
    :try_start_1
    const-string v5, "java.vm.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Dalvik"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    const-class v5, Lcom/coinbase/CoinbaseSSL;

    const-string v7, "/com/coinbase/api/ca-coinbase.bks"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 26
    const-string v5, "BKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 32
    :goto_1
    const-string v5, "changeit"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 34
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 35
    .restart local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 36
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 37
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 38
    sput-object v0, Lcom/coinbase/CoinbaseSSL;->sslContext:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    if-eqz v4, :cond_1

    .line 44
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_1
    :try_start_3
    sget-object v5, Lcom/coinbase/CoinbaseSSL;->sslContext:Ljavax/net/ssl/SSLContext;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 28
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_2
    :try_start_4
    const-class v5, Lcom/coinbase/CoinbaseSSL;

    const-string v7, "/com/coinbase/api/ca-coinbase.jks"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 29
    const-string v5, "JKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 45
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .restart local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 39
    :catch_1
    move-exception v1

    .line 40
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_6
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 42
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_3

    .line 44
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 46
    :cond_3
    :try_start_8
    throw v5

    .line 45
    :catch_2
    move-exception v1

    .line 46
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
