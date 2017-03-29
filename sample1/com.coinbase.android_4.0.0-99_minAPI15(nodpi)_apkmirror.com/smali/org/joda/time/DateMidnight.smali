.class public final Lorg/joda/time/DateMidnight;
.super Lorg/joda/time/base/BaseDateTime;
.source "DateMidnight.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadableDateTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateMidnight$Property;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;-><init>()V

    .line 165
    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 317
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 318
    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 350
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 351
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(J)V

    .line 206
    return-void
.end method


# virtual methods
.method protected checkInstant(JLorg/joda/time/Chronology;)J
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dayOfMonth()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1178
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public year()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1133
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method
