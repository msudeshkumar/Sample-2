.class public Lcom/coinbase/v1/exception/TwoFactorIncorrectException;
.super Lcom/coinbase/v1/exception/CoinbaseException;
.source "TwoFactorIncorrectException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "The two factor token is incorrect or expired"

    invoke-direct {p0, v0}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
