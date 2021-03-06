.class public abstract Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "DateTimeSerializerBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# instance fields
.field protected final _customFormat:Ljava/text/DateFormat;

.field protected final _useTimestamp:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V
    .locals 0
    .param p2, "useTimestamp"    # Ljava/lang/Boolean;
    .param p3, "customFormat"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Boolean;",
            "Ljava/text/DateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 41
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Ljava/lang/Boolean;

    .line 42
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_customFormat:Ljava/text/DateFormat;

    .line 43
    return-void
.end method


# virtual methods
.method protected _acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Z)V
    .locals 2
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "asNumber"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    if-eqz p3, :cond_1

    .line 148
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;

    move-result-object v0

    .line 149
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    if-eqz v0, :cond_0

    .line 150
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V

    .line 151
    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    .line 159
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectStringFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;

    move-result-object v0

    .line 155
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;
    if-eqz v0, :cond_0

    .line 156
    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;->format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    goto :goto_0
.end method

.method protected _asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 135
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_customFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 139
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract _timestamp(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Z)V

    .line 116
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 8
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
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    const/4 v0, 0x0

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v6

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v2

    .line 53
    .local v2, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->isNumeric()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v6, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;

    move-result-object p0

    .line 89
    .end local v2    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .restart local v2    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v6, v7, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .local v0, "asNumber":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 63
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasPattern()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 64
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getPattern()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "pattern":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 66
    .local v3, "loc":Ljava/util/Locale;
    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 67
    .local v1, "df":Ljava/text/SimpleDateFormat;
    if-nez v5, :cond_3

    .line 68
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 70
    :cond_3
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;

    move-result-object p0

    goto :goto_0

    .line 65
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    .end local v3    # "loc":Ljava/util/Locale;
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getLocale()Ljava/util/Locale;

    move-result-object v3

    goto :goto_1

    .line 74
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 77
    .local v1, "df":Ljava/text/DateFormat;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    if-ne v6, v7, :cond_7

    .line 78
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 79
    .restart local v3    # "loc":Ljava/util/Locale;
    :goto_2
    invoke-static {v5, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->getISO8601Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 85
    .end local v3    # "loc":Ljava/util/Locale;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;

    move-result-object p0

    goto :goto_0

    .line 78
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getLocale()Ljava/util/Locale;

    move-result-object v3

    goto :goto_2

    .line 82
    :cond_7
    invoke-virtual {v1}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    check-cast v1, Ljava/text/DateFormat;

    .line 83
    .restart local v1    # "df":Ljava/text/DateFormat;
    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_3
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 109
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "number"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "string"

    goto :goto_0
.end method

.method public isEmpty(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_timestamp(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/text/DateFormat;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase",
            "<TT;>;"
        }
    .end annotation
.end method
