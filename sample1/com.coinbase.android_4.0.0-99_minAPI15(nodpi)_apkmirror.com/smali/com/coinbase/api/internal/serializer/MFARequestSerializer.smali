.class public Lcom/coinbase/api/internal/serializer/MFARequestSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "MFARequestSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Lcom/coinbase/api/internal/entity/MFARequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/coinbase/api/internal/entity/MFARequest;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .param p1, "value"    # Lcom/coinbase/api/internal/entity/MFARequest;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 16
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/MFARequest;->getAnswers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "mfa"

    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/MFARequest;->getAnswers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 23
    return-void

    .line 20
    :cond_0
    const-string v0, "mfa"

    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/MFARequest;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p1, Lcom/coinbase/api/internal/entity/MFARequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coinbase/api/internal/serializer/MFARequestSerializer;->serialize(Lcom/coinbase/api/internal/entity/MFARequest;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
