.class public Lorg/joda/time/MutablePeriod;
.super Lorg/joda/time/base/BasePeriod;
.source "MutablePeriod.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/joda/time/ReadWritablePeriod;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 94
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 427
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-super {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 435
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1007
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDays(I)V
    .locals 1

    .prologue
    .line 887
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 888
    return-void
.end method

.method public setHours(I)V
    .locals 1

    .prologue
    .line 909
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 910
    return-void
.end method

.method public setMillis(I)V
    .locals 1

    .prologue
    .line 975
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 976
    return-void
.end method

.method public setMinutes(I)V
    .locals 1

    .prologue
    .line 931
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 932
    return-void
.end method

.method public setMonths(I)V
    .locals 1

    .prologue
    .line 843
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 844
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    .prologue
    .line 468
    invoke-super {p0, p1}, Lorg/joda/time/base/BasePeriod;->setPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 469
    return-void
.end method

.method public setSeconds(I)V
    .locals 1

    .prologue
    .line 953
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 954
    return-void
.end method

.method public setValue(II)V
    .locals 0

    .prologue
    .line 445
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setValue(II)V

    .line 446
    return-void
.end method

.method public setWeeks(I)V
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 866
    return-void
.end method

.method public setYears(I)V
    .locals 1

    .prologue
    .line 821
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 822
    return-void
.end method
