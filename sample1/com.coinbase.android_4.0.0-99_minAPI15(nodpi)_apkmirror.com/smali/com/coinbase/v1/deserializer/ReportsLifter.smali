.class public Lcom/coinbase/v1/deserializer/ReportsLifter;
.super Lcom/fasterxml/jackson/databind/util/StdConverter;
.source "ReportsLifter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/util/StdConverter",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/coinbase/v1/entity/ReportNode;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/coinbase/v1/entity/Report;",
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

    invoke-virtual {p0, p1}, Lcom/coinbase/v1/deserializer/ReportsLifter;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/ReportNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Report;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/ReportNode;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/v1/entity/Report;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/ReportNode;

    .line 16
    .local v0, "node":Lcom/coinbase/v1/entity/ReportNode;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/ReportNode;->getReport()Lcom/coinbase/v1/entity/Report;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    .end local v0    # "node":Lcom/coinbase/v1/entity/ReportNode;
    :cond_0
    return-object v1
.end method
