.class public Lcom/coinbase/v1/deserializer/MoneyDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "MoneyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lorg/joda/money/Money;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/joda/money/Money;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/coinbase/v1/deserializer/MoneyDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/joda/money/Money;
    .locals 12
    .param p1, "jsonParser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "deserializationContext"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v8, 0x0

    .line 28
    .local v8, "result":Lorg/joda/money/Money;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v7

    .line 29
    .local v7, "oc":Lcom/fasterxml/jackson/core/ObjectCodec;
    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 31
    .local v6, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    const/4 v2, 0x0

    .line 32
    .local v2, "currency":Ljava/lang/String;
    const/4 v0, 0x0

    .line 33
    .local v0, "amount":Ljava/lang/String;
    const/4 v1, 0x0

    .line 35
    .local v1, "cents":Ljava/lang/Long;
    const-string v9, "currency"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 36
    const-string v9, "currency"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_0
    :goto_0
    const-string v9, "amount"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 42
    const-string v9, "amount"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 48
    :cond_2
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Wrong format for Money"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 37
    :cond_3
    const-string v9, "currency_iso"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 38
    const-string v9, "currency_iso"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 43
    :cond_4
    const-string v9, "cents"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 44
    const-string v9, "cents"

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 51
    :cond_5
    if-eqz v0, :cond_6

    .line 53
    :try_start_0
    invoke-static {v2}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v9

    .line 54
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 53
    invoke-static {v9, v10, v11}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/Money;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 67
    :goto_2
    return-object v8

    .line 55
    :catch_0
    move-exception v4

    .line 57
    .local v4, "e":Ljava/lang/ArithmeticException;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 58
    .local v3, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 60
    .local v5, "longValue":Ljava/lang/Long;
    invoke-static {v2}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v9

    .line 61
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v10

    .line 60
    invoke-static {v9, v10}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/Money;

    move-result-object v8

    .line 62
    goto :goto_2

    .line 64
    .end local v3    # "doubleValue":Ljava/lang/Double;
    .end local v4    # "e":Ljava/lang/ArithmeticException;
    .end local v5    # "longValue":Ljava/lang/Long;
    :cond_6
    invoke-static {v2}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lorg/joda/money/Money;->ofMinor(Lorg/joda/money/CurrencyUnit;J)Lorg/joda/money/Money;

    move-result-object v8

    goto :goto_2
.end method
