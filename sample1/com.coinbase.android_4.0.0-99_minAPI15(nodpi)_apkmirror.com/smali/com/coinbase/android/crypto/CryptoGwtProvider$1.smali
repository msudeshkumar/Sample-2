.class Lcom/coinbase/android/crypto/CryptoGwtProvider$1;
.super Ljava/lang/Object;
.source "CryptoGwtProvider.java"

# interfaces
.implements Lcom/coinbase/android/crypto/SpiFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/crypto/CryptoGwtProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coinbase/android/crypto/SpiFactory",
        "<",
        "Ljavax/crypto/SecretKeyFactorySpi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/crypto/CryptoGwtProvider;


# direct methods
.method constructor <init>(Lcom/coinbase/android/crypto/CryptoGwtProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/crypto/CryptoGwtProvider;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/coinbase/android/crypto/CryptoGwtProvider$1;->this$0:Lcom/coinbase/android/crypto/CryptoGwtProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/coinbase/android/crypto/CryptoGwtProvider$1;->create(Ljava/lang/Object;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Object;)Ljavax/crypto/SecretKeyFactorySpi;
    .locals 1
    .param p1, "constructorParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/coinbase/android/crypto/Pbkdf2$HmacSHA1;

    invoke-direct {v0}, Lcom/coinbase/android/crypto/Pbkdf2$HmacSHA1;-><init>()V

    return-object v0
.end method
