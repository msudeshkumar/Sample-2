.class public Lcom/coinbase/android/crypto/Pbkdf2$HmacSHA1;
.super Lcom/coinbase/android/crypto/Pbkdf2;
.source "Pbkdf2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/crypto/Pbkdf2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA1"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "PBKDF2WithHmacSHA1"

    const-string v1, "HmacSHA1"

    invoke-direct {p0, v0, v1}, Lcom/coinbase/android/crypto/Pbkdf2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
