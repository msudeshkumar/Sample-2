.class public abstract Lorg/joda/time/base/BaseDuration;
.super Lorg/joda/time/base/AbstractDuration;
.source "BaseDuration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadableDuration;


# instance fields
.field private volatile iMillis:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/joda/time/base/AbstractDuration;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/joda/time/base/AbstractDuration;-><init>()V

    .line 104
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getDurationConverter(Ljava/lang/Object;)Lorg/joda/time/convert/DurationConverter;

    move-result-object v0

    .line 105
    invoke-interface {v0, p1}, Lorg/joda/time/convert/DurationConverter;->getDurationMillis(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    .line 106
    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    return-wide v0
.end method
