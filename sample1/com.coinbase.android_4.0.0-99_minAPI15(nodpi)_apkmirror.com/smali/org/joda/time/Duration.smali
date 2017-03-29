.class public final Lorg/joda/time/Duration;
.super Lorg/joda/time/base/BaseDuration;
.source "Duration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadableDuration;


# static fields
.field public static final ZERO:Lorg/joda/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/joda/time/Duration;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/joda/time/Duration;-><init>(J)V

    sput-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDuration;-><init>(J)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDuration;-><init>(Ljava/lang/Object;)V

    .line 210
    return-void
.end method
