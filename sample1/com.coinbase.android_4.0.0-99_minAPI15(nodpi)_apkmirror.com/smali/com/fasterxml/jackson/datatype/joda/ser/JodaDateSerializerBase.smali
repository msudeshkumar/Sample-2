.class public abstract Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;
.super Lcom/fasterxml/jackson/datatype/joda/ser/JodaSerializerBase;
.source "JodaDateSerializerBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/datatype/joda/ser/JodaSerializerBase",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_DATEONLY_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

.field protected static final DEFAULT_LOCAL_DATETIME_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

.field protected static final DEFAULT_TIMEONLY_FORMAT:Lorg/joda/time/format/DateTimeFormatter;


# instance fields
.field protected final _format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->DEFAULT_DATEONLY_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 18
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->time()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->DEFAULT_TIMEONLY_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 21
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->DEFAULT_LOCAL_DATETIME_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V
    .locals 0
    .param p2, "format"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;, "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JodaSerializerBase;-><init>(Ljava/lang/Class;)V

    .line 29
    iput-object p2, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->_format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .line 30
    return-void
.end method


# virtual methods
.method protected _useTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 76
    .local p0, "this":Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;, "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->_format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->useTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    return v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;, "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase<TT;>;"
    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 40
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v0, :cond_1

    .line 41
    iget-object v1, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->_format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .line 46
    .local v1, "format":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->isNumeric()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .local v2, "useTimestamp":Ljava/lang/Boolean;
    :goto_0
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->withUseTimestamp(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    move-result-object v1

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->withFormat(Ljava/lang/String;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->_format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    if-eq v1, v3, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;->withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;

    move-result-object p0

    .line 66
    .end local v0    # "ann":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v1    # "format":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .end local v2    # "useTimestamp":Ljava/lang/Boolean;
    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;, "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase<TT;>;"
    :cond_1
    return-object p0

    .line 48
    .restart local v0    # "ann":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v1    # "format":Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;
    .restart local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;, "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase<TT;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v3, v4, :cond_3

    .line 49
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v2    # "useTimestamp":Ljava/lang/Boolean;
    goto :goto_0

    .line 51
    .end local v2    # "useTimestamp":Ljava/lang/Boolean;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "useTimestamp":Ljava/lang/Boolean;
    goto :goto_0
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "x3"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;, "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/datatype/joda/ser/JodaSerializerBase;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public abstract withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;",
            ")",
            "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase",
            "<TT;>;"
        }
    .end annotation
.end method
