.class public Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;
.super Lcom/fasterxml/jackson/datatype/joda/deser/JodaDeserializerBase;
.source "DateTimeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/datatype/joda/deser/JodaDeserializerBase",
        "<",
        "Lorg/joda/time/ReadableInstant;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/joda/time/ReadableInstant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/joda/time/ReadableInstant;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/datatype/joda/deser/JodaDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 31
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/joda/time/ReadableInstant;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/joda/time/ReadableDateTime;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/joda/time/ReadableDateTime;
    .locals 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 45
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 46
    .local v3, "tz":Ljava/util/TimeZone;
    if-nez v3, :cond_0

    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 48
    .local v0, "dtz":Lorg/joda/time/DateTimeZone;
    :goto_0
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_1

    .line 49
    new-instance v4, Lorg/joda/time/DateTime;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 59
    :goto_1
    return-object v4

    .line 46
    .end local v0    # "dtz":Lorg/joda/time/DateTimeZone;
    :cond_0
    invoke-static {v3}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_0

    .line 51
    .restart local v0    # "dtz":Lorg/joda/time/DateTimeZone;
    :cond_1
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_4

    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 54
    const/4 v4, 0x0

    goto :goto_1

    .line 56
    :cond_2
    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4, v1, v0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    goto :goto_1

    .line 59
    :cond_3
    invoke-static {v1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v4

    goto :goto_1

    .line 62
    .end local v1    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/datatype/joda/deser/DateTimeDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4
.end method

.method public bridge synthetic deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/datatype/joda/deser/JodaDeserializerBase;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
