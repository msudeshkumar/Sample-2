.class public final Lorg/joda/time/Weeks;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Weeks.java"


# static fields
.field public static final MAX_VALUE:Lorg/joda/time/Weeks;

.field public static final MIN_VALUE:Lorg/joda/time/Weeks;

.field public static final ONE:Lorg/joda/time/Weeks;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final THREE:Lorg/joda/time/Weeks;

.field public static final TWO:Lorg/joda/time/Weeks;

.field public static final ZERO:Lorg/joda/time/Weeks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->ZERO:Lorg/joda/time/Weeks;

    .line 47
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->ONE:Lorg/joda/time/Weeks;

    .line 49
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->TWO:Lorg/joda/time/Weeks;

    .line 51
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->THREE:Lorg/joda/time/Weeks;

    .line 53
    new-instance v0, Lorg/joda/time/Weeks;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->MAX_VALUE:Lorg/joda/time/Weeks;

    .line 55
    new-instance v0, Lorg/joda/time/Weeks;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->MIN_VALUE:Lorg/joda/time/Weeks;

    .line 58
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Weeks;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 199
    return-void
.end method

.method public static weeks(I)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 72
    sparse-switch p0, :sswitch_data_0

    .line 86
    new-instance v0, Lorg/joda/time/Weeks;

    invoke-direct {v0, p0}, Lorg/joda/time/Weeks;-><init>(I)V

    :goto_0
    return-object v0

    .line 74
    :sswitch_0
    sget-object v0, Lorg/joda/time/Weeks;->ZERO:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 76
    :sswitch_1
    sget-object v0, Lorg/joda/time/Weeks;->ONE:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 78
    :sswitch_2
    sget-object v0, Lorg/joda/time/Weeks;->TWO:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 80
    :sswitch_3
    sget-object v0, Lorg/joda/time/Weeks;->THREE:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 82
    :sswitch_4
    sget-object v0, Lorg/joda/time/Weeks;->MAX_VALUE:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 84
    :sswitch_5
    sget-object v0, Lorg/joda/time/Weeks;->MIN_VALUE:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7fffffff -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
