.class public Lcom/coinbase/android/crypto/Pbkdf2;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "Pbkdf2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/crypto/Pbkdf2$HmacSHA1;,
        Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private algorithm:Ljava/lang/String;

.field private prfAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/coinbase/android/crypto/Pbkdf2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coinbase/android/crypto/Pbkdf2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "prf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/coinbase/android/crypto/Pbkdf2;->algorithm:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/coinbase/android/crypto/Pbkdf2;->prfAlgorithm:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private f(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;I)V
    .locals 9
    .param p1, "state"    # Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
    .param p2, "chunkSize"    # I

    .prologue
    const/4 v8, 0x0

    .line 91
    iget-object v4, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->prf:Ljavax/crypto/Mac;

    .line 92
    .local v4, "prf":Ljavax/crypto/Mac;
    iget v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->c:I

    .line 93
    .local v0, "c":I
    iget v2, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->i:I

    .line 94
    .local v2, "i":I
    add-int/lit8 v5, v2, -0x1

    iget v6, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->hLen:I

    mul-int v3, v5, v6

    .line 96
    .local v3, "offset":I
    invoke-direct {p0, p1}, Lcom/coinbase/android/crypto/Pbkdf2;->isFirstIteration(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-direct {p0, p1, v4, v2}, Lcom/coinbase/android/crypto/Pbkdf2;->initF(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;Ljavax/crypto/Mac;I)V

    .line 100
    :cond_0
    const/4 v1, 0x0

    .local v1, "chunk":I
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/crypto/Pbkdf2;->isFComplete(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;I)Z

    move-result v5

    if-nez v5, :cond_1

    if-ge v1, p2, :cond_1

    .line 101
    iget-object v5, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->u:[B

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v5

    iput-object v5, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->u:[B

    .line 102
    iget-object v5, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->block:[B

    iget-object v6, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->u:[B

    iget-object v7, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->u:[B

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Lcom/coinbase/android/crypto/ByteArrayUtils;->xor([BI[BII)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    iget v5, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->currentIteration:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->currentIteration:I

    goto :goto_0

    .line 104
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/crypto/Pbkdf2;->isFComplete(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    invoke-direct {p0, p1, v3}, Lcom/coinbase/android/crypto/Pbkdf2;->finalizeF(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;I)V

    .line 107
    :cond_2
    return-void
.end method

.method private finalizeF(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;I)V
    .locals 5
    .param p1, "state"    # Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->block:[B

    iget-object v1, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->output:[B

    iget-object v2, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->block:[B

    array-length v2, v2

    iget-object v3, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->output:[B

    array-length v3, v3

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iput v4, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->currentIteration:I

    .line 113
    return-void
.end method

.method private initF(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;Ljavax/crypto/Mac;I)V
    .locals 4
    .param p1, "state"    # Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
    .param p2, "prf"    # Ljavax/crypto/Mac;
    .param p3, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->block:[B

    .line 117
    iget-object v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->salt:[B

    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 118
    invoke-static {p3}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toBytes(I)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 119
    invoke-virtual {p2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iput-object v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->u:[B

    .line 120
    iget-object v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->u:[B

    iget-object v1, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->block:[B

    iget-object v2, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->u:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    const/4 v0, 0x2

    iput v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->currentIteration:I

    .line 122
    return-void
.end method

.method private initState([C[BII)Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
    .locals 6
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "c"    # I
    .param p4, "bitsToGenerate"    # I

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "prf":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 78
    invoke-static {p1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toBytes([C)[B

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/crypto/Pbkdf2;->prfAlgorithm:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 80
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    iget-object v3, p0, Lcom/coinbase/android/crypto/Pbkdf2;->prfAlgorithm:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    sget-boolean v3, Lcom/coinbase/android/crypto/Pbkdf2;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v3, "Coinbase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v3, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;

    invoke-direct {v3, v2, p2, p3, p4}, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;-><init>(Ljavax/crypto/Mac;[BII)V

    return-object v3
.end method

.method private isFComplete(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;I)Z
    .locals 1
    .param p1, "state"    # Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
    .param p2, "c"    # I

    .prologue
    .line 125
    iget v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->currentIteration:I

    if-le v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstIteration(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;)Z
    .locals 1
    .param p1, "state"    # Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;

    .prologue
    .line 129
    iget v0, p1, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->currentIteration:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    .line 136
    .local v0, "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    new-instance v1, Lcom/coinbase/android/crypto/PBESecretKeyImpl;

    iget-object v2, p0, Lcom/coinbase/android/crypto/Pbkdf2;->algorithm:Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    .line 140
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    .line 141
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    .line 138
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/coinbase/android/crypto/Pbkdf2;->generate([C[BII)[B

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/coinbase/android/crypto/PBESecretKeyImpl;-><init>(Ljava/lang/String;Ljavax/crypto/spec/PBEKeySpec;[B)V

    return-object v1
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method generate([C[BII)[B
    .locals 3
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "c"    # I
    .param p4, "bitsToGenerate"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coinbase/android/crypto/Pbkdf2;->initState([C[BII)Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;

    move-result-object v0

    .line 67
    .local v0, "state":Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
    :goto_0
    iget v1, v0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->i:I

    iget v2, v0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->l:I

    if-gt v1, v2, :cond_0

    .line 68
    invoke-direct {p0, v0, p3}, Lcom/coinbase/android/crypto/Pbkdf2;->f(Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;I)V

    .line 67
    iget v1, v0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->i:I

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, v0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->output:[B

    return-object v1
.end method
