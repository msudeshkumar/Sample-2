.class public Lcom/coinbase/android/crypto/CryptoGwtProvider;
.super Ljava/security/Provider;
.source "CryptoGwtProvider.java"


# static fields
.field public static final INSTANCE:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/coinbase/android/crypto/CryptoGwtProvider;

    invoke-direct {v0}, Lcom/coinbase/android/crypto/CryptoGwtProvider;-><init>()V

    sput-object v0, Lcom/coinbase/android/crypto/CryptoGwtProvider;->INSTANCE:Ljava/security/Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 21
    const-string v0, "CRYPTOGWT"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, ""

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 23
    new-instance v0, Lcom/coinbase/android/crypto/SpiFactoryService;

    const-string v2, "SecretKeyFactory"

    const-string v3, "PBKDF2WithHmacSHA1"

    const-class v1, Lcom/coinbase/android/crypto/Pbkdf2$HmacSHA1;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/crypto/CryptoGwtProvider$1;

    invoke-direct {v7, p0}, Lcom/coinbase/android/crypto/CryptoGwtProvider$1;-><init>(Lcom/coinbase/android/crypto/CryptoGwtProvider;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/coinbase/android/crypto/SpiFactoryService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/coinbase/android/crypto/SpiFactory;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/coinbase/android/crypto/CryptoGwtProvider;->putService(Ljava/security/Provider$Service;)V

    .line 35
    return-void
.end method
