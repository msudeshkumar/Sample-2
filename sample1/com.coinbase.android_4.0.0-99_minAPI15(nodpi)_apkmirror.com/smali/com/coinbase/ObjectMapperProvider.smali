.class public Lcom/coinbase/ObjectMapperProvider;
.super Ljava/lang/Object;
.source "ObjectMapperProvider.java"


# instance fields
.field final defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/coinbase/ObjectMapperProvider;->createDefaultMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/ObjectMapperProvider;->defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 23
    return-void
.end method

.method public static createDefaultMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 31
    .local v1, "result":Lcom/fasterxml/jackson/databind/ObjectMapper;
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 32
    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 33
    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 34
    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>()V

    .line 37
    .local v0, "module":Lcom/fasterxml/jackson/databind/module/SimpleModule;
    const-class v2, Lorg/joda/money/Money;

    new-instance v3, Lcom/coinbase/v1/deserializer/MoneyDeserializer;

    invoke-direct {v3}, Lcom/coinbase/v1/deserializer/MoneyDeserializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 38
    const-class v2, Lorg/joda/money/CurrencyUnit;

    new-instance v3, Lcom/coinbase/v1/deserializer/CurrencyUnitDeserializer;

    invoke-direct {v3}, Lcom/coinbase/v1/deserializer/CurrencyUnitDeserializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 39
    const-class v2, Lorg/joda/money/CurrencyUnit;

    new-instance v3, Lcom/coinbase/v1/serializer/CurrencyUnitSerializer;

    invoke-direct {v3}, Lcom/coinbase/v1/serializer/CurrencyUnitSerializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 40
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 42
    new-instance v2, Lcom/fasterxml/jackson/datatype/joda/JodaModule;

    invoke-direct {v2}, Lcom/fasterxml/jackson/datatype/joda/JodaModule;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 44
    return-object v1
.end method


# virtual methods
.method public getContext(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/coinbase/ObjectMapperProvider;->defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method
