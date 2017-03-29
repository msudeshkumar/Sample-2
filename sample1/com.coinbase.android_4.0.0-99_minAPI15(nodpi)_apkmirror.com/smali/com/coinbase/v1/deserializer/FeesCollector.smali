.class public Lcom/coinbase/v1/deserializer/FeesCollector;
.super Lcom/fasterxml/jackson/databind/util/StdConverter;
.source "FeesCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/util/StdConverter",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/joda/money/Money;",
        ">;>;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/joda/money/Money;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/StdConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/v1/deserializer/FeesCollector;->convert(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Lorg/joda/money/Money;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/joda/money/Money;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 15
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/joda/money/Money;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 17
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/joda/money/Money;>;"
    :cond_0
    return-object v1
.end method
