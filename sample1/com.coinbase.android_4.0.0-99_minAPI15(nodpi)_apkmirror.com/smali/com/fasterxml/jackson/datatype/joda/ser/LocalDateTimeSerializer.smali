.class public final Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;
.super Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;
.source "LocalDateTimeSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase",
        "<",
        "Lorg/joda/time/LocalDateTime;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FORMAT:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    sget-object v1, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->DEFAULT_LOCAL_DATETIME_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;-><init>(Lorg/joda/time/format/DateTimeFormatter;)V

    sput-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->DEFAULT_FORMAT:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->DEFAULT_FORMAT:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V
    .locals 1
    .param p1, "format"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .prologue
    .line 20
    const-class v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->_useTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "array"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "string"

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 12
    check-cast p1, Lorg/joda/time/LocalDateTime;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->serialize(Lorg/joda/time/LocalDateTime;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/joda/time/LocalDateTime;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "value"    # Lorg/joda/time/LocalDateTime;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->_useTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 35
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->year()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 36
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->monthOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 37
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 38
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->hourOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 39
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->minuteOfHour()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 40
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->secondOfMinute()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 41
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->millisOfSecond()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->_format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;->createFormatter(Lcom/fasterxml/jackson/databind/SerializerProvider;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;
    .locals 1
    .param p1, "formatter"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;->_format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;

    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/LocalDateTimeSerializer;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V

    goto :goto_0
.end method
