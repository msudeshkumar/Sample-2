.class public final Lorg/joda/time/LocalDate$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "LocalDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/LocalDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private transient iField:Lorg/joda/time/DateTimeField;

.field private transient iInstant:Lorg/joda/time/LocalDate;


# direct methods
.method constructor <init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 1894
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1895
    iput-object p1, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    .line 1896
    iput-object p2, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1897
    return-void
.end method


# virtual methods
.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 1932
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v0

    return-wide v0
.end method
