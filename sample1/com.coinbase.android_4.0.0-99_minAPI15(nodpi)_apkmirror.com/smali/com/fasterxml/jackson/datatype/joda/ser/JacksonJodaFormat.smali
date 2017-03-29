.class public Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
.super Ljava/lang/Object;
.source "JacksonJodaFormat.java"


# static fields
.field protected static final DEFAULT_LOCALE:Ljava/util/Locale;


# instance fields
.field protected final _explicitLocale:Z

.field protected final _explicitTimezone:Z

.field protected final _formatter:Lorg/joda/time/format/DateTimeFormatter;

.field protected final _jdkTimezone:Ljava/util/TimeZone;

.field protected final _locale:Ljava/util/Locale;

.field protected final _useTimestamp:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .param p2, "useTimestamp"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    .line 54
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 55
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    .line 56
    iget-boolean v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    .line 57
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    .line 58
    iget-boolean v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Ljava/util/Locale;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    .line 85
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    .line 86
    iget-boolean v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    .line 87
    iput-object p2, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    .line 89
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "base"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .param p2, "jdkTimezone"    # Ljava/util/TimeZone;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    .line 75
    iput-object p2, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    .line 77
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    .line 78
    iget-boolean v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    .line 79
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    invoke-static {p2}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Lorg/joda/time/format/DateTimeFormatter;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .param p2, "formatter"    # Lorg/joda/time/format/DateTimeFormatter;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    .line 65
    iput-object p2, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 66
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    .line 67
    iget-boolean v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    .line 68
    iget-object v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    .line 69
    iget-boolean v0, p1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/format/DateTimeFormatter;)V
    .locals 2
    .param p1, "defaultFormatter"    # Lorg/joda/time/format/DateTimeFormatter;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatter;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 47
    iput-boolean v1, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    .line 48
    iput-boolean v1, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    .line 49
    return-void
.end method

.method protected static _isStyle(Ljava/lang/String;)Z
    .locals 3
    .param p0, "formatStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "SMLF-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, "SMLF-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createFormatter(Lcom/fasterxml/jackson/databind/SerializerProvider;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 155
    .local v0, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    iget-boolean v3, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitLocale:Z

    if-nez v3, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 157
    .local v1, "loc":Ljava/util/Locale;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 161
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_0
    iget-boolean v3, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_explicitTimezone:Z

    if-nez v3, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 163
    .local v2, "tz":Ljava/util/TimeZone;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    invoke-static {v2}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 168
    .end local v2    # "tz":Ljava/util/TimeZone;
    :cond_1
    return-object v0
.end method

.method public useTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    goto :goto_0
.end method

.method protected withFormat(Ljava/lang/String;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :cond_0
    :goto_0
    return-object p0

    .line 111
    .restart local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :cond_1
    invoke-static {p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_isStyle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 116
    .local v0, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_formatter:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Lorg/joda/time/format/DateTimeFormatter;)V

    move-object p0, v1

    goto :goto_0

    .line 114
    .end local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_3
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .restart local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    goto :goto_1
.end method

.method protected withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Ljava/util/Locale;)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_jdkTimezone:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Ljava/util/TimeZone;)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected withUseTimestamp(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .locals 1
    .param p1, "useTimestamp"    # Ljava/lang/Boolean;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->_useTimestamp:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;Ljava/lang/Boolean;)V

    move-object p0, v0

    goto :goto_0
.end method
