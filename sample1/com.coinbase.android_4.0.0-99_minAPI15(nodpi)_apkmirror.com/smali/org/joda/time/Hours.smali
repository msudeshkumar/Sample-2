.class public final Lorg/joda/time/Hours;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Hours.java"


# static fields
.field public static final EIGHT:Lorg/joda/time/Hours;

.field public static final FIVE:Lorg/joda/time/Hours;

.field public static final FOUR:Lorg/joda/time/Hours;

.field public static final MAX_VALUE:Lorg/joda/time/Hours;

.field public static final MIN_VALUE:Lorg/joda/time/Hours;

.field public static final ONE:Lorg/joda/time/Hours;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final SEVEN:Lorg/joda/time/Hours;

.field public static final SIX:Lorg/joda/time/Hours;

.field public static final THREE:Lorg/joda/time/Hours;

.field public static final TWO:Lorg/joda/time/Hours;

.field public static final ZERO:Lorg/joda/time/Hours;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    .line 47
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->ONE:Lorg/joda/time/Hours;

    .line 49
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->TWO:Lorg/joda/time/Hours;

    .line 51
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->THREE:Lorg/joda/time/Hours;

    .line 53
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->FOUR:Lorg/joda/time/Hours;

    .line 55
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->FIVE:Lorg/joda/time/Hours;

    .line 57
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->SIX:Lorg/joda/time/Hours;

    .line 59
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->SEVEN:Lorg/joda/time/Hours;

    .line 61
    new-instance v0, Lorg/joda/time/Hours;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->EIGHT:Lorg/joda/time/Hours;

    .line 63
    new-instance v0, Lorg/joda/time/Hours;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->MAX_VALUE:Lorg/joda/time/Hours;

    .line 65
    new-instance v0, Lorg/joda/time/Hours;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->MIN_VALUE:Lorg/joda/time/Hours;

    .line 68
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Hours;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 219
    return-void
.end method

.method public static hours(I)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 82
    sparse-switch p0, :sswitch_data_0

    .line 106
    new-instance v0, Lorg/joda/time/Hours;

    invoke-direct {v0, p0}, Lorg/joda/time/Hours;-><init>(I)V

    :goto_0
    return-object v0

    .line 84
    :sswitch_0
    sget-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    goto :goto_0

    .line 86
    :sswitch_1
    sget-object v0, Lorg/joda/time/Hours;->ONE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 88
    :sswitch_2
    sget-object v0, Lorg/joda/time/Hours;->TWO:Lorg/joda/time/Hours;

    goto :goto_0

    .line 90
    :sswitch_3
    sget-object v0, Lorg/joda/time/Hours;->THREE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 92
    :sswitch_4
    sget-object v0, Lorg/joda/time/Hours;->FOUR:Lorg/joda/time/Hours;

    goto :goto_0

    .line 94
    :sswitch_5
    sget-object v0, Lorg/joda/time/Hours;->FIVE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 96
    :sswitch_6
    sget-object v0, Lorg/joda/time/Hours;->SIX:Lorg/joda/time/Hours;

    goto :goto_0

    .line 98
    :sswitch_7
    sget-object v0, Lorg/joda/time/Hours;->SEVEN:Lorg/joda/time/Hours;

    goto :goto_0

    .line 100
    :sswitch_8
    sget-object v0, Lorg/joda/time/Hours;->EIGHT:Lorg/joda/time/Hours;

    goto :goto_0

    .line 102
    :sswitch_9
    sget-object v0, Lorg/joda/time/Hours;->MAX_VALUE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 104
    :sswitch_a
    sget-object v0, Lorg/joda/time/Hours;->MIN_VALUE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x7fffffff -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
