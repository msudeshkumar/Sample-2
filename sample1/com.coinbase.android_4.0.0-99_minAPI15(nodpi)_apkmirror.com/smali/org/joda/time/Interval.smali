.class public final Lorg/joda/time/Interval;
.super Lorg/joda/time/base/BaseInterval;
.source "Interval.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadableInterval;


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    .prologue
    .line 82
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 83
    return-void
.end method
