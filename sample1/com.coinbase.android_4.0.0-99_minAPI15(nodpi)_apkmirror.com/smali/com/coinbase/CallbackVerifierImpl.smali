.class public Lcom/coinbase/CallbackVerifierImpl;
.super Ljava/lang/Object;
.source "CallbackVerifierImpl.java"

# interfaces
.implements Lcom/coinbase/CallbackVerifier;


# static fields
.field private static _publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/coinbase/CallbackVerifierImpl;->_publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getPublicKey()Ljava/security/PublicKey;
    .locals 8

    .prologue
    .line 22
    const-class v6, Lcom/coinbase/CallbackVerifierImpl;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/coinbase/CallbackVerifierImpl;->_publicKey:Ljava/security/PublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 24
    :try_start_1
    const-class v5, Lcom/coinbase/CallbackVerifierImpl;

    const-string v7, "/com/coinbase/api/coinbase-callback.pub.der"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 25
    .local v4, "keyStream":Ljava/io/InputStream;
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 26
    .local v1, "keyBytes":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 28
    .local v3, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 29
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    sput-object v5, Lcom/coinbase/CallbackVerifierImpl;->_publicKey:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_0
    :try_start_2
    sget-object v5, Lcom/coinbase/CallbackVerifierImpl;->_publicKey:Ljava/security/PublicKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v5

    .line 30
    .end local v1    # "keyBytes":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 33
    :catch_1
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 36
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 38
    .local v0, "ex":Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public verifyCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 48
    :try_start_0
    const-string v4, "SHA256withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 49
    .local v2, "sig":Ljava/security/Signature;
    invoke-static {}, Lcom/coinbase/CallbackVerifierImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->update([B)V

    .line 51
    const/4 v4, 0x0

    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 59
    .end local v2    # "sig":Ljava/security/Signature;
    :goto_0
    return v3

    .line 52
    :catch_0
    move-exception v1

    .line 54
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 55
    .end local v1    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 58
    .end local v1    # "ex":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/security/SignatureException;
    goto :goto_0
.end method
