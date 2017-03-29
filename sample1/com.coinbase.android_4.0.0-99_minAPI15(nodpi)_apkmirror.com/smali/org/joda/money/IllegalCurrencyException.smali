.class public Lorg/joda/money/IllegalCurrencyException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalCurrencyException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
