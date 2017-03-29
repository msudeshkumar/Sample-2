.class public Lcom/coinbase/v1/exception/TwoFactorRequiredException;
.super Lcom/coinbase/v1/exception/CoinbaseException;
.source "TwoFactorRequiredException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "A two factor token is required"

    invoke-direct {p0, v0}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
