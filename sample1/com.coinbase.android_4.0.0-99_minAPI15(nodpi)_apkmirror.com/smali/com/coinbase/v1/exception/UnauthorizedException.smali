.class public Lcom/coinbase/v1/exception/UnauthorizedException;
.super Lcom/coinbase/v1/exception/CoinbaseException;
.source "UnauthorizedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method
