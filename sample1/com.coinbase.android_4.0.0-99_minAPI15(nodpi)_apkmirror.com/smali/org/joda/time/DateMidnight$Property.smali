.class public final Lorg/joda/time/DateMidnight$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "DateMidnight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateMidnight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private iField:Lorg/joda/time/DateTimeField;

.field private iInstant:Lorg/joda/time/DateMidnight;


# direct methods
.method constructor <init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1237
    iput-object p1, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    .line 1238
    iput-object p2, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1239
    return-void
.end method


# virtual methods
.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->iInstant:Lorg/joda/time/DateMidnight;

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method
