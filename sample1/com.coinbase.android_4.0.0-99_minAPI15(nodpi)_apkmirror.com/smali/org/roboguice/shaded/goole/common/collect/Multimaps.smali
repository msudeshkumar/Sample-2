.class public final Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# direct methods
.method static equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2048
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<**>;"
    if-ne p1, p0, :cond_0

    .line 2049
    const/4 v1, 0x1

    .line 2055
    :goto_0
    return v1

    .line 2051
    :cond_0
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2052
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 2053
    .local v0, "that":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<**>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2055
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
