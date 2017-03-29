.class public final Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;
.super Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;
.source "DurationSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase",
        "<",
        "Lorg/joda/time/Duration;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FORMAT:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    sget-object v1, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->DEFAULT_DATEONLY_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;-><init>(Lorg/joda/time/format/DateTimeFormatter;)V

    sput-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->DEFAULT_FORMAT:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->DEFAULT_FORMAT:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V
    .locals 1
    .param p1, "formatter"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .prologue
    .line 23
    const-class v0, Lorg/joda/time/Duration;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->_useTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "number"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

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
    .line 16
    check-cast p1, Lorg/joda/time/Duration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->serialize(Lorg/joda/time/Duration;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/joda/time/Duration;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .param p1, "value"    # Lorg/joda/time/Duration;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->_useTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Duration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;
    .locals 1
    .param p1, "formatter"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->_format:Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;

    .end local p0    # "this":Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;-><init>(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)V

    goto :goto_0
.end method

.method public bridge synthetic withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/JodaDateSerializerBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;->withFormat(Lcom/fasterxml/jackson/datatype/joda/ser/JacksonJodaFormat;)Lcom/fasterxml/jackson/datatype/joda/ser/DurationSerializer;

    move-result-object v0

    return-object v0
.end method
