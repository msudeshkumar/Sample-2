.class public final Lorg/joda/time/MutableDateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "MutableDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/MutableDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private iField:Lorg/joda/time/DateTimeField;

.field private iInstant:Lorg/joda/time/MutableDateTime;


# direct methods
.method constructor <init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 1270
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1271
    iput-object p1, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    .line 1272
    iput-object p2, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1273
    return-void
.end method


# virtual methods
.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(I)Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1376
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1377
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method
