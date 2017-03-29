.class public abstract Lorg/joda/time/base/BasePeriod;
.super Lorg/joda/time/base/AbstractPeriod;
.source "BasePeriod.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadablePeriod;


# static fields
.field private static final DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;


# instance fields
.field private final iType:Lorg/joda/time/PeriodType;

.field private final iValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/joda/time/base/BasePeriod$1;

    invoke-direct {v0}, Lorg/joda/time/base/BasePeriod$1;-><init>()V

    sput-object v0, Lorg/joda/time/base/BasePeriod;->DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 231
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 235
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 236
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    sget-object v1, Lorg/joda/time/base/BasePeriod;->DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

    invoke-virtual {v0, v1, p1, p2}, Lorg/joda/time/chrono/ISOChronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object v0

    .line 237
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 238
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    invoke-static {v0, v1, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    return-void
.end method

.method protected constructor <init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 255
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    .line 256
    invoke-static {p4}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 257
    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 258
    invoke-virtual {v1, p0, p1, p2}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 259
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 271
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 272
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPeriodConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PeriodConverter;

    move-result-object v0

    .line 273
    if-nez p2, :cond_0

    invoke-interface {v0, p1}, Lorg/joda/time/convert/PeriodConverter;->getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    move-result-object p2

    .line 274
    :cond_0
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v1

    .line 275
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 276
    instance-of v2, p0, Lorg/joda/time/ReadWritablePeriod;

    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 278
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 279
    check-cast p0, Lorg/joda/time/ReadWritablePeriod;

    invoke-interface {v0, p0, p1, v1}, Lorg/joda/time/convert/PeriodConverter;->setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v0, Lorg/joda/time/MutablePeriod;

    invoke-direct {v0, p1, v1, p3}, Lorg/joda/time/MutablePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    invoke-virtual {v0}, Lorg/joda/time/MutablePeriod;->getValues()[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    goto :goto_0
.end method

.method private checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V
    .locals 3

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 391
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 392
    if-eqz p3, :cond_1

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period does not support field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    aput p3, p2, v0

    .line 399
    :cond_1
    return-void
.end method

.method private setPeriodInternal(Lorg/joda/time/ReadablePeriod;)V
    .locals 5

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 421
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 422
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v3

    .line 423
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    .line 424
    invoke-direct {p0, v3, v1, v4}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0, v1}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 427
    return-void
.end method


# virtual methods
.method protected checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 308
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    return-object v0
.end method

.method public getValue(I)I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    aget v0, v0, p1

    return v0
.end method

.method protected setField(Lorg/joda/time/DurationFieldType;I)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setFieldInto([ILorg/joda/time/DurationFieldType;I)V

    .line 475
    return-void
.end method

.method protected setFieldInto([ILorg/joda/time/DurationFieldType;I)V
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 487
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 488
    if-nez p3, :cond_0

    if-nez p2, :cond_2

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period does not support field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    aput p3, p1, v0

    .line 495
    :cond_2
    return-void
.end method

.method protected setPeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 1

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePeriod;->setPeriodInternal(Lorg/joda/time/ReadablePeriod;)V

    goto :goto_0
.end method

.method protected setValue(II)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    aput p2, v0, p1

    .line 604
    return-void
.end method

.method protected setValues([I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    iget-object v1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    return-void
.end method
