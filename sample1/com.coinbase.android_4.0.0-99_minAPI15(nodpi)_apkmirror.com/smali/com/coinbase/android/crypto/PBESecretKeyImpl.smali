.class public Lcom/coinbase/android/crypto/PBESecretKeyImpl;
.super Ljava/lang/Object;
.source "PBESecretKeyImpl.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# static fields
.field private static final serialVersionUID:J = -0x6ec1348987cd146fL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private key:[B

.field private spec:Ljavax/crypto/spec/PBEKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/spec/PBEKeySpec;[B)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p3, "key"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->algorithm:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->spec:Ljavax/crypto/spec/PBEKeySpec;

    .line 24
    iput-object p3, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->key:[B

    .line 25
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->key:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->spec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method public getPassword()[C
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->spec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/coinbase/android/crypto/PBESecretKeyImpl;->spec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method
