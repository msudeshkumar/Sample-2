.class public final Lcom/fasterxml/jackson/datatype/joda/ser/PeriodSerializer;
.super Lcom/fasterxml/jackson/datatype/joda/ser/JodaSerializerBase;
.source "PeriodSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/datatype/joda/ser/JodaSerializerBase",
        "<",
        "Lorg/joda/time/ReadablePeriod;",
        ">;"
    }
.end annotation


# instance fields
.field protected final defaultFormat:Lorg/joda/time/format/PeriodFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/joda/time/ReadablePeriod;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/datatype/joda/ser/JodaSerializerBase;-><init>(Ljava/lang/Class;)V

    .line 22
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/PeriodSerializer;->defaultFormat:Lorg/joda/time/format/PeriodFormatter;

    .line 24
    return-void
.end method


# virtual methods
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 35
    const-string v0, "string"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/datatype/joda/ser/PeriodSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
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
    .line 20
    check-cast p1, Lorg/joda/time/ReadablePeriod;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/datatype/joda/ser/PeriodSerializer;->serialize(Lorg/joda/time/ReadablePeriod;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/joda/time/ReadablePeriod;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "value"    # Lorg/joda/time/ReadablePeriod;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fasterxml/jackson/datatype/joda/ser/PeriodSerializer;->defaultFormat:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p1}, Lorg/joda/time/format/PeriodFormatter;->print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method
