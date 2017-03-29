.class public final Lorg/joda/time/LocalDateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "LocalDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/LocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private transient iField:Lorg/joda/time/DateTimeField;

.field private transient iInstant:Lorg/joda/time/LocalDateTime;


# direct methods
.method constructor <init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 2155
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 2156
    iput-object p1, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    .line 2157
    iput-object p2, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 2158
    return-void
.end method


# virtual methods
.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 2193
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->iInstant:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    return-wide v0
.end method
