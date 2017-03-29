.class public Lorg/joda/time/PeriodType;
.super Ljava/lang/Object;
.source "PeriodType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static DAY_INDEX:I

.field static HOUR_INDEX:I

.field static MILLI_INDEX:I

.field static MINUTE_INDEX:I

.field static MONTH_INDEX:I

.field static SECOND_INDEX:I

.field static WEEK_INDEX:I

.field static YEAR_INDEX:I

.field private static cDays:Lorg/joda/time/PeriodType;

.field private static cHours:Lorg/joda/time/PeriodType;

.field private static cMinutes:Lorg/joda/time/PeriodType;

.field private static cMonths:Lorg/joda/time/PeriodType;

.field private static cSeconds:Lorg/joda/time/PeriodType;

.field private static cStandard:Lorg/joda/time/PeriodType;

.field private static cTime:Lorg/joda/time/PeriodType;

.field private static final cTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/PeriodType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static cWeeks:Lorg/joda/time/PeriodType;

.field private static cYears:Lorg/joda/time/PeriodType;


# instance fields
.field private final iIndices:[I

.field private final iName:Ljava/lang/String;

.field private final iTypes:[Lorg/joda/time/DurationFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/joda/time/PeriodType;->cTypes:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    sput v0, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    .line 59
    const/4 v0, 0x1

    sput v0, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    .line 60
    const/4 v0, 0x2

    sput v0, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    .line 61
    const/4 v0, 0x3

    sput v0, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    .line 62
    const/4 v0, 0x4

    sput v0, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    .line 63
    const/4 v0, 0x5

    sput v0, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    .line 64
    const/4 v0, 0x6

    sput v0, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    .line 65
    const/4 v0, 0x7

    sput v0, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Lorg/joda/time/PeriodType;->iName:Ljava/lang/String;

    .line 597
    iput-object p2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 598
    iput-object p3, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 599
    return-void
.end method

.method public static days()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 408
    sget-object v0, Lorg/joda/time/PeriodType;->cDays:Lorg/joda/time/PeriodType;

    .line 409
    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Days"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 415
    sput-object v0, Lorg/joda/time/PeriodType;->cDays:Lorg/joda/time/PeriodType;

    .line 417
    :cond_0
    return-object v0

    .line 410
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static hours()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 426
    sget-object v0, Lorg/joda/time/PeriodType;->cHours:Lorg/joda/time/PeriodType;

    .line 427
    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Hours"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 433
    sput-object v0, Lorg/joda/time/PeriodType;->cHours:Lorg/joda/time/PeriodType;

    .line 435
    :cond_0
    return-object v0

    .line 428
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static minutes()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 444
    sget-object v0, Lorg/joda/time/PeriodType;->cMinutes:Lorg/joda/time/PeriodType;

    .line 445
    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Minutes"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 451
    sput-object v0, Lorg/joda/time/PeriodType;->cMinutes:Lorg/joda/time/PeriodType;

    .line 453
    :cond_0
    return-object v0

    .line 446
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public static months()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 372
    sget-object v0, Lorg/joda/time/PeriodType;->cMonths:Lorg/joda/time/PeriodType;

    .line 373
    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Months"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 379
    sput-object v0, Lorg/joda/time/PeriodType;->cMonths:Lorg/joda/time/PeriodType;

    .line 381
    :cond_0
    return-object v0

    .line 374
    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static seconds()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 462
    sget-object v0, Lorg/joda/time/PeriodType;->cSeconds:Lorg/joda/time/PeriodType;

    .line 463
    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Seconds"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 469
    sput-object v0, Lorg/joda/time/PeriodType;->cSeconds:Lorg/joda/time/PeriodType;

    .line 471
    :cond_0
    return-object v0

    .line 464
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
    .end array-data
.end method

.method public static standard()Lorg/joda/time/PeriodType;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 102
    sget-object v0, Lorg/joda/time/PeriodType;->cStandard:Lorg/joda/time/PeriodType;

    .line 103
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Standard"

    new-array v2, v5, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 114
    sput-object v0, Lorg/joda/time/PeriodType;->cStandard:Lorg/joda/time/PeriodType;

    .line 116
    :cond_0
    return-object v0

    .line 104
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static time()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 333
    sget-object v0, Lorg/joda/time/PeriodType;->cTime:Lorg/joda/time/PeriodType;

    .line 334
    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Time"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 343
    sput-object v0, Lorg/joda/time/PeriodType;->cTime:Lorg/joda/time/PeriodType;

    .line 345
    :cond_0
    return-object v0

    .line 335
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static weeks()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 390
    sget-object v0, Lorg/joda/time/PeriodType;->cWeeks:Lorg/joda/time/PeriodType;

    .line 391
    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Weeks"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 397
    sput-object v0, Lorg/joda/time/PeriodType;->cWeeks:Lorg/joda/time/PeriodType;

    .line 399
    :cond_0
    return-object v0

    .line 392
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static years()Lorg/joda/time/PeriodType;
    .locals 5

    .prologue
    .line 354
    sget-object v0, Lorg/joda/time/PeriodType;->cYears:Lorg/joda/time/PeriodType;

    .line 355
    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Years"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 361
    sput-object v0, Lorg/joda/time/PeriodType;->cYears:Lorg/joda/time/PeriodType;

    .line 363
    :cond_0
    return-object v0

    .line 356
    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 835
    if-ne p0, p1, :cond_0

    .line 836
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    .line 838
    :cond_0
    instance-of v0, p1, Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1

    .line 839
    const/4 v0, 0x0

    goto :goto_0

    .line 841
    :cond_1
    check-cast p1, Lorg/joda/time/PeriodType;

    .line 842
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    iget-object v1, p1, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFieldType(I)Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 851
    move v1, v0

    .line 852
    :goto_0
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 853
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_0
    return v1
.end method

.method public indexOf(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 649
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 653
    :goto_1
    return v0

    .line 648
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lorg/joda/time/PeriodType;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
