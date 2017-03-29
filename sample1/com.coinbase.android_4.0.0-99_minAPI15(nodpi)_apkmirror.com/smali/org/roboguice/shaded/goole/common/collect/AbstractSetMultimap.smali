.class abstract Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;
.source "AbstractSetMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;-><init>(Ljava/util/Map;)V

    .line 45
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
