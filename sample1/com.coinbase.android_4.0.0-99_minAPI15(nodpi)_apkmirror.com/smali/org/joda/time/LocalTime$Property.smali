.class public final Lorg/joda/time/LocalTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "LocalTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/LocalTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private transient iField:Lorg/joda/time/DateTimeField;

.field private transient iInstant:Lorg/joda/time/LocalTime;


# direct methods
.method constructor <init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 1373
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1374
    iput-object p1, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    .line 1375
    iput-object p2, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1376
    return-void
.end method


# virtual methods
.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    return-wide v0
.end method
