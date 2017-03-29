.class public Lcom/coinbase/android/crypto/CoinBaseCrypto;
.super Ljava/lang/Object;
.source "CoinBaseCrypto.java"


# static fields
.field private static injected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getGWTProvider()V
    .locals 3

    .prologue
    .line 19
    const-class v1, Lcom/coinbase/android/crypto/CoinBaseCrypto;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/coinbase/android/crypto/CoinBaseCrypto;->injected:Z

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/coinbase/android/crypto/CryptoGwtProvider;->INSTANCE:Ljava/security/Provider;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/coinbase/android/crypto/CoinBaseCrypto;->injected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    monitor-exit v1

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getKey([C[BII)[B
    .locals 5
    .param p0, "password"    # [C
    .param p1, "salt"    # [B
    .param p2, "numOfIterations"    # I
    .param p3, "keyLength"    # I

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/coinbase/android/crypto/CoinBaseCrypto;->getKeyFactory()Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 46
    .local v3, "skf":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v1, p0, p1, p2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 47
    .local v1, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v3, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 48
    .local v2, "s":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 51
    .end local v1    # "ks":Ljava/security/spec/KeySpec;
    .end local v2    # "s":Ljavax/crypto/SecretKey;
    .end local v3    # "skf":Ljavax/crypto/SecretKeyFactory;
    :goto_0
    return-object v4

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    .line 51
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getKeyFactory()Ljavax/crypto/SecretKeyFactory;
    .locals 4

    .prologue
    .line 32
    :try_start_0
    const-string v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 36
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v2

    .line 33
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 34
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/coinbase/android/crypto/CoinBaseCrypto;->getGWTProvider()V

    .line 36
    :try_start_1
    const-string v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 37
    :catch_1
    move-exception v1

    .line 38
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
