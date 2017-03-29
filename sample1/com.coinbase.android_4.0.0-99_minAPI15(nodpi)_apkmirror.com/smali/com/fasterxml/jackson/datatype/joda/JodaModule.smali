.class public Lcom/fasterxml/jackson/datatype/joda/JodaModule;
.super Lcom/fasterxml/jackson/databind/module/SimpleModule;
.source "JodaModule.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    sget-object v1, Lcom/fasterxml/jackson/datatype/joda/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Lcom/fasterxml/jackson/core/Version;)V

    .line 19
    const-class v1, Lorg/joda/time/DateMidnight;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/DateMidnightDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/DateMidnightDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 20
    const-class v1, Lorg/joda/time/DateTime;

    const-class v2, Lorg/joda/time/DateTime;

    invoke-static {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 21
    const-class v1, Lorg/joda/time/DateTimeZone;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeZoneDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeZoneDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 23
    const-class v1, Lorg/joda/time/Duration;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/DurationDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/DurationDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 24
    const-class v1, Lorg/joda/time/Instant;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/InstantDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/InstantDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 25
    const-class v1, Lorg/joda/time/LocalDateTime;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/LocalDateTimeDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/LocalDateTimeDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 26
    const-class v1, Lorg/joda/time/LocalDate;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/LocalDateDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/LocalDateDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 27
    const-class v1, Lorg/joda/time/LocalTime;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/LocalTimeDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/LocalTimeDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 28
    const-class v1, Lorg/joda/time/Period;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/PeriodDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/PeriodDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 29
    const-class v1, Lorg/joda/time/ReadableDateTime;

    const-class v2, Lorg/joda/time/ReadableDateTime;

    invoke-static {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 30
    const-class v1, Lorg/joda/time/ReadableInstant;

    const-class v2, Lorg/joda/time/ReadableInstant;

    invoke-static {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 31
    const-class v1, Lorg/joda/time/Interval;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/IntervalDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/IntervalDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 32
    const-class v1, Lorg/joda/time/MonthDay;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/MonthDayDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/MonthDayDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 33
    const-class v1, Lorg/joda/time/YearMonth;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/YearMonthDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/YearMonthDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 35
    const-class v1, Lorg/joda/time/ReadablePeriod;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/ReadablePeriodDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/ReadablePeriodDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 38
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 39
    .local v0, "stringSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    const-class v1, Lorg/joda/time/DateMidnight;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/DateMidnightSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/DateMidnightSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 40
    const-class v1, Lorg/joda/time/DateTime;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/DateTimeSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/DateTimeSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 41
    const-class v1, Lorg/joda/time/DateTimeZone;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/DateTimeZoneSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/DateTimeZoneSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 42
    const-class v1, Lorg/joda/time/Duration;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 43
    const-class v1, Lorg/joda/time/Instant;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/InstantSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/InstantSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 44
    const-class v1, Lorg/joda/time/LocalDateTime;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 45
    const-class v1, Lorg/joda/time/LocalDate;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 46
    const-class v1, Lorg/joda/time/LocalTime;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/LocalTimeSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalTimeSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 47
    const-class v1, Lorg/joda/time/Period;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/PeriodSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/PeriodSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 48
    const-class v1, Lorg/joda/time/Interval;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/ser/IntervalSerializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/ser/IntervalSerializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 49
    const-class v1, Lorg/joda/time/MonthDay;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 50
    const-class v1, Lorg/joda/time/YearMonth;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 53
    const-class v1, Lorg/joda/time/DateTime;

    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeKeyDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeKeyDeserializer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;->addKeyDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 65
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
