.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.org/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;",
        "Ljava/util/SortedMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field sortedKeySet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p2, "submap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    .line 1367
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 1368
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1376
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1364
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1415
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1381
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1391
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1364
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1409
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    .line 1410
    .local v0, "result":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    .end local v0    # "result":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1386
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method sortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1371
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1401
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method
